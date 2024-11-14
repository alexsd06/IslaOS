#include "kernel/pic/pic.h"
#include "kernel/fonts/font_lib.h"
#include "kernel/drivers/io/io.h"

#define PIT_COMMAND_PORT 0x43
#define PIT_CHANNEL_0_DATA_PORT 0x40
#define PIT_FREQUENCY 1193182
#define TARGET_FREQUENCY 1000 // 1ms = 1000 Hz

int pit_count=0;

void set_pit_frequency(int frequency) {
    uint16_t divisor = (uint16_t)(PIT_FREQUENCY / frequency);
    // Send the command byte.
    outb(PIT_COMMAND_PORT, 0x36);
    // Send the divisor low byte.
    outb(PIT_CHANNEL_0_DATA_PORT, (uint8_t)(divisor & 0xFF));
    // Send the divisor high byte.
    outb(PIT_CHANNEL_0_DATA_PORT, (uint8_t)((divisor >> 8) & 0xFF));
}

void init_timer() {
    set_pit_frequency(TARGET_FREQUENCY);
}

void pit_isr_handler() {
    pit_count++;
    PIC_sendEOI(0);
}

void kpit()
{
    kprint("The PIT count is: "); kprintint(pit_count); kprintln(" ms!");
}