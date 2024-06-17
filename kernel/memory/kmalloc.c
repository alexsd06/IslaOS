#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#include "kernel/fonts/font_lib.h"
#include "kernel/arch/arch.h"
#include "kernel/limine.h"
#include "kernel/kernel.h"

uint_t mem_lower, mem_lower_init, mem_upper;
uint_t get_memory_lower()
{
    return mem_lower;
}
uint_t get_initial_memory_lower()
{
    return mem_lower_init;
}
uint_t get_memory_upper()
{
    return mem_upper;
}

void kinit_memory(struct limine_memmap_request memory_request)
{

    if (memory_request.response==NULL) hcf();
    struct limine_memmap_response *response=memory_request.response;
    if (response->entry_count<1) hcf();
    uint_t entry_count=response->entry_count;
    uint_t best_base=0, best_lenght=0;
    for (int i=0; i<(int)entry_count; i++) {
        struct limine_memmap_entry *entry=response->entries[i];
        if (entry->type==LIMINE_MEMMAP_USABLE) {
            if (entry->length>best_lenght) {
                best_base=entry->base;
                best_lenght=entry->length;
            }
        }
    }

    mem_lower=best_base;
    mem_lower_init=best_base;
    mem_upper=best_base+best_lenght;
}
void* kmalloc (int size)
{
    if (mem_lower+size>=mem_upper) {
        kprintln("Can't allocate any more memory!");
        return NULL;
    }
    void *pointer=(void*) (uint_t) mem_lower;
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

uint_t ram_size(char unit)
{
	uint_t size_bytes=mem_upper-mem_lower_init;
	if (unit=='M') return size_bytes/1024/1024;
	if (unit=='G') return size_bytes/1024/1024/1024;
	return size_bytes;
}
uint_t ram_available(char unit)
{
	uint_t size_bytes=mem_upper-mem_lower;
	if (unit=='M') return size_bytes/1024/1024;
	if (unit=='G') return size_bytes/1024/1024/1024;
	return size_bytes;
}

void kfree() {} 
/* 
TODO: Write this deallocator, make kmalloc work by fragmenting the heap 1 byte and in the deallocator
free it by deallocating continous chunks of free memory (either by setting it to 0 or by keeping track
of unused sectors in some separate array).
*/
