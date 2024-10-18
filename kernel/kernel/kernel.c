#include <kernel/tty.h>

void kernel_main(void) {
	const char* data = "Hello World!";

	terminal_initialize();
	terminal_write_string(data);
}