#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#include "boot/multiboot_islaos.h"
#include "boot/multiboot.h"

int mem_lower, mem_upper;

void kinit_memory()
{
    mem_lower=mb_info->mem_lower;
    mem_upper=mb_info->mem_upper;
}
void* kmalloc (int size)
{
    void *pointer=(void*) mem_lower;
    mem_lower+=size;
    return pointer;
}

void kmemset (char *addr, int c, int n)
{
    for (int i=0; i<n; i++) {
        addr[i]=c;
    }
}

void* kcalloc (int nelem, int bytes) {
    void *pointer=kmalloc(nelem*bytes);
    kmemset(pointer, 0, nelem*bytes);
    return pointer;
}