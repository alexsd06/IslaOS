#include "kernel/memory/kmalloc.h"
#include "tga.h"
#include <stddef.h>
#include "fonts/font_lib.h"
#include "kernel/drivers/video/video.h"
#include "boot/multiboot_islaos.h"
#include "kernel/std/string.h"

#define free kfree
#define malloc kmalloc

extern tga_header_t _binary_isla_isla_tga_start;
extern tga_header_t _binary_isla_devil_homura_tga_start;

/* When saving with The GIMP, first convert the image to RGB (Image / Mode / RGB). Then add Alpha channel 
(Layer / Transparency / Add Alpha Channel). If these options are inactive, that means your image is already RGB or has alpha. 
Finally choose Export As... and enter a filename ending with ".tga". In the popup, uncheck "RLE compression" and select origin "Top".
If you want to support all TGA options, including palette images and RLE compression, then that's still pretty simple. 
Just use the following code snippet: */

//readelf -s --wide isla_normal.o

void fetch(char str[])
{
    /* TODO: The memory allocation in this area is overwriteing multiboot data; */
    tga_header_t *image=NULL;
    if (strcmp(str, "isla")==0) image=(tga_header_t *) &_binary_isla_isla_tga_start;
    if (strcmp(str, "homu")==0) image=(tga_header_t *) &_binary_isla_devil_homura_tga_start;
    uint32_t  *image_normal = (uint32_t*) image;
    int width=image->w, height=image->h;
    int image_bpp=image->bpp;
    int image_pixeltype=image->pixeltype;
    //unsigned int *image_pixels=isla_normal+sizeof(tga_header_t); //NOT WORKING!!
    uint32_t *image_pixels=(uint32_t*)((uint32_t)image_normal+sizeof(tga_header_t));
    kprintln("");
    int cursor_line=get_cursor_line(), font_height=get_font_height();
    kprint ("                               IslaOS Version 1.0!"); kprintln("");
    kprint ("                               RAW Image width: "); kprintint (width); kprintln("");
    kprint ("                               RAW Image height: "); kprintint (height); kprintln("");
    kprint ("                               RAW Image bpp: "); kprintint(image_bpp); kprintln("");
    kprint ("                               RAW Image pixeltype: "); kprintint (image_pixeltype); kprintln("");
    kprint ("                               Header adress: "); kprintint((int)image_normal); kprintln("");
    kprint ("                               Data adress: "); kprintint((int)image_pixels); kprintln("");
    kprint ("                               Size of int: "); kprintint(sizeof(int)); kprintln(" bytes!");

	kprint ("                               The magic number is: "); kprintint(magic_nr); kprintln("");
	kprint ("                               The bootloader name is: "); kprint(bootloader_name); kprintln(""); 
	kprint ("                               The framebuffer width is: "); kprintint(FRAMEBUFFER_WIDTH); kprintln("");
	kprint ("                               The framebuffer height is: "); kprintint(FRAMEBUFFER_HEIGHT); kprintln("");
	
	kprint ("                               Total RAM size: "); kprintint(ram_size('M')); kprintln(" MB");
	kprint ("                               Total RAM available: "); kprintint(ram_available('M')); kprintln(" MB");

    int pixel_index=0;
    for (int i=0; i<height; i++) {
        for (int j=0; j<width; j++) { 
            uint32_t  data=image_pixels[pixel_index];
            write_pixel(i+cursor_line*font_height, j+20, data); //ARGB
            pixel_index++;
        }
    }
}