#include "kernel/drivers/video/video.h"


//TODO: Random white line on the right margin
void draw_rectangle(int color, int y, int x, int h, int w, int gross, int fill)
{
    if (fill==1) {
        for (int i=y; i<y+h; i++) {
            for (int j=x; j<x+w; j++) {
                write_pixel(i, j, color);
            }
        }
    }
    else {
        for (int i=y; i<y+h; i++) {
            for (int g=0; g<gross; g++) {
                write_pixel(i, x+g, color);
                write_pixel(i, x+w-g, color);
            }
        }
        for (int j=x; j<x+w; j++) {
            for (int g=0; g<gross; g++) {
                write_pixel(y+g, j, color);
                write_pixel(y+h-g, j, color);
            }
        }
    }
}