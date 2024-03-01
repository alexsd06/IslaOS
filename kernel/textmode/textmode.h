#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include "../../boot/multiboot.h"
#include "../../boot/multiboot_islaos.h"

int ram_size(struct multiboot_info *mb_info, char unit);
enum vga_color {
	VGA_COLOR_BLACK = 0,
	VGA_COLOR_BLUE = 1,
	VGA_COLOR_GREEN = 2,
	VGA_COLOR_CYAN = 3,
	VGA_COLOR_RED = 4,
	VGA_COLOR_MAGENTA = 5,
	VGA_COLOR_BROWN = 6,
	VGA_COLOR_LIGHT_GREY = 7,
	VGA_COLOR_DARK_GREY = 8,
	VGA_COLOR_LIGHT_BLUE = 9,
	VGA_COLOR_LIGHT_GREEN = 10,
	VGA_COLOR_LIGHT_CYAN = 11,
	VGA_COLOR_LIGHT_RED = 12,
	VGA_COLOR_LIGHT_MAGENTA = 13,
	VGA_COLOR_LIGHT_BROWN = 14,
	VGA_COLOR_WHITE = 15,
};
 
//inline uint8_t vga_entry_color(enum vga_color fg, enum vga_color bg);
 
//inline uint16_t vga_entry(unsigned char uc, uint8_t color);
 
size_t strlen(const char* str);

extern size_t VGA_WIDTH;
extern size_t VGA_HEIGHT;
 
extern size_t terminal_row;
extern size_t terminal_column;
extern uint8_t terminal_color;
extern uint16_t* terminal_buffer;
 
void terminal_initialize(void);
 
void terminal_setcolor(uint8_t color);
 
void terminal_putentryat(char c, uint8_t color, size_t x, size_t y);
 
void terminal_putchar(char c);
 
void terminal_write(const char* data, size_t size);
 
void terminal_writestring(const char* data);

int oglindit (int nr, int *zero_before);

void terminal_putint (int cif);
void terminal_writeint(int data);

void terminal_endl();

void terminal_writestringint (const char* data, int nr, int endl);
void terminal_writestringstring (const char* data, const char *data2, int endl);
void text_mode_debug();