#include "font_lib.h"
#include "kernel/std/math.h"
#include "kernel/drivers/video/video.h"
#include "kernel/memory/kmalloc.h"
#include "kernel/mainframe/mainframe.h"
#include "kernel/ramdisk/ramdisk.h"

#include <stdint.h>
#include <stddef.h>
#include <limits.h>
#include <stdint.h>

uint16_t *unicode;

int line_size[1080];
bool char_deletable[1080][1920];

int font_width, font_height;

void psf_init()
{
    uint16_t glyph = 0;
    /* cast the address to PSF header struct */
    PSF_font *font = (PSF_font*) get_pointer_to_file("font.psf");
    /* is there a unicode table? */
    if (font->flags) {
        unicode = NULL;
        return; 
    }
 
    /* get the offset of the table */
    char *s = (char *)(get_pointer_to_file("font.psf") +
      font->headersize +
      font->numglyph * font->bytesperglyph
    );
    /* allocate memory for translation table */
    //unicode = calloc(USHRT_dMAX, 2);
    unicode=(uint16_t*) kcalloc(USHRT_MAX, 2); 
    while(s>(char *)get_pointer_to_file("font.psf")+get_file_size("font.psf")) {

        uint16_t uc = (uint16_t)(s[0]);
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

int get_font_width()
{
    PSF_font *font = (PSF_font*) get_pointer_to_file("font.psf");
    return font->width;
}
int get_font_height()
{
    PSF_font *font = (PSF_font*) get_pointer_to_file("font.psf");
    return font->height;
}

void putchar(
    /* The framebuffer */
    unsigned char *fb,
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
    PSF_font *font = (PSF_font*) get_pointer_to_file("font.psf");
    //PSF_font *font=NULL;
    /* we need to know how many bytes encode one row */
    #pragma GCC diagnostic push
    #pragma GCC diagnostic ignored  "-Warray-bounds="
    font_width=font->width; font_height=font->height;
    int bytesperline=(font->width+7)/8;
    //int bytesperline=pixelwidth*FRAMEBUFFER_WIDTH/9;
    /* unicode translation */
    if(unicode != NULL) {
        c = unicode[c];
    }
    /* get the glyph for the character. If there's no
       glyph for a given character, we'll display the first glyph. */
    unsigned char *glyph =(unsigned char*)get_pointer_to_file("font.psf") + font->headersize + (c>0&&c<font->numglyph?c:0)*font->bytesperglyph;
    /* calculate the upper left corner on screen where we want to display.
       we only do this once, and adjust the offset later. This is faster. */
    int offs = (cy * font->height * scanline) + (cx * (font->width + 1) * sizeof(PIXEL));
    /* finally display pixels according to the bitmap */
    int x,y, line,mask;
    for(y=0;y<(int)font->height;y++){
        /* save the starting position of the line */
        line=offs;
        mask=1<<(font->width-1);
        /* display a row */
        for(x=0;x<(int)font->width;x++){
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
    #pragma GCC diagnostic pop
}

uint32_t __putchar_line, __putchar_column;
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
    char_deletable[__putchar_line][__putchar_column]=true;
    line_size[__putchar_line]=__putchar_column;
}
void clear()
{
    for (int i=0; i<(int) FRAMEBUFFER_HEIGHT; i++) {
        for (int j=0; j<(int) FRAMEBUFFER_WIDTH; j++) {
            write_pixel(i, j, 0);
        }
    }
    command_buffer_size=0;
    init_putchar();
}

int get_cursor_line()
{
    return __putchar_line;
}

int get_cursor_column()
{
    return __putchar_column;
}

void cursor_back()
{
    if (__putchar_column>0) {
        __putchar_column--;
        line_size[__putchar_line]=__putchar_column;
    }
    else if (__putchar_column==0) {
        if (__putchar_line>0) {
             __putchar_line--;
             __putchar_column=line_size[__putchar_line];
        }
    }
}
bool last_char_deletable()
{
    if (__putchar_column>0) return char_deletable[__putchar_line][__putchar_column-1];
    else if (__putchar_line>0) return char_deletable[__putchar_line-1][line_size[__putchar_line-1]];
    return false;
}

void write_chard (char c, bool deletable)
{
    if (!__init_putchar) init_putchar();
    int bytesperline=pixelwidth*FRAMEBUFFER_WIDTH;
    PSF_font *font = (PSF_font *) get_pointer_to_file("font.psf");

    uint32_t font_max_columns=FRAMEBUFFER_WIDTH/(font->width+1); 
    uint32_t font_max_lines=FRAMEBUFFER_HEIGHT/font->height;
    if (font_max_columns-__putchar_column<6) {
        write_next_line();
        write_chard(c, deletable);
        return;
    }
    if (c=='\n') {
        write_next_line();
        return;
    }
    if (c=='\b')
    {
        if (last_char_deletable()) {
            cursor_back();
            write_chard(' ', deletable);
            cursor_back();
        }
        return;
    }
    if (__putchar_column>=font_max_columns) {
        write_next_line();
        return;
    }
    if (__putchar_line>=font_max_lines) {
        clear();
    }
    putchar(framebuffer, bytesperline,  c, __putchar_column, __putchar_line, 0xFFFFFF, 0x000000);
    char_deletable[__putchar_line][__putchar_column]=deletable;
    line_size[__putchar_line]=__putchar_column;
    __putchar_column++;
}
void write_stringd (char *s, bool deletable)
{
    int i=0;
    if (!__init_putchar) init_putchar();
    while (s[i]!='\0') {
        write_chard(s[i], deletable);
        i++;
    }
}

void kprintd(char *s, bool deletable)
{
    write_stringd(s, deletable);
}
void kprint(char *s)
{
    kprintd(s, false);
}

void kputintd (int cif, bool deletable)
{
	char c=cif+'0';
	write_chard(c, deletable);
}

void kprintintd(uint32_t data, bool deletable)
{
	int zero_before;
	data=oglindit(data, &zero_before);
    if (data==0) {
        kputintd(0, deletable);
        return;
    }
	while (data) {
		int cif=data%10;
		kputintd (cif, deletable);
		data/=10;
	}
	while (zero_before) {
		kputintd(0, deletable);
		zero_before--;
	}
}
void kprintinthex(uint32_t data)
{
    char analog[]="0123456789ABCDEF";
    char rez[64];
    int ind_rez=0;
    rez[0]=0;
    while (data!=0) {
        int cif=data%16;
        char chr=analog[cif];
        rez[++ind_rez]=chr;
        data/=16;
    }
    char fin[128];
    fin[0]='0'; fin[1]='x';
    int ind=2;
    for (int i=ind_rez; i>=1; i--) {
        fin[ind]=rez[i];
        ind++;
    }
    fin[ind]='\0';
    kprint(fin);
}
void kprintint(uint32_t data)
{
	kprintintd(data, false);
}

void kprintlnd(char *s, bool deletable)
{
    kprintd(s, deletable);
    kprintd("\n", deletable);
}

void kprintln(char *s)
{
    kprintlnd(s, false);
}