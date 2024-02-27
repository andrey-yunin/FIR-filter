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

-- VHDL created from bb_result_buffer_B1_start_stall_region
-- VHDL created on Fri Dec 24 18:28:46 2021


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

entity bb_result_buffer_B1_start_stall_region is
    port (
        in_iord_bl_result_in_i_fifodata : in std_logic_vector(31 downto 0);  -- ufix32
        in_iord_bl_result_in_i_fifovalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_iord_bl_do_o_fifoready : out std_logic_vector(0 downto 0);  -- ufix1
        in_result_buffer : in std_logic_vector(63 downto 0);  -- ufix64
        in_forked : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_iord_bl_result_in_o_fifoready : out std_logic_vector(0 downto 0);  -- ufix1
        in_iowr_bl_return_i_fifoready : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memdep_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_iowr_bl_return_o_fifodata : out std_logic_vector(0 downto 0);  -- ufix1
        out_iowr_bl_return_o_fifovalid : out std_logic_vector(0 downto 0);  -- ufix1
        in_iord_bl_do_i_fifodata : in std_logic_vector(0 downto 0);  -- ufix1
        in_iord_bl_do_i_fifovalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_result_buffer_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_result_buffer_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_result_buffer_B1_start_stall_region;

architecture normal of bb_result_buffer_B1_start_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_iord_bl_result_in_unnamed_result_buffer2_result_buffer13 is
        port (
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iord_bl_result_in_i_fifodata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_iord_bl_result_in_i_fifovalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_iord_bl_result_in_o_fifoready : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer is
        port (
            in_unnamed_result_buffer0_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_result_buffer_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_result_buffer_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer is
        port (
            in_c1_eni3_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_eni3_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_eni3_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_eni3_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memdep_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_result_buffer : in std_logic_vector(63 downto 0);  -- Fixed Point
            out_c1_exit_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exit_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memdep_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component result_buffer_B1_start_merge_reg is
        port (
            in_data_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_iord_bl_do_unnamed_result_buffer1_result_buffer12 is
        port (
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iord_bl_do_i_fifodata : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iord_bl_do_i_fifovalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_iord_bl_do_o_fifoready : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_iowr_bl_return_unnamed_result_buffer4_result_buffer68 is
        port (
            in_i_data : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iowr_bl_return_i_fifoready : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_return_o_fifodata : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_return_o_fifovalid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_ack : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iord_bl_result_in_unnamed_result_buffer2_result_buffer_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_iord_bl_result_in_unnamed_result_buffer2_result_buffer_aunroll_x_out_iord_bl_result_in_o_fifoready : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iord_bl_result_in_unnamed_result_buffer2_result_buffer_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iord_bl_result_in_unnamed_result_buffer2_result_buffer_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_out_c0_exit_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_result_buffer_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_result_buffer_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_c1_exit_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_memdep_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_memdep_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_memdep_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_memdep_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_memdep_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_memdep_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_memdep_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal result_buffer_B1_start_merge_reg_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal result_buffer_B1_start_merge_reg_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal result_buffer_B1_start_merge_reg_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iord_bl_do_unnamed_result_buffer1_result_buffer_out_iord_bl_do_o_fifoready : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iord_bl_do_unnamed_result_buffer1_result_buffer_out_o_data : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iord_bl_do_unnamed_result_buffer1_result_buffer_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iord_bl_do_unnamed_result_buffer1_result_buffer_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_bl_return_unnamed_result_buffer4_result_buffer_out_iowr_bl_return_o_fifodata : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_bl_return_unnamed_result_buffer4_result_buffer_out_iowr_bl_return_o_fifovalid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_bl_return_unnamed_result_buffer4_result_buffer_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_bl_return_unnamed_result_buffer4_result_buffer_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_iord_bl_result_in_unnamed_result_buffer2_result_buffer_aunroll_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_iord_bl_result_in_unnamed_result_buffer2_result_buffer_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_result_buffer_B1_start_merge_reg_aunroll_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_result_buffer_B1_start_merge_reg_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_iord_bl_do_unnamed_result_buffer1_result_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_iord_bl_do_unnamed_result_buffer1_result_buffer_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_result_buffer_B1_start_merge_reg_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_result_buffer_B1_start_merge_reg_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_result_buffer_B1_start_merge_reg_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_result_buffer_B1_start_merge_reg_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_result_buffer_B1_start_merge_reg_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_result_buffer_B1_start_merge_reg_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_result_buffer_B1_start_merge_reg_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_result_buffer_B1_start_merge_reg_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_result_buffer_B1_start_merge_reg_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_result_buffer_B1_start_merge_reg_aunroll_x_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_result_buffer_B1_start_merge_reg_aunroll_x_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_result_buffer_B1_start_merge_reg_aunroll_x_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_result_buffer_B1_start_merge_reg_aunroll_x_toReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_result_buffer_B1_start_merge_reg_aunroll_x_fromReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_result_buffer_B1_start_merge_reg_aunroll_x_consumed3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_result_buffer_B1_start_merge_reg_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_result_buffer_B1_start_merge_reg_aunroll_x_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_result_buffer_B1_start_merge_reg_aunroll_x_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_result_buffer_B1_start_merge_reg_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_result_buffer_B1_start_merge_reg_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_result_buffer_B1_start_merge_reg_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_result_buffer_B1_start_merge_reg_aunroll_x_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_result_buffer_B1_start_merge_reg_aunroll_x_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iowr_bl_return_unnamed_result_buffer4_result_buffer_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iowr_bl_return_unnamed_result_buffer4_result_buffer_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- SE_out_i_iowr_bl_return_unnamed_result_buffer4_result_buffer(STALLENABLE,76)
    -- Backward Stall generation
    SE_out_i_iowr_bl_return_unnamed_result_buffer4_result_buffer_backStall <= "0";
    -- Computing multiple Valid(s)
    SE_out_i_iowr_bl_return_unnamed_result_buffer4_result_buffer_wireValid <= i_iowr_bl_return_unnamed_result_buffer4_result_buffer_out_o_valid;

    -- bubble_join_i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x(BITJOIN,50)
    bubble_join_i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_q <= i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_c1_exit_1;

    -- bubble_select_i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x(BITSELECT,51)
    bubble_select_i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_q(0 downto 0));

    -- i_iowr_bl_return_unnamed_result_buffer4_result_buffer(BLACKBOX,33)@10
    -- in in_i_stall@20000000
    -- out out_iowr_bl_return_o_fifodata@20000000
    -- out out_iowr_bl_return_o_fifovalid@20000000
    -- out out_o_stall@20000000
    thei_iowr_bl_return_unnamed_result_buffer4_result_buffer : i_iowr_bl_return_unnamed_result_buffer4_result_buffer68
    PORT MAP (
        in_i_data => GND_q,
        in_i_dependence => bubble_select_i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_b,
        in_i_stall => SE_out_i_iowr_bl_return_unnamed_result_buffer4_result_buffer_backStall,
        in_i_valid => SE_out_i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_V0,
        in_iowr_bl_return_i_fifoready => in_iowr_bl_return_i_fifoready,
        out_iowr_bl_return_o_fifodata => i_iowr_bl_return_unnamed_result_buffer4_result_buffer_out_iowr_bl_return_o_fifodata,
        out_iowr_bl_return_o_fifovalid => i_iowr_bl_return_unnamed_result_buffer4_result_buffer_out_iowr_bl_return_o_fifovalid,
        out_o_stall => i_iowr_bl_return_unnamed_result_buffer4_result_buffer_out_o_stall,
        out_o_valid => i_iowr_bl_return_unnamed_result_buffer4_result_buffer_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x(STALLENABLE,70)
    -- Valid signal propagation
    SE_out_i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_V0 <= SE_out_i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_wireValid;
    -- Backward Stall generation
    SE_out_i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_backStall <= i_iowr_bl_return_unnamed_result_buffer4_result_buffer_out_o_stall or not (SE_out_i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_wireValid <= i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_o_valid;

    -- bubble_join_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x(BITJOIN,47)
    bubble_join_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_q <= i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_out_c0_exit_1;

    -- bubble_select_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x(BITSELECT,48)
    bubble_select_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_q(0 downto 0));

    -- bubble_join_i_iord_bl_do_unnamed_result_buffer1_result_buffer(BITJOIN,59)
    bubble_join_i_iord_bl_do_unnamed_result_buffer1_result_buffer_q <= i_iord_bl_do_unnamed_result_buffer1_result_buffer_out_o_data;

    -- bubble_select_i_iord_bl_do_unnamed_result_buffer1_result_buffer(BITSELECT,60)
    bubble_select_i_iord_bl_do_unnamed_result_buffer1_result_buffer_b <= STD_LOGIC_VECTOR(bubble_join_i_iord_bl_do_unnamed_result_buffer1_result_buffer_q(0 downto 0));

    -- bubble_join_result_buffer_B1_start_merge_reg_aunroll_x(BITJOIN,53)
    bubble_join_result_buffer_B1_start_merge_reg_aunroll_x_q <= result_buffer_B1_start_merge_reg_aunroll_x_out_data_out_0;

    -- bubble_select_result_buffer_B1_start_merge_reg_aunroll_x(BITSELECT,54)
    bubble_select_result_buffer_B1_start_merge_reg_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_result_buffer_B1_start_merge_reg_aunroll_x_q(0 downto 0));

    -- bubble_join_i_iord_bl_result_in_unnamed_result_buffer2_result_buffer_aunroll_x(BITJOIN,44)
    bubble_join_i_iord_bl_result_in_unnamed_result_buffer2_result_buffer_aunroll_x_q <= i_iord_bl_result_in_unnamed_result_buffer2_result_buffer_aunroll_x_out_o_data_0;

    -- bubble_select_i_iord_bl_result_in_unnamed_result_buffer2_result_buffer_aunroll_x(BITSELECT,45)
    bubble_select_i_iord_bl_result_in_unnamed_result_buffer2_result_buffer_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_iord_bl_result_in_unnamed_result_buffer2_result_buffer_aunroll_x_q(31 downto 0));

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x(BLACKBOX,24)@1
    -- in in_i_stall@20000000
    -- out out_c1_exit_0@10
    -- out out_c1_exit_1@10
    -- out out_memdep_avm_address@20000000
    -- out out_memdep_avm_burstcount@20000000
    -- out out_memdep_avm_byteenable@20000000
    -- out out_memdep_avm_enable@20000000
    -- out out_memdep_avm_read@20000000
    -- out out_memdep_avm_write@20000000
    -- out out_memdep_avm_writedata@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@10
    thei_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x : i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer
    PORT MAP (
        in_c1_eni3_0 => GND_q,
        in_c1_eni3_1 => bubble_select_i_iord_bl_result_in_unnamed_result_buffer2_result_buffer_aunroll_x_b,
        in_c1_eni3_2 => bubble_select_result_buffer_B1_start_merge_reg_aunroll_x_b,
        in_c1_eni3_3 => bubble_select_i_iord_bl_do_unnamed_result_buffer1_result_buffer_b,
        in_c0_exe1 => bubble_select_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_b,
        in_flush => in_flush,
        in_forked => bubble_select_result_buffer_B1_start_merge_reg_aunroll_x_b,
        in_i_stall => SE_out_i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_backStall,
        in_i_valid => SE_out_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_V0,
        in_memdep_avm_readdata => in_memdep_avm_readdata,
        in_memdep_avm_readdatavalid => in_memdep_avm_readdatavalid,
        in_memdep_avm_waitrequest => in_memdep_avm_waitrequest,
        in_memdep_avm_writeack => in_memdep_avm_writeack,
        in_result_buffer => in_result_buffer,
        out_c1_exit_1 => i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_c1_exit_1,
        out_memdep_avm_address => i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_memdep_avm_address,
        out_memdep_avm_burstcount => i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_memdep_avm_burstcount,
        out_memdep_avm_byteenable => i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_memdep_avm_byteenable,
        out_memdep_avm_enable => i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_memdep_avm_enable,
        out_memdep_avm_read => i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_memdep_avm_read,
        out_memdep_avm_write => i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_memdep_avm_write,
        out_memdep_avm_writedata => i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_memdep_avm_writedata,
        out_o_stall => i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- i_iord_bl_result_in_unnamed_result_buffer2_result_buffer_aunroll_x(BLACKBOX,22)@1
    -- in in_i_stall@20000000
    -- out out_iord_bl_result_in_o_fifoready@20000000
    -- out out_o_stall@20000000
    thei_iord_bl_result_in_unnamed_result_buffer2_result_buffer_aunroll_x : i_iord_bl_result_in_unnamed_result_buffer2_result_buffer13
    PORT MAP (
        in_i_dependence => bubble_select_i_iord_bl_do_unnamed_result_buffer1_result_buffer_b,
        in_i_stall => SE_out_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_backStall,
        in_i_valid => SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_V1,
        in_iord_bl_result_in_i_fifodata => in_iord_bl_result_in_i_fifodata,
        in_iord_bl_result_in_i_fifovalid => in_iord_bl_result_in_i_fifovalid,
        out_o_data_0 => i_iord_bl_result_in_unnamed_result_buffer2_result_buffer_aunroll_x_out_o_data_0,
        out_iord_bl_result_in_o_fifoready => i_iord_bl_result_in_unnamed_result_buffer2_result_buffer_aunroll_x_out_iord_bl_result_in_o_fifoready,
        out_o_stall => i_iord_bl_result_in_unnamed_result_buffer2_result_buffer_aunroll_x_out_o_stall,
        out_o_valid => i_iord_bl_result_in_unnamed_result_buffer2_result_buffer_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x(STALLENABLE,68)
    -- Valid signal propagation
    SE_out_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_V0 <= SE_out_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_wireValid;
    -- Backward Stall generation
    SE_out_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_backStall <= i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_o_stall or not (SE_out_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_and0 <= i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_out_o_valid;
    SE_out_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_and1 <= i_iord_bl_result_in_unnamed_result_buffer2_result_buffer_aunroll_x_out_o_valid and SE_out_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_and0;
    SE_out_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_and2 <= SE_out_result_buffer_B1_start_merge_reg_aunroll_x_V3 and SE_out_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_and1;
    SE_out_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_wireValid <= SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_V0 and SE_out_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_and2;

    -- i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x(BLACKBOX,23)@1
    -- in in_i_stall@20000000
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going_result_buffer_exiting_stall_out@20000000
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going_result_buffer_exiting_valid_out@20000000
    -- out out_o_stall@20000000
    -- out out_pipeline_valid_out@20000000
    thei_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x : i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer
    PORT MAP (
        in_unnamed_result_buffer0_0 => GND_q,
        in_i_stall => SE_out_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_backStall,
        in_i_valid => SE_out_result_buffer_B1_start_merge_reg_aunroll_x_V0,
        in_pipeline_stall_in => in_pipeline_stall_in,
        out_c0_exit_1 => i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_out_c0_exit_1,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_result_buffer_exiting_stall_out => i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_result_buffer_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_result_buffer_exiting_valid_out => i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_result_buffer_exiting_valid_out,
        out_o_stall => i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_out_o_valid,
        out_pipeline_valid_out => i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_stall_entry(STALLENABLE,77)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= result_buffer_B1_start_merge_reg_aunroll_x_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- bubble_join_stall_entry(BITJOIN,62)
    bubble_join_stall_entry_q <= in_forked;

    -- bubble_select_stall_entry(BITSELECT,63)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(0 downto 0));

    -- result_buffer_B1_start_merge_reg_aunroll_x(BLACKBOX,25)@0
    -- in in_stall_in@20000000
    -- out out_data_out_0@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    theresult_buffer_B1_start_merge_reg_aunroll_x : result_buffer_B1_start_merge_reg
    PORT MAP (
        in_data_in_0 => bubble_select_stall_entry_b,
        in_stall_in => SE_out_result_buffer_B1_start_merge_reg_aunroll_x_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_data_out_0 => result_buffer_B1_start_merge_reg_aunroll_x_out_data_out_0,
        out_stall_out => result_buffer_B1_start_merge_reg_aunroll_x_out_stall_out,
        out_valid_out => result_buffer_B1_start_merge_reg_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_result_buffer_B1_start_merge_reg_aunroll_x(STALLENABLE,72)
    SE_out_result_buffer_B1_start_merge_reg_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_result_buffer_B1_start_merge_reg_aunroll_x_fromReg0 <= (others => '0');
            SE_out_result_buffer_B1_start_merge_reg_aunroll_x_fromReg1 <= (others => '0');
            SE_out_result_buffer_B1_start_merge_reg_aunroll_x_fromReg2 <= (others => '0');
            SE_out_result_buffer_B1_start_merge_reg_aunroll_x_fromReg3 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_result_buffer_B1_start_merge_reg_aunroll_x_fromReg0 <= SE_out_result_buffer_B1_start_merge_reg_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_result_buffer_B1_start_merge_reg_aunroll_x_fromReg1 <= SE_out_result_buffer_B1_start_merge_reg_aunroll_x_toReg1;
            -- Succesor 2
            SE_out_result_buffer_B1_start_merge_reg_aunroll_x_fromReg2 <= SE_out_result_buffer_B1_start_merge_reg_aunroll_x_toReg2;
            -- Succesor 3
            SE_out_result_buffer_B1_start_merge_reg_aunroll_x_fromReg3 <= SE_out_result_buffer_B1_start_merge_reg_aunroll_x_toReg3;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_result_buffer_B1_start_merge_reg_aunroll_x_consumed0 <= (not (i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_out_o_stall) and SE_out_result_buffer_B1_start_merge_reg_aunroll_x_wireValid) or SE_out_result_buffer_B1_start_merge_reg_aunroll_x_fromReg0;
    SE_out_result_buffer_B1_start_merge_reg_aunroll_x_consumed1 <= (not (i_iord_bl_do_unnamed_result_buffer1_result_buffer_out_o_stall) and SE_out_result_buffer_B1_start_merge_reg_aunroll_x_wireValid) or SE_out_result_buffer_B1_start_merge_reg_aunroll_x_fromReg1;
    SE_out_result_buffer_B1_start_merge_reg_aunroll_x_consumed2 <= (not (in_stall_in) and SE_out_result_buffer_B1_start_merge_reg_aunroll_x_wireValid) or SE_out_result_buffer_B1_start_merge_reg_aunroll_x_fromReg2;
    SE_out_result_buffer_B1_start_merge_reg_aunroll_x_consumed3 <= (not (SE_out_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_backStall) and SE_out_result_buffer_B1_start_merge_reg_aunroll_x_wireValid) or SE_out_result_buffer_B1_start_merge_reg_aunroll_x_fromReg3;
    -- Consuming
    SE_out_result_buffer_B1_start_merge_reg_aunroll_x_StallValid <= SE_out_result_buffer_B1_start_merge_reg_aunroll_x_backStall and SE_out_result_buffer_B1_start_merge_reg_aunroll_x_wireValid;
    SE_out_result_buffer_B1_start_merge_reg_aunroll_x_toReg0 <= SE_out_result_buffer_B1_start_merge_reg_aunroll_x_StallValid and SE_out_result_buffer_B1_start_merge_reg_aunroll_x_consumed0;
    SE_out_result_buffer_B1_start_merge_reg_aunroll_x_toReg1 <= SE_out_result_buffer_B1_start_merge_reg_aunroll_x_StallValid and SE_out_result_buffer_B1_start_merge_reg_aunroll_x_consumed1;
    SE_out_result_buffer_B1_start_merge_reg_aunroll_x_toReg2 <= SE_out_result_buffer_B1_start_merge_reg_aunroll_x_StallValid and SE_out_result_buffer_B1_start_merge_reg_aunroll_x_consumed2;
    SE_out_result_buffer_B1_start_merge_reg_aunroll_x_toReg3 <= SE_out_result_buffer_B1_start_merge_reg_aunroll_x_StallValid and SE_out_result_buffer_B1_start_merge_reg_aunroll_x_consumed3;
    -- Backward Stall generation
    SE_out_result_buffer_B1_start_merge_reg_aunroll_x_or0 <= SE_out_result_buffer_B1_start_merge_reg_aunroll_x_consumed0;
    SE_out_result_buffer_B1_start_merge_reg_aunroll_x_or1 <= SE_out_result_buffer_B1_start_merge_reg_aunroll_x_consumed1 and SE_out_result_buffer_B1_start_merge_reg_aunroll_x_or0;
    SE_out_result_buffer_B1_start_merge_reg_aunroll_x_or2 <= SE_out_result_buffer_B1_start_merge_reg_aunroll_x_consumed2 and SE_out_result_buffer_B1_start_merge_reg_aunroll_x_or1;
    SE_out_result_buffer_B1_start_merge_reg_aunroll_x_wireStall <= not (SE_out_result_buffer_B1_start_merge_reg_aunroll_x_consumed3 and SE_out_result_buffer_B1_start_merge_reg_aunroll_x_or2);
    SE_out_result_buffer_B1_start_merge_reg_aunroll_x_backStall <= SE_out_result_buffer_B1_start_merge_reg_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_result_buffer_B1_start_merge_reg_aunroll_x_V0 <= SE_out_result_buffer_B1_start_merge_reg_aunroll_x_wireValid and not (SE_out_result_buffer_B1_start_merge_reg_aunroll_x_fromReg0);
    SE_out_result_buffer_B1_start_merge_reg_aunroll_x_V1 <= SE_out_result_buffer_B1_start_merge_reg_aunroll_x_wireValid and not (SE_out_result_buffer_B1_start_merge_reg_aunroll_x_fromReg1);
    SE_out_result_buffer_B1_start_merge_reg_aunroll_x_V2 <= SE_out_result_buffer_B1_start_merge_reg_aunroll_x_wireValid and not (SE_out_result_buffer_B1_start_merge_reg_aunroll_x_fromReg2);
    SE_out_result_buffer_B1_start_merge_reg_aunroll_x_V3 <= SE_out_result_buffer_B1_start_merge_reg_aunroll_x_wireValid and not (SE_out_result_buffer_B1_start_merge_reg_aunroll_x_fromReg3);
    -- Computing multiple Valid(s)
    SE_out_result_buffer_B1_start_merge_reg_aunroll_x_wireValid <= result_buffer_B1_start_merge_reg_aunroll_x_out_valid_out;

    -- SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer(STALLENABLE,74)
    SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_fromReg0 <= (others => '0');
            SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_fromReg0 <= SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_toReg0;
            -- Succesor 1
            SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_fromReg1 <= SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_consumed0 <= (not (SE_out_i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_backStall) and SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_wireValid) or SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_fromReg0;
    SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_consumed1 <= (not (i_iord_bl_result_in_unnamed_result_buffer2_result_buffer_aunroll_x_out_o_stall) and SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_wireValid) or SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_fromReg1;
    -- Consuming
    SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_StallValid <= SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_backStall and SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_wireValid;
    SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_toReg0 <= SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_StallValid and SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_consumed0;
    SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_toReg1 <= SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_StallValid and SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_consumed1;
    -- Backward Stall generation
    SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_or0 <= SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_consumed0;
    SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_wireStall <= not (SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_consumed1 and SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_or0);
    SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_backStall <= SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_wireStall;
    -- Valid signal propagation
    SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_V0 <= SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_wireValid and not (SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_fromReg0);
    SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_V1 <= SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_wireValid and not (SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_wireValid <= i_iord_bl_do_unnamed_result_buffer1_result_buffer_out_o_valid;

    -- i_iord_bl_do_unnamed_result_buffer1_result_buffer(BLACKBOX,32)@1
    -- in in_i_stall@20000000
    -- out out_iord_bl_do_o_fifoready@20000000
    -- out out_o_stall@20000000
    thei_iord_bl_do_unnamed_result_buffer1_result_buffer : i_iord_bl_do_unnamed_result_buffer1_result_buffer12
    PORT MAP (
        in_i_stall => SE_out_i_iord_bl_do_unnamed_result_buffer1_result_buffer_backStall,
        in_i_valid => SE_out_result_buffer_B1_start_merge_reg_aunroll_x_V1,
        in_iord_bl_do_i_fifodata => in_iord_bl_do_i_fifodata,
        in_iord_bl_do_i_fifovalid => in_iord_bl_do_i_fifovalid,
        out_iord_bl_do_o_fifoready => i_iord_bl_do_unnamed_result_buffer1_result_buffer_out_iord_bl_do_o_fifoready,
        out_o_data => i_iord_bl_do_unnamed_result_buffer1_result_buffer_out_o_data,
        out_o_stall => i_iord_bl_do_unnamed_result_buffer1_result_buffer_out_o_stall,
        out_o_valid => i_iord_bl_do_unnamed_result_buffer1_result_buffer_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,3)
    out_iord_bl_do_o_fifoready <= i_iord_bl_do_unnamed_result_buffer1_result_buffer_out_iord_bl_do_o_fifoready;

    -- dupName_0_sync_out_x(GPOUT,8)@1
    out_valid_out <= SE_out_result_buffer_B1_start_merge_reg_aunroll_x_V2;

    -- dupName_1_ext_sig_sync_out_x(GPOUT,10)
    out_iord_bl_result_in_o_fifoready <= i_iord_bl_result_in_unnamed_result_buffer2_result_buffer_aunroll_x_out_iord_bl_result_in_o_fifoready;

    -- dupName_2_ext_sig_sync_out_x(GPOUT,14)
    out_memdep_avm_address <= i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_memdep_avm_address;
    out_memdep_avm_enable <= i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_memdep_avm_enable;
    out_memdep_avm_read <= i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_memdep_avm_read;
    out_memdep_avm_write <= i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_memdep_avm_write;
    out_memdep_avm_writedata <= i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_memdep_avm_writedata;
    out_memdep_avm_byteenable <= i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_memdep_avm_byteenable;
    out_memdep_avm_burstcount <= i_sfc_c1_wt_entry_result_buffer_c1_enter_result_buffer_aunroll_x_out_memdep_avm_burstcount;

    -- dupName_3_ext_sig_sync_out_x(GPOUT,17)
    out_iowr_bl_return_o_fifodata <= i_iowr_bl_return_unnamed_result_buffer4_result_buffer_out_iowr_bl_return_o_fifodata;
    out_iowr_bl_return_o_fifovalid <= i_iowr_bl_return_unnamed_result_buffer4_result_buffer_out_iowr_bl_return_o_fifovalid;

    -- ext_sig_sync_out(GPOUT,31)
    out_aclp_to_limiter_i_acl_pipeline_keep_going_result_buffer_exiting_valid_out <= i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_result_buffer_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going_result_buffer_exiting_stall_out <= i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_result_buffer_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,37)
    out_pipeline_valid_out <= i_sfc_c0_wt_entry_result_buffer_c0_enter_result_buffer_aunroll_x_out_pipeline_valid_out;

    -- sync_out(GPOUT,42)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
