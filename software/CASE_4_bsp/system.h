/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'cpu' in SOPC Builder design 'embedded_computer_system'
 * SOPC Builder design path: ../../embedded_computer_system.sopcinfo
 *
 * Generated: Fri Dec 24 21:08:09 CET 2021
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_gen2"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x08088820
#define ALT_CPU_CPU_ARCH_NIOS2_R1
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "tiny"
#define ALT_CPU_DATA_ADDR_WIDTH 0x1c
#define ALT_CPU_DCACHE_LINE_SIZE 0
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_DCACHE_SIZE 0
#define ALT_CPU_EXCEPTION_ADDR 0x04000020
#define ALT_CPU_FLASH_ACCELERATOR_LINES 0
#define ALT_CPU_FLASH_ACCELERATOR_LINE_SIZE 0
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 0
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 0
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_ICACHE_SIZE 0
#define ALT_CPU_INST_ADDR_WIDTH 0x1c
#define ALT_CPU_NAME "cpu"
#define ALT_CPU_OCI_VERSION 1
#define ALT_CPU_RESET_ADDR 0x04000000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x08088820
#define NIOS2_CPU_ARCH_NIOS2_R1
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "tiny"
#define NIOS2_DATA_ADDR_WIDTH 0x1c
#define NIOS2_DCACHE_LINE_SIZE 0
#define NIOS2_DCACHE_LINE_SIZE_LOG2 0
#define NIOS2_DCACHE_SIZE 0
#define NIOS2_EXCEPTION_ADDR 0x04000020
#define NIOS2_FLASH_ACCELERATOR_LINES 0
#define NIOS2_FLASH_ACCELERATOR_LINE_SIZE 0
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 0
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 0
#define NIOS2_ICACHE_LINE_SIZE_LOG2 0
#define NIOS2_ICACHE_SIZE 0
#define NIOS2_INST_ADDR_WIDTH 0x1c
#define NIOS2_OCI_VERSION 1
#define NIOS2_RESET_ADDR 0x04000000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_NEW_SDRAM_CONTROLLER
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_SYSID_QSYS
#define __ALTERA_NIOS2_GEN2
#define __ALTPLL
#define __RESULT_BUFFER_INTERNAL
#define __SAMPLE_BUFFER_INTERNAL
#define __TIMER_HW_IP
#define __VGA_IP


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "MAX 10"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart"
#define ALT_STDERR_BASE 0x808a068
#define ALT_STDERR_DEV jtag_uart
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart"
#define ALT_STDIN_BASE 0x808a068
#define ALT_STDIN_DEV jtag_uart
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart"
#define ALT_STDOUT_BASE 0x808a068
#define ALT_STDOUT_DEV jtag_uart
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "embedded_computer_system"


/*
 * TIMER_HW_IP_0 configuration
 *
 */

#define ALT_MODULE_CLASS_TIMER_HW_IP_0 TIMER_HW_IP
#define TIMER_HW_IP_0_BASE 0x808a050
#define TIMER_HW_IP_0_IRQ -1
#define TIMER_HW_IP_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define TIMER_HW_IP_0_NAME "/dev/TIMER_HW_IP_0"
#define TIMER_HW_IP_0_SPAN 16
#define TIMER_HW_IP_0_TYPE "TIMER_HW_IP"


/*
 * VGA_IP_0 configuration
 *
 */

#define ALT_MODULE_CLASS_VGA_IP_0 VGA_IP
#define VGA_IP_0_BASE 0x8000000
#define VGA_IP_0_IRQ -1
#define VGA_IP_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define VGA_IP_0_NAME "/dev/VGA_IP_0"
#define VGA_IP_0_SPAN 524288
#define VGA_IP_0_TYPE "VGA_IP"


/*
 * buffer_0_sample_buffer_internal_inst_avs_cra configuration
 *
 */

#define ALT_MODULE_CLASS_buffer_0_sample_buffer_internal_inst_avs_cra sample_buffer_internal
#define BUFFER_0_SAMPLE_BUFFER_INTERNAL_INST_AVS_CRA_BASE 0x808a000
#define BUFFER_0_SAMPLE_BUFFER_INTERNAL_INST_AVS_CRA_IRQ 1
#define BUFFER_0_SAMPLE_BUFFER_INTERNAL_INST_AVS_CRA_IRQ_INTERRUPT_CONTROLLER_ID 0
#define BUFFER_0_SAMPLE_BUFFER_INTERNAL_INST_AVS_CRA_NAME "/dev/buffer_0_sample_buffer_internal_inst_avs_cra"
#define BUFFER_0_SAMPLE_BUFFER_INTERNAL_INST_AVS_CRA_SPAN 64
#define BUFFER_0_SAMPLE_BUFFER_INTERNAL_INST_AVS_CRA_TYPE "sample_buffer_internal"


/*
 * buffer_0_sample_buffer_internal_inst_avs_sample_buffer configuration
 *
 */

#define ALT_MODULE_CLASS_buffer_0_sample_buffer_internal_inst_avs_sample_buffer sample_buffer_internal
#define BUFFER_0_SAMPLE_BUFFER_INTERNAL_INST_AVS_SAMPLE_BUFFER_BASE 0x8089000
#define BUFFER_0_SAMPLE_BUFFER_INTERNAL_INST_AVS_SAMPLE_BUFFER_IRQ -1
#define BUFFER_0_SAMPLE_BUFFER_INTERNAL_INST_AVS_SAMPLE_BUFFER_IRQ_INTERRUPT_CONTROLLER_ID -1
#define BUFFER_0_SAMPLE_BUFFER_INTERNAL_INST_AVS_SAMPLE_BUFFER_NAME "/dev/buffer_0_sample_buffer_internal_inst_avs_sample_buffer"
#define BUFFER_0_SAMPLE_BUFFER_INTERNAL_INST_AVS_SAMPLE_BUFFER_SPAN 2048
#define BUFFER_0_SAMPLE_BUFFER_INTERNAL_INST_AVS_SAMPLE_BUFFER_TYPE "sample_buffer_internal"


/*
 * buffer_1_result_buffer_internal_inst configuration
 *
 */

#define ALT_MODULE_CLASS_buffer_1_result_buffer_internal_inst result_buffer_internal
#define BUFFER_1_RESULT_BUFFER_INTERNAL_INST_BASE 0x8089800
#define BUFFER_1_RESULT_BUFFER_INTERNAL_INST_IRQ -1
#define BUFFER_1_RESULT_BUFFER_INTERNAL_INST_IRQ_INTERRUPT_CONTROLLER_ID -1
#define BUFFER_1_RESULT_BUFFER_INTERNAL_INST_NAME "/dev/buffer_1_result_buffer_internal_inst"
#define BUFFER_1_RESULT_BUFFER_INTERNAL_INST_SPAN 2048
#define BUFFER_1_RESULT_BUFFER_INTERNAL_INST_TYPE "result_buffer_internal"


/*
 * hal configuration
 *
 */

#define ALT_INCLUDE_INSTRUCTION_RELATED_EXCEPTION_API
#define ALT_MAX_FD 32
#define ALT_SYS_CLK none
#define ALT_TIMESTAMP_CLK none


/*
 * jtag_uart configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart altera_avalon_jtag_uart
#define JTAG_UART_BASE 0x808a068
#define JTAG_UART_IRQ 0
#define JTAG_UART_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_NAME "/dev/jtag_uart"
#define JTAG_UART_READ_DEPTH 64
#define JTAG_UART_READ_THRESHOLD 8
#define JTAG_UART_SPAN 8
#define JTAG_UART_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_WRITE_DEPTH 64
#define JTAG_UART_WRITE_THRESHOLD 8


/*
 * onchip_ram configuration
 *
 */

#define ALT_MODULE_CLASS_onchip_ram altera_avalon_onchip_memory2
#define ONCHIP_RAM_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define ONCHIP_RAM_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ONCHIP_RAM_BASE 0x8084000
#define ONCHIP_RAM_CONTENTS_INFO ""
#define ONCHIP_RAM_DUAL_PORT 0
#define ONCHIP_RAM_GUI_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_RAM_INIT_CONTENTS_FILE "embedded_computer_system_onchip_ram"
#define ONCHIP_RAM_INIT_MEM_CONTENT 0
#define ONCHIP_RAM_INSTANCE_ID "NONE"
#define ONCHIP_RAM_IRQ -1
#define ONCHIP_RAM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ONCHIP_RAM_NAME "/dev/onchip_ram"
#define ONCHIP_RAM_NON_DEFAULT_INIT_FILE_ENABLED 0
#define ONCHIP_RAM_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_RAM_READ_DURING_WRITE_MODE "DONT_CARE"
#define ONCHIP_RAM_SINGLE_CLOCK_OP 0
#define ONCHIP_RAM_SIZE_MULTIPLE 1
#define ONCHIP_RAM_SIZE_VALUE 16384
#define ONCHIP_RAM_SPAN 16384
#define ONCHIP_RAM_TYPE "altera_avalon_onchip_memory2"
#define ONCHIP_RAM_WRITABLE 1


/*
 * pll configuration
 *
 */

#define ALT_MODULE_CLASS_pll altpll
#define PLL_BASE 0x808a040
#define PLL_IRQ -1
#define PLL_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PLL_NAME "/dev/pll"
#define PLL_SPAN 16
#define PLL_TYPE "altpll"


/*
 * sdram_controller configuration
 *
 */

#define ALT_MODULE_CLASS_sdram_controller altera_avalon_new_sdram_controller
#define SDRAM_CONTROLLER_BASE 0x4000000
#define SDRAM_CONTROLLER_CAS_LATENCY 3
#define SDRAM_CONTROLLER_CONTENTS_INFO
#define SDRAM_CONTROLLER_INIT_NOP_DELAY 0.0
#define SDRAM_CONTROLLER_INIT_REFRESH_COMMANDS 2
#define SDRAM_CONTROLLER_IRQ -1
#define SDRAM_CONTROLLER_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SDRAM_CONTROLLER_IS_INITIALIZED 1
#define SDRAM_CONTROLLER_NAME "/dev/sdram_controller"
#define SDRAM_CONTROLLER_POWERUP_DELAY 100.0
#define SDRAM_CONTROLLER_REFRESH_PERIOD 7.8125
#define SDRAM_CONTROLLER_REGISTER_DATA_IN 1
#define SDRAM_CONTROLLER_SDRAM_ADDR_WIDTH 0x19
#define SDRAM_CONTROLLER_SDRAM_BANK_WIDTH 2
#define SDRAM_CONTROLLER_SDRAM_COL_WIDTH 10
#define SDRAM_CONTROLLER_SDRAM_DATA_WIDTH 16
#define SDRAM_CONTROLLER_SDRAM_NUM_BANKS 4
#define SDRAM_CONTROLLER_SDRAM_NUM_CHIPSELECTS 1
#define SDRAM_CONTROLLER_SDRAM_ROW_WIDTH 13
#define SDRAM_CONTROLLER_SHARED_DATA 0
#define SDRAM_CONTROLLER_SIM_MODEL_BASE 0
#define SDRAM_CONTROLLER_SPAN 67108864
#define SDRAM_CONTROLLER_STARVATION_INDICATOR 0
#define SDRAM_CONTROLLER_TRISTATE_BRIDGE_SLAVE ""
#define SDRAM_CONTROLLER_TYPE "altera_avalon_new_sdram_controller"
#define SDRAM_CONTROLLER_T_AC 5.4
#define SDRAM_CONTROLLER_T_MRD 3
#define SDRAM_CONTROLLER_T_RCD 15.0
#define SDRAM_CONTROLLER_T_RFC 70.0
#define SDRAM_CONTROLLER_T_RP 15.0
#define SDRAM_CONTROLLER_T_WR 14.0


/*
 * sysid_qsys_0 configuration
 *
 */

#define ALT_MODULE_CLASS_sysid_qsys_0 altera_avalon_sysid_qsys
#define SYSID_QSYS_0_BASE 0x808a060
#define SYSID_QSYS_0_ID 1
#define SYSID_QSYS_0_IRQ -1
#define SYSID_QSYS_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SYSID_QSYS_0_NAME "/dev/sysid_qsys_0"
#define SYSID_QSYS_0_SPAN 8
#define SYSID_QSYS_0_TIMESTAMP 1640375867
#define SYSID_QSYS_0_TYPE "altera_avalon_sysid_qsys"

#endif /* __SYSTEM_H_ */
