.DEFAULT_GOAL := default
OSDEV_CFLAGS =-std=gnu99 -ffreestanding -O2 -Wall -Wextra
build:
	tar -C ramdisk  --transform='s,^\./,,' --format=ustar -cvf ramdisk.tar .
	tar -vf ramdisk.tar --delete .

	objcopy -O elf32-i386 -B i386 -I binary ramdisk.tar ramdisk.o

	i686-elf-as boot/asm/boot.s -o boot/asm/boot.o
	i686-elf-as boot/asm/shutdown.s -o boot/asm/shutdown.o
	
	nasm -f elf32 kernel/gdt/asm/gdt.s -o kernel/gdt/asm/gdt.o
	nasm -f elf32 kernel/int/asm/int.s -o kernel/int/asm/int.o
	
	i686-elf-gcc -I. -c kernel/kernel.c -o kernel/kernel.o $(OSDEV_CFLAGS)
	i686-elf-gcc -I. -c kernel/mainframe/mainframe.c -o kernel/mainframe/mainframe.o $(OSDEV_CFLAGS)
	i686-elf-gcc -I. -c kernel/std/time.c -o kernel/std/time.o $(OSDEV_CFLAGS)
	i686-elf-gcc -I. -c kernel/std/string.c -o kernel/std/string.o $(OSDEV_CFLAGS)
	i686-elf-gcc -I. -c kernel/memory/kmalloc.c -o kernel/memory/kmalloc.o $(OSDEV_CFLAGS)
	i686-elf-gcc -I. -c kernel/drivers/io/io.c -o kernel/drivers/io/io.o $(OSDEV_CFLAGS)
	i686-elf-gcc -I. -c kernel/drivers/video/video.c -o kernel/drivers/video/video.o $(OSDEV_CFLAGS)
	i686-elf-gcc -I. -c kernel/drivers/keyboard/keyboard.c -o kernel/drivers/keyboard/keyboard.o $(OSDEV_CFLAGS)
	i686-elf-gcc -I. -c kernel/std/math.c -o kernel/std/math.o $(OSDEV_CFLAGS)
	i686-elf-gcc -I. -c boot/multiboot_islaos.c -o boot/multiboot_islaos.o $(OSDEV_CFLAGS)
	i686-elf-gcc -I. -c kernel/fonts/font_lib.c -o kernel/fonts/font_lib.o $(OSDEV_CFLAGS)
	i686-elf-gcc -I. -c kernel/mainframe/images/tga.c -o kernel/mainframe/images/tga.o $(OSDEV_CFLAGS)
	i686-elf-gcc -I. -c kernel/mainframe/games/tetris.c -o kernel/mainframe/games/tetris.o $(OSDEV_CFLAGS)
	i686-elf-gcc -I. -c kernel/ramdisk/ramdisk.c -o kernel/ramdisk/ramdisk.o $(OSDEV_CFLAGS)
	i686-elf-gcc -I. -c kernel/int/int.c -o kernel/int/int.o $(OSDEV_CFLAGS)
	i686-elf-gcc -I. -c kernel/pit/pit.c -o kernel/pit/pit.o $(OSDEV_CFLAGS)

	i686-elf-gcc -T linker/linker.ld -o dist/IslaOS.bin -ffreestanding -O2 -nostdlib -lgcc \
	 boot/multiboot_islaos.o boot/asm/boot.o kernel/kernel.o kernel/fonts/font_lib.o kernel/memory/kmalloc.o \
	 kernel/drivers/io/io.o kernel/drivers/keyboard/keyboard.o kernel/std/math.o \
	 kernel/std/time.o kernel/mainframe/mainframe.o kernel/drivers/video/video.o kernel/std/string.o boot/asm/shutdown.o \
	 kernel/mainframe/images/tga.o kernel/ramdisk/ramdisk.o ramdisk.o kernel/int/int.o \
	 kernel/mainframe/games/tetris.o kernel/int/asm/int.o kernel/gdt/asm/gdt.o kernel/pit/pit.o
	
	grub-file --is-x86-multiboot dist/IslaOS.bin
	mkdir -p isodir/boot/grub
	cp dist/IslaOS.bin isodir/boot/IslaOS.bin
	cp cfg/grub.cfg isodir/boot/grub/grub.cfg
	grub-mkrescue -o iso/IslaOS.iso isodir
	qemu-system-i386 -cdrom iso/IslaOS.iso -machine q35 -m 1024M    -d int -no-shutdown -no-reboot
	#qemu-system-i386 -kernel dist/IslaOS.bin -machine q35 -m 256M

clean:
	find . -name "*.o" -type f -delete
default:
	make build 
	make boot
