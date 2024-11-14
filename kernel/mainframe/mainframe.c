#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#include "kernel/fonts/font_lib.h"
#include "kernel/memory/kmalloc.h"
#include "kernel/drivers/keyboard/keyboard.h"
#include "kernel/drivers/io/io.h"
#include "kernel/std/string.h"
#include "kernel/mainframe/images/tga.h"
#include "kernel/mainframe/games/tetris/tetris.h"
#include "kernel/drivers/video/video.h"
#include "kernel/ramdisk/ramdisk.h"
#include "kernel/time/time.h"
#include "arch/arch.h"
#include "kernel/std/math.h"
#include "kernel/int/isr.h"


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
	kprintln ("inter - Trigger interrupt 69");
	kprintln ("div0 - Divide by 0 to see how it is handled");
	kprintln ("print-stack - Prints the last 20 entries in stack!");
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

void exit_islaos(uint16_t port, uint16_t value) {
    asm volatile ("outw %0, %1" : : "a" (value), "Nd" (port));
}

void exit(void)
{
	kprintln ("Exiting IslaOS...");
	exit_islaos(0xB004, 0x2000); //For Bochs / older QEMU.
	exit_islaos(0x604, 0x2000); //For newer QEMU.
	exit_islaos(0x4004, 0x3400); //For Virtualbox. *not working :(*
	exit_islaos(0x600, 0x34); //Cloud Hypervisor ??
}

char command_string[][25]={
	"help", "plm", "clear", "isla", "homu", "crdisk", "dir", "ls",
	"tetris", "dizzy", "nstime", "ustime", "mstime", "time", "cnstime", "custime", "cmstime", "ctime", "exit",
	"inter", "div0", "print-stack"
};

FunctionCallback command_functions[]={
	&help, &plm, &clear, &isla, &homu, &crdisk, &dir, &ls,
	&tetris, &dizzy, &nstime, &ustime, &mstime, &time, &cnstime, &custime, &cmstime, &ctime, &exit,
	&inter, &div0, &print_stack
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
		if (key_pressed==-1) {
			io_wait();
			continue;
		}
		type_key(key_pressed);
		keypress_aknowledged();
	}
}