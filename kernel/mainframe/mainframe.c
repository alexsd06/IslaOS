#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#include "boot/multiboot.h"
#include "boot/multiboot_islaos.h"
#include "kernel/fonts/font_lib.h"
#include "kernel/memory/kmalloc.h"
#include "kernel/drivers/keyboard/keyboard.h"
#include "kernel/std/time.h"
#include "kernel/drivers/io/io.h"
#include "kernel/std/string.h"
#include "kernel/mainframe/images/tga.h"
#include "kernel/mainframe/games/tetris.h"
#include "kernel/drivers/video/video.h"
#include "kernel/ramdisk/ramdisk.h"
#include "kernel/pit/pit.h"

int last_key_print=0;
int key_print_delay=50; //milliseconds


char command_buffer[1080*1920];
int command_buffer_size=0;

void info()
{
	kprintln("");
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
	kprintln("");
}

void shutdown(void);

void exit()
{
	kprintln("Shuting down!");
}

void unknown()
{
	kprintln ("Unknown command typed!\n");
}

void help()
{
	kprintln("");
	kprintln ("Help for IslaOS Kernel 1.0");
	kprintln ("help - Shows this menu");
	kprintln ("plm - Try it and see the result");
	kprintln ("info - Shows some info about the system");
	kprintln ("clear - Clears the screen");
	kprintln ("exit - Shutdowns the PC");
	kprintln ("islafetch / fetch - Neofetch for IslaOS");
	kprintln ("homufetch - Homura neofetch for IslaOS");
	kprintln ("crdisk - Show info about the ramdisk");
	kprintln ("dir / ls - List the file on the ramdisk");
	kprintln ("tetris - Starts a cool game of tetris!");
	kprintln ("nstime - Prints time since boot in nanoseconds.");
	kprintln ("ustime -  Print time in microseconds since boot.");
	kprintln ("mstime -  Print time in milliseconds since boot.");
	kprintln ("time - Prints time since boot in seconds.");
	kprintln ("cnstime - Prints time since boot in nanoseconds.");
	kprintln ("custime -  Print time in microseconds since boot.");
	kprintln ("cmstime -  Print time in milliseconds since boot.");
	kprintln ("ctime - Prints time since boot in seconds.");
	kprintln("");
}

void plm()
{
	kprintln("");
	kprintln("Ba de ce ma injuri bagami-as eax-ul in ecx-ul matii!?");
	kprintln("");
}

typedef void (*FunctionCallback)();
int last_key_typed;
char command_string[][25]={
	"help", "plm", "info", "clear", "exit", "islafetch", "homufetch", "crdisk", "dir", "ls",
	"tetris", "nstime", "ustime", "mstime", "time", "cnstime", "custime", "cmstime", "ctime"
};

FunctionCallback command_functions[]={
	&help, &plm, &info, &clear, &exit, &islafetch, &homufetch, &crdisk, &dir, &ls,
	&tetris, &nstime, &ustime, &mstime, &time, &cnstime, &custime, &cmstime, &ctime
};
void exec()
{
	for (int i=0; i<(int)(sizeof(command_string)/25/sizeof(char)); i++) {
		//kprint(command_string[i]); kprint(" "); kprintint(strcmppoz(command_buffer, command_string[i]));
		//kprint(" "); kprintint(strlen(command_string[i])); kprintln("");
		if (strcmppoz(command_buffer, command_string[i])==strlen(command_string[i])) {
			command_functions[i]();
			return;
		}
	}
	if (strcmp(command_buffer, "")==0) return;
	else unknown();
	//TODO: 
	//else if (strcmp(command_buffer, "print-isr")==0) print_isr();
	//else if (strcmp(command_buffer, "print-gdt")==0) print_gdt();
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
	last_key_print=get_system_ms();
	last_key_typed=key;
}
/*
BUGS:
*/
void mainframe()
{
	last_key_typed=0;
	kprint("IslaOS Kernel initialized!\n\n");
	kprint("kernel@IslaOS:/$ ");
	write_chard('|', true);
	command_buffer[0]=0;
	cursor_back();
	while (true) {
		if (last_key_print==INT32_MAX) last_key_print=0;
		update_keyboard_status();
		for (int i=0; i<256; i++) {
			if (keypress[i]!=0) {
				if (i!=last_key_typed&&(int)get_system_ms()-last_key_print>key_print_delay) type_key(i);
				else if (keypress[i]!=0) type_key(i);
				keypress[i]=0;
			}
		}
		check_pit();
	}
}