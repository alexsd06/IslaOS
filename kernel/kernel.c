#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#include "textmode/textmode.h"
#include "boot/multiboot.h"
#include "boot/multiboot_islaos.h"
#include "fonts/font_lib.h"
#include "memory/kmalloc.h"
#include "drivers/keyboard.h"

 
/* Check if the compiler thinks you are targeting the wrong operating system. */
#if defined(__linux__)
#error "You are not using a cross-compiler, you will most certainly run into trouble"
#endif
 
/* This tutorial will only work for the 32-bit ix86 targets. */
#if !defined(__i386__)
#error "This tutorial needs to be compiled with a ix86-elf compiler"
#endif
 
/* Hardware text mode color constants. */

static void putpixel(unsigned char* screen, int x,int y, int r, int g, int b) {
    unsigned where = x*pixelwidth + y*pitch;
	screen[where] = b;            				// BLUE
    screen[where + 1] = g;   					// GREEN
    screen[where + 2] = r;  					// RED

    //screen[where] = color & 255;              // BLUE
    //screen[where + 1] = (color >> 8) & 255;   // GREEN
    //screen[where + 2] = (color >> 16) & 255;  // RED
}

int NEXT_RAND;

void get_first_seed(int random_seed)
{
	srand(random_seed);
}
int rand(void)  // RAND_MAX assumed to be 32767
{
    NEXT_RAND = NEXT_RAND * 1103515245 + 12345;
    return (unsigned int) (NEXT_RAND / 65536) % 32768;
}
 
void srand(unsigned int seed)
{
    NEXT_RAND = seed;
}

void draw_random_pixels()
{
	srand(1);

	while (true) {
		for (int i=0; i<FRAMEBUFFER_WIDTH; i++) {
			for (int j=0; j<FRAMEBUFFER_HEIGHT; j++) {
				int r=rand()%255;
				int g=rand()%255;
				int b=rand()%255;
				putpixel(framebuffer, i, j, r, g, b);
			}
		}
		//return 0;
	}
}

void beta_delay()
{
	int a;
	for (int i=1; i<=10000000; i++) {
		a=rand();
	}
}

void log_text()
{
	kprint("IslaOS Kernel initialized!\n\n");
	kprint("kernel@IslaOS:/$ \n");
	kprint("Welcome to Operating System development; the great frontier. Not all \"make it\" in this field, many don't even pass the \"Hello World\" of OS development, but perhaps you will go further and create the next Linux? Or Windows? Or are your goals lower - MenuetOS? Or even CP/M? Whatever your goals, OSDev'ing is the great pinnacle of programming. But, you're not alone. In fact, this entire website, including the forums and this Wiki, are dedicated to OSDev'ing. This is not only about great programming skills, but is about community and developing friendships. Be those friendships between fellow forum members or IRQs and processes. What do you need to succeed in OSDev'ing? You should read the Getting Started article. If you are going to use C/C++ as your language of choice, you are required to build a GCC Cross-Compiler first. And if you prefer to use other Languages then it is important to have some similar tools (e.g. compiler) or if there's no such tools it is often only your efforts that can help you. But going along with your preferred language can add some motivation and excitement during your work. Good luck!");
	kprint("\n");
	char s[]="IslaOS ";
	while (true) {
		kprint(s);
		beta_delay();
	}
}

void gui_mode()
{
	framebuffer=mb_info->framebuffer_addr;

	pitch=mb_info->framebuffer_pitch;
	pixelwidth=mb_info->framebuffer_bpp/8; //BitPerPixel to BytePerPixel

	FRAMEBUFFER_WIDTH=mb_info->framebuffer_width;
	FRAMEBUFFER_HEIGHT=mb_info->framebuffer_height;

	srand(1);

	//draw_random_pixels();
	log_text();
	
}
int NEXT_RAND;
void kernel_main(void) 
{
	//text_mode_debug(); /*For this to work remove some video flags from boot.s*/
	kinit_memory();
	gui_mode();
}
