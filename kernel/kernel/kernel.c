#include <stdio.h>
#include <kernel/tty.h>

void kernel_main(void) {
	terminal_initialize();
	puts("Hello World!");
	printf("This is my OS :)");
}