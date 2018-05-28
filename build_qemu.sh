#!/bin/sh

#git clone https://github.com/intel/nemu.git && cd nemu
git clone https://github.com/qemu/qemu.git && cd qemu
./configure
make
make install
