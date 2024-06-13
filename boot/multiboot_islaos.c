#include "multiboot_islaos.h"
#include "boot/multiboot.h"
#include "kernel/std/string.h"
#include <stdint.h>

int magic_nr;
struct multiboot_info *mb_info;
char bootloader_name[24];

void multiboot_info_get(int magic_nr_func, struct multiboot_info * mb_info_func)
{
	magic_nr=magic_nr_func;
	mb_info = mb_info_func;
	strcpy(bootloader_name, (char*) mb_info->boot_loader_name);
}