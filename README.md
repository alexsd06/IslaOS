mkdir cross
cd cross
export PREFIX="$HOME/Documents/OSDev/cross"
/Documents/OSDev
export TARGET=i686-elf
export PATH="$PREFIX/bin:$PATH"
mkdir src
ls
chown alex binutils-2.42.tar.xz 
chown alex gcc-13.2.0.tar.gz 
ls
cd src/
mkdir build-binutils
cd build-binutils
../binutils-2.42/configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror
make
make install
cd ..
mkdir build-gdb
cd build-gdb/
../gdb-14.1/configure --target=$TARGET --prefix="$PREFIX" --disable-werror
make all-gdb
make install-gdb
cd ..
which -- $TARGET-as || echo $TARGET-as is not in the PATH
which -- $TARGET-as || echo $TARGET-as is not in the PATH
mkdir build-gcc
cd build-gcc
../gcc-13.2.0/configure --target=$TARGET --prefix="$PREFIX" --disable-nls --enable-languages=c,c++ --without-headers
make all-gcc
make all-target-libgcc
make install-gcc
make install-target-libgcc
echo $PATH
