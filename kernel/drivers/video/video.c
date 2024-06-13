#include "boot/multiboot_islaos.h"
#include "boot/multiboot.h"
#include "kernel/fonts/font_lib.h"
#include <stdint.h>

uint32_t FRAMEBUFFER_WIDTH, FRAMEBUFFER_HEIGHT;
void *framebuffer;
int pixelwidth, pitch;


void kinit_videobuffer()
{
    uintptr_t fb_addr=mb_info->framebuffer_addr;
	framebuffer=(void *) fb_addr;

	pitch=mb_info->framebuffer_pitch;
	pixelwidth=mb_info->framebuffer_bpp/8; //BitPerPixel to BytePerPixel

	FRAMEBUFFER_WIDTH=mb_info->framebuffer_width;
	FRAMEBUFFER_HEIGHT=mb_info->framebuffer_height;
}

//column line
void write_pixel(uint32_t y, uint32_t x, uint32_t color) {
	int bytesperline=pixelwidth*FRAMEBUFFER_WIDTH;
    // Calculate the address of the pixel in the framebuffer
    uint32_t pixel_address = mb_info->framebuffer_addr +
                             (y * bytesperline) +
                             (x * pixelwidth);

    // Write the color to the framebuffer
    *((uint32_t *)pixel_address) = color;
}