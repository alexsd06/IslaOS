#include "kernel/pic/pic.h"
#include "kernel/fonts/font_lib.h"

void pit_isr_handler() {
    kprintln("PIT Interrupt arrived!");
    PIC_sendEOI(0);
}