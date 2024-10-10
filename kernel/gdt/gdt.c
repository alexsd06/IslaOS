#include <stdint.h>
#include "kernel/fonts/font_lib.h"
#include "gdt.h"
#define MAX_GDT_DESCRIPTORS 3
uint64_t gdt_table[MAX_GDT_DESCRIPTORS];

void encodeGdtEntry(uint8_t *target, struct GDT source)
{
    // Check the limit to make sure that it can be encoded
    if (source.limit > 0xFFFFF) {kprintln("GDT cannot encode limits larger than 0xFFFFF");}
    
    // Encode the limit
    target[0] = source.limit & 0xFF;
    target[1] = (source.limit >> 8) & 0xFF;
    target[6] = (source.limit >> 16) & 0x0F;
    
    // Encode the base
    target[2] = source.base & 0xFF;
    target[3] = (source.base >> 8) & 0xFF;
    target[4] = (source.base >> 16) & 0xFF;
    target[7] = (source.base >> 24) & 0xFF;
    
    // Encode the access byte
    target[5] = source.access_byte;
    
    // Encode the flags
    target[6] |= (source.flags << 4);
}

void init_descriptor(struct GDT * entry, int base, int limit, int access_byte, int flags)
{
    entry->base=base;
    entry->limit=limit;
    entry->access_byte=access_byte;
    entry->flags=flags;
}
extern void setGdt(uint16_t limit, uintptr_t base);
extern void reloadSegments();
void init_gdt()
{
    kprintln("Creating GDT structures...");
    struct GDT null_descriptor, kernel_code, kernel_data;

    init_descriptor(&null_descriptor, 0, 0, 0, 0);
    init_descriptor(&kernel_code, 0, 0xFFFFF, 0x9A, 0xA);
    init_descriptor(&kernel_data, 0, 0xFFFFF, 0x92, 0xA); /* Was 0xC */

    encodeGdtEntry((uint8_t*)gdt_table, null_descriptor);
    encodeGdtEntry((uint8_t*)(gdt_table+1), kernel_code);
    encodeGdtEntry((uint8_t*)(gdt_table+2), kernel_data);
    kprintln("Loading the GDT using LGDT...");
    setGdt(sizeof(uint64_t)*MAX_GDT_DESCRIPTORS-1, (uintptr_t) gdt_table);
    kprintln("GDT Loaded!");
    reloadSegments();
    kprintln("Segments reloaded!");
}