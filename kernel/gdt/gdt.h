struct GDT
{
    int base;
    int limit;
    int access_byte;
    int flags;
};
void init_gdt();