void kinit_memory();
void* kmalloc (int size);
void kmemset (void *addr, int c, int n);
void* kcalloc (int nelem, int bytes);
int ram_size(char unit);
int ram_available(char unit);
void kfree(void * ptr);