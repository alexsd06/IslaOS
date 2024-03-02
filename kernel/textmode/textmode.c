#include "textmode.h"
#include "kernel/math/math.h"

size_t VGA_WIDTH = 80;
size_t VGA_HEIGHT = 25;
 
size_t terminal_row;
size_t terminal_column;
uint8_t terminal_color;
uint16_t* terminal_buffer;

inline uint8_t vga_entry_color(enum vga_color fg, enum vga_color bg) 
{
	return fg | bg << 4;
}

inline uint16_t vga_entry(unsigned char uc, uint8_t color) 
{
	return (uint16_t) uc | (uint16_t) color << 8;
}


int ram_size(struct multiboot_info *mb_info, char unit)
{
	int size_bytes=mb_info->mem_upper-mb_info->mem_lower;
	if (unit=='M') return size_bytes/1024;
	if (unit=='G') return size_bytes/(1024*1024);
	return size_bytes;
}

size_t strlen(const char* str) 
{
	size_t len = 0;
	while (str[len])
		len++;
	return len;
}

void terminal_initialize(void) 
{
	terminal_row = 0;
	terminal_column = 0;
	terminal_color = vga_entry_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
	terminal_buffer = (uint16_t*) 0xB8000;
	for (size_t y = 0; y < VGA_HEIGHT; y++) {
		for (size_t x = 0; x < VGA_WIDTH; x++) {
			const size_t index = y * VGA_WIDTH + x;
			terminal_buffer[index] = vga_entry(' ', terminal_color);
		}
	}
}

void terminal_setcolor(uint8_t color) 
{
	terminal_color = color;
}

void terminal_putentryat(char c, uint8_t color, size_t x, size_t y) 
{
	const size_t index = y * VGA_WIDTH + x;
	terminal_buffer[index] = vga_entry(c, color);
}

void terminal_putchar(char c) 
{
	if (c=='\n') {
		terminal_row+=1;
		terminal_column=0;
		return;
	}
	terminal_putentryat(c, terminal_color, terminal_column, terminal_row);
	if (++terminal_column == VGA_WIDTH) {
		terminal_column = 0;
		if (++terminal_row == VGA_HEIGHT)
			terminal_row = 0;
	}
}

void terminal_write(const char* data, size_t size) 
{
	for (size_t i = 0; i < size; i++)
		terminal_putchar(data[i]);
}

void terminal_writestring(const char* data) 
{
	terminal_write(data, strlen(data));
}

void terminal_putint (int cif)
{
	char c=cif+'0';
	terminal_putchar(c);
}

void terminal_writeint(int data)
{
	int zero_before;
	data=oglindit(data, &zero_before);
	while (data) {
		int cif=data%10;
		terminal_putint (cif);
		data/=10;
	}
	while (zero_before) {
		terminal_putint(0);
		zero_before--;
	}
}

void terminal_endl()
{
	terminal_putchar('\n');
}

void terminal_writestringint (const char* data, int nr, int endl)
{
	terminal_writestring(data);
	terminal_writeint(nr);
	if (endl) terminal_endl();
}

void terminal_writestringstring (const char* data, const char *data2, int endl)
{
	terminal_writestring(data);
	terminal_writestring(data2);
	if (endl) terminal_endl();
}

void text_mode_debug()
{
	/* Initialize terminal interface */
	terminal_initialize();
	/* Newline support is left as an exercise. */
	terminal_writestring("Hello, kernel World!\n\n");
	terminal_setcolor(VGA_COLOR_RED);
	terminal_writestring("IslaOS Kernel launched!\n\n");
	terminal_setcolor(VGA_COLOR_GREEN);

	if (magic_nr!=732803074) {
		terminal_writestringint("The magic number is not: ", 732803074, true);
		terminal_writestringint("It is instead: ", magic_nr, true);
		terminal_writestring("Halting!\n");
	}

	terminal_writestringint("The magic number is: ", magic_nr, true);
	terminal_writestringstring("The bootloader name is: ", (char*) mb_info->boot_loader_name, true); 
	terminal_writestringint("The framebuffer width is: ", mb_info->framebuffer_width, true);
	terminal_writestringint("The framebuffer height is: ", mb_info->framebuffer_height, true);
	
	terminal_endl();
	
	terminal_writestringint("Lower Memory adress: ", mb_info->mem_lower, true);
	terminal_writestringint("Upperer Memory adress: ", mb_info->mem_upper, true);
	terminal_writestringint("Total RAM available: ", ram_size(mb_info, 'M'), false); terminal_writestring(" MB\n\n");
	
	terminal_writestringint("vbe_control_info: ", mb_info->vbe_control_info, 1);
	terminal_writestringint("vbe_mode_info: ", mb_info->vbe_mode_info, 1);
	terminal_writestringint("vbe_mode: ", mb_info->vbe_mode, 1); 
	
	terminal_endl();
	
	terminal_writestringint("vbe_interface_seg: ", mb_info->vbe_interface_seg, 1);
	terminal_writestringint("vbe_interface_off: ", mb_info->vbe_interface_off, 1);
	terminal_writestringint("vbe_interface_len: ", mb_info->vbe_interface_len, 1);
	
	terminal_endl();
}