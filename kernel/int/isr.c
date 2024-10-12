#include "kernel/fonts/font_lib.h"
#include "kernel/serial/serial.h"
#include "isr.h"

void isr_handler(int int_num) {
     kprint("INT "); kprintint(int_num); kprintln(" received!");
     if (int_num<32) {
        kprintln("IslaOS crashed! Bailing out, you are on your own!");
        __asm__ volatile("cli");
        while (1) {
            __asm__ volatile("hlt");
        }
     }
}