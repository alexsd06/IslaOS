/*
#include "kernel/int/int.h"
#include "kernel/fonts/font_lib.h"
#include <stdbool.h>

//__attribute__((noreturn))
void exception_handler() {
    __asm__ volatile ("cli; hlt"); // Completely hangs the computer
    return;
}

void idt_set_descriptor(uint8_t vector, void* isr, uint8_t flags) {
    idt_entry_t* descriptor = &idt[vector];
 
    descriptor->isr_low        = (uint32_t)isr & 0xFFFF;
    descriptor->kernel_cs      = 0x08; // this value can be whatever offset your kernel code selector is in your GDT
    descriptor->attributes     = flags;
    descriptor->isr_high       = (uint32_t)isr >> 16;
    descriptor->reserved       = 0;
}

#define IDT_MAX_DESCRIPTORS 32 //?

static bool vectors[IDT_MAX_DESCRIPTORS];
 
extern void* isr_stub_table[];
 
void idt_init() {
    idtr.base = (uintptr_t)&idt[0];
    idtr.limit = (uint16_t)sizeof(idt_entry_t) * IDT_MAX_DESCRIPTORS - 1;

    for (uint8_t vector = 0; vector < 32; vector++) {
        idt_set_descriptor(vector, isr_stub_table[vector], 0x8E);
        vectors[vector] = true;
    }
 
    __asm__ volatile ("lidt %0" : : "m"(idtr)); // load the new IDT
    //__asm__ volatile ("sti"); // set the interrupt flag
}

void print_isr()
{
    kprint ("The ISR Stub table is at address: "); kprintinthex((int)isr_stub_table); kprintln("");
    kprint ("The IDTR is at address: "); kprintinthex((int)&idtr); kprintln("");
    kprint ("Vectors is at address: "); kprintinthex((int)vectors); kprintln("");

    for (int i = 0; i < IDT_MAX_DESCRIPTORS; i++) {
        kprint("IDT Entry "); kprintint(i); kprint(": ");
        kprintinthex((int)idt[i].isr_low); kprint(" ");
        kprintinthex((int)idt[i].isr_high); kprintln("");
    }
}
*/