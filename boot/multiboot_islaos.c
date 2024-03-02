#include "multiboot_islaos.h"

int magic_nr;
int pixelwidth, pitch;
int FRAMEBUFFER_WIDTH, FRAMEBUFFER_HEIGHT;

unsigned char *framebuffer;

struct multiboot_info *mb_info;

void multiboot_info_get(int magic_nr_func, struct multiboot_info * mb_info_func)
{
	magic_nr=magic_nr_func;
	mb_info = mb_info_func;
}