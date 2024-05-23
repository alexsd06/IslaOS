#include "kernel/memory/kmalloc.h"
#include "tga.h"
#include <stddef.h>
#include "fonts/font_lib.h"
#include "kernel/drivers/video/video.h"

#define free kfree
#define malloc kmalloc
//#define _binary_isla_isla_normal_tga_start _binary_isla_devil_homura_tga_start

extern tga_header_t _binary_isla_isla_normal_tga_start;
/* When saving with The GIMP, first convert the image to RGB (Image / Mode / RGB). Then add Alpha channel 
(Layer / Transparency / Add Alpha Channel). If these options are inactive, that means your image is already RGB or has alpha. 
Finally choose Export As... and enter a filename ending with ".tga". In the popup, uncheck "RLE compression" and select origin "Top".
If you want to support all TGA options, including palette images and RLE compression, then that's still pretty simple. 
Just use the following code snippet: */

//readelf -s --wide isla_normal.o

void read_image()
{
    /* TODO: The memory allocation in this area is overwriteing multiboot data; */
    uint32_t  *isla_normal = (uint32_t*) &_binary_isla_isla_normal_tga_start;
    int width=_binary_isla_isla_normal_tga_start.w, height=_binary_isla_isla_normal_tga_start.h;
    int image_bpp=_binary_isla_isla_normal_tga_start.bpp;
    int image_pixeltype=_binary_isla_isla_normal_tga_start.pixeltype;
    //unsigned int *image_pixels=isla_normal+sizeof(tga_header_t); //NOT WORKING!!
    uint32_t *image_pixels=(uint32_t*)((uint32_t)isla_normal+sizeof(tga_header_t));

    kprint ("RAW Image width: "); kprintint (width); kprintln("");
    kprint ("RAW Image height: "); kprintint (height); kprintln("");
    kprint ("RAW Image bpp: "); kprintint(image_bpp); kprintln("");
    kprint ("RAW Image pixeltype: "); kprintint (image_pixeltype); kprintln("");
    kprint ("Header adress: "); kprintint((int)isla_normal); kprintln("");
    kprint ("Data adress: "); kprintint((int)image_pixels); kprintln("");
    kprint ("Size of int: "); kprintint(sizeof(int)); kprintln(" bytes!");

    int pixel_index=0;
    for (int i=0; i<height; i++) {
        for (int j=0; j<width; j++) { 
            uint32_t  data=image_pixels[pixel_index]; //B G R (without alpha)
            /*
            uint32_t  blue= (data>>24)  & 0xff;
            uint32_t  green=(data>>16)  & 0xff;
            uint32_t  red  = (data>>8)  & 0xff;
            uint32_t  alpha= (data)     & 0xff;
            uint32_t  real_data=(alpha<<24)+(red<<16)+(green<<8)+blue;
            */
            write_pixel(i+100, j+350, data); //R G B
            pixel_index++;
        }
    }
}