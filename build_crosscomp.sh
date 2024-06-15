#!/bin/sh

cd ..
mkdir cross
cd cross

export PREFIX_OSDEV="$HOME/Documents/OSDev/cross"
export TARGET_OSDEV=i686-elf
export PATH="$PREFIX_OSDEV/bin:$PATH"

BINUTILS_VER=2.42
GDB_VER=14.2
GCC_VER=14.1.0

mkdir src
cd src/

wget -nc https://ftp.gnu.org/gnu/binutils/binutils-${BINUTILS_VER}.tar.xz
wget -nc https://ftp.gnu.org/gnu/gdb/gdb-${GDB_VER}.tar.xz
wget -nc https://ftp.gnu.org/gnu/gcc/gcc-${GCC_VER}/gcc-${GCC_VER}.tar.xz

chown alex binutils-${BINUTILS_VER}.tar.xz 
chown alex gdb-${GDB_VER}.tar.xz
chown alex gcc-${GCC_VER}.tar.xz 

tar -xvf binutils-${BINUTILS_VER}.tar.xz
tar -xvf gdb-${GDB_VER}.tar.xz
tar -xvf gcc-${GCC_VER}.tar.xz


mkdir build-binutils
cd build-binutils
../binutils-${BINUTILS_VER}/configure --target=$TARGET_OSDEV --prefix="$PREFIX_OSDEV" --with-sysroot --disable-nls --disable-werror
make -j 12
make install
cd ..


mkdir build-gdb
cd build-gdb/
../gdb-${GDB_VER}/configure --target=$TARGET_OSDEV --prefix="$PREFIX_OSDEV" --disable-werror
make all-gdb -j 12
make install-gdb
cd ..


which -- $TARGET_OSDEV-as || echo $TARGET_OSDEV-as is not in the PATH


mkdir build-gcc
cd build-gcc
../gcc-${GCC_VER}/configure --target=$TARGET_OSDEV --prefix="$PREFIX_OSDEV" --disable-nls --enable-languages=c,c++ --without-headers
make all-gcc -j 12
make all-target-libgcc -j 12
make install-gcc
make install-target-libgcc
cd ..
