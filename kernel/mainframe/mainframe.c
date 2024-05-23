#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#include "boot/multiboot.h"
#include "boot/multiboot_islaos.h"
#include "fonts/font_lib.h"
#include "kernel/memory/kmalloc.h"
#include "kernel/drivers/keyboard/keyboard.h"
#include "kernel/std/time.h"
#include "kernel/drivers/io/io.h"
#include "kernel/std/string.h"
#include "kernel/mainframe/images/tga.h"
#include "kernel/drivers/video/video.h"

int time_since_last_print=0;
int key_print_delay=200000;


char command_buffer[1080*1920];
int command_buffer_size=0;

void info()
{
	if (magic_nr!=732803074) {
		kprint("The magic number is not: "); kprintint(732803074); kprintln("");
		kprint("It is instead: "); kprintint(magic_nr); kprintln("");
		kprint("Halting!\n");
	}

	kprint("The magic number is: "); kprintint(magic_nr); kprintln("");
	kprint("The bootloader name is: "); kprint(bootloader_name); kprintln(""); 
	kprint("The framebuffer width is: "); kprintint(FRAMEBUFFER_WIDTH); kprintln("");
	kprint("The framebuffer height is: "); kprintint(FRAMEBUFFER_HEIGHT); kprintln("");
	
	kprint("Total RAM size: "); kprintint(ram_size('M')); kprintln(" MB");
	kprint("Total RAM available: "); kprintint(ram_available('M')); kprintln(" MB");
	
}

void shutdown(void);

void exit()
{
	kprintln("Shuting down!");
	shutdown();
}

void help()
{
	kprintln ("Help for IslaOS Kernel 1.0");
	kprintln ("help - Shows this menu");
	kprintln ("plm - Try it and see the result");
	kprintln ("info - Shows some info about the system");
	kprintln ("clear - Clears the screen");
	kprintln ("exit - Shutdowns the PC");
	kprintln ("islafetch - ...");
}

void unknown()
{
	kprintln ("Unknown command typed!");
}

void islafetch()
{
	read_image();
}

int last_key_typed;

void exec()
{
	//kprintln(command_buffer);
	if (strcmp(command_buffer, "help")==0) help();
	else if (strcmp(command_buffer, "plm")==0) kprintln("Ba de ce ma injuri bagami-as eax-ul in ecx-ul matii!?");
	else if (strcmp(command_buffer, "info")==0) info();
	else if (strcmp(command_buffer, "clear")==0) clear_screen();
	else if (strcmp(command_buffer, "exit")==0) exit();
	else if (strcmp(command_buffer, "islafetch")==0) islafetch();
	else islafetch();
}

void type_key(int key)
{
	if (key!='\n'&&key!='\b') {
		write_chard(key, true);
		write_chard('|', true);
		cursor_back();
		command_buffer[command_buffer_size++]=key;
		command_buffer[command_buffer_size]='\0';
	}
	else {
		if (key=='\b'&&command_buffer_size>0) {
			write_chard(' ', true);
			cursor_back();
			command_buffer[--command_buffer_size]='\0';
		}
		if (key=='\n') write_chard(' ', true);
		write_chard(key, true);
		if (key=='\n') {
			exec();
			command_buffer_size=0;
			command_buffer[command_buffer_size]='\0';
			kprint("kernel@IslaOS:/$ ");
		}
		write_chard('|', true);
		cursor_back();
	}
	time_since_last_print=0;
	last_key_typed=key;
}

void mainframe()
{
	last_key_typed=0;
	kprint("\nIslaOS Kernel initialized!\n\n");
	kprint("kernel@IslaOS:/$ ");
	write_chard('|', true);
	command_buffer[0]=0;
	cursor_back();
	while (true) {
		time_since_last_print+=1;
		if (time_since_last_print==INT32_MAX) time_since_last_print=0;
		update_keyboard_status();
		for (int i=0; i<256; i++) {
			if (keypress[i]!=0) {
				if (i!=last_key_typed&&time_since_last_print>key_print_delay) type_key(i);
				else if (keypress[i]!=0) type_key(i);
				keypress[i]=0;
			}
		}
		time_since_last_print++;
		increase_timer();
	}
}