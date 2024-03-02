#include "font_lib.h"
#include "boot/multiboot_islaos.h"
#include "kernel/memory/kmalloc.h"

#include <stdint.h>
#include <stddef.h>
#include <limits.h>
#include <stdint.h>

uint16_t *unicode;

void psf_init()
{
    uint16_t glyph = 0;
    /* cast the address to PSF header struct */
    PSF_font *font = (PSF_font*)&_binary_fonts_psf_font_psf_start;
    /* is there a unicode table? */
    if (font->flags) {
        unicode = NULL;
        return; 
    }
 
    /* get the offset of the table */
    char *s = (char *)(
    (unsigned char*)&_binary_fonts_psf_font_psf_start +
      font->headersize +
      font->numglyph * font->bytesperglyph
    );
    /* allocate memory for translation table */
    //unicode = calloc(USHRT_MAX, 2);
    unicode=(uint16_t*) kcalloc(USHRT_MAX, 2); 
    while(s>_binary_fonts_psf_font_psf_end) {
        uint16_t uc = (uint16_t)((unsigned char *)s[0]);
        if(uc == 0xFF) {
            glyph++;
            s++;
            continue;
        } else if(uc & 128) {
            /* UTF-8 to unicode */
            if((uc & 32) == 0 ) {
                uc = ((s[0] & 0x1F)<<6)+(s[1] & 0x3F);
                s++;
            } else
            if((uc & 16) == 0 ) {
                uc = ((((s[0] & 0xF)<<6)+(s[1] & 0x3F))<<6)+(s[2] & 0x3F);
                s+=2;
            } else
            if((uc & 8) == 0 ) {
                uc = ((((((s[0] & 0x7)<<6)+(s[1] & 0x3F))<<6)+(s[2] & 0x3F))<<6)+(s[3] & 0x3F);
                s+=3;
            } else
                uc = 0;
        }
        /* save translation */
        unicode[uc] = glyph;
        s++;
    }
}

void putchar(
    /* The framebuffer */
    char *fb,
    /* number of bytes in each line, it's possible it's not screen width * bytesperpixel! */
    int scanline,
    /* note that this is int, not char as it's a unicode character */
    unsigned short int c,
    /* cursor position on screen, in characters not in pixels */
    int cx, int cy,
    /* foreground and background colors, say 0xFFFFFF and 0x000000 */
    uint32_t fg, uint32_t bg) //THIS FUCKING NEEDS 32bit DEPTH!!! WHY!?
{
    /* cast the address to PSF header struct */
    PSF_font *font = (PSF_font*)&_binary_fonts_psf_font_psf_start;
    /* we need to know how many bytes encode one row */
    int bytesperline=(font->width+7)/8;
    //int bytesperline=pixelwidth*FRAMEBUFFER_WIDTH/9;
    /* unicode translation */
    if(unicode != NULL) {
        c = unicode[c];
    }
    /* get the glyph for the character. If there's no
       glyph for a given character, we'll display the first glyph. */
    unsigned char *glyph =(unsigned char*)&_binary_fonts_psf_font_psf_start + font->headersize + (c>0&&c<font->numglyph?c:0)*font->bytesperglyph;
    /* calculate the upper left corner on screen where we want to display.
       we only do this once, and adjust the offset later. This is faster. */
    int offs = (cy * font->height * scanline) + (cx * (font->width + 1) * sizeof(PIXEL));
    /* finally display pixels according to the bitmap */
    int x,y, line,mask;
    for(y=0;y<font->height;y++){
        /* save the starting position of the line */
        line=offs;
        mask=1<<(font->width-1);
        /* display a row */
        for(x=0;x<font->width;x++){
            *((PIXEL*)(fb + line)) = *((unsigned int*)glyph) & mask ? fg : bg;
            /* adjust to the next pixel */
            mask >>= 1;
            line += sizeof(PIXEL);
            //line += pixelwidth
        }
        /* adjust to the next line */
        glyph += bytesperline;
        offs  += scanline;
    }
}

int __putchar_line, __putchar_column;
int __init_putchar=0;
void init_putchar()
{
    __init_putchar=1;
    __putchar_column=0;
    __putchar_line=0;
}
void write_next_line()
{
    __putchar_column=0;
    __putchar_line+=1;
}
void clear_screen()
{
    int bytesperline=pixelwidth*FRAMEBUFFER_WIDTH;
    PSF_font *font = (PSF_font*)&_binary_fonts_psf_font_psf_start;
    int font_max_columns=FRAMEBUFFER_WIDTH/(font->width+1); 
    int font_max_lines=FRAMEBUFFER_HEIGHT/font->height;
    for (int i=0; i<font_max_columns; i++) {
        for (int j=0; j<font_max_lines; j++) {
            putchar(framebuffer, bytesperline, ' ', i, j, 0xFFFFFF, 0x000000);
        }
    }
    init_putchar();
}
void write_char (char c)
{
    if (!__init_putchar) init_putchar();
    int bytesperline=pixelwidth*FRAMEBUFFER_WIDTH;
    PSF_font *font = (PSF_font*)&_binary_fonts_psf_font_psf_start;

    int font_max_columns=FRAMEBUFFER_WIDTH/(font->width+1); 
    int font_max_lines=FRAMEBUFFER_HEIGHT/font->height;
    if (c==' '&&font_max_columns-__putchar_column<6) {
        write_next_line();
        return;
    }
    if (c=='\n') {
        write_next_line();
        return;
    }
    if (__putchar_column>=font_max_columns) {
        write_next_line();
        return;
    }
    if (__putchar_line>=font_max_lines) {
        clear_screen();
    }
    putchar(framebuffer, bytesperline,  c, __putchar_column, __putchar_line, 0xFFFFFF, 0x000000);
    __putchar_column++;
}
void write_string (char *s)
{
    int i=0;
    if (!__init_putchar) init_putchar();
    int bytesperline=pixelwidth*FRAMEBUFFER_WIDTH;
    PSF_font *font = (PSF_font*)&_binary_fonts_psf_font_psf_start;

    int font_max_columns=FRAMEBUFFER_WIDTH/(font->width+1); 
    int font_max_lines=FRAMEBUFFER_HEIGHT/font->height;

    while (s[i]!='\0') {
        write_char(s[i]);
        i++;
    }
}

void kprint(char *s)
{
    write_string(s);
}

void kputint (int cif)
{
	char c=cif+'0';
	write_char(c);
}

void kprintint(int data)
{
	int zero_before;
	data=oglindit(data, &zero_before);
    if (data==0) {
        kputint(0);
        return;
    }
	while (data) {
		int cif=data%10;
		kputint (cif);
		data/=10;
	}
	while (zero_before) {
		kputint(0);
		zero_before--;
	}
}