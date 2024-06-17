#include "kernel/arch/arch.h"
#include "kernel/limine.h"

void kinit_videobuffer(struct limine_framebuffer_request framebuffer_request);
uint_t get_framebuffer_width();
uint_t get_framebuffer_height();
void * get_framebuffer();
extern int pixelwidth, pitch;
void write_pixel(uint_t y, uint_t x, uint_t color);