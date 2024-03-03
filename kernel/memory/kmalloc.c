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

int ram_size(struct multiboot_info *mb_info, char unit)
{
	int size_bytes=mb_info->mem_upper-mb_info->mem_lower;
	if (unit=='M') return size_bytes/1024;
	if (unit=='G') return size_bytes/(1024*1024);
	return size_bytes;
}
int ram_available(char unit)
{
	int size_bytes=mem_upper-mem_lower;
	if (unit=='M') return size_bytes/1024;
	if (unit=='G') return size_bytes/(1024*1024);
	return size_bytes;
}