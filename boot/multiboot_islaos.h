#include <stdint.h>
extern int magic_nr;
extern int pixelwidth, pitch;
extern uint32_t FRAMEBUFFER_WIDTH, FRAMEBUFFER_HEIGHT;
extern unsigned char *framebuffer;
extern struct multiboot_info *mb_info;

void multiboot_info_get(int magic_nr_func, struct multiboot_info * mb_info_func);