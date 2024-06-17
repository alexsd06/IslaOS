#include "kernel/limine.h"
#include <stddef.h>
#include "arch/arch.h"
void kinit_memory(struct limine_memmap_request memory_request);
void* kmalloc (int size);
void kmemset (void *addr, int c, int n);
void* kcalloc (int nelem, int bytes);
int ram_size(char unit);
int ram_available(char unit);
void kfree(void * ptr);

uint_t get_memory_lower();
uint_t get_initial_memory_lower();
uint_t get_memory_upper();