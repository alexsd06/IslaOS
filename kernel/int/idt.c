#include "idt.h"
#include "isr.h"
#include "kernel/fonts/font_lib.h"

#define IDT_MAX_DESCRIPTORS 256
#define GDT_OFFSET_KERNEL_CODE 0x08 
/*
Because it has the null segment descriptor in front of it 
and each entry in the GDT is exactly 8 bytes!
*/

__attribute__((aligned(0x10))) 
static idt_entry_t idt[IDT_MAX_DESCRIPTORS]; // Create an array of IDT entries; aligned for performance
static idtr_t idtr;

void idt_set_descriptor(uint8_t vector, void* isr, uint8_t flags) {
    idt_entry_t* descriptor = &idt[vector];

    descriptor->isr_low        = (uint64_t)isr & 0xFFFF;
    descriptor->kernel_cs      = GDT_OFFSET_KERNEL_CODE;
    descriptor->ist            = 0;
    descriptor->attributes     = flags;
    descriptor->isr_mid        = ((uint64_t)isr >> 16) & 0xFFFF;
    descriptor->isr_high       = ((uint64_t)isr >> 32) & 0xFFFFFFFF;
    descriptor->reserved       = 0;
}
extern void isr_handler_asm();
void init_idt()
{
    kprintln("Creating the IDTR pointer...");
    idtr.base = (uintptr_t)&idt[0];
    idtr.limit = (uint16_t)sizeof(idt_entry_t) * IDT_MAX_DESCRIPTORS - 1;
    for (int i=0; i<32; i++) {
        //I FUCKING HAD FLAGS ON 0xE instad of 0x8E!!!!!!;
        /*Example type_attributes values that people are likely to use (assuming DPL is 0):
        64-bit Interrupt Gate: 0x8E (p=1, dpl=0b00, type=0b1110 => type_attributes=0b1000_1110=0x8E)
        64-bit Trap Gate: 0x8F (p=1, dpl=0b00, type=0b1111 => type_attributes=1000_1111b=0x8F)
        */
        idt_set_descriptor(i, exception_handler, 0x8E); 
    }
    idt_set_descriptor(69, isr_handler_asm, 0x8E); 
    kprintln("IDT descriptors created! Loading IDT using lidt...");
    __asm__ volatile ("lidt %0" : : "m"(idtr)); // load the new IDT
    kprintln("IDT loaded successfully! Now enabling interrupts!");
    __asm__ volatile ("sti"); // set the interrupt flag
    kprintln("Interrupts enabled successfully! Good job boss!");
    
}