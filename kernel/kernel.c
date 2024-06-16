#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#include "boot/multiboot.h"
#include "boot/multiboot_islaos.h"
#include "fonts/font_lib.h"
#include "memory/kmalloc.h"
#include "drivers/keyboard/keyboard.h"
#include "kernel/std/math.h"
#include "mainframe/mainframe.h"
#include "kernel/drivers/video/video.h"
#include "kernel/std/time.h"
#include "kernel/ramdisk/ramdisk.h"
#include "kernel/serial/serial.h"
#include "kernel/debug/debug.h"
 
/* Check if the compiler thinks you are targeting the wrong operating system. */
#if defined(__linux__)
#error "You are not using a cross-compiler, you will most certainly run into trouble"
#endif
 
/* Hardware text mode color constants. */

static void putpixel(uint64_t * screen, int x,int y, int r, int g, int b) {
    unsigned where = x*pixelwidth + y*pitch;
	screen[where] = b;            				// BLUE
    screen[where + 1] = g;   					// GREEN
    screen[where + 2] = r;  					// RED

    //screen[where] = color & 255;              // BLUE
    //screen[where + 1] = (color >> 8) & 255;   // GREEN
    //screen[where + 2] = (color >> 16) & 255;  // RED
}

int NEXT_RAND;


void srand(unsigned int seed)
{
    NEXT_RAND = seed;
}

void get_first_seed(int random_seed)
{
	srand(random_seed);
}
int rand(void)  // RAND_MAX assumed to be 32767
{
    NEXT_RAND = NEXT_RAND * 1103515245 + 12345;
    return (unsigned int) (NEXT_RAND / 65536) % 32768;
}

void draw_random_pixels()
{
	srand(1);

	while (true) {
		for (int i=0; i<(int)FRAMEBUFFER_WIDTH; i++) {
			for (int j=0; j<(int)FRAMEBUFFER_HEIGHT; j++) {
				int r=rand()%255;
				int g=rand()%255;
				int b=rand()%255;
				putpixel(framebuffer, i, j, r, g, b);
			}
		}
		//return 0;
	}
}
int NEXT_RAND;
//home/alex/Documents/OSDev/IslaOS/kernel/std/string.c:35
//home/alex/Documents/OSDev/IslaOS/kernel/std/string.c:39
//home/alex/Documents/OSDev/IslaOS/kernel/ramdisk/ramdisk.c:14 (discriminator 1)
void kernel_main(void) 
{
	//text_mode_debug(); /*For this to work remove some video flags from boot.s*/
	init_serial();
	debug();
	write_serial_string("Hello from IslaOS "ARCH"!\n"); //IT PRINTS THE FIRST LETTER IN X64!!!
	write_serial_string("The magic number is: "); write_serial_int(magic_nr); write_serial_string("\n");
	write_serial_string("The multiboot data is at: "); write_serial_int((uint_t)mb_info); write_serial_string("\n");
	parse_ramdisk();
	srand(1);
	kinit_memory();
	//kinit_timer(); We are having PIT baby :)!
	kinit_videobuffer();
	kinit_keyboard();
	mainframe();
}
