.DEFAULT_GOAL := default
build:
	objcopy -O elf32-i386 -B i386 -I binary fonts/psf/font.psf fonts/psf/font.o

	
	i686-elf-as boot/asm/boot.s -o boot/asm/boot.o
	
	i686-elf-gcc -I. -c kernel/kernel.c -o kernel/kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
	
	i686-elf-gcc -I. -c kernel/textmode/textmode.c -o kernel/textmode/textmode.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
	
	i686-elf-gcc -I. -c boot/multiboot_islaos.c -o boot/multiboot_islaos.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
	
	i686-elf-gcc -I. -c fonts/font_lib.c -o fonts/font_lib.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
	
	i686-elf-gcc -T linker/linker.ld -o dist/IslaOS.bin -ffreestanding -O2 -nostdlib -lgcc \
	 kernel/textmode/textmode.o boot/multiboot_islaos.o boot/asm/boot.o kernel/kernel.o fonts/psf/font.o \
	 fonts/font_lib.o
	
	
	grub-file --is-x86-multiboot dist/IslaOS.bin
	mkdir -p isodir/boot/grub
	cp dist/IslaOS.bin isodir/boot/IslaOS.bin
	cp cfg/grub.cfg isodir/boot/grub/grub.cfg
	grub-mkrescue -o iso/IslaOS.iso isodir
	qemu-system-i386 -cdrom iso/IslaOS.iso -machine q35 -m 1024M
	#qemu-system-i386 -kernel bin/IslaOS.bin -machine q35 -m 256M


default:
	make build 
	make boot