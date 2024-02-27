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

-- VHDL created from bb_sample_buffer_B2_stall_region
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

entity bb_sample_buffer_B2_stall_region is
    port (
        in_iowr_bl_sample_out_i_fifoready : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_sample_buffer5_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_sample_buffer5_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_sample_buffer5_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_sample_buffer5_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_sample_buffer5_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_sample_buffer5_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_unnamed_sample_buffer5_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_0_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked5 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_iowr_bl_sample_out_o_fifodata : out std_logic_vector(15 downto 0);  -- ufix16
        out_iowr_bl_sample_out_o_fifovalid : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_1_0 : in std_logic_vector(32 downto 0);  -- ufix33
        in_sample_buffer : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_sample_buffer5_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_sample_buffer5_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_sample_buffer5_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_sample_buffer5_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_sample_buffer_B2_stall_region;

architecture normal of bb_sample_buffer_B2_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer74 is
        port (
            in_i_data_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_c0_exe3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iowr_bl_sample_out_i_fifoready : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_sample_out_o_fifodata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_iowr_bl_sample_out_o_fifovalid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_ack : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer is
        port (
            in_c0_eni2_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni2_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni2_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_0_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_1_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_sample_buffer : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_sample_buffer5_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_sample_buffer5_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_sample_buffer5_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_sample_buffer5_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit13_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit13_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit13_2 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_c0_exit13_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit13_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_sample_buffer5_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_sample_buffer5_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_sample_buffer5_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_unnamed_sample_buffer5_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_sample_buffer5_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_sample_buffer5_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_sample_buffer5_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component sample_buffer_B2_merge_reg is
        port (
            in_data_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x_out_iowr_bl_sample_out_o_fifodata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x_out_iowr_bl_sample_out_o_fifovalid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_c0_exit13_2 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_c0_exit13_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_c0_exit13_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_unnamed_sample_buffer5_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_unnamed_sample_buffer5_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_unnamed_sample_buffer5_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_unnamed_sample_buffer5_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_unnamed_sample_buffer5_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_unnamed_sample_buffer5_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_unnamed_sample_buffer5_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal sample_buffer_B2_merge_reg_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal sample_buffer_B2_merge_reg_aunroll_x_out_data_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal sample_buffer_B2_merge_reg_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal sample_buffer_B2_merge_reg_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal bubble_select_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal bubble_select_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_sample_buffer_B2_merge_reg_aunroll_x_q : STD_LOGIC_VECTOR (1 downto 0);
    signal bubble_select_sample_buffer_B2_merge_reg_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_sample_buffer_B2_merge_reg_aunroll_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (1 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_c : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_sample_buffer_B2_merge_reg_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_sample_buffer_B2_merge_reg_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_sample_buffer_B2_merge_reg_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- SE_stall_entry(STALLENABLE,48)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= sample_buffer_B2_merge_reg_aunroll_x_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- bubble_join_stall_entry(BITJOIN,39)
    bubble_join_stall_entry_q <= in_forked5 & in_forked;

    -- bubble_select_stall_entry(BITSELECT,40)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(0 downto 0));
    bubble_select_stall_entry_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(1 downto 1));

    -- sample_buffer_B2_merge_reg_aunroll_x(BLACKBOX,16)@0
    -- in in_stall_in@20000000
    -- out out_data_out_0@1
    -- out out_data_out_1@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    thesample_buffer_B2_merge_reg_aunroll_x : sample_buffer_B2_merge_reg
    PORT MAP (
        in_data_in_0 => bubble_select_stall_entry_b,
        in_data_in_1 => bubble_select_stall_entry_c,
        in_stall_in => SE_out_sample_buffer_B2_merge_reg_aunroll_x_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_data_out_0 => sample_buffer_B2_merge_reg_aunroll_x_out_data_out_0,
        out_data_out_1 => sample_buffer_B2_merge_reg_aunroll_x_out_data_out_1,
        out_stall_out => sample_buffer_B2_merge_reg_aunroll_x_out_stall_out,
        out_valid_out => sample_buffer_B2_merge_reg_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_sample_buffer_B2_merge_reg_aunroll_x(STALLENABLE,47)
    -- Valid signal propagation
    SE_out_sample_buffer_B2_merge_reg_aunroll_x_V0 <= SE_out_sample_buffer_B2_merge_reg_aunroll_x_wireValid;
    -- Backward Stall generation
    SE_out_sample_buffer_B2_merge_reg_aunroll_x_backStall <= i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_o_stall or not (SE_out_sample_buffer_B2_merge_reg_aunroll_x_wireValid);
    -- Computing multiple Valid(s)
    SE_out_sample_buffer_B2_merge_reg_aunroll_x_wireValid <= sample_buffer_B2_merge_reg_aunroll_x_out_valid_out;

    -- bubble_join_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x(BITJOIN,33)
    bubble_join_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_q <= i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_c0_exit13_4 & i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_c0_exit13_3 & i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_c0_exit13_2;

    -- bubble_select_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x(BITSELECT,34)
    bubble_select_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_q(15 downto 0));
    bubble_select_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_q(16 downto 16));
    bubble_select_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_q(17 downto 17));

    -- i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x(BLACKBOX,14)@9
    -- in in_i_stall@20000000
    -- out out_iowr_bl_sample_out_o_fifodata@20000000
    -- out out_iowr_bl_sample_out_o_fifovalid@20000000
    -- out out_o_stall@20000000
    thei_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x : i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer74
    PORT MAP (
        in_i_data_0 => bubble_select_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_b,
        in_c0_exe3 => bubble_select_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_c,
        in_i_stall => SE_out_i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x_backStall,
        in_i_valid => SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_V1,
        in_iowr_bl_sample_out_i_fifoready => in_iowr_bl_sample_out_i_fifoready,
        out_iowr_bl_sample_out_o_fifodata => i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x_out_iowr_bl_sample_out_o_fifodata,
        out_iowr_bl_sample_out_o_fifovalid => i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x_out_iowr_bl_sample_out_o_fifovalid,
        out_o_stall => i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x_out_o_stall,
        out_o_valid => i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x(STALLENABLE,43)
    -- Valid signal propagation
    SE_out_i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x_V0 <= SE_out_i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x_wireValid;
    -- Backward Stall generation
    SE_out_i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x_backStall <= in_stall_in or not (SE_out_i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x_and0 <= i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x_out_o_valid;
    SE_out_i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x_wireValid <= SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_V0 and SE_out_i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x_and0;

    -- SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x(STALLENABLE,45)
    SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_fromReg0 <= (others => '0');
            SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_fromReg0 <= SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_fromReg1 <= SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_consumed0 <= (not (SE_out_i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x_backStall) and SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_wireValid) or SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_fromReg0;
    SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_consumed1 <= (not (i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x_out_o_stall) and SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_wireValid) or SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_fromReg1;
    -- Consuming
    SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_StallValid <= SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_backStall and SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_wireValid;
    SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_toReg0 <= SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_StallValid and SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_consumed0;
    SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_toReg1 <= SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_StallValid and SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_consumed1;
    -- Backward Stall generation
    SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_or0 <= SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_consumed0;
    SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_wireStall <= not (SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_consumed1 and SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_or0);
    SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_backStall <= SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_V0 <= SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_wireValid and not (SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_fromReg0);
    SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_V1 <= SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_wireValid and not (SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_wireValid <= i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_o_valid;

    -- bubble_join_sample_buffer_B2_merge_reg_aunroll_x(BITJOIN,36)
    bubble_join_sample_buffer_B2_merge_reg_aunroll_x_q <= sample_buffer_B2_merge_reg_aunroll_x_out_data_out_1 & sample_buffer_B2_merge_reg_aunroll_x_out_data_out_0;

    -- bubble_select_sample_buffer_B2_merge_reg_aunroll_x(BITSELECT,37)
    bubble_select_sample_buffer_B2_merge_reg_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_sample_buffer_B2_merge_reg_aunroll_x_q(0 downto 0));
    bubble_select_sample_buffer_B2_merge_reg_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_sample_buffer_B2_merge_reg_aunroll_x_q(1 downto 1));

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x(BLACKBOX,15)@1
    -- in in_i_stall@20000000
    -- out out_c0_exit13_0@9
    -- out out_c0_exit13_1@9
    -- out out_c0_exit13_2@9
    -- out out_c0_exit13_3@9
    -- out out_c0_exit13_4@9
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_stall_out@20000000
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_valid_out@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@9
    -- out out_pipeline_valid_out@20000000
    -- out out_unnamed_sample_buffer5_avm_address@20000000
    -- out out_unnamed_sample_buffer5_avm_burstcount@20000000
    -- out out_unnamed_sample_buffer5_avm_byteenable@20000000
    -- out out_unnamed_sample_buffer5_avm_enable@20000000
    -- out out_unnamed_sample_buffer5_avm_read@20000000
    -- out out_unnamed_sample_buffer5_avm_write@20000000
    -- out out_unnamed_sample_buffer5_avm_writedata@20000000
    thei_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x : i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer
    PORT MAP (
        in_c0_eni2_0 => GND_q,
        in_c0_eni2_1 => bubble_select_sample_buffer_B2_merge_reg_aunroll_x_b,
        in_c0_eni2_2 => bubble_select_sample_buffer_B2_merge_reg_aunroll_x_c,
        in_flush => in_flush,
        in_i_stall => SE_out_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_backStall,
        in_i_valid => SE_out_sample_buffer_B2_merge_reg_aunroll_x_V0,
        in_intel_reserved_ffwd_0_0 => in_intel_reserved_ffwd_0_0,
        in_intel_reserved_ffwd_1_0 => in_intel_reserved_ffwd_1_0,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_sample_buffer => in_sample_buffer,
        in_unnamed_sample_buffer5_avm_readdata => in_unnamed_sample_buffer5_avm_readdata,
        in_unnamed_sample_buffer5_avm_readdatavalid => in_unnamed_sample_buffer5_avm_readdatavalid,
        in_unnamed_sample_buffer5_avm_waitrequest => in_unnamed_sample_buffer5_avm_waitrequest,
        in_unnamed_sample_buffer5_avm_writeack => in_unnamed_sample_buffer5_avm_writeack,
        out_c0_exit13_2 => i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_c0_exit13_2,
        out_c0_exit13_3 => i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_c0_exit13_3,
        out_c0_exit13_4 => i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_c0_exit13_4,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_stall_out => i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_valid_out => i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_valid_out,
        out_o_stall => i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_o_valid,
        out_pipeline_valid_out => i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_pipeline_valid_out,
        out_unnamed_sample_buffer5_avm_address => i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_unnamed_sample_buffer5_avm_address,
        out_unnamed_sample_buffer5_avm_burstcount => i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_unnamed_sample_buffer5_avm_burstcount,
        out_unnamed_sample_buffer5_avm_byteenable => i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_unnamed_sample_buffer5_avm_byteenable,
        out_unnamed_sample_buffer5_avm_enable => i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_unnamed_sample_buffer5_avm_enable,
        out_unnamed_sample_buffer5_avm_read => i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_unnamed_sample_buffer5_avm_read,
        out_unnamed_sample_buffer5_avm_write => i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_unnamed_sample_buffer5_avm_write,
        out_unnamed_sample_buffer5_avm_writedata => i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_unnamed_sample_buffer5_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,3)
    out_unnamed_sample_buffer5_avm_address <= i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_unnamed_sample_buffer5_avm_address;
    out_unnamed_sample_buffer5_avm_enable <= i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_unnamed_sample_buffer5_avm_enable;
    out_unnamed_sample_buffer5_avm_read <= i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_unnamed_sample_buffer5_avm_read;
    out_unnamed_sample_buffer5_avm_write <= i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_unnamed_sample_buffer5_avm_write;
    out_unnamed_sample_buffer5_avm_writedata <= i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_unnamed_sample_buffer5_avm_writedata;
    out_unnamed_sample_buffer5_avm_byteenable <= i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_unnamed_sample_buffer5_avm_byteenable;
    out_unnamed_sample_buffer5_avm_burstcount <= i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_unnamed_sample_buffer5_avm_burstcount;

    -- dupName_0_sync_out_x(GPOUT,8)@9
    out_c0_exe4 <= bubble_select_i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_d;
    out_valid_out <= SE_out_i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x_V0;

    -- dupName_1_ext_sig_sync_out_x(GPOUT,9)
    out_iowr_bl_sample_out_o_fifodata <= i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x_out_iowr_bl_sample_out_o_fifodata;
    out_iowr_bl_sample_out_o_fifovalid <= i_iowr_bl_sample_out_unnamed_sample_buffer6_sample_buffer_aunroll_x_out_iowr_bl_sample_out_o_fifovalid;

    -- ext_sig_sync_out(GPOUT,21)
    out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_valid_out <= i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_stall_out <= i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,25)
    out_pipeline_valid_out <= i_sfc_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer_aunroll_x_out_pipeline_valid_out;

    -- sync_out(GPOUT,30)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
