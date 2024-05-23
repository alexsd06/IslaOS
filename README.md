mkdir cross
cd cross

export PREFIX_OSDEV="$HOME/Documents/OSDev/cross"
export TARGET_OSDEV=i686-elf
export PATH="$PREFIX_OSDEV/bin:$PATH"

mkdir src
cd src/

# https://ftp.gnu.org/gnu/
# OSDev -> cross -> src -> (build-binutils, build-gdb, build-gcc, xz archives, extract here)
# sudo zypper install makeinfo
# https://software.opensuse.org/download.html?project=openSUSE%3AFactory&package=gmp
# https://software.opensuse.org/download.html?project=openSUSE%3AFactory&package=mpfr
# sudo zypper install gmp-devel mpfr-devel mpc-devel xorriso mtools

# zypper addrepo https://download.opensuse.org/repositories/Virtualization/openSUSE_Tumbleweed/Virtualization.repo
# zypper refresh
# zypper install qemu

chown alex binutils-2.42.tar.xz 
chown alex gdb-14.2.tar.xz
chown alex gcc-14.1.0.tar.xz 


mkdir build-binutils
../binutils-2.42/configure --target=$TARGET_OSDEV --prefix="$PREFIX_OSDEV" --with-sysroot --disable-nls --disable-werror
make
make install
cd ..


mkdir build-gdb
cd build-gdb/
../gdb-14.2/configure --target=$TARGET_OSDEV --prefix="$PREFIX_OSDEV" --disable-werror
make all-gdb
make install-gdb
cd ..


which -- $TARGET_OSDEV-as || echo $TARGET_OSDEV-as is not in the PATH


mkdir build-gcc
cd build-gcc
../gcc-14.1.0/configure --target=$TARGET_OSDEV --prefix="$PREFIX_OSDEV" --disable-nls --enable-languages=c,c++ --without-headers
make all-gcc
make all-target-libgcc
make install-gcc
make install-target-libgcc

