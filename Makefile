.DEFAULT_GOAL := default
OSDEV_CFLAGS =-std=gnu99 -ffreestanding -O2 -Wall -Wextra
compile:
	tar -C ramdisk  --transform='s,^\./,,' --format=ustar -cvf ramdisk.tar .
	tar -vf ramdisk.tar --delete .

	objcopy -O elf32-i386 -B i386 -I binary ramdisk.tar ramdisk.o

	i686-elf-as boot/asm/boot.s -o boot/asm/boot.o
	i686-elf-as boot/asm/shutdown.s -o boot/asm/shutdown.o
	
	nasm -f elf32 kernel/gdt/asm/gdt.s -o kernel/gdt/asm/gdt.o
	nasm -f elf32 kernel/int/asm/int.s -o kernel/int/asm/int.o
	
	i686-elf-gcc -g -I. -c kernel/kernel.c -o kernel/kernel.o $(OSDEV_CFLAGS)
	i686-elf-gcc -g -I. -c kernel/mainframe/mainframe.c -o kernel/mainframe/mainframe.o $(OSDEV_CFLAGS)
	i686-elf-gcc -g -I. -c kernel/std/time.c -o kernel/std/time.o $(OSDEV_CFLAGS)
	i686-elf-gcc -g -I. -c kernel/std/string.c -o kernel/std/string.o $(OSDEV_CFLAGS)
	i686-elf-gcc -g -I. -c kernel/memory/kmalloc.c -o kernel/memory/kmalloc.o $(OSDEV_CFLAGS)
	i686-elf-gcc -g -I. -c kernel/drivers/io/io.c -o kernel/drivers/io/io.o $(OSDEV_CFLAGS)
	i686-elf-gcc -g -I. -c kernel/drivers/video/video.c -o kernel/drivers/video/video.o $(OSDEV_CFLAGS)
	i686-elf-gcc -g -I. -c kernel/drivers/keyboard/keyboard.c -o kernel/drivers/keyboard/keyboard.o $(OSDEV_CFLAGS)
	i686-elf-gcc -g -I. -c kernel/std/math.c -o kernel/std/math.o $(OSDEV_CFLAGS)
	i686-elf-gcc -g -I. -c boot/multiboot_islaos.c -o boot/multiboot_islaos.o $(OSDEV_CFLAGS)
	i686-elf-gcc -g -I. -c kernel/fonts/font_lib.c -o kernel/fonts/font_lib.o $(OSDEV_CFLAGS)
	i686-elf-gcc -g -I. -c kernel/mainframe/images/tga.c -o kernel/mainframe/images/tga.o $(OSDEV_CFLAGS)
	i686-elf-gcc -g -I. -c kernel/mainframe/games/tetris.c -o kernel/mainframe/games/tetris.o $(OSDEV_CFLAGS)
	i686-elf-gcc -g -I. -c kernel/ramdisk/ramdisk.c -o kernel/ramdisk/ramdisk.o $(OSDEV_CFLAGS)
	i686-elf-gcc -g -I. -c kernel/int/int.c -o kernel/int/int.o $(OSDEV_CFLAGS)
	i686-elf-gcc -g -I. -c kernel/pit/pit.c -o kernel/pit/pit.o $(OSDEV_CFLAGS)

	i686-elf-gcc -T linker/linker.ld -o dist/IslaOS.bin -ffreestanding -O2 -nostdlib -lgcc \
	 boot/multiboot_islaos.o boot/asm/boot.o kernel/kernel.o kernel/fonts/font_lib.o kernel/memory/kmalloc.o \
	 kernel/drivers/io/io.o kernel/drivers/keyboard/keyboard.o kernel/std/math.o \
	 kernel/std/time.o kernel/mainframe/mainframe.o kernel/drivers/video/video.o kernel/std/string.o boot/asm/shutdown.o \
	 kernel/mainframe/images/tga.o kernel/ramdisk/ramdisk.o ramdisk.o kernel/int/int.o \
	 kernel/mainframe/games/tetris.o kernel/int/asm/int.o kernel/gdt/asm/gdt.o kernel/pit/pit.o

build_iso:
	cp -v dist/IslaOS.bin iso_root/boot/
	mkdir -p iso_root/boot/limine
	cp -v limine.cfg limine/limine-bios.sys limine/limine-bios-cd.bin \
		limine/limine-uefi-cd.bin iso_root/boot/limine/

	mkdir -p iso_root/EFI/BOOT
	cp -v limine/BOOTX64.EFI iso_root/EFI/BOOT/
	cp -v limine/BOOTIA32.EFI iso_root/EFI/BOOT/
	
	xorriso -as mkisofs -b boot/limine/limine-bios-cd.bin \
			-no-emul-boot -boot-load-size 4 -boot-info-table \
			--efi-boot boot/limine/limine-uefi-cd.bin \
			-efi-boot-part --efi-boot-image --protective-msdos-label \
			iso_root -o iso/IslaOS.iso
	
	./limine/limine bios-install iso/IslaOS.iso

clean:
	find . -name "*.o" -type f -delete
	find . -name "*.iso" -type f -delete
	find . -name "*.tar" -type f -delete

default:
	make compile
	make build_iso
	qemu-system-i386 -serial file:serial.log -cdrom iso/IslaOS.iso -machine q35 -m 1024M \
	#-d int -no-shutdown -no-reboot -bios /usr/share/edk2/ia32/OVMF.fd
