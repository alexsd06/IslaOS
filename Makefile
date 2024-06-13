.DEFAULT_GOAL := default
build:
	tar -C ramdisk  --transform='s,^\./,,' --format=ustar -cvf ramdisk.tar .
	tar -vf ramdisk.tar --delete .

	objcopy -O elf32-i386 -B i386 -I binary ramdisk.tar ramdisk.o

	i686-elf-as boot/asm/boot.s -o boot/asm/boot.o
	i686-elf-as boot/asm/shutdown.s -o boot/asm/shutdown.o
	
	i686-elf-gcc -I. -c kernel/kernel.c -o kernel/kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

	i686-elf-gcc -I. -c kernel/mainframe/mainframe.c -o kernel/mainframe/mainframe.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

	i686-elf-gcc -I. -c kernel/std/time.c -o kernel/std/time.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

	i686-elf-gcc -I. -c kernel/std/string.c -o kernel/std/string.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

	i686-elf-gcc -I. -c kernel/memory/kmalloc.c -o kernel/memory/kmalloc.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

	i686-elf-gcc -I. -c kernel/drivers/io/io.c -o kernel/drivers/io/io.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

	i686-elf-gcc -I. -c kernel/drivers/video/video.c -o kernel/drivers/video/video.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

	i686-elf-gcc -I. -c kernel/drivers/keyboard/keyboard.c -o kernel/drivers/keyboard/keyboard.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
	
	i686-elf-gcc -I. -c kernel/std/math.c -o kernel/std/math.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
	
	i686-elf-gcc -I. -c boot/multiboot_islaos.c -o boot/multiboot_islaos.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
	
	i686-elf-gcc -I. -c kernel/fonts/font_lib.c -o kernel/fonts/font_lib.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

	i686-elf-gcc -I. -c kernel/mainframe/images/tga.c -o kernel/mainframe/images/tga.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
	
	i686-elf-gcc -I. -c kernel/ramdisk/ramdisk.c -o kernel/ramdisk/ramdisk.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

	i686-elf-gcc -T linker/linker.ld -o dist/IslaOS.bin -ffreestanding -O2 -nostdlib -lgcc \
	 boot/multiboot_islaos.o boot/asm/boot.o kernel/kernel.o kernel/fonts/font_lib.o kernel/memory/kmalloc.o \
	 kernel/drivers/io/io.o kernel/drivers/keyboard/keyboard.o kernel/std/math.o \
	 kernel/std/time.o kernel/mainframe/mainframe.o kernel/drivers/video/video.o kernel/std/string.o boot/asm/shutdown.o \
	 kernel/mainframe/images/tga.o kernel/ramdisk/ramdisk.o ramdisk.o
	
	grub-file --is-x86-multiboot dist/IslaOS.bin
	mkdir -p isodir/boot/grub
	cp dist/IslaOS.bin isodir/boot/IslaOS.bin
	cp cfg/grub.cfg isodir/boot/grub/grub.cfg
	grub-mkrescue -o iso/IslaOS.iso isodir
	qemu-system-i386 -cdrom iso/IslaOS.iso -machine q35 -m 1024M
	#qemu-system-i386 -kernel dist/IslaOS.bin -machine q35 -m 256M


default:
	make build 
	make boot
