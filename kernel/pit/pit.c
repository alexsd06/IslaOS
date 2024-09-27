#include "kernel/drivers/io/io.h"
#include "kernel/std/math.h"
#include "kernel/fonts/font_lib.h"
#include "kernel/std/time.h"
#include "kernel/arch/arch.h"
#include "kernel/drivers/keyboard/keyboard.h"

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

const uint_t MAXL=2000000000;
void check_pit()
{
    unsigned int pit_count=read_pit_count();

    int diff=0;
    if (last_pit_count>=pit_count) diff=last_pit_count-pit_count;
    else diff=last_pit_count+0xffff-pit_count;
    last_pit_count=pit_count;

    pit_timer+=diff;
    if (pit_timer>MAXL/838) pit_timer=0;

    //My seconds are shorter than seconds?? :/
    system_time_nsecs=pit_timer*838;

    if (abs(system_time_nsecs/1000-system_time_usecs)>1) system_time_usecs++;
    if (abs(system_time_usecs/1000-system_time_msecs)>1) system_time_msecs++;
    if (abs(system_time_msecs/1000-system_time_secs)>1) system_time_secs++;

    if (system_time_nsecs>MAXL) system_time_nsecs=0;
    if (system_time_usecs>MAXL) system_time_usecs=0;
    if (system_time_msecs>MAXL) system_time_msecs=0;
    if (system_time_secs>MAXL) system_time_secs=0;
}
unsigned int get_system_ns() {return system_time_nsecs;}
unsigned int get_system_us() {return system_time_usecs;}
unsigned int get_system_ms() {return system_time_msecs;}
unsigned int get_system_se() {return system_time_secs;}

uint_t get_system_time(char c) {
    check_pit();
    switch (c) {
        case 's':
            return system_time_secs;
        case 'm':
            return system_time_msecs;
        case 'u':
            return system_time_secs;
        case 'n':
            return system_time_nsecs;
            break;
    }
    return 0;
}


//Only works when check_pit is run continously. It doesn't work even inside mainframe

void ktime(char c)   {
    check_pit();
    switch (c) {
        case 's':
            kprint ("Time in seconds since boot: "); kprintint(system_time_secs); kprintln("...");
            break;
        case 'm':
            kprint ("Time in milliseconds since boot: "); kprintint(system_time_msecs); kprintln("...");
            break;
        case 'u':
            kprint ("Time in microseconds since boot: "); kprintint(system_time_usecs); kprintln("...");
            break;
        case 'n':
            kprint ("Time in nanoseconds since boot: "); kprintint(system_time_nsecs); kprintln("...");
            break;
    }
}


void kctime(char c)
{
    while (true) {
        clear();
        ktime(c);
        update_keyboard_status();
        if (is_key_pressed('c')) {
            cancel_keypress('c');
            break;
        }
        delay(200);
    }
}
#pragma GCC push_options
#pragma GCC optimize ("O0")


void sleep (int time, char unit)
{
    int sys_time=get_system_time(unit);
    while ((int)abs(sys_time-get_system_time(unit))<time) {
        check_pit();
        continue;
    }
}
#pragma GCC pop_options
void nstime() {ktime('n');}
void ustime() {ktime('u');}
void mstime() {ktime('m');}
void time()   {ktime('s');}
void cnstime() {kctime('n');}
void custime() {kctime('u');}
void cmstime() {kctime('m');}
void ctime() {kctime('s');}