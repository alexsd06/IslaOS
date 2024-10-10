#include "kernel/fonts/font_lib.h"
#include "kernel/serial/serial.h"
#include "isr.h"

void isr_handler(isr_stack_frame* regs) {
     kprintln("INT (I think 69) called successfully! Interrupts are fully opeational!");
     //kprintint(regs->int_no);
     //kprintln("");
     if (regs->int_no >= 32) {  // Assuming IRQs start at interrupt 32
        if (regs->int_no == 69) {
            kprintln("INT 69 called successfully! Interrupts are fully opeational!");
        }
    }
}

__attribute__((noreturn))
void exception_handler()
{
    kprintln("IslaOS crashed! Bailing out, you are on your own!");
    //__asm__ volatile("iretq");
    __asm__ volatile ("cli; hlt"); // Completely hangs the computer
}