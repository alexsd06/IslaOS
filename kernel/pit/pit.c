#include "kernel/drivers/io/io.h"
#include "kernel/std/math.h"
#include "kernel/fonts/font_lib.h"

unsigned int read_pit_count(void) {
	unsigned count = 0;
 
	// Disable interrupts
	cli();
 
	// al = channel in bits 6 and 7, remaining bits clear
	outb(0x43,0b0000000);
 
	count = inb(0x40);		// Low byte
	count |= inb(0x40)<<8;		// High byte
 
	return count;
}
unsigned int last_pit_count=0xffff;
unsigned int pit_timer=0;
unsigned system_time_nsecs=0;
unsigned system_time_usecs=0;
unsigned system_time_msecs=0;
unsigned system_time_secs=0;

const int MAXL=2000000000;
void check_pit()
{
    unsigned int pit_count=read_pit_count();
    int diff=last_pit_count-pit_count;
    if (diff < 0) {
        diff=last_pit_count+0xffff-pit_count;
    }
    pit_timer+=diff;
    if (pit_timer>MAXL/838) pit_timer=0;
    system_time_nsecs=pit_timer*838;
    if (abs(system_time_nsecs/1000-system_time_usecs)>1) system_time_usecs++;
    if (abs(system_time_usecs/1000-system_time_msecs)>1) system_time_msecs++;
    if (abs(system_time_msecs/1000-system_time_secs)>1) system_time_secs++;

    if (system_time_usecs>MAXL) system_time_usecs=0;
    if (system_time_msecs>MAXL) system_time_msecs=0;
    if (system_time_secs>MAXL) system_time_secs=0;
}
unsigned int get_system_ns() {return system_time_nsecs;}
unsigned int get_system_us() {return system_time_usecs;}
unsigned int get_system_ms() {return system_time_msecs;}
unsigned int get_system_se() {return system_time_secs;}

void mstime()
{
    kprint ("Time in milliseconds since boot: "); kprintint(system_time_msecs); kprintln("...");
}
void time()
{
    kprint ("Time in seconds since boot: "); kprintint(system_time_secs); kprintln("...");
}

void ustime()
{
    kprint ("Time in microseconds since boot: "); kprintint(system_time_usecs); kprintln("...");
}
void nstime()
{
    kprint ("Time in nanoseconds since boot: "); kprintint(system_time_nsecs); kprintln("...");
}