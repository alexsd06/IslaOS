#include <stdint.h>
#include "kernel/pit/pit.h"

#pragma GCC push_options
#pragma GCC optimize ("O0") //Disables GCC optimizations or else this won't work
//time in millis :)). yes i know this is shit but I don't know how to IRQ...
//UPDATED: Using PIT without IRQs because fuck IRQs;
void delay(int time)
{
	unsigned int mstime=get_system_ms();
	while (get_system_ms()<mstime+time) {
		check_pit();
		continue;
	}
	return;
}
#pragma GCC pop_options