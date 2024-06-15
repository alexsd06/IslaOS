.DEFAULT_GOAL := default
OSDEV_CFLAGS =-std=gnu99 -ffreestanding -O2 -Wall -Wextra -g

BITS?=x32
UEFI=false

ARCH=i686#x86_64
QEMU_ARCH=i386#x86_64
OVMF_ARCH=ia32#x64
OBJCOPY_ARCH1=elf32-i386#elf64-x86-64
OBJCOPY_ARCH2=i386#i386:x86-64

ifeq ($(BITS), x64)
	ARCH=x86_64
	QEMU_ARCH=x86_64
	OVMF_ARCH=x64
	OBJCOPY_ARCH1=elf64-x86-64
	OBJCOPY_ARCH2=i386:x86-64
endif

ifeq ($(UEFI), true)
	BIOS=-bios /usr/share/edk2/$(OVMF_ARCH)/OVMF.fd
endif

compile:
	tar -C ramdisk  --transform='s,^\./,,' --format=ustar -cvf ramdisk.tar .
	tar -vf ramdisk.tar --delete .

	objcopy -O $(OBJCOPY_ARCH1) -B $(OBJCOPY_ARCH2) -I binary ramdisk.tar ramdisk.o

	$(ARCH)-elf-as boot/asm/$(BITS)/boot.s -o boot/asm/$(BITS)/boot.o
	
	#nasm -f elf32 kernel/gdt/asm/gdt.s -o kernel/gdt/asm/gdt.o
	#nasm -f elf32 kernel/int/asm/int.s -o kernel/int/asm/int.o
	
	$(ARCH)-elf-gcc -I. -c kernel/kernel.c -o kernel/kernel.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/mainframe/mainframe.c -o kernel/mainframe/mainframe.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/std/time.c -o kernel/std/time.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/std/string.c -o kernel/std/string.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/memory/kmalloc.c -o kernel/memory/kmalloc.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/drivers/io/io.c -o kernel/drivers/io/io.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/drivers/video/video.c -o kernel/drivers/video/video.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/drivers/keyboard/keyboard.c -o kernel/drivers/keyboard/keyboard.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/std/math.c -o kernel/std/math.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c boot/multiboot_islaos.c -o boot/multiboot_islaos.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/fonts/font_lib.c -o kernel/fonts/font_lib.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/mainframe/images/tga.c -o kernel/mainframe/images/tga.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/mainframe/games/tetris.c -o kernel/mainframe/games/tetris.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/ramdisk/ramdisk.c -o kernel/ramdisk/ramdisk.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/pit/pit.c -o kernel/pit/pit.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/serial/serial.c -o kernel/serial/serial.o $(OSDEV_CFLAGS)

	$(ARCH)-elf-gcc -T linker.ld -o dist/IslaOS.bin -ffreestanding -O2 -nostdlib -lgcc \
	 boot/multiboot_islaos.o boot/asm/$(BITS)/boot.o kernel/kernel.o kernel/fonts/font_lib.o kernel/memory/kmalloc.o \
	 kernel/drivers/io/io.o kernel/drivers/keyboard/keyboard.o kernel/std/math.o \
	 kernel/std/time.o kernel/mainframe/mainframe.o kernel/drivers/video/video.o kernel/std/string.o \
	 kernel/mainframe/images/tga.o kernel/ramdisk/ramdisk.o ramdisk.o  \
	 kernel/mainframe/games/tetris.o kernel/pit/pit.o kernel/serial/serial.o

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
	qemu-system-$(QEMU_ARCH) -serial file:serial.log -cdrom iso/IslaOS.iso -machine q35 -m 1024M \
	-d int -no-shutdown -no-reboot $(BIOS)
