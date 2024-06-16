void debug()
{
    __asm__ volatile("xchgw %bx, %bx");
}