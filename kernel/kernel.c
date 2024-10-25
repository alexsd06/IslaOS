#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>


#include "fonts/font_lib.h"
#include "kernel/memory/kmalloc.h"
#include "drivers/keyboard/keyboard.h"
#include "kernel/std/math.h"
#include "mainframe/mainframe.h"
#include "kernel/drivers/video/video.h"
#include "kernel/ramdisk/ramdisk.h"
#include "kernel/serial/serial.h"
#include "kernel/debug/debug.h"
#include "info/info.h"
#include "kernel/time/time.h"
#include "random/random.h"
#include "kernel/drivers/io/io.h"
#include "kernel/gdt/gdt.h"
#include "kernel/int/idt.h"
#include "kernel/pic/pic.h"
#include "limine.h"
 
/* Check if the compiler thinks you are targeting the wrong operating system. */
#if defined(__linux__)
#error "You are not using a cross-compiler, you will most certainly run into trouble"
#endif
 

 __attribute__((used, section(".requests_start_marker")))
static volatile LIMINE_REQUESTS_START_MARKER;


__attribute__((used, section(".requests")))
static volatile LIMINE_BASE_REVISION(2);



__attribute__((used, section(".requests")))
static volatile struct limine_framebuffer_request framebuffer_request = {
    .id = LIMINE_FRAMEBUFFER_REQUEST,
    .revision = 0
};
__attribute__((used, section(".requests")))
static volatile struct limine_memmap_request memory_request = {
    .id = LIMINE_MEMMAP_REQUEST,
    .revision = 0
};
__attribute__((used, section(".requests")))
static volatile struct limine_bootloader_info_request bootloader_info = {
    .id = LIMINE_BOOTLOADER_INFO_REQUEST,
    .revision = 0
};



__attribute__((used, section(".requests_end_marker")))
static volatile LIMINE_REQUESTS_END_MARKER;

// Halt and catch fire function.
void hcf(void) {
    asm ("cli");
    for (;;) {
        asm ("hlt");
    }
}

// GCC and Clang reserve the right to generate calls to the following
// 4 functions even if they are not directly called.
// Implement them as the C specification mandates.
// DO NOT remove or rename these functions, or stuff will eventually break!
// They CAN be moved to a different .c file.

void *memcpy(void *dest, const void *src, size_t n) {
    uint8_t *pdest = (uint8_t *)dest;
    const uint8_t *psrc = (const uint8_t *)src;

    for (size_t i = 0; i < n; i++) {
        pdest[i] = psrc[i];
    }

    return dest;
}

void *memset(void *s, int c, size_t n) {
    uint8_t *p = (uint8_t *)s;

    for (size_t i = 0; i < n; i++) {
        p[i] = (uint8_t)c;
    }

    return s;
}

void *memmove(void *dest, const void *src, size_t n) {
    uint8_t *pdest = (uint8_t *)dest;
    const uint8_t *psrc = (const uint8_t *)src;

    if (src > dest) {
        for (size_t i = 0; i < n; i++) {
            pdest[i] = psrc[i];
        }
    } else if (src < dest) {
        for (size_t i = n; i > 0; i--) {
            pdest[i-1] = psrc[i-1];
        }
    }

    return dest;
}

int memcmp(const void *s1, const void *s2, size_t n) {
    const uint8_t *p1 = (const uint8_t *)s1;
    const uint8_t *p2 = (const uint8_t *)s2;

    for (size_t i = 0; i < n; i++) {
        if (p1[i] != p2[i]) {
            return p1[i] < p2[i] ? -1 : 1;
        }
    }

    return 0;
}

void debug_framebuffer()
{
    if (framebuffer_request.response == NULL
     || framebuffer_request.response->framebuffer_count < 1) {
        hcf();
    }
    struct limine_framebuffer *framebuffer = framebuffer_request.response->framebuffers[0];
    for (size_t i = 0; i < 100; i++) {
        volatile uint32_t *fb_ptr = framebuffer->address;
        fb_ptr[i * (framebuffer->pitch / 4) + i] = 0xffffff;
    }
}

void verify_kernel_address() {
    uint64_t rip;
    asm volatile ("lea (%%rip), %0" : "=r"(rip));
    //kprintln("Current RIP is: "); kprintint(rip); kprintln("");

    if (rip < 0xffffffff80000000) {
        kprintln("Error: Kernel is not running in higher-half memory!");
        // You might want to halt here or panic
    } else {
        kprintln("Kernel is running in the correct address space.");
    }
}

/*
git clone https://github.com/limine-bootloader/limine.git --branch=v7.x-binary --depth=1
make -C limine
*/
#include "kernel/int/isr.h"
int NEXT_RAND;
//https://github.com/limine-bootloader/limine/blob/trunk/PROTOCOL.md
void _start(void) 
{
    //In bochs numbers are bogus (int numbers, file sizes...) Why?
	if (LIMINE_BASE_REVISION_SUPPORTED == false) {hcf();}
	init_serial();
	write_serial_string("Hello from IslaOS "ARCH"!\n\0"); //IT PRINTS THE FIRST LETTER IN X64!!!
	kinit_memory(memory_request);
	write_serial_string("Lower Memory: "); write_serial_int(get_memory_lower()); write_serial_string(" bytes!\n");
    write_serial_string("Upper Memory: "); write_serial_int(get_memory_upper()); write_serial_string(" bytes!\n");
	write_serial_string("Availabe RAM: "); write_serial_int(ram_available('M')); write_serial_string("MB\n");
	parse_ramdisk();
	
	kinit_videobuffer(framebuffer_request);
    kprintln("Video buffer got initialized successfully!");
    verify_kernel_address();

    //Why isn't this required?
    //kinit_keyboard();

    init_bootloader_info(bootloader_info);
    srand(42);
    cli();
    //kprintln("Magic break (before init_gdt();)");
    //__asm__ volatile("xchgw %bx, %bx");
    init_gdt();
    init_idt();
    kprintln("Calling int $69...");
    __asm__ volatile ("int $69");
    
    //kprintln("Calling int $112 to see if other numbers are working...");
    //__asm__ volatile ("int $112");
    //kprintln("Calling int $215 as well for fun!");
    //__asm__ volatile ("int $215");
    
    //kprintln("Initializing the Programmable Interrupt Controller...");
    //init_pic();
    //kprintln("The PIC has been initialized successfully!");
    
    print_stack();
    mainframe();           // Start the main application loop
    hcf();                 // Halt or exit

}
