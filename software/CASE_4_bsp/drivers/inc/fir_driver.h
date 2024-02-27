#ifndef SAMPLE_DRIVERS_H_INCLUDED
#define SAMPLE_DRIVERS_H_INCLUDED

#include "sample_buffer_csr.h"

//Write - read sample_buffer macros
#define sample_memory_write(offset, data)              IOWR_32DIRECT(BUFFER_0_SAMPLE_BUFFER_INTERNAL_INST_AVS_SAMPLE_BUFFER_BASE, offset, data)
#define sample_memory_read(offset)                     IORD_32DIRECT(BUFFER_0_SAMPLE_BUFFER_INTERNAL_INST_AVS_SAMPLE_BUFFER_BASE, offset)

//write - read component macros

#define component_memory_write(offset, data)           IOWR_32DIRECT(BUFFER_0_SAMPLE_BUFFER_INTERNAL_INST_AVS_CRA_BASE, offset, data)
#define component_memory_read(offset)                  IORD_32DIRECT(BUFFER_0_SAMPLE_BUFFER_INTERNAL_INST_AVS_CRA_BASE, offset)


//Read result_buffer macros
#define result_memory_read(offset)                     IORD_32DIRECT(BUFFER_1_RESULT_BUFFER_INTERNAL_INST_BASE, offset)


// Component register macros
#define sample_arg_N(data)                             component_memory_write (SAMPLE_BUFFER_CSR_ARG_N_REG, SAMPLE_BUFFER_CSR_ARG_N_MASK & data)
#define sample_enable_interrupt()                      component_memory_write (SAMPLE_BUFFER_CSR_INTERRUPT_ENABLE_REG, SAMPLE_BUFFER_CSR_INTERRUPT_ENABLE_MASK & 0x1)
#define sample_disable_interrupt()                     component_memory_write (SAMPLE_BUFFER_CSR_INTERRUPT_ENABLE_REG, SAMPLE_BUFFER_CSR_INTERRUPT_ENABLE_MASK & 0x0)
#define sample_clear_done_status()                     component_memory_write (SAMPLE_BUFFER_CSR_INTERRUPT_STATUS_REG, SAMPLE_BUFFER_CSR_INTERRUPT_STATUS_MASK & 0x1)
#define sample_start()                                 component_memory_write (SAMPLE_BUFFER_CSR_START_REG, SAMPLE_BUFFER_CSR_START_MASK & 0x1)
#define sample_busy()                                  component_memory_read  (SAMPLE_BUFFER_CSR_BUSY_REG) & SAMPLE_BUFFER_CSR_BUSY_MASK
#define sample_done()                                  component_memory_read  (SAMPLE_BUFFER_CSR_INTERRUPT_STATUS_REG) & SAMPLE_BUFFER_CSR_INTERRUPT_STATUS_MASK

#endif
