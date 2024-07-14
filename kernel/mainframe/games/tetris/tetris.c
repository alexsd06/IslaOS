#include "mainframe/games/tetris/tetris.h"
#include "mainframe/images/tga.h"
#include "ramdisk/ramdisk.h"
#include "std/string.h"
#include "drivers/video/video.h"
#include "pit/pit.h"
#include "std/math.h"

tga_header_t *tetris_blocks[7];
const int color_count=7;
char block_colors[7][10]={
    "blue", "cyan", "green", "pink",
    "purple", "red", "yellow"
};

//for input_file in *.png; do convert "$input_file" -resize 32x32 -type TrueColorMatte -define tga:compression=none -define tga:origin=Top "${input_file%.png}.tga"; done

/*
10x20 grid, with 2 rows buffer size
1280x720x32, 1366x768
*/

void tetris()
{
    for (int i=0; i<color_count; i++) {
        char block_name[20];
        strcpy(block_name, block_colors[i]);
        strcat(block_name, "_block.tga");
        tetris_blocks[i]=(tga_header_t *) get_pointer_to_file(block_name);
    }

    int block_width=get_image_width(tetris_blocks[0]), block_height=get_image_height(tetris_blocks[0]);
    int fb_width=get_framebuffer_width();
    int offset=fb_width/2-block_width*5-15;
    for (int i=0; i<22; i++) {
        for (int j=0; j<10; j++) {
            check_pit();
            show_image(tetris_blocks[(i+j+get_system_time('n'))%7], i*block_height, j*block_width+offset);
        }
    }
}

void dizzy()
{
    for (int i=0; i<color_count; i++) {
        char block_name[20];
        strcpy(block_name, block_colors[i]);
        strcat(block_name, "_block.tga");
        tetris_blocks[i]=(tga_header_t *) get_pointer_to_file(block_name);
    }

    int block_width=get_image_width(tetris_blocks[0]), block_height=get_image_height(tetris_blocks[0]);
    int fb_height=get_framebuffer_height(), fb_width=get_framebuffer_width();

    while (1) {
        int sys_ms=get_system_time('m');
        for (int i=0; i<fb_height/block_height; i++) {
            for (int j=0; j<fb_width/block_width; j++) {
                //TODO: Implement random number generator
                check_pit();
                show_image(tetris_blocks[(i+j+get_system_time('n'))%7], i*block_height, j*block_width);
            }
        }
        while (abs(sys_ms-get_system_time('m'))<100) {
            check_pit();
            continue;
        }
    }
}