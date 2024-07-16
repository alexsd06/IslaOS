#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#include "kernel/fonts/font_lib.h"
#include "kernel/memory/kmalloc.h"
#include "kernel/drivers/keyboard/keyboard.h"
#include "kernel/std/time.h"
#include "kernel/drivers/io/io.h"
#include "kernel/std/string.h"
#include "kernel/mainframe/images/tga.h"
#include "kernel/mainframe/games/tetris/tetris.h"
#include "kernel/drivers/video/video.h"
#include "kernel/ramdisk/ramdisk.h"
#include "kernel/pit/pit.h"
#include "arch/arch.h"
#include "kernel/std/math.h"

int last_key_print=0;
int key_print_delay=100; //milliseconds


char command_buffer[1080*1920];
int command_buffer_size=0;

void unknown()
{
	kprintln ("Unknown command typed!\n");
}

void help()
{
	kprintln("");
	kprintln ("Help for IslaOS "ARCH" Kernel "VERSION);
	kprintln ("help - Shows this menu");
	kprintln ("plm - Try it and see the result");
	kprintln ("clear - Clears the screen");
	kprintln ("isla - Neofetch for IslaOS");
	kprintln ("homu - Homura neofetch for IslaOS");
	kprintln ("crdisk - Show info about the ramdisk");
	kprintln ("dir / ls - List the file on the ramdisk");
	kprintln ("tetris - Starts a cool game of tetris");
	kprintln ("dizzy - Do you have seizures? Do not run this");
	kprintln ("ns/us/ms/time - Prints time since boot in different SI units");
	kprintln ("c/ns/us/ms/time - Sames as normal time, except it does it forever");
	kprintln ("exit - Shutdowns the computer (QEMU for now)");
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
	"help", "plm", "clear", "isla", "homu", "crdisk", "dir", "ls",
	"tetris", "dizzy", "nstime", "ustime", "mstime", "time", "cnstime", "custime", "cmstime", "ctime", "exit"
};

void exit(void) {
	kprintln ("Exiting IslaOS...");
    uint16_t port = 0x604;
    uint16_t value = 0x2000;
    asm volatile ("outw %0, %1" : : "a" (value), "Nd" (port));
}

FunctionCallback command_functions[]={
	&help, &plm, &clear, &isla, &homu, &crdisk, &dir, &ls,
	&tetris, &dizzy, &nstime, &ustime, &mstime, &time, &cnstime, &custime, &cmstime, &ctime, &exit
};

void exec()
{
	for (int i=0; i<(int)(sizeof(command_string)/25/sizeof(char)); i++) {
		if (strcmppoz(command_buffer, command_string[i])==strlen(command_string[i])) {
			command_functions[i]();
			return;
		}
	}
	if (strcmp(command_buffer, "")==0) return;
	else unknown();
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
	last_key_print=get_system_time('m');
	last_key_typed=key;
}
int fast_type=0;
/*
BUGS:
*/
void mainframe()
{
	last_key_typed=0;
	kprint("IslaOS "ARCH" Kernel version "VERSION" initialized!\n\n");
	kprint("kernel@IslaOS:/$ ");
	write_chard('|', true);
	command_buffer[0]=0;
	cursor_back();
	while (true) {
		if (last_key_print==INT32_MAX) last_key_print=0;
		update_keyboard_status();
		for (int i=0; i<256; i++) {
			check_pit();
			if (is_key_pressed(i)) {
				if (i==last_key_typed&&!fast_type) {
					//kprintint(abs((int)get_system_time('m')-last_key_print)); kprint(" "); kprintint(last_key_print); kprint(" "); kprintint((int)get_system_time('m')); kprintln("");
					if ((int)abs((int)get_system_time('m')-last_key_print)>key_print_delay) {
						type_key(i);
						fast_type=1;
					}
				}
				else {
					type_key(i);
					if (i!=last_key_typed) fast_type=0;
				}
				cancel_keypress(i);
			}
		}
	}
}