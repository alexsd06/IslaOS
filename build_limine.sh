#!/bin/sh
git clone https://github.com/limine-bootloader/limine.git --branch=v7.x-binary --depth=1
make -C limine
mkdir -p iso_root
mkdir -p iso_root/boot