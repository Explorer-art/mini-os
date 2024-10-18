#!/bin/sh
set -e
. ./build.sh

mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub

cp sysroot/boot/mini-os.bin isodir/boot/mini-os.bin
cp grub.cfg isodir/boot/grub/grub.cfg

grub-mkrescue -o mini-os.iso isodir