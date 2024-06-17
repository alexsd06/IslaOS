#include "kernel/fonts/font_lib.h"
#include <stdint.h>
#include "kernel/arch/arch.h"
#include "kernel/limine.h"
#include "kernel/memory/kmalloc.h"
#include "kernel/kernel.h"

uint32_t FRAMEBUFFER_WIDTH, FRAMEBUFFER_HEIGHT;
void *framebuffer;
int pixelwidth, pitch, bpp;

void * get_framebuffer()
{
    return framebuffer;
}

uint_t get_framebuffer_width()
{
    return FRAMEBUFFER_WIDTH;
}

uint_t get_framebuffer_height()
{
    return FRAMEBUFFER_HEIGHT;
}

void kinit_videobuffer(struct limine_framebuffer_request framebuffer_request)
{
    // Ensure we got a framebuffer.
    if (framebuffer_request.response == NULL
     || framebuffer_request.response->framebuffer_count < 1) {
        hcf();
    }
    // Fetch the first framebuffer.
    struct limine_framebuffer_response *response=framebuffer_request.response;
    struct limine_framebuffer *lfb=response->framebuffers[0];

    framebuffer = lfb->address;

	pitch=lfb->pitch;
    bpp=lfb->bpp;
	pixelwidth=bpp/8; //BitPerPixel to BytePerPixel

	FRAMEBUFFER_WIDTH=lfb->width;
	FRAMEBUFFER_HEIGHT=lfb->height;
}

//column line
void write_pixel(uint_t y, uint_t x, uint_t color) {
	int bytesperline=pixelwidth*FRAMEBUFFER_WIDTH;
    // Calculate the address of the pixel in the framebuffer
    uint_t pixel_address = (uint_t)(framebuffer) +
                             (y * bytesperline) +
                             (x * pixelwidth);

    // Write the color to the framebuffer
    *((uint_t *)pixel_address) = color;
}