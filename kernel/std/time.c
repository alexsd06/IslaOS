#include <stdint.h>

#pragma GCC push_options
#pragma GCC optimize ("O0") //Disables GCC optimizations or else this won't work
void delay(int time) //time in millis :)). yes i know this is shit but I don't know how to IRQ...
{
	for (int i=0; i<200000*time; i++) continue;
}
#pragma GCC pop_options

uint64_t timer;
void increase_timer()
{
	timer+=1;
}
void kinit_timer()
{
	timer=0;
}
uint64_t get_timer()
{
	return timer;
}