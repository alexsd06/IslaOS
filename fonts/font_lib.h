#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

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
void putchar(
    char *fb,
    int scanline,
    unsigned short int c,
    int cx, int cy,
    uint32_t fg, uint32_t bg);

extern char _binary_fonts_psf_font_psf_start;
extern char _binary_fonts_psf_font_psf_end;
 
extern uint16_t *unicode;

#define PIXEL uint32_t   /* pixel pointer */

void write_string (char *s);
void init_putchar();