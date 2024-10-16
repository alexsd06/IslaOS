#include "io.h"

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

void outb(uint16_t port, uint8_t val)
{
    __asm__ volatile ( "outb %b0, %w1" : : "a"(val), "Nd"(port) : "memory");
    /* There's an outb %al, $imm8 encoding, for compile-time constant port numbers that fit in 8b. (N constraint).
     * Wider immediate constants would be truncated at assemble-time (e.g. "i" constraint).
     * The outb %al, %dx encoding is the only option for all other cases.
     * %1 expands to %dx because port is a uint16_t. %w1 could be used if we had the port number a wider C type */
}

uint8_t inb(uint16_t port)
{
    uint8_t ret;
    __asm__ volatile ( "inb %w1, %b0"
                   : "=a"(ret)
                   : "Nd"(port)
                   : "memory");
    return ret;
}

void outw(uint16_t port, uint16_t val)
{
    __asm__ volatile ( "outw %w0, %w1" : : "a"(val), "Nd"(port) : "memory");
    /* There's an outw %ax, %dx encoding for all port numbers that fit in 16b. */
}

uint16_t inw(uint16_t port)
{
    uint16_t ret;
    __asm__ volatile ( "inw %w1, %w0"
                   : "=a"(ret)
                   : "Nd"(port)
                   : "memory");
    return ret;
}

void outl(uint16_t port, uint32_t val)
{
    __asm__ volatile ( "outl %0, %w1" : : "a"(val), "Nd"(port) : "memory");
    /* There's an outl %eax, %dx encoding for all port numbers that fit in 32b. */
}

uint32_t inl(uint16_t port)
{
    uint32_t ret;
    __asm__ volatile ( "inl %w1, %0"
                   : "=a"(ret)
                   : "Nd"(port)
                   : "memory");
    return ret;
}

void cli()
{
    __asm__ volatile ("cli");
}

void sti()
{
    __asm__ volatile ("sti");
}

__attribute__((optimize("O0")))
void io_wait() {
    for (int i=0; i<1000000; i++) {
        continue;
    }
}