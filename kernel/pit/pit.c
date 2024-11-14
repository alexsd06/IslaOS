#include "kernel/pic/pic.h"
#include "kernel/fonts/font_lib.h"
#include "kernel/drivers/io/io.h"

void pit_isr_handler() {
    kprintln("PIT Interrupt arrived!");
    io_wait();
    PIC_sendEOI(0);
}