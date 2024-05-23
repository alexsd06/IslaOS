#include "kernel/memory/kmalloc.h"
#include "tga.h"
#include <stddef.h>
#include "fonts/font_lib.h"
#include "kernel/drivers/video/video.h"

/**
 * Parse TGA format into pixels. Returns NULL or error, otherwise the returned data looks like
 *   ret[0] = width of the image
 *   ret[1] = height of the image
 *   ret[2..] = 32 bit ARGB pixels (blue channel in the least significant byte, alpha channel in the most)
 */
unsigned int *tga_parse(unsigned char *ptr)
{
    unsigned int *data;
    int i, j, k, x, y, w = (ptr[13] << 8) + ptr[12], h = (ptr[15] << 8) + ptr[14], o = (ptr[11] << 8) + ptr[10];
    int m = ((ptr[1]? (ptr[7]>>3)*ptr[5] : 0) + 18);
 
    if(w<1 || h<1) return NULL;

    int size=w*h;
 
    data = (unsigned int*)kmalloc((w*h+2)*sizeof(unsigned int));
    if(!data) return NULL;
 
    switch(ptr[2]) {
        case 1:
            if(ptr[6]!=0 || ptr[4]!=0 || ptr[3]!=0 || (ptr[7]!=24 && ptr[7]!=32)) { kfree(data); return NULL; }
            for(y=i=0; y<h; y++) {
                k = ((!o?h-y-1:y)*w);
                for(x=0; x<w; x++) {
                    j = ptr[m + k++]*(ptr[7]>>3) + 18;
                    data[2 + i++] = ((ptr[7]==32?ptr[j+3]:0xFF) << 24) | (ptr[j+2] << 16) | (ptr[j+1] << 8) | ptr[j];
                }
            }
            break;
        case 2:
            if(ptr[5]!=0 || ptr[6]!=0 || ptr[1]!=0 || (ptr[16]!=24 && ptr[16]!=32)) { kfree(data); return NULL; }
            for(y=i=0; y<h; y++) {
                j = ((!o?h-y-1:y)*w*(ptr[16]>>3));
                for(x=0; x<w; x++) {
                    data[2 + i++] = ((ptr[16]==32?ptr[j+3]:0xFF) << 24) | (ptr[j+2] << 16) | (ptr[j+1] << 8) | ptr[j];
                    j += ptr[16]>>3;
                }
            }
            break;
        case 9:
            if(ptr[6]!=0 || ptr[4]!=0 || ptr[3]!=0 || (ptr[7]!=24 && ptr[7]!=32)) { kfree(data); return NULL; }
            y = i = 0;
            for(x=0; x<w*h && m<size;) {
                k = ptr[m++];
                if(k > 127) {
                    k -= 127; x += k;
                    j = ptr[m++]*(ptr[7]>>3) + 18;
                    while(k--) {
                        if(!(i%w)) { i=((!o?h-y-1:y)*w); y++; }
                        data[2 + i++] = ((ptr[7]==32?ptr[j+3]:0xFF) << 24) | (ptr[j+2] << 16) | (ptr[j+1] << 8) | ptr[j];
                    }
                } else {
                    k++; x += k;
                    while(k--) {
                        j = ptr[m++]*(ptr[7]>>3) + 18;
                        if(!(i%w)) { i=((!o?h-y-1:y)*w); y++; }
                        data[2 + i++] = ((ptr[7]==32?ptr[j+3]:0xFF) << 24) | (ptr[j+2] << 16) | (ptr[j+1] << 8) | ptr[j];
                    }
                }
            }
            break;
        case 10:
            if(ptr[5]!=0 || ptr[6]!=0 || ptr[1]!=0 || (ptr[16]!=24 && ptr[16]!=32)) { kfree(data); return NULL; }
            y = i = 0;
            for(x=0; x<w*h && m<size;) {
                k = ptr[m++];
                if(k > 127) {
                    k -= 127; x += k;
                    while(k--) {
                        if(!(i%w)) { i=((!o?h-y-1:y)*w); y++; }
                        data[2 + i++] = ((ptr[16]==32?ptr[m+3]:0xFF) << 24) | (ptr[m+2] << 16) | (ptr[m+1] << 8) | ptr[m];
                    }
                    m += ptr[16]>>3;
                } else {
                    k++; x += k;
                    while(k--) {
                        if(!(i%w)) { i=((!o?h-y-1:y)*w); y++; }
                        data[2 + i++] = ((ptr[16]==32?ptr[m+3]:0xFF) << 24) | (ptr[m+2] << 16) | (ptr[m+1] << 8) | ptr[m];
                        m += ptr[16]>>3;
                    }
                }
            }
            break;
        default:
            kfree(data); return NULL;
    }
    data[0] = w;
    data[1] = h;
    return data;
}

extern tga_header_t _binary_isla_isla_normal_tga_start;
extern tga_header_t _binary_isla_isla_normal_tga_end;
extern tga_header_t _binary_isla_isla_normal_tga_size;

/* When saving with The GIMP, first convert the image to RGB (Image / Mode / RGB). Then add Alpha channel 
(Layer / Transparency / Add Alpha Channel). If these options are inactive, that means your image is already RGB or has alpha. 
Finally choose Export As... and enter a filename ending with ".tga". In the popup, uncheck "RLE compression" and select origin "Top".
If you want to support all TGA options, including palette images and RLE compression, then that's still pretty simple. 
Just use the following code snippet: */

//readelf -s --wide isla_normal.o

void read_image()
{
    /* TODO: The memory allocation in this area is overwriteing multiboot data; */
    unsigned int *isla_normal = (unsigned int*) &_binary_isla_isla_normal_tga_start;
    int width=_binary_isla_isla_normal_tga_start.w, height=_binary_isla_isla_normal_tga_start.h;
    int image_bpp=_binary_isla_isla_normal_tga_start.bpp;
    int image_pixeltype=_binary_isla_isla_normal_tga_start.pixeltype;
    //unsigned int *image_pixels=isla_normal+sizeof(tga_header_t); //NOT WORKING!!
    unsigned int *image_pixels=(unsigned int*)((int)isla_normal+sizeof(tga_header_t)-1);

    kprint ("RAW Image width: "); kprintint (height); kprintln("");
    kprint ("RAW Image height: "); kprintint (width); kprintln("");
    kprint ("RAW Image bpp: "); kprintint(image_bpp); kprintln("");
    kprint ("RAW Image pixeltype: "); kprintint (image_pixeltype); kprintln("");
    kprint ("Header adress: "); kprintint((int)isla_normal); kprintln("");
    kprint ("Data adress: "); kprintint((int)image_pixels); kprintln("");
    kprint ("Size of int: "); kprintint(sizeof(int)); kprintln(" bytes!");

    int pixel_index=0;
    for (int i=0; i<height; i++) {
        for (int j=0; j<width; j++) { 
            uint32_t  data=image_pixels[pixel_index]>>8; //B G R (without alpha)
            uint32_t  blue= (data>>16) & 0xff;
            uint32_t  green=(data>>8)  & 0xff;
            uint32_t  red  = data      & 0xff;
            uint32_t  real_data=(red<<16)+(green<<8)+(blue);
            //kprintint(data); kprint(" "); kprintint(good_data); kprint(" "); 
            
            //kprintinthex(data); kprint(" "); 
            //kprintinthex(real_data); kprint(" | ");
            
            write_pixel(i+100, j+100, data); //R G B
            write_pixel(i+100, j+400, real_data); //R G B
            pixel_index++;
            //if (j>50) break;
        }
        //break;
    }
    /*
    unsigned int *isla_normal_data=tga_parse((unsigned char*) isla_normal);
    //int width=isla_normal_data[0], height=isla_normal_data[1];
    kprint ("Calculated Image width: "); kprintint (width); kprintln("");
    kprint ("Calculated Image height: "); kprintint (height); kprintln("");
    pixel_index=2;
    for (int i=0; i<height; i++) {
        for (int j=0; j<width; j++) { 
            write_pixel(i, j, isla_normal_data[pixel_index]);
            pixel_index++;
        }
    }
    */
    /**/
    uint32_t blue_pixel = 0xFFFFFF; // Blue (FF) with full opacity (FF)
    for (int i=100; i<200; i++) {
        for (int j=10; j<100; j++) {
            //write_pixel(i, j, blue_pixel);
        }
    }
}