#include "arch/arch.h"

uint_t get_system_time(char c);

void rtc_ctime();
void rtc_time();

void pit_time(char c);
void pit_ctime(char c);

void sleep (int time, char unit);
void delay (int time);

void mstime();
void cmstime();
void stime();
void cstime();
