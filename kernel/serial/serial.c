#include "kernel/drivers/io/io.h"
#include "kernel/std/math.h"
#include "kernel/debug/debug.h"
#include <stdint.h>
#include "kernel/arch/arch.h"

#define PORT 0x3f8          // COM1
 
int init_serial() {
   outb(PORT + 1, 0x00);    // Disable all interrupts
   outb(PORT + 3, 0x80);    // Enable DLAB (set baud rate divisor)
   outb(PORT + 0, 0x03);    // Set divisor to 3 (lo byte) 38400 baud
   outb(PORT + 1, 0x00);    //                  (hi byte)
   outb(PORT + 3, 0x03);    // 8 bits, no parity, one stop bit
   outb(PORT + 2, 0xC7);    // Enable FIFO, clear them, with 14-byte threshold
   outb(PORT + 4, 0x0B);    // IRQs enabled, RTS/DSR set
   outb(PORT + 4, 0x1E);    // Set in loopback mode, test the serial chip
   outb(PORT + 0, 0xAE);    // Test serial chip (send byte 0xAE and check if serial returns same byte)
 
   // Check if serial is faulty (i.e: not same byte as sent)
   if(inb(PORT + 0) != 0xAE) {
      return 1;
   }
 
   // If serial is not faulty set it in normal operation mode
   // (not-loopback with IRQs enabled and OUT#1 and OUT#2 bits enabled)
   outb(PORT + 4, 0x0F);
   return 0;
}

int serial_received() {
   return inb(PORT + 5) & 1;
}
 
char read_serial() {
   while (serial_received() == 0);
 
   return inb(PORT);
}

int is_transmit_empty() {
   return inb(PORT + 5) & 0x20;
}
 
void write_serial(char a) {
   while (is_transmit_empty() == 0);
 
   outb(PORT,a);
}
//0x002028c3, 0x002028d0, 0x00200f6b
void write_serial_string (char * str)
{
    int i=0;
    //It is writing an r and then ascii 20 forever!
    while (str[i]!='\0') {
        write_serial(str[i]);
        i++;
    }
}
void put_serial_int (int cif)
{
	char c=cif+'0';
	write_serial(c);
}

void write_serial_int(uint_t data)
{
	int zero_before;
	data=oglindit(data, &zero_before);
    if (data==0) {
        put_serial_int(0);
        return;
    }
	while (data) {
		int cif=data%10;
		put_serial_int (cif);
		data/=10;
	}
	while (zero_before) {
		put_serial_int(0);
		zero_before--;
	}
}
void write_serial_hex(uint_t data)
{
    char analog[]="0123456789ABCDEF";
    char rez[64];
    int ind_rez=0;
    rez[0]=0;
    while (data!=0) {
        int cif=data%16;
        char chr=analog[cif];
        rez[++ind_rez]=chr;
        data/=16;
    }
    char fin[128];
    fin[0]='0'; fin[1]='x';
    int ind=2;
    for (int i=ind_rez; i>=1; i--) {
        fin[ind]=rez[i];
        ind++;
    }
    fin[ind]='\0';
    write_serial_string(fin);
}


/*
 alex@archlinux  ~/Documents/OSDev/IslaOS/dist   main ±  addr2line -e IslaOS.bin 0x00202856
/home/alex/Documents/OSDev/IslaOS/kernel/serial/serial.c:40 (discriminator 1)
 alex@archlinux  ~/Documents/OSDev/IslaOS/dist   main ±  addr2line -e IslaOS.bin 0x00202876
/home/alex/Documents/OSDev/IslaOS/kernel/serial/serial.c:44 (discriminator 1)
 alex@archlinux  ~/Documents/OSDev/IslaOS/dist   main ±  addr2line -e IslaOS.bin 0x0020287a
/home/alex/Documents/OSDev/IslaOS/kernel/serial/serial.c:46
 alex@archlinux  ~/Documents/OSDev/IslaOS/dist   main ±  addr2line -e IslaOS.bin 0x0020286c
/home/alex/Documents/OSDev/IslaOS/kernel/serial/serial.c:44 (discriminator 1)
 alex@archlinux  ~/Documents/OSDev/IslaOS/dist   main ±  addr2line -e IslaOS.bin 0x00202848
/home/alex/Documents/OSDev/IslaOS/kernel/serial/serial.c:39
 alex@archlinux  ~/Documents/OSDev/IslaOS/dist   main ±  addr2line -e IslaOS.bin 0x00200f50
/home/alex/Documents/OSDev/IslaOS/kernel/drivers/io/io.c:8
 alex@archlinux  ~/Documents/OSDev/IslaOS/dist   main ±  addr2line -e IslaOS.bin 0x00200f71
/home/alex/Documents/OSDev/IslaOS/kernel/drivers/io/io.c:17
 alex@archlinux  ~/Documents/OSDev/IslaOS/dist   main ±  addr2line -e IslaOS.bin 0x00202856
/home/alex/Documents/OSDev/IslaOS/kernel/serial/serial.c:40 (discriminator 1)
 alex@archlinux  ~/Documents/OSDev/IslaOS/dist   main ±  addr2line -e IslaOS.bin 0x00202876
/home/alex/Documents/OSDev/IslaOS/kernel/serial/serial.c:44 (discriminator 1)
 alex@archlinux  ~/Documents/OSDev/IslaOS/dist   main ±  addr2line -e IslaOS.bin 0x0020284c
/home/alex/Documents/OSDev/IslaOS/kernel/serial/serial.c:40
 alex@archlinux  ~/Documents/OSDev/IslaOS/dist   main ±  addr2line -e IslaOS.bin 0x00202870
/home/alex/Documents/OSDev/IslaOS/kernel/serial/serial.c:44 (discriminator 1)
 alex@archlinux  ~/Documents/OSDev/IslaOS/dist   main ±  addr2line -e IslaOS.bin 0x00202873
/home/alex/Documents/OSDev/IslaOS/kernel/serial/serial.c:44 (discriminator 1)
 alex@archlinux  ~/Documents/OSDev/IslaOS/dist   main ±  addr2line -e IslaOS.bin 0x00202874
/home/alex/Documents/OSDev/IslaOS/kernel/serial/serial.c:44 (discriminator 1)
 alex@archlinux  ~/Documents/OSDev/IslaOS/dist   main ±  addr2line -e IslaOS.bin 0x00202870
/home/alex/Documents/OSDev/IslaOS/kernel/serial/serial.c:44 (discriminator 1)
 alex@archlinux  ~/Documents/OSDev/IslaOS/dist   main ±  addr2line -e IslaOS.bin 0x00202879
/home/alex/Documents/OSDev/IslaOS/kernel/serial/serial.c:44 (discriminator 1)
 alex@archlinux  ~/Documents/OSDev/IslaOS/dist   main ±  addr2line -e IslaOS.bin 0x0020287a
/home/alex/Documents/OSDev/IslaOS/kernel/serial/serial.c:46
 alex@archlinux  ~/Documents/OSDev/IslaOS/dist   main ±  addr2line -e IslaOS.bin 0x00202878
/home/alex/Documents/OSDev/IslaOS/kernel/serial/serial.c:44 (discriminator 1)
 alex@archlinux  ~/Documents/OSDev/IslaOS/dist   main ±  addr2line -e IslaOS.bin 0x00200f6b
/home/alex/Documents/OSDev/IslaOS/kernel/drivers/io/io.c:9
 alex@archlinux  ~/Documents/OSDev/IslaOS/dist   main ±  addr2line -e IslaOS.bin 0x002028a5
/home/alex/Documents/OSDev/IslaOS/kernel/serial/serial.c:54
 alex@archlinux  ~/Documents/OSDev/IslaOS/dist   main ±  addr2line -e IslaOS.bin 0x0020288d
/home/alex/Documents/OSDev/IslaOS/kernel/serial/serial.c:47
 alex@archlinux  ~/Documents/OSDev/IslaOS/dist   main ±  
*/