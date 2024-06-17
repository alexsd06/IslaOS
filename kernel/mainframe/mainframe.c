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
#include "kernel/mainframe/games/tetris.h"
#include "kernel/drivers/video/video.h"
#include "kernel/ramdisk/ramdisk.h"
#include "kernel/pit/pit.h"
#include "arch/arch.h"

int last_key_print=0;
int key_print_delay=50; //milliseconds


char command_buffer[1080*1920];
int command_buffer_size=0;

void unknown()
{
	kprintln ("Unknown command typed!\n");
}

void help()
{
	kprintln("");
	kprintln ("Help for IslaOS "ARCH" Kernel 1.0");
	kprintln ("help - Shows this menu");
	kprintln ("plm - Try it and see the result");
	kprintln ("clear - Clears the screen");
	kprintln ("islafetch / fetch - Neofetch for IslaOS");
	kprintln ("homufetch - Homura neofetch for IslaOS");
	kprintln ("crdisk - Show info about the ramdisk");
	kprintln ("dir / ls - List the file on the ramdisk");
	kprintln ("tetris - Starts a cool game of tetris");
	kprintln ("ns/us/ms/time - Prints time since boot in different si units");
	kprintln ("c/ns/us/ms/time - Sames as normal time, except it does it forever");
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
	"help", "plm", "clear", "islafetch", "homufetch", "crdisk", "dir", "ls",
	"tetris", "nstime", "ustime", "mstime", "time", "cnstime", "custime", "cmstime", "ctime"
};

FunctionCallback command_functions[]={
	&help, &plm, &clear, &islafetch, &homufetch, &crdisk, &dir, &ls,
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
	kprint("IslaOS "ARCH" Kernel initialized!\n\n");
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