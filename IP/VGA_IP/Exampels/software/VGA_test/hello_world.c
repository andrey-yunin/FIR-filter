/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>
#include <system.h>
#include <stdlib.h>
#include <io.h>
#include <sys/alt_irq.h>
#include <DE10_Lite_VGA_Driver.h>
#include <alt_types.h>
#include <char_map.h>
#include <draw_vga.h>
#include <string.h>

int main()
{
  printf("Hello from Nios II!\n");

  clear_screen(0);

  while (1)
  {
	  /* tty_print (60, 100, "Arbete Genom STUdier", 1, 0);
	   tty_print (60, 110, "TEIS", 7, 0);
	   tty_print (120, 110, "Andrey Yunin", 4, 0); */

	  //draw_hline (40, 50, 70, 3);

	  draw_vline (70, 10, 60, 2);
  }

  return 0;
}
