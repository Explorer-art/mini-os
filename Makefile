all: bin clean

iso:
	cp grub.cfg isodir/boot/grub/grub.cfg
	cp mini_os.bin isodir/boot/mini_os.bin
	grub-mkrescue -o mini_os.iso isodir

bin: kernel.o boot.o
	i686-elf-gcc -T linker.ld -o mini_os.bin -ffreestanding -O2 -nostdlib build/*.o -lgcc

kernel.o:
	i686-elf-gcc -c kernel.c -o build/kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

boot.o:
	i686-elf-as boot.s -o build/boot.o

clean:
	rm build/*.o