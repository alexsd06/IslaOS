.DEFAULT_GOAL := default

# Configuration variables
BITS?=x64
UEFI=false
ARCH=x86_64
QEMU_ARCH=x86_64
OVMF_ARCH=x64
OBJCOPY_ARCH1=elf64-x86-64
OBJCOPY_ARCH2=i386:x86-64

OSDEV_CFLAGS = -g -Wall -Wextra -std=gnu11 -ffreestanding -fno-stack-protector -fno-stack-check -fno-lto -fPIE -m64 -march=x86-64 -mno-80387 -mno-mmx -mno-red-zone -I. -Ikernel
OSDEV_LDFLAGS = -nostdlib -pie -z text -z max-page-size=0x1000 -T linker/x64/linker.ld

ifeq ($(UEFI), true)
	BIOS=-bios /usr/share/edk2/$(OVMF_ARCH)/OVMF.fd
endif

# Find all .c files in the kernel directory and subdirectories
ASM_FILES := $(shell find kernel -name '*.asm')
C_FILES := $(shell find kernel -name '*.c')

# Convert each .c file to its corresponding .o file
O_FILES := $(C_FILES:.c=.o) $(ASM_FILES:.asm=.o)

# Compilation target
compile: initramfs.o $(O_FILES)
	$(ARCH)-elf-gcc $(OSDEV_LDFLAGS) -o dist/$(BITS)/IslaOS.bin \
		$(O_FILES) initramfs.o
	cp dist/$(BITS)/IslaOS.bin dist/IslaOS.bin

# Rule to compile each .c file into an object file
%.o: %.c
	$(ARCH)-elf-gcc -I. -c $< -o $@ $(OSDEV_CFLAGS)
%.o: %.asm
	nasm -f elf64 $< -o $@

# Generate initramfs.o
initramfs.o:
	tar -C initramfs --transform='s,^\./,,' --format=ustar -cvf initramfs.tar .
	tar -vf initramfs.tar --delete .
	objcopy -O $(OBJCOPY_ARCH1) -B $(OBJCOPY_ARCH2) -I binary initramfs.tar initramfs.o

# Build ISO
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

# Clean generated files
clean:
	find . -name "*.o" -type f -delete
	find . -name "*.d" -type f -delete
	find . -name "*.iso" -type f -delete
	find . -name "*.tar" -type f -delete

# Default target
default:
	make compile
	make build_iso
	#bochs -f bochsrc -q
	qemu-system-$(QEMU_ARCH) -rtc base=localtime -vga virtio -serial file:serial.log -cdrom iso/IslaOS.iso -machine q35 -m 1024M # $(BIOS) -d cpu_reset -no-reboot -no-shutdown -d int #-full-screen
