.DEFAULT_GOAL := default
OSDEV_CFLAGS =-std=gnu17 -ffreestanding -g -I. -Ikernel
OSDEV_LDFLAGS=-T linker/x32/linker.ld -ffreestanding -O0 -nostdlib -lgcc 

#https://stackoverflow.com/questions/76987932/litteral-string-is-not-displayed-osdev

BITS?=x64
UEFI=false

ARCH=x86_64
QEMU_ARCH=x86_64
OVMF_ARCH=x64
OBJCOPY_ARCH1=elf64-x86-64
OBJCOPY_ARCH2=i386:x86-64

OSDEV_CFLAGS= -g -Wall -Wextra -std=gnu11 -ffreestanding -fno-stack-protector -fno-stack-check -fno-lto -fPIE -m64 -march=x86-64 -mno-80387 -mno-mmx -mno-sse -mno-sse2 -mno-red-zone -I. -Ikernel
OSDEV_LDFLAGS=-nostdlib -pie -z text \-z max-page-size=0x1000 -T linker/x64/linker.ld

ifeq ($(UEFI), true)
	BIOS=-bios /usr/share/edk2/$(OVMF_ARCH)/OVMF.fd
endif

compile:
	tar -C initramfs  --transform='s,^\./,,' --format=ustar -cvf initramfs.tar .
	tar -vf initramfs.tar --delete .

	objcopy -O $(OBJCOPY_ARCH1) -B $(OBJCOPY_ARCH2) -I binary initramfs.tar initramfs.o
	
	$(ARCH)-elf-gcc -I. -c kernel/kernel.c -o kernel/kernel.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/mainframe/mainframe.c -o kernel/mainframe/mainframe.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/std/time.c -o kernel/std/time.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/std/string.c -o kernel/std/string.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/memory/kmalloc.c -o kernel/memory/kmalloc.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/drivers/io/io.c -o kernel/drivers/io/io.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/drivers/video/video.c -o kernel/drivers/video/video.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/drivers/keyboard/keyboard.c -o kernel/drivers/keyboard/keyboard.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/std/math.c -o kernel/std/math.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/fonts/font_lib.c -o kernel/fonts/font_lib.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/mainframe/images/tga.c -o kernel/mainframe/images/tga.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/mainframe/games/tetris/tetris.c -o kernel/mainframe/games/tetris/tetris.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/ramdisk/ramdisk.c -o kernel/ramdisk/ramdisk.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/pit/pit.c -o kernel/pit/pit.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/serial/serial.c -o kernel/serial/serial.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/debug/debug.c -o kernel/debug/debug.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/info/info.c -o kernel/info/info.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/random/random.c -o kernel/random/random.o $(OSDEV_CFLAGS)
	$(ARCH)-elf-gcc -I. -c kernel/mainframe/shapes/shapes.c -o kernel/mainframe/shapes/shapes.o $(OSDEV_CFLAGS)

	$(ARCH)-elf-gcc $(OSDEV_LDFLAGS) -o dist/$(BITS)/IslaOS.bin \
	 kernel/kernel.o \
	 kernel/fonts/font_lib.o kernel/memory/kmalloc.o \
	 kernel/drivers/io/io.o kernel/drivers/keyboard/keyboard.o kernel/std/math.o \
	 kernel/std/time.o kernel/mainframe/mainframe.o kernel/drivers/video/video.o kernel/std/string.o \
	 kernel/mainframe/images/tga.o kernel/ramdisk/ramdisk.o initramfs.o  kernel/info/info.o \
	 kernel/mainframe/games/tetris/tetris.o kernel/pit/pit.o kernel/serial/serial.o kernel/debug/debug.o \
	 kernel/random/random.o kernel/mainframe/shapes/shapes.o
	
	cp dist/$(BITS)/IslaOS.bin dist/IslaOS.bin

build_iso:
	cp -v dist/$(BITS)/IslaOS.bin iso_root/boot/
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
			iso_root -o iso/$(BITS)/IslaOS.iso
	
	./limine/limine bios-install iso/$(BITS)/IslaOS.iso
	cp iso/$(BITS)/IslaOS.iso iso/IslaOS.iso

clean:
	find . -name "*.o" -type f -delete
	find . -name "*.d" -type f -delete
	find . -name "*.iso" -type f -delete
	find . -name "*.tar" -type f -delete

default:
	make compile
	make build_iso
	#bochs -f bochsrc -q
	qemu-system-$(QEMU_ARCH) -serial file:serial.log -cdrom iso/IslaOS.iso -machine q35 -m 1024M $(BIOS)
	#-d int -no-shutdown -no-reboot $(BIOS)

