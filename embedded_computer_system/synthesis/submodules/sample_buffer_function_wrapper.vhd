-- ------------------------------------------------------------------------- 
-- High Level Design Compiler for Intel(R) FPGAs Version 18.1 (Release Build #625)
-- 
-- Legal Notice: Copyright 2018 Intel Corporation.  All rights reserved.
-- Your use of  Intel Corporation's design tools,  logic functions and other
-- software and  tools, and its AMPP partner logic functions, and any output
-- files any  of the foregoing (including  device programming  or simulation
-- files), and  any associated  documentation  or information  are expressly
-- subject  to the terms and  conditions of the  Intel FPGA Software License
-- Agreement, Intel MegaCore Function License Agreement, or other applicable
-- license agreement,  including,  without limitation,  that your use is for
-- the  sole  purpose of  programming  logic devices  manufactured by  Intel
-- and  sold by Intel  or its authorized  distributors. Please refer  to the
-- applicable agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from sample_buffer_function_wrapper
-- VHDL created on Fri Dec 24 18:28:47 2021


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity sample_buffer_function_wrapper is
    port (
        avm_sample_buffer_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        avm_sample_buffer_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_sample_buffer_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_sample_buffer_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_sample_buffer5_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_sample_buffer5_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_sample_buffer5_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_sample_buffer5_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avs_cra_address : in std_logic_vector(2 downto 0);  -- ufix3
        avs_cra_byteenable : in std_logic_vector(7 downto 0);  -- ufix8
        avs_cra_enable : in std_logic_vector(0 downto 0);  -- ufix1
        avs_cra_read : in std_logic_vector(0 downto 0);  -- ufix1
        avs_cra_write : in std_logic_vector(0 downto 0);  -- ufix1
        avs_cra_writedata : in std_logic_vector(63 downto 0);  -- ufix64
        avs_sample_buffer_address : in std_logic_vector(8 downto 0);  -- ufix9
        avs_sample_buffer_byteenable : in std_logic_vector(3 downto 0);  -- ufix4
        avs_sample_buffer_enable : in std_logic_vector(0 downto 0);  -- ufix1
        avs_sample_buffer_read : in std_logic_vector(0 downto 0);  -- ufix1
        avs_sample_buffer_write : in std_logic_vector(0 downto 0);  -- ufix1
        avs_sample_buffer_writedata : in std_logic_vector(31 downto 0);  -- ufix32
        avst_iord_bl_do_data : in std_logic_vector(31 downto 0);  -- ufix32
        avst_iord_bl_do_valid : in std_logic_vector(0 downto 0);  -- ufix1
        avst_iowr_bl_sample_out_almostfull : in std_logic_vector(0 downto 0);  -- ufix1
        avst_iowr_bl_sample_out_ready : in std_logic_vector(0 downto 0);  -- ufix1
        avst_iowr_nb_return_almostfull : in std_logic_vector(0 downto 0);  -- ufix1
        stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        start : in std_logic_vector(0 downto 0);  -- ufix1
        valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        avm_sample_buffer_address : out std_logic_vector(31 downto 0);  -- ufix32
        avm_sample_buffer_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_sample_buffer_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        avm_sample_buffer_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_sample_buffer_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_sample_buffer_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_sample_buffer_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_sample_buffer5_address : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_sample_buffer5_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_sample_buffer5_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        avm_unnamed_sample_buffer5_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_sample_buffer5_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_sample_buffer5_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_sample_buffer5_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        avs_cra_readdata : out std_logic_vector(63 downto 0);  -- ufix64
        avs_cra_readdatavalid : out std_logic_vector(0 downto 0);  -- ufix1
        avs_sample_buffer_readdata : out std_logic_vector(31 downto 0);  -- ufix32
        avs_sample_buffer_readdatavalid : out std_logic_vector(0 downto 0);  -- ufix1
        avst_iord_bl_do_ready : out std_logic_vector(0 downto 0);  -- ufix1
        avst_iowr_bl_sample_out_data : out std_logic_vector(15 downto 0);  -- ufix16
        avst_iowr_bl_sample_out_valid : out std_logic_vector(0 downto 0);  -- ufix1
        avst_iowr_nb_return_data : out std_logic_vector(0 downto 0);  -- ufix1
        avst_iowr_nb_return_valid : out std_logic_vector(0 downto 0);  -- ufix1
        done_irq : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end sample_buffer_function_wrapper;

architecture normal of sample_buffer_function_wrapper is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component acl_reset_wire is
        port (
            o_resetn : out std_logic;
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component sample_buffer_function is
        port (
            in_arg_do : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_arg_return : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_arg_sample_buffer : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_arg_sample_out : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_iord_bl_do_i_fifodata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_iord_bl_do_i_fifovalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iowr_bl_sample_out_i_fifoready : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_start : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_sample_buffer5_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_sample_buffer5_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_sample_buffer5_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_sample_buffer5_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_iord_bl_do_o_fifoready : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_sample_out_o_fifodata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_iowr_bl_sample_out_o_fifovalid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_nb_return_o_fifodata : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_nb_return_o_fifovalid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_sample_buffer5_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_sample_buffer5_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_sample_buffer5_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_unnamed_sample_buffer5_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_sample_buffer5_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_sample_buffer5_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_sample_buffer5_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component lsu_permute_address is
        generic (
            AWIDTH : INTEGER := 32;
            BITS_IN_BYTE_SELECT : INTEGER := 2;
            ENABLE_BANKED_MEMORY : INTEGER := 0;
            NUMBER_BANKS : INTEGER := 1;
            WORD_SELECT_BITS : INTEGER := -2
        );
        port (
            i_addr : in std_logic_vector(31 downto 0);
            o_addr : out std_logic_vector(31 downto 0)
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_bitenable_lsb_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_const_status_pad_x_q : STD_LOGIC_VECTOR (61 downto 0);
    signal dupName_0_data_and_enable_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_0_next_reg_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_0_not_bitenable_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_0_reg_address_x_q : STD_LOGIC_VECTOR (2 downto 0);
    signal dupName_0_reg_and_not_enable_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_0_write_reg_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_write_to_address_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_writedata_lsb_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal arg_bits_b : STD_LOGIC_VECTOR (31 downto 0);
    signal avs_cra_readdata_r_NO_SHIFT_REG_q : STD_LOGIC_VECTOR (63 downto 0);
    signal avs_readdata_mux_s : STD_LOGIC_VECTOR (2 downto 0);
    signal avs_readdata_mux_q : STD_LOGIC_VECTOR (63 downto 0);
    signal avs_start_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bit_enable_q : STD_LOGIC_VECTOR (63 downto 0);
    signal busy_and_q : STD_LOGIC_VECTOR (0 downto 0);
    signal busy_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal busy_or_q : STD_LOGIC_VECTOR (0 downto 0);
    signal component_not_ready_q : STD_LOGIC_VECTOR (0 downto 0);
    signal const_avs_read_0_q : STD_LOGIC_VECTOR (63 downto 0);
    signal const_slave_mem_addr_lower_bits_q : STD_LOGIC_VECTOR (1 downto 0);
    signal const_slave_mem_addr_upper_bits_q : STD_LOGIC_VECTOR (20 downto 0);
    signal const_status_pad_q : STD_LOGIC_VECTOR (62 downto 0);
    signal data_and_enable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal done_address_q : STD_LOGIC_VECTOR (2 downto 0);
    signal done_and_q : STD_LOGIC_VECTOR (0 downto 0);
    signal done_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal done_or_q : STD_LOGIC_VECTOR (0 downto 0);
    signal done_r_NO_SHIFT_REG_q : STD_LOGIC_VECTOR (0 downto 0);
    signal hold_done_q : STD_LOGIC_VECTOR (0 downto 0);
    signal implicit_input_q : STD_LOGIC_VECTOR (31 downto 0);
    signal instmask_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal interrupt_mask_r_NO_SHIFT_REG_q : STD_LOGIC_VECTOR (0 downto 0);
    signal interrupt_r_NO_SHIFT_REG_q : STD_LOGIC_VECTOR (0 downto 0);
    signal mm_slave_address_4_data_NO_SHIFT_REG_q : STD_LOGIC_VECTOR (63 downto 0);
    signal next_done_q : STD_LOGIC_VECTOR (0 downto 0);
    signal next_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal next_start_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_bitenable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_reset_done_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_start_q : STD_LOGIC_VECTOR (0 downto 0);
    signal pos_reset_q : STD_LOGIC_VECTOR (0 downto 0);
    signal reg_address_q : STD_LOGIC_VECTOR (2 downto 0);
    signal reg_and_not_enable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal reset_done_q : STD_LOGIC_VECTOR (0 downto 0);
    signal reset_wire_inst_o_resetn : STD_LOGIC_VECTOR (0 downto 0);
    signal reset_wire_inst_o_resetn_bitsignaltemp : std_logic;
    signal sample_buffer_function_out_iord_bl_do_o_fifoready : STD_LOGIC_VECTOR (0 downto 0);
    signal sample_buffer_function_out_iowr_bl_sample_out_o_fifodata : STD_LOGIC_VECTOR (15 downto 0);
    signal sample_buffer_function_out_iowr_bl_sample_out_o_fifovalid : STD_LOGIC_VECTOR (0 downto 0);
    signal sample_buffer_function_out_iowr_nb_return_o_fifodata : STD_LOGIC_VECTOR (0 downto 0);
    signal sample_buffer_function_out_iowr_nb_return_o_fifovalid : STD_LOGIC_VECTOR (0 downto 0);
    signal sample_buffer_function_out_unnamed_sample_buffer5_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal sample_buffer_function_out_unnamed_sample_buffer5_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal sample_buffer_function_out_unnamed_sample_buffer5_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal sample_buffer_function_out_unnamed_sample_buffer5_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal sample_buffer_function_out_unnamed_sample_buffer5_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal sample_buffer_function_out_unnamed_sample_buffer5_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal sample_buffer_function_out_unnamed_sample_buffer5_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal sample_buffer_permute_address_i_addr : STD_LOGIC_VECTOR (31 downto 0);
    signal sample_buffer_permute_address_o_addr : STD_LOGIC_VECTOR (31 downto 0);
    signal select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal select_1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal select_2_b : STD_LOGIC_VECTOR (0 downto 0);
    signal select_3_b : STD_LOGIC_VECTOR (0 downto 0);
    signal select_4_b : STD_LOGIC_VECTOR (0 downto 0);
    signal select_5_b : STD_LOGIC_VECTOR (0 downto 0);
    signal select_6_b : STD_LOGIC_VECTOR (0 downto 0);
    signal select_7_b : STD_LOGIC_VECTOR (0 downto 0);
    signal slave_addr_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal slave_arg_register_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal start_address_q : STD_LOGIC_VECTOR (2 downto 0);
    signal start_r_NO_SHIFT_REG_q : STD_LOGIC_VECTOR (0 downto 0);
    signal write_done_q : STD_LOGIC_VECTOR (0 downto 0);
    signal write_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal write_start_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal write_to_address_q : STD_LOGIC_VECTOR (0 downto 0);
    signal write_to_done_q : STD_LOGIC_VECTOR (0 downto 0);
    signal write_to_start_address_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- const_slave_mem_addr_upper_bits(CONSTANT,26)
    const_slave_mem_addr_upper_bits_q <= "000000000000000000000";

    -- const_slave_mem_addr_lower_bits(CONSTANT,25)
    const_slave_mem_addr_lower_bits_q <= "00";

    -- slave_addr_join(BITJOIN,122)
    slave_addr_join_q <= const_slave_mem_addr_upper_bits_q & avs_sample_buffer_address & const_slave_mem_addr_lower_bits_q;

    -- sample_buffer_permute_address(EXTIFACE,111)
    sample_buffer_permute_address_i_addr <= slave_addr_join_q;
    thesample_buffer_permute_address : lsu_permute_address
    GENERIC MAP (
        AWIDTH => 32,
        BITS_IN_BYTE_SELECT => 2,
        ENABLE_BANKED_MEMORY => 0,
        NUMBER_BANKS => 1,
        WORD_SELECT_BITS => -2
    )
    PORT MAP (
        i_addr => slave_addr_join_q,
        o_addr => sample_buffer_permute_address_o_addr
    );

    -- avm_sample_buffer_address(GPOUT,79)
    avm_sample_buffer_address <= sample_buffer_permute_address_o_addr;

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- avm_sample_buffer_burstcount(GPOUT,80)
    avm_sample_buffer_burstcount <= VCC_q;

    -- avm_sample_buffer_byteenable(GPOUT,81)
    avm_sample_buffer_byteenable <= avs_sample_buffer_byteenable;

    -- avm_sample_buffer_enable(GPOUT,82)
    avm_sample_buffer_enable <= VCC_q;

    -- avm_sample_buffer_read(GPOUT,83)
    avm_sample_buffer_read <= avs_sample_buffer_read;

    -- avm_sample_buffer_write(GPOUT,84)
    avm_sample_buffer_write <= avs_sample_buffer_write;

    -- avm_sample_buffer_writedata(GPOUT,85)
    avm_sample_buffer_writedata <= avs_sample_buffer_writedata;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- select_7(BITSELECT,120)
    select_7_b <= avs_cra_byteenable(7 downto 7);

    -- select_6(BITSELECT,119)
    select_6_b <= avs_cra_byteenable(6 downto 6);

    -- select_5(BITSELECT,118)
    select_5_b <= avs_cra_byteenable(5 downto 5);

    -- select_4(BITSELECT,117)
    select_4_b <= avs_cra_byteenable(4 downto 4);

    -- select_3(BITSELECT,116)
    select_3_b <= avs_cra_byteenable(3 downto 3);

    -- select_2(BITSELECT,115)
    select_2_b <= avs_cra_byteenable(2 downto 2);

    -- select_1(BITSELECT,114)
    select_1_b <= avs_cra_byteenable(1 downto 1);

    -- select_0(BITSELECT,113)
    select_0_b <= avs_cra_byteenable(0 downto 0);

    -- bit_enable(BITJOIN,16)
    bit_enable_q <= select_7_b & select_7_b & select_7_b & select_7_b & select_7_b & select_7_b & select_7_b & select_7_b & select_6_b & select_6_b & select_6_b & select_6_b & select_6_b & select_6_b & select_6_b & select_6_b & select_5_b & select_5_b & select_5_b & select_5_b & select_5_b & select_5_b & select_5_b & select_5_b & select_4_b & select_4_b & select_4_b & select_4_b & select_4_b & select_4_b & select_4_b & select_4_b & select_3_b & select_3_b & select_3_b & select_3_b & select_3_b & select_3_b & select_3_b & select_3_b & select_2_b & select_2_b & select_2_b & select_2_b & select_2_b & select_2_b & select_2_b & select_2_b & select_1_b & select_1_b & select_1_b & select_1_b & select_1_b & select_1_b & select_1_b & select_1_b & select_0_b & select_0_b & select_0_b & select_0_b & select_0_b & select_0_b & select_0_b & select_0_b;

    -- dupName_0_bitenable_lsb_x(BITSELECT,2)
    dupName_0_bitenable_lsb_x_b <= bit_enable_q(0 downto 0);

    -- dupName_0_writedata_lsb_x(BITSELECT,11)
    dupName_0_writedata_lsb_x_b <= avs_cra_writedata(0 downto 0);

    -- data_and_enable(LOGICAL,29)
    data_and_enable_q <= dupName_0_writedata_lsb_x_b and dupName_0_bitenable_lsb_x_b;

    -- start_address(CONSTANT,124)
    start_address_q <= "001";

    -- write_to_start_address(LOGICAL,133)
    write_to_start_address_q <= "1" WHEN avs_cra_address = start_address_q ELSE "0";

    -- write_start_reg(LOGICAL,130)
    write_start_reg_q <= avs_cra_write and write_to_start_address_q;

    -- avs_start(LOGICAL,15)
    avs_start_q <= write_start_reg_q and data_and_enable_q;

    -- component_not_ready(LOGICAL,21)
    component_not_ready_q <= not (sample_buffer_function_out_iord_bl_do_o_fifoready);

    -- busy_and(LOGICAL,18)
    busy_and_q <= component_not_ready_q and start_r_NO_SHIFT_REG_q;

    -- next_start(LOGICAL,74)
    next_start_q <= busy_and_q or avs_start_q;

    -- start_r_NO_SHIFT_REG(REG,125)
    start_r_NO_SHIFT_REG_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            start_r_NO_SHIFT_REG_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            start_r_NO_SHIFT_REG_q <= next_start_q;
        END IF;
    END PROCESS;

    -- dupName_0_reg_address_x(CONSTANT,7)
    dupName_0_reg_address_x_q <= "100";

    -- dupName_0_write_to_address_x(LOGICAL,10)
    dupName_0_write_to_address_x_q <= "1" WHEN avs_cra_address = dupName_0_reg_address_x_q ELSE "0";

    -- dupName_0_write_reg_x(LOGICAL,9)
    dupName_0_write_reg_x_q <= avs_cra_write and dupName_0_write_to_address_x_q;

    -- dupName_0_data_and_enable_x(LOGICAL,4)
    dupName_0_data_and_enable_x_q <= avs_cra_writedata and bit_enable_q;

    -- dupName_0_not_bitenable_x(LOGICAL,6)
    dupName_0_not_bitenable_x_q <= not (bit_enable_q);

    -- dupName_0_reg_and_not_enable_x(LOGICAL,8)
    dupName_0_reg_and_not_enable_x_q <= mm_slave_address_4_data_NO_SHIFT_REG_q and dupName_0_not_bitenable_x_q;

    -- dupName_0_next_reg_x(LOGICAL,5)
    dupName_0_next_reg_x_q <= dupName_0_reg_and_not_enable_x_q or dupName_0_data_and_enable_x_q;

    -- mm_slave_address_4_data_NO_SHIFT_REG(REG,71)
    mm_slave_address_4_data_NO_SHIFT_REG_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            mm_slave_address_4_data_NO_SHIFT_REG_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_0_write_reg_x_q = "1") THEN
                mm_slave_address_4_data_NO_SHIFT_REG_q <= dupName_0_next_reg_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- arg_bits(BITSELECT,12)
    arg_bits_b <= mm_slave_address_4_data_NO_SHIFT_REG_q(31 downto 0);

    -- slave_arg_register_join(BITJOIN,123)
    slave_arg_register_join_q <= arg_bits_b;

    -- implicit_input(BITJOIN,39)
    implicit_input_q <= slave_arg_register_join_q;

    -- const_avs_read_0(CONSTANT,24)
    const_avs_read_0_q <= "0000000000000000000000000000000000000000000000000000000000000000";

    -- sample_buffer_function(BLACKBOX,110)
    thesample_buffer_function : sample_buffer_function
    PORT MAP (
        in_arg_do => const_avs_read_0_q,
        in_arg_return => const_avs_read_0_q,
        in_arg_sample_buffer => const_avs_read_0_q,
        in_arg_sample_out => const_avs_read_0_q,
        in_iord_bl_do_i_fifodata => implicit_input_q,
        in_iord_bl_do_i_fifovalid => start_r_NO_SHIFT_REG_q,
        in_iowr_bl_sample_out_i_fifoready => avst_iowr_bl_sample_out_ready,
        in_stall_in => GND_q,
        in_start => GND_q,
        in_unnamed_sample_buffer5_avm_readdata => avm_unnamed_sample_buffer5_readdata,
        in_unnamed_sample_buffer5_avm_readdatavalid => avm_unnamed_sample_buffer5_readdatavalid,
        in_unnamed_sample_buffer5_avm_waitrequest => avm_unnamed_sample_buffer5_waitrequest,
        in_unnamed_sample_buffer5_avm_writeack => avm_unnamed_sample_buffer5_writeack,
        in_valid_in => VCC_q,
        out_iord_bl_do_o_fifoready => sample_buffer_function_out_iord_bl_do_o_fifoready,
        out_iowr_bl_sample_out_o_fifodata => sample_buffer_function_out_iowr_bl_sample_out_o_fifodata,
        out_iowr_bl_sample_out_o_fifovalid => sample_buffer_function_out_iowr_bl_sample_out_o_fifovalid,
        out_iowr_nb_return_o_fifodata => sample_buffer_function_out_iowr_nb_return_o_fifodata,
        out_iowr_nb_return_o_fifovalid => sample_buffer_function_out_iowr_nb_return_o_fifovalid,
        out_unnamed_sample_buffer5_avm_address => sample_buffer_function_out_unnamed_sample_buffer5_avm_address,
        out_unnamed_sample_buffer5_avm_burstcount => sample_buffer_function_out_unnamed_sample_buffer5_avm_burstcount,
        out_unnamed_sample_buffer5_avm_byteenable => sample_buffer_function_out_unnamed_sample_buffer5_avm_byteenable,
        out_unnamed_sample_buffer5_avm_enable => sample_buffer_function_out_unnamed_sample_buffer5_avm_enable,
        out_unnamed_sample_buffer5_avm_read => sample_buffer_function_out_unnamed_sample_buffer5_avm_read,
        out_unnamed_sample_buffer5_avm_write => sample_buffer_function_out_unnamed_sample_buffer5_avm_write,
        out_unnamed_sample_buffer5_avm_writedata => sample_buffer_function_out_unnamed_sample_buffer5_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- avm_unnamed_sample_buffer5_address(GPOUT,86)
    avm_unnamed_sample_buffer5_address <= sample_buffer_function_out_unnamed_sample_buffer5_avm_address;

    -- avm_unnamed_sample_buffer5_burstcount(GPOUT,87)
    avm_unnamed_sample_buffer5_burstcount <= sample_buffer_function_out_unnamed_sample_buffer5_avm_burstcount;

    -- avm_unnamed_sample_buffer5_byteenable(GPOUT,88)
    avm_unnamed_sample_buffer5_byteenable <= sample_buffer_function_out_unnamed_sample_buffer5_avm_byteenable;

    -- avm_unnamed_sample_buffer5_enable(GPOUT,89)
    avm_unnamed_sample_buffer5_enable <= sample_buffer_function_out_unnamed_sample_buffer5_avm_enable;

    -- avm_unnamed_sample_buffer5_read(GPOUT,90)
    avm_unnamed_sample_buffer5_read <= sample_buffer_function_out_unnamed_sample_buffer5_avm_read;

    -- avm_unnamed_sample_buffer5_write(GPOUT,91)
    avm_unnamed_sample_buffer5_write <= sample_buffer_function_out_unnamed_sample_buffer5_avm_write;

    -- avm_unnamed_sample_buffer5_writedata(GPOUT,92)
    avm_unnamed_sample_buffer5_writedata <= sample_buffer_function_out_unnamed_sample_buffer5_avm_writedata;

    -- dupName_0_const_status_pad_x(CONSTANT,3)
    dupName_0_const_status_pad_x_q <= "00000000000000000000000000000000000000000000000000000000000000";

    -- not_start(LOGICAL,78)
    not_start_q <= not (start_r_NO_SHIFT_REG_q);

    -- done_and(LOGICAL,32)
    done_and_q <= done_r_NO_SHIFT_REG_q and not_start_q;

    -- done_or(LOGICAL,34)
    done_or_q <= sample_buffer_function_out_iowr_nb_return_o_fifovalid or done_and_q;

    -- done_r_NO_SHIFT_REG(REG,35)
    done_r_NO_SHIFT_REG_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            done_r_NO_SHIFT_REG_q <= "1";
        ELSIF (clock'EVENT AND clock = '1') THEN
            done_r_NO_SHIFT_REG_q <= done_or_q;
        END IF;
    END PROCESS;

    -- done_address(CONSTANT,31)
    done_address_q <= "011";

    -- write_to_done(LOGICAL,132)
    write_to_done_q <= "1" WHEN avs_cra_address = done_address_q ELSE "0";

    -- write_done(LOGICAL,127)
    write_done_q <= write_to_done_q and avs_cra_write;

    -- reset_done(LOGICAL,107)
    reset_done_q <= write_done_q and data_and_enable_q;

    -- not_reset_done(LOGICAL,77)
    not_reset_done_q <= not (reset_done_q);

    -- hold_done(LOGICAL,37)
    hold_done_q <= not_reset_done_q and interrupt_r_NO_SHIFT_REG_q;

    -- next_done(LOGICAL,72)
    next_done_q <= hold_done_q or sample_buffer_function_out_iowr_nb_return_o_fifovalid;

    -- interrupt_r_NO_SHIFT_REG(REG,70)
    interrupt_r_NO_SHIFT_REG_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            interrupt_r_NO_SHIFT_REG_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            interrupt_r_NO_SHIFT_REG_q <= next_done_q;
        END IF;
    END PROCESS;

    -- done_join(BITJOIN,33)
    done_join_q <= dupName_0_const_status_pad_x_q & done_r_NO_SHIFT_REG_q & interrupt_r_NO_SHIFT_REG_q;

    -- const_status_pad(CONSTANT,28)
    const_status_pad_q <= "000000000000000000000000000000000000000000000000000000000000000";

    -- reg_address(CONSTANT,104)
    reg_address_q <= "010";

    -- write_to_address(LOGICAL,131)
    write_to_address_q <= "1" WHEN avs_cra_address = reg_address_q ELSE "0";

    -- write_reg(LOGICAL,129)
    write_reg_q <= avs_cra_write and write_to_address_q;

    -- not_bitenable(LOGICAL,75)
    not_bitenable_q <= not (dupName_0_bitenable_lsb_x_b);

    -- reg_and_not_enable(LOGICAL,105)
    reg_and_not_enable_q <= interrupt_mask_r_NO_SHIFT_REG_q and not_bitenable_q;

    -- next_reg(LOGICAL,73)
    next_reg_q <= reg_and_not_enable_q or data_and_enable_q;

    -- interrupt_mask_r_NO_SHIFT_REG(REG,69)
    interrupt_mask_r_NO_SHIFT_REG_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            interrupt_mask_r_NO_SHIFT_REG_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (write_reg_q = "1") THEN
                interrupt_mask_r_NO_SHIFT_REG_q <= next_reg_q;
            END IF;
        END IF;
    END PROCESS;

    -- instmask_join(BITJOIN,68)
    instmask_join_q <= const_status_pad_q & interrupt_mask_r_NO_SHIFT_REG_q;

    -- reset_wire_inst(EXTIFACE,108)
    reset_wire_inst_o_resetn(0) <= reset_wire_inst_o_resetn_bitsignaltemp;
    thereset_wire_inst : acl_reset_wire
    PORT MAP (
        o_resetn => reset_wire_inst_o_resetn_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- pos_reset(LOGICAL,103)
    pos_reset_q <= not (reset_wire_inst_o_resetn);

    -- busy_or(LOGICAL,20)
    busy_or_q <= pos_reset_q or busy_and_q;

    -- busy_join(BITJOIN,19)
    busy_join_q <= const_status_pad_q & busy_or_q;

    -- avs_readdata_mux(MUX,14)
    avs_readdata_mux_s <= avs_cra_address;
    avs_readdata_mux_combproc: PROCESS (avs_readdata_mux_s, busy_join_q, const_avs_read_0_q, instmask_join_q, done_join_q, mm_slave_address_4_data_NO_SHIFT_REG_q)
    BEGIN
        CASE (avs_readdata_mux_s) IS
            WHEN "000" => avs_readdata_mux_q <= busy_join_q;
            WHEN "001" => avs_readdata_mux_q <= const_avs_read_0_q;
            WHEN "010" => avs_readdata_mux_q <= instmask_join_q;
            WHEN "011" => avs_readdata_mux_q <= done_join_q;
            WHEN "100" => avs_readdata_mux_q <= mm_slave_address_4_data_NO_SHIFT_REG_q;
            WHEN OTHERS => avs_readdata_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- avs_cra_readdata_r_NO_SHIFT_REG(REG,13)
    avs_cra_readdata_r_NO_SHIFT_REG_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            avs_cra_readdata_r_NO_SHIFT_REG_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            avs_cra_readdata_r_NO_SHIFT_REG_q <= avs_readdata_mux_q;
        END IF;
    END PROCESS;

    -- avs_cra_readdata(GPOUT,93)
    avs_cra_readdata <= avs_cra_readdata_r_NO_SHIFT_REG_q;

    -- avs_cra_readdatavalid(GPOUT,94)
    avs_cra_readdatavalid <= GND_q;

    -- avs_sample_buffer_readdata(GPOUT,95)
    avs_sample_buffer_readdata <= avm_sample_buffer_readdata;

    -- avs_sample_buffer_readdatavalid(GPOUT,96)
    avs_sample_buffer_readdatavalid <= avm_sample_buffer_readdatavalid;

    -- avst_iord_bl_do_ready(GPOUT,97)
    avst_iord_bl_do_ready <= sample_buffer_function_out_iord_bl_do_o_fifoready;

    -- avst_iowr_bl_sample_out_data(GPOUT,98)
    avst_iowr_bl_sample_out_data <= sample_buffer_function_out_iowr_bl_sample_out_o_fifodata;

    -- avst_iowr_bl_sample_out_valid(GPOUT,99)
    avst_iowr_bl_sample_out_valid <= sample_buffer_function_out_iowr_bl_sample_out_o_fifovalid;

    -- avst_iowr_nb_return_data(GPOUT,100)
    avst_iowr_nb_return_data <= sample_buffer_function_out_iowr_nb_return_o_fifodata;

    -- avst_iowr_nb_return_valid(GPOUT,101)
    avst_iowr_nb_return_valid <= sample_buffer_function_out_iowr_nb_return_o_fifovalid;

    -- done_irq(GPOUT,102)
    done_irq <= interrupt_r_NO_SHIFT_REG_q;

END normal;
