#include "kernel/arch/arch.h"
void kinit_videobuffer();
extern uint32_t FRAMEBUFFER_WIDTH, FRAMEBUFFER_HEIGHT;
extern void *framebuffer;
extern int pixelwidth, pitch;
void write_pixel(uint_t y, uint_t x, uint_t color);