#include "arch/arch.h"

void init_timer();
void set_pit_count(unsigned count);
void check_pit();
uint_t get_system_time(char c);
void ktime();
void kctime();

void nstime();
void ustime();
void mstime();
void time();
void cnstime();
void custime();
void cmstime();
void ctime();

void pic_remap();
void pit_interrupt_handler();
void pit_set_frequency(uint32_t frequency);
void pic_enable_irq0();

void sleep (int time, char unit);
void delay(int time);