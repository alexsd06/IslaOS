#include <stdint.h>
extern int magic_nr;
extern struct multiboot_info *mb_info;

void multiboot_info_get(int magic_nr_func, struct multiboot_info * mb_info_func);
extern char bootloader_name[24];