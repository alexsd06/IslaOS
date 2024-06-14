#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include "boot/multiboot.h"

#define PSF1_FONT_MAGIC 0x0436
 
typedef struct {
    uint16_t magic; // Magic bytes for identification.
    uint8_t fontMode; // PSF font mode.
    uint8_t characterSize; // PSF character size.
} PSF1_Header;
 
 
#define PSF_FONT_MAGIC 0x864ab572
 
typedef struct {
    uint32_t magic;         /* magic bytes to identify PSF */
    uint32_t version;       /* zero */
    uint32_t headersize;    /* offset of bitmaps in file, 32 */
    uint32_t flags;         /* 0 if there's no unicode table */
    uint32_t numglyph;      /* number of glyphs */
    uint32_t bytesperglyph; /* size of each glyph */
    uint32_t height;        /* height in pixels */
    uint32_t width;         /* width in pixels */
} PSF_font;

void psf_init();

extern PSF_font _binary_fonts_psf_font_psf_start;
extern PSF_font _binary_fonts_psf_font_psf_end;
 
extern uint16_t *unicode;

#define PIXEL uint32_t   /* pixel pointer */

void init_putchar();

void write_chard (char c, bool deleteable);
void write_stringd (char *s, bool deletable);

void kprintd(char *s, bool deletable);
void kprint(char *s);

void kputintd (int cif, bool deletable);

void kprintintd(uint32_t data, bool deletable);
void kprintint(uint32_t data);

void kprintlnd(char *s, bool deletable);
void kprintln(char *s);

void cursor_back();
void clear();

int get_cursor_line();
int get_cursor_column();

int get_font_width();
int get_font_height();

void kprintinthex(uint32_t data);