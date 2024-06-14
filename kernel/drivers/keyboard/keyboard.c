#include "kernel/drivers/io/io.h"
#include "keyboard.h"
#include "kernel/fonts/font_lib.h"
#include "kernel/std/math.h"
#include "kernel/std/time.h"

int lastkey;

unsigned char scancodes[128] =
{
    0,  27, '1', '2', '3', '4', '5', '6', '7', '8',	/* 9 */
  '9', '0', '-', '=', '\b',	/* Backspace */
  '\t',			/* Tab */
  'q', 'w', 'e', 'r',	/* 19 */
  't', 'y', 'u', 'i', 'o', 'p', '[', ']', '\n',	/* Enter key */
    0,			/* 29   - Control */
  'a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', ';',	/* 39 */
 '\'', '`',   0,		/* Left shift */
 '\\', 'z', 'x', 'c', 'v', 'b', 'n',			/* 49 */
  'm', ',', '.', '/',   0,				/* Right shift */
  '*',
    0,	/* Alt */
  ' ',	/* Space bar */
    0,	/* Caps lock */
    0,	/* 59 - F1 key ... > */
    0,   0,   0,   0,   0,   0,   0,   0,
    0,	/* < ... F10 */
    0,	/* 69 - Num lock*/
    0,	/* Scroll Lock */
    0,	/* Home key */
    0,	/* Up Arrow */
    0,	/* Page Up */
  '-',
    0,	/* Left Arrow */
    0,
    0,	/* Right Arrow */
  '+',
    0,	/* 79 - End key*/
    0,	/* Down Arrow */
    0,	/* Page Down */
    0,	/* Insert Key */
    0,	/* Delete Key */
    0,   0,   0,
    0,	/* F11 Key */
    0,	/* F12 Key */
    0,	/* All other keys are undefined */
};

int keypress[256];

int get_last_key_scancode()
{
	return lastkey;
}

int get_last_key_char(bool *pressed)
{
	if (lastkey>0x80) { //Key released
		*pressed=false;
		return scancodes[lastkey-0x80];
	}
	else { //Key pressed
		*pressed=true;
		return scancodes[lastkey];
	}
}

void update_keyboard_status()
{
	keyboard_read_key();
	bool pressed;
	int keycode=get_last_key_char(&pressed);
	if (keycode==0) return;
	if (pressed) {
		if (keypress[keycode]<INT32_MAX) {
			keypress[keycode]++;
		}
	}
}

void kinit_keyboard()
{
	kprintln("Init keyboard called!");
	/*
	outb(0x60, bin_to_dec(00100000)); //00100000 00000100
	*/
	outb(0x60, 0xf0); delay(10); outb(0x60, 0x2); //Scan code 2; //Scan code 2 gets translated to scan code 1
	//The line above should stop that, but it doesn't work;
	outb(0x60, 0xf0); delay(10); outb(0x60, 0x0);
	delay(10);
	int mode=inb(0x60);
	if (mode==0xFA) {
		kprintln("Scan mode aknowledged!");
		mode=inb(0x60);
	}
	if (mode==0x43) kprintln("Keyboard is in scancode 1! ");
	else if (mode==0x41) kprintln("Keyboard is in scancode 1 because of the PS/2 Controller! "); //Scanmode 2
	else if (mode==0x3f) kprintln("Keyboard is in scancode 3! ");
	else {
		kprintln("Keyboard is an unknown scancode! ");
	}
	//char *hex_mode=dec_to_hex(mode);
	//kprintln(hex_mode);
}
void keyboard_read_key()
{
	lastkey = 0;
	//lastkey = inb(0x60);
	if(inb(0x64) & 1)
		lastkey = inb(0x60);
}