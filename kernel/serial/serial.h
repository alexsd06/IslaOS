#include "kernel/arch/arch.h"
#include <stdint.h>
int init_serial();
void write_serial(char a);
void write_serial_string (char * str);
void write_serial_int(uint_t data);
void write_serial_hex(uint_t data);