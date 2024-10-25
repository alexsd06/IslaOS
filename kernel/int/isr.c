#include "kernel/fonts/font_lib.h"
#include "kernel/serial/serial.h"
#include "isr.h"

void print_stack() {
    uint64_t *stack;
    asm volatile ("mov %%rsp, %0" : "=r" (stack));
    kprintln("");
    kprint("Stack pointer: "); kprintinthex((uintptr_t)stack); kprintln("");
    kprintln("Last 10 stack entries:");
    for (int i = 0; i < 20; i++) {
        kprint("    "); kprintinthex(stack[i]); kprint(" ");
        if ((i+1)%4==0) kprintln("");
    }
    kprintln("");kprintln("");
}

void inter() {
    kprintln("inter() in!");
    print_stack();
    __asm__ volatile("int $69");
    print_stack();
    kprintln("inter() out!");
    // __asm__ volatile("xchgw %bx, %bx");
}

void isr_handler(int int_num) {
     kprint("INT "); kprintint(int_num); kprintln(" received!");
     if (int_num<32) {
        print_stack();
        kprintln("IslaOS crashed! Bailing out, you are on your own. Good luck.");
        __asm__ volatile("cli");
        while (1) {
            __asm__ volatile("hlt");
        }
     }
}