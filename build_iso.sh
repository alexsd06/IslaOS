#!/bin/sh
cp -v bin/IslaOS iso_root/boot/
mkdir -p iso_root/boot/limine
cp -v limine.cfg limine/limine-bios.sys limine/limine-bios-cd.bin \
      limine/limine-uefi-cd.bin iso_root/boot/limine/

# Create the EFI boot tree and copy Limine's EFI executables over.
mkdir -p iso_root/EFI/BOOT
cp -v limine/BOOTX64.EFI iso_root/EFI/BOOT/
cp -v limine/BOOTIA32.EFI iso_root/EFI/BOOT/
 
# Create the bootable ISO.
xorriso -as mkisofs -b boot/limine/limine-bios-cd.bin \
        -no-emul-boot -boot-load-size 4 -boot-info-table \
        --efi-boot boot/limine/limine-uefi-cd.bin \
        -efi-boot-part --efi-boot-image --protective-msdos-label \
        iso_root -o IslaOS.iso
 
# Install Limine stage 1 and 2 for legacy BIOS boot.
./limine/limine bios-install IslaPS.iso