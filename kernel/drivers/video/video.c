#include "boot/multiboot_islaos.h"
#include "boot/multiboot.h"
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