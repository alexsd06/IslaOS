#include "kernel/drivers/io/io.h"
#include "kernel/std/math.h"
#include "kernel/fonts/font_lib.h"
#include "kernel/arch/arch.h"
#include "kernel/drivers/keyboard/keyboard.h"
#include "kernel/pit/pit.h"

const uint_t MAXL=2000000000;

unsigned int get_system_ms() {return pit_count;}
unsigned int get_system_se() {return pit_count/1000;}

uint_t get_system_time(char c) {
    int ret=0;
    switch (c) {
        case 's':
            ret = pit_count/1000;
            break;
        case 'm':
            ret = pit_count;
            break;
    }
    return ret;
}

#pragma GCC push_options
#pragma GCC optimize ("O0")

void sleep (int time, char unit)
{
    int sys_time=get_system_time(unit);
    while ((int)abs(get_system_time(unit)-sys_time)<time) {
        //continue;
        io_wait();
    }
}
void delay (int time) {
    sleep(time, 'm');
}

#pragma GCC pop_options

void pit_time(char c)   {
    switch (c) {
        case 's':
            kprint ("Time in seconds since boot: "); kprintint(pit_count/1000); kprintln("...");
            break;
        case 'm':
            kprint ("Time in milliseconds since boot: "); kprintint(pit_count); kprintln("...");
            break;
    }
}

void pit_ctime(char c)
{
    while (true) {
        clear();
        pit_time(c);
        if (is_key_pressed('c')) {
            cancel_keypress('c');
            break;
        }
        delay(100);
    }
}
void mstime() {pit_time('m');}
void cmstime() {pit_ctime('m');}

void stime() {pit_time('s');}
void cstime() {pit_ctime('s');}


uint8_t bcd_to_binary(uint8_t bcd) {
    return (bcd & 0x0F) + ((bcd >> 4) * 10);
}

int is_bcd_mode() {
    outb(0x70, 0x0B);             // Select Status Register B
    return !(inb(0x71) & 0x04);   // If bit 2 is clear, the data is in BCD
}

int is_rtc_updating()
{
    outb(0x70, 0x0A);       
    return inb(0x71) & 0x80;     
}

uint8_t read_rtc_register(uint8_t reg)
{
    while (is_rtc_updating());
    outb(0x70, reg);  
    int val=inb(0x71); 
    if (is_bcd_mode()) val=bcd_to_binary(val);
    return val;

}

#define SECONDS_REG 0x00
#define MINUTES_REG 0x02
#define HOURS_REG 0x04
#define DAYS_REG 0x07
#define MONTHS_REG 0x08
#define YEARS_REG 0x09

void read_rtc()
{
    uint8_t seconds, minutes, hours, day, month, year;
    seconds = read_rtc_register(SECONDS_REG);
    minutes = read_rtc_register(MINUTES_REG);
    hours   = read_rtc_register(HOURS_REG);
    day     = read_rtc_register(DAYS_REG);
    month   = read_rtc_register(MONTHS_REG);
    year    = read_rtc_register(YEARS_REG);
    kprint("Current time: "); kprintint(hours); kprint(":"); kprintint(minutes); kprint(":"); kprintint(seconds); kprintln("");
    kprint("Current date: "); kprintint(day); kprint("/"); kprintint(month); kprint("/"); kprintint(year); kprintln("");
}
void rtc_time() {read_rtc();}
void rtc_ctime() {
    while (true) {
        clear();
        read_rtc();
        if (is_key_pressed('c')) {
            keypress_aknowledged();
            break;
        }
        //keypress_aknowledged();
        delay(200);
    }
}