#ifndef FONT_LIB_H
#define FONT_LIB_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

// PSF1 font structure definitions
#define PSF1_FONT_MAGIC 0x0436

typedef struct {
    uint16_t magic;         // Magic bytes for identification
    uint8_t fontMode;       // PSF font mode
    uint8_t characterSize;  // PSF character size
} PSF1_Header;

// PSF font structure definitions
#define PSF_FONT_MAGIC 0x864ab572

typedef struct {
    uint32_t magic;         // Magic bytes to identify PSF
    uint32_t version;       // Version (zero)
    uint32_t headersize;    // Offset of bitmaps in file, 32
    uint32_t flags;         // 0 if there's no Unicode table
    uint32_t numglyph;      // Number of glyphs
    uint32_t bytesperglyph; // Size of each glyph
    uint32_t height;        // Height in pixels
    uint32_t width;         // Width in pixels
} PSF_font;

void psf_init();

extern PSF_font _binary_fonts_psf_font_psf_start;
extern PSF_font _binary_fonts_psf_font_psf_end;

extern uint16_t *unicode;

#define PIXEL uint32_t // Pixel pointer

void init_putchar();

void write_chard(char c, bool deleteable);
void write_stringd(char *s, bool deletable);

void kprintd(char *s, bool deletable);
void kprint(char *s);

void kputintd(int cif, bool deletable);

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

#endif // FONT_LIB_H
