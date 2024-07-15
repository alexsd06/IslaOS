#include "arch/arch.h"

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

void sleep (int time, char unit);
