#include "io.h"
#include "keyboard.h"

int lastkey;
void keyboard_read_key()
{
	lastkey = 0;
	if(inb(0x64) & 1)
		lastkey = inb(0x60);
}