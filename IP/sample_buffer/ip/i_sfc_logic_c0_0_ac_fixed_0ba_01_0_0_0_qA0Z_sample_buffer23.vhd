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

-- VHDL created from i_sfc_logic_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer23
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

entity i_sfc_logic_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer23 is
    port (
        out_unnamed_sample_buffer5_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_sample_buffer5_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_sample_buffer5_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_sample_buffer5_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_sample_buffer5_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_sample_buffer5_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_unnamed_sample_buffer5_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2_2 : in std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_0_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_1_0 : in std_logic_vector(32 downto 0);  -- ufix33
        in_sample_buffer : in std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi4_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi4_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi4_2 : out std_logic_vector(15 downto 0);  -- ufix16
        out_c0_exi4_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi4_4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_sample_buffer5_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_sample_buffer5_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_sample_buffer5_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_sample_buffer5_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer23;

architecture normal of i_sfc_logic_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_enter11_sample_buffer23 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going_sample_buffer29 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_initeration_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_initeration_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_not_exitcond_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_not_exitcond_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_initeration_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_not_exitcond_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_i_05_pop7_sample_buffer44 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_7 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i33_fpgaindvars_iv_pop6_sample_buffer42 is
        port (
            in_data_in : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_6 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_feedback_valid_in_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_feedback_stall_out_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i4_cleanups_pop9_sample_buffer25 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_9 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_stall_out_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i4_initerations_pop8_sample_buffer31 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_8 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_stall_out_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_lastiniteration_sample_buffer38 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_2 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond_sample_buffer68 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_first_cleanup : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_3 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_i_05_push7_sample_buffer60 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_7 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i33_fpgaindvars_iv_push6_sample_buffer63 is
        port (
            in_data_in : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_feedback_stall_in_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_feedback_out_6 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_feedback_valid_out_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i4_cleanups_push9_sample_buffer71 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_feedback_stall_in_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_out_9 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i4_initerations_push8_sample_buffer34 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_feedback_stall_in_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_out_8 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cmp4_phi_decision2_xor2_sample_buffer65 is
        port (
            in_intel_reserved_ffwd_0_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_0_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cmp4_phi_decision2_xor3_sample_buffer58 is
        port (
            in_intel_reserved_ffwd_0_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_0_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cmp4_phi_decision2_xor4_sample_buffer49 is
        port (
            in_intel_reserved_ffwd_0_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_0_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_sample_buffer4_sample_buffer40 is
        port (
            in_intel_reserved_ffwd_1_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_1_0 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_sample_buffer5_sample_buffer51 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_sample_buffer5_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_sample_buffer5_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_sample_buffer5_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_sample_buffer5_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
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


    component i_syncbuf_sample_buffer_sync_buffer_sample_buffer46 is
        port (
            in_buffer_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_fpgaindvars_iv_next_sample_buffer_sel_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal bgTrunc_i_inc_sample_buffer_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub_i_i_sample_buffer_sel_x_b : STD_LOGIC_VECTOR (279 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_multconst_x_q : STD_LOGIC_VECTOR (60 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_cleanups_shl_sample_buffer_sel_x_b : STD_LOGIC_VECTOR (3 downto 0);
    signal i_conv_i_i_i1_i_sample_buffer_sel_x_b : STD_LOGIC_VECTOR (279 downto 0);
    signal i_conv_i_i_i_i_sample_buffer_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_idxprom_sample_buffer_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_next_cleanups_sample_buffer_sample_buffer70_shift_narrow_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_sh_prom_i_i_i5_i_sample_buffer_sel_x_b : STD_LOGIC_VECTOR (279 downto 0);
    signal i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_narrow_x_b : STD_LOGIC_VECTOR (8 downto 0);
    signal c_i280_0gr_q : STD_LOGIC_VECTOR (279 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_8388607_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i33_1gr_q : STD_LOGIC_VECTOR (32 downto 0);
    signal c_i33_undef_q : STD_LOGIC_VECTOR (32 downto 0);
    signal c_i4_0gr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal c_i4_1gr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal c_i4_7gr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_acl_pipeline_keep_going_sample_buffer_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_sample_buffer_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_sample_buffer_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_sample_buffer_out_initeration_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_sample_buffer_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_sample_buffer_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_i_05_pop7_sample_buffer_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_i_05_pop7_sample_buffer_out_feedback_stall_out_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i33_fpgaindvars_iv_pop6_sample_buffer_out_data_out : STD_LOGIC_VECTOR (32 downto 0);
    signal i_acl_pop_i33_fpgaindvars_iv_pop6_sample_buffer_out_feedback_stall_out_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i4_cleanups_pop9_sample_buffer_out_data_out : STD_LOGIC_VECTOR (3 downto 0);
    signal i_acl_pop_i4_cleanups_pop9_sample_buffer_out_feedback_stall_out_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i4_initerations_pop8_sample_buffer_out_data_out : STD_LOGIC_VECTOR (3 downto 0);
    signal i_acl_pop_i4_initerations_pop8_sample_buffer_out_feedback_stall_out_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_lastiniteration_sample_buffer_out_feedback_out_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_lastiniteration_sample_buffer_out_feedback_valid_out_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond_sample_buffer_out_feedback_out_3 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond_sample_buffer_out_feedback_valid_out_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_i_05_push7_sample_buffer_out_feedback_out_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_i_05_push7_sample_buffer_out_feedback_valid_out_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i33_fpgaindvars_iv_push6_sample_buffer_out_feedback_out_6 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_push_i33_fpgaindvars_iv_push6_sample_buffer_out_feedback_valid_out_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i4_cleanups_push9_sample_buffer_out_feedback_out_9 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i4_cleanups_push9_sample_buffer_out_feedback_valid_out_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i4_initerations_push8_sample_buffer_out_feedback_out_8 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i4_initerations_push8_sample_buffer_out_feedback_valid_out_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and3_i_sample_buffer_vt_const_31_q : STD_LOGIC_VECTOR (23 downto 0);
    signal i_and3_i_sample_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and3_i_sample_buffer_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_and4_i_sample_buffer_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and4_i_sample_buffer_vt_const_31_q : STD_LOGIC_VECTOR (8 downto 0);
    signal i_and4_i_sample_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and4_i_sample_buffer_vt_select_22_b : STD_LOGIC_VECTOR (22 downto 0);
    signal i_cleanups_shl_sample_buffer_vt_const_3_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_cleanups_shl_sample_buffer_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_cleanups_shl_sample_buffer_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cond_i_i_sample_buffer_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cond_i_i_sample_buffer_q : STD_LOGIC_VECTOR (279 downto 0);
    signal i_conv_i_i_i1_i_sample_buffer_vt_const_279_q : STD_LOGIC_VECTOR (256 downto 0);
    signal i_conv_i_i_i1_i_sample_buffer_vt_join_q : STD_LOGIC_VECTOR (279 downto 0);
    signal i_conv_i_i_i1_i_sample_buffer_vt_select_22_b : STD_LOGIC_VECTOR (22 downto 0);
    signal i_ffwd_dst_cmp4_phi_decision2_xor2_sample_buffer_out_dest_data_out_0_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp4_phi_decision2_xor3_sample_buffer_out_dest_data_out_0_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp4_phi_decision2_xor4_sample_buffer_out_dest_data_out_0_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_sample_buffer4_sample_buffer_out_dest_data_out_1_0 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_first_cleanup_sample_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup_xor6_or_sample_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup_xor_or_sample_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv_next_sample_buffer_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next_sample_buffer_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next_sample_buffer_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next_sample_buffer_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_replace_phi_sample_buffer_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv_replace_phi_sample_buffer_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_sample_buffer_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_sample_buffer_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_sample_buffer_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_sample_buffer_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_last_initeration_sample_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_sample_buffer5_sample_buffer_out_o_readdata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_masked_sample_buffer_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_masked_sample_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_next_initerations_sample_buffer_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_next_initerations_sample_buffer_vt_select_2_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_notexit_sample_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or_i_sample_buffer_vt_const_31_q : STD_LOGIC_VECTOR (8 downto 0);
    signal i_or_i_sample_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or_i_sample_buffer_vt_select_22_b : STD_LOGIC_VECTOR (22 downto 0);
    signal i_or_sample_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sh_prom_i_i_i5_i_sample_buffer_vt_const_279_q : STD_LOGIC_VECTOR (271 downto 0);
    signal i_sh_prom_i_i_i5_i_sample_buffer_vt_join_q : STD_LOGIC_VECTOR (279 downto 0);
    signal i_sh_prom_i_i_i5_i_sample_buffer_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_shr2_i_sample_buffer_vt_const_31_q : STD_LOGIC_VECTOR (22 downto 0);
    signal i_shr2_i_sample_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr2_i_sample_buffer_vt_select_8_b : STD_LOGIC_VECTOR (8 downto 0);
    signal i_shr_i_i_i_i3_sample_buffer_vt_const_279_q : STD_LOGIC_VECTOR (135 downto 0);
    signal i_shr_i_i_i_i3_sample_buffer_vt_join_q : STD_LOGIC_VECTOR (279 downto 0);
    signal i_shr_i_i_i_i3_sample_buffer_vt_select_143_b : STD_LOGIC_VECTOR (143 downto 0);
    signal i_sub_i_i_sample_buffer_a : STD_LOGIC_VECTOR (280 downto 0);
    signal i_sub_i_i_sample_buffer_b : STD_LOGIC_VECTOR (280 downto 0);
    signal i_sub_i_i_sample_buffer_o : STD_LOGIC_VECTOR (280 downto 0);
    signal i_sub_i_i_sample_buffer_q : STD_LOGIC_VECTOR (280 downto 0);
    signal i_syncbuf_sample_buffer_sync_buffer_sample_buffer_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_sample_buffer27_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_sample_buffer27_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_sample_buffer27_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_sample_buffer36_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_sample_buffer36_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_sample_buffer67_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor_sample_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_24_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_24_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_25_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_25_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_26_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_26_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_join_27_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_28_q : STD_LOGIC_VECTOR (20 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_28_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_29_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_29_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_30_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_30_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_31_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_31_qint : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_join_32_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (67 downto 0);
    signal leftShiftStage0Idx1Rng1_uid208_i_next_cleanups_sample_buffer_sample_buffer70_shift_x_in : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0Idx1Rng1_uid208_i_next_cleanups_sample_buffer_sample_buffer70_shift_x_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0Idx1_uid209_i_next_cleanups_sample_buffer_sample_buffer70_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStageSel0Dto0_uid210_i_next_cleanups_sample_buffer_sample_buffer70_shift_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStageSel0Dto0_uid210_i_next_cleanups_sample_buffer_sample_buffer70_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid211_i_next_cleanups_sample_buffer_sample_buffer70_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid211_i_next_cleanups_sample_buffer_sample_buffer70_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage0Idx1Rng1_uid216_i_next_initerations_sample_buffer_sample_buffer33_shift_x_b : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage0Idx1_uid218_i_next_initerations_sample_buffer_sample_buffer33_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage0_uid220_i_next_initerations_sample_buffer_sample_buffer33_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid220_i_next_initerations_sample_buffer_sample_buffer33_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStage0Idx1Rng32_uid226_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in : STD_LOGIC_VECTOR (247 downto 0);
    signal leftShiftStage0Idx1Rng32_uid226_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b : STD_LOGIC_VECTOR (247 downto 0);
    signal leftShiftStage0Idx1_uid227_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage0Idx2Pad64_uid228_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx2Rng64_uid229_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in : STD_LOGIC_VECTOR (215 downto 0);
    signal leftShiftStage0Idx2Rng64_uid229_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b : STD_LOGIC_VECTOR (215 downto 0);
    signal leftShiftStage0Idx2_uid230_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage0Idx3Pad96_uid231_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (95 downto 0);
    signal leftShiftStage0Idx3Rng96_uid232_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in : STD_LOGIC_VECTOR (183 downto 0);
    signal leftShiftStage0Idx3Rng96_uid232_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b : STD_LOGIC_VECTOR (183 downto 0);
    signal leftShiftStage0Idx3_uid233_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage0Idx4Pad128_uid234_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal leftShiftStage0Idx4Rng128_uid235_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in : STD_LOGIC_VECTOR (151 downto 0);
    signal leftShiftStage0Idx4Rng128_uid235_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b : STD_LOGIC_VECTOR (151 downto 0);
    signal leftShiftStage0Idx4_uid236_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage0Idx5Pad160_uid237_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (159 downto 0);
    signal leftShiftStage0Idx5Rng160_uid238_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in : STD_LOGIC_VECTOR (119 downto 0);
    signal leftShiftStage0Idx5Rng160_uid238_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b : STD_LOGIC_VECTOR (119 downto 0);
    signal leftShiftStage0Idx5_uid239_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage0Idx6Pad192_uid240_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (191 downto 0);
    signal leftShiftStage0Idx6Rng192_uid241_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in : STD_LOGIC_VECTOR (87 downto 0);
    signal leftShiftStage0Idx6Rng192_uid241_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b : STD_LOGIC_VECTOR (87 downto 0);
    signal leftShiftStage0Idx6_uid242_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage0Idx7Pad224_uid243_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (223 downto 0);
    signal leftShiftStage0Idx7Rng224_uid244_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in : STD_LOGIC_VECTOR (55 downto 0);
    signal leftShiftStage0Idx7Rng224_uid244_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b : STD_LOGIC_VECTOR (55 downto 0);
    signal leftShiftStage0Idx7_uid245_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage0_uid247_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_s : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0_uid247_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage1Idx1Rng4_uid249_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in : STD_LOGIC_VECTOR (275 downto 0);
    signal leftShiftStage1Idx1Rng4_uid249_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b : STD_LOGIC_VECTOR (275 downto 0);
    signal leftShiftStage1Idx1_uid250_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage1Idx2Pad8_uid251_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage1Idx2Rng8_uid252_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in : STD_LOGIC_VECTOR (271 downto 0);
    signal leftShiftStage1Idx2Rng8_uid252_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b : STD_LOGIC_VECTOR (271 downto 0);
    signal leftShiftStage1Idx2_uid253_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage1Idx3Pad12_uid254_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (11 downto 0);
    signal leftShiftStage1Idx3Rng12_uid255_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in : STD_LOGIC_VECTOR (267 downto 0);
    signal leftShiftStage1Idx3Rng12_uid255_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b : STD_LOGIC_VECTOR (267 downto 0);
    signal leftShiftStage1Idx3_uid256_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage1Idx4Pad16_uid257_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage1Idx4Rng16_uid258_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in : STD_LOGIC_VECTOR (263 downto 0);
    signal leftShiftStage1Idx4Rng16_uid258_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b : STD_LOGIC_VECTOR (263 downto 0);
    signal leftShiftStage1Idx4_uid259_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage1Idx5Pad20_uid260_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (19 downto 0);
    signal leftShiftStage1Idx5Rng20_uid261_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in : STD_LOGIC_VECTOR (259 downto 0);
    signal leftShiftStage1Idx5Rng20_uid261_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b : STD_LOGIC_VECTOR (259 downto 0);
    signal leftShiftStage1Idx5_uid262_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage1Idx6Rng24_uid264_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in : STD_LOGIC_VECTOR (255 downto 0);
    signal leftShiftStage1Idx6Rng24_uid264_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b : STD_LOGIC_VECTOR (255 downto 0);
    signal leftShiftStage1Idx6_uid265_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage1Idx7Pad28_uid266_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx7Rng28_uid267_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in : STD_LOGIC_VECTOR (251 downto 0);
    signal leftShiftStage1Idx7Rng28_uid267_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b : STD_LOGIC_VECTOR (251 downto 0);
    signal leftShiftStage1Idx7_uid268_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage1_uid270_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_s : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage1_uid270_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage2Idx1Rng1_uid272_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in : STD_LOGIC_VECTOR (278 downto 0);
    signal leftShiftStage2Idx1Rng1_uid272_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b : STD_LOGIC_VECTOR (278 downto 0);
    signal leftShiftStage2Idx1_uid273_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage2Idx2Pad2_uid274_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage2Idx2Rng2_uid275_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in : STD_LOGIC_VECTOR (277 downto 0);
    signal leftShiftStage2Idx2Rng2_uid275_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b : STD_LOGIC_VECTOR (277 downto 0);
    signal leftShiftStage2Idx2_uid276_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage2Idx3Rng3_uid278_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in : STD_LOGIC_VECTOR (276 downto 0);
    signal leftShiftStage2Idx3Rng3_uid278_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b : STD_LOGIC_VECTOR (276 downto 0);
    signal leftShiftStage2Idx3_uid279_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage2_uid281_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage2_uid281_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal rightShiftStage0Idx1Rng16_uid286_i_shr2_i_sample_buffer_sample_buffer55_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid288_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid290_i_shr2_i_sample_buffer_sample_buffer55_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid290_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng4_uid291_i_shr2_i_sample_buffer_sample_buffer55_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage1Idx1_uid293_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid295_i_shr2_i_sample_buffer_sample_buffer55_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid295_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2Idx1Rng2_uid296_i_shr2_i_sample_buffer_sample_buffer55_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage2Idx1_uid298_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid300_i_shr2_i_sample_buffer_sample_buffer55_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid300_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3Idx1Rng1_uid301_i_shr2_i_sample_buffer_sample_buffer55_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage3Idx1_uid303_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid305_i_shr2_i_sample_buffer_sample_buffer55_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid305_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng128_uid310_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_b : STD_LOGIC_VECTOR (151 downto 0);
    signal rightShiftStage0Idx1_uid312_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal rightShiftStage0_uid314_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid314_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal rightShiftStage1Idx1Rng8_uid315_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_b : STD_LOGIC_VECTOR (271 downto 0);
    signal rightShiftStage1Idx1_uid317_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal rightShiftStage1_uid319_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid319_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal i_and3_i_sample_buffer_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_and3_i_sample_buffer_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or_i_sample_buffer_BitSelect_for_a_b : STD_LOGIC_VECTOR (22 downto 0);
    signal i_or_i_sample_buffer_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_sample_buffer36_BitSelect_for_a_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_sample_buffer36_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (2 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_im12_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_im12_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_im15_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_im15_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_im18_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_im18_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_im21_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_im21_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_exitcond1_sample_buffer_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tobool_i_sample_buffer_cmp_sign_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tobool_i_sample_buffer_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (8 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (8 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (8 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_f : STD_LOGIC_VECTOR (8 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_g : STD_LOGIC_VECTOR (8 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_h : STD_LOGIC_VECTOR (8 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_i : STD_LOGIC_VECTOR (8 downto 0);
    signal leftShiftStageSel7Dto5_uid246_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_merged_bit_select_in : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStageSel7Dto5_uid246_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_merged_bit_select_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStageSel7Dto5_uid246_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_merged_bit_select_c : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStageSel7Dto5_uid246_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_i_xor_sample_buffer_q_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_masked_sample_buffer_q_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_acl_pipeline_keep_going_sample_buffer_out_data_out_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_sync_in_aunroll_x_in_i_valid_5_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- c_i4_0gr(CONSTANT,75)
    c_i4_0gr_q <= "0000";

    -- i_cleanups_shl_sample_buffer_vt_const_3(CONSTANT,100)
    i_cleanups_shl_sample_buffer_vt_const_3_q <= "000";

    -- c_i4_1gr(CONSTANT,76)
    c_i4_1gr_q <= "0001";

    -- i_ffwd_dst_cmp4_phi_decision2_xor2_sample_buffer(BLACKBOX,110)@1
    thei_ffwd_dst_cmp4_phi_decision2_xor2_sample_buffer : i_ffwd_dst_cmp4_phi_decision2_xor2_sample_buffer65
    PORT MAP (
        in_intel_reserved_ffwd_0_0 => in_intel_reserved_ffwd_0_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_0_0 => i_ffwd_dst_cmp4_phi_decision2_xor2_sample_buffer_out_dest_data_out_0_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_unnamed_sample_buffer4_sample_buffer(BLACKBOX,113)@1
    thei_ffwd_dst_unnamed_sample_buffer4_sample_buffer : i_ffwd_dst_unnamed_sample_buffer4_sample_buffer40
    PORT MAP (
        in_intel_reserved_ffwd_1_0 => in_intel_reserved_ffwd_1_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_1_0 => i_ffwd_dst_unnamed_sample_buffer4_sample_buffer_out_dest_data_out_1_0,
        clock => clock,
        resetn => resetn
    );

    -- c_i33_1gr(CONSTANT,73)
    c_i33_1gr_q <= "111111111111111111111111111111111";

    -- i_fpgaindvars_iv_next_sample_buffer(ADD,117)@1
    i_fpgaindvars_iv_next_sample_buffer_a <= STD_LOGIC_VECTOR("0" & i_fpgaindvars_iv_replace_phi_sample_buffer_q);
    i_fpgaindvars_iv_next_sample_buffer_b <= STD_LOGIC_VECTOR("0" & c_i33_1gr_q);
    i_fpgaindvars_iv_next_sample_buffer_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next_sample_buffer_a) + UNSIGNED(i_fpgaindvars_iv_next_sample_buffer_b));
    i_fpgaindvars_iv_next_sample_buffer_q <= i_fpgaindvars_iv_next_sample_buffer_o(33 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next_sample_buffer_sel_x(BITSELECT,2)@1
    bgTrunc_i_fpgaindvars_iv_next_sample_buffer_sel_x_b <= i_fpgaindvars_iv_next_sample_buffer_q(32 downto 0);

    -- i_acl_push_i33_fpgaindvars_iv_push6_sample_buffer(BLACKBOX,88)@1
    -- out out_feedback_out_6@20000000
    -- out out_feedback_valid_out_6@20000000
    thei_acl_push_i33_fpgaindvars_iv_push6_sample_buffer : i_acl_push_i33_fpgaindvars_iv_push6_sample_buffer63
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next_sample_buffer_sel_x_b,
        in_feedback_stall_in_6 => i_acl_pop_i33_fpgaindvars_iv_pop6_sample_buffer_out_feedback_stall_out_6,
        in_keep_going => i_acl_pipeline_keep_going_sample_buffer_out_data_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_6 => i_acl_push_i33_fpgaindvars_iv_push6_sample_buffer_out_feedback_out_6,
        out_feedback_valid_out_6 => i_acl_push_i33_fpgaindvars_iv_push6_sample_buffer_out_feedback_valid_out_6,
        clock => clock,
        resetn => resetn
    );

    -- c_i33_undef(CONSTANT,74)
    c_i33_undef_q <= "000000000000000000000000000000000";

    -- i_acl_pop_i33_fpgaindvars_iv_pop6_sample_buffer(BLACKBOX,82)@1
    -- out out_feedback_stall_out_6@20000000
    thei_acl_pop_i33_fpgaindvars_iv_pop6_sample_buffer : i_acl_pop_i33_fpgaindvars_iv_pop6_sample_buffer42
    PORT MAP (
        in_data_in => c_i33_undef_q,
        in_dir => in_c0_eni2_1,
        in_feedback_in_6 => i_acl_push_i33_fpgaindvars_iv_push6_sample_buffer_out_feedback_out_6,
        in_feedback_valid_in_6 => i_acl_push_i33_fpgaindvars_iv_push6_sample_buffer_out_feedback_valid_out_6,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i33_fpgaindvars_iv_pop6_sample_buffer_out_data_out,
        out_feedback_stall_out_6 => i_acl_pop_i33_fpgaindvars_iv_pop6_sample_buffer_out_feedback_stall_out_6,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv_replace_phi_sample_buffer(MUX,118)@1
    i_fpgaindvars_iv_replace_phi_sample_buffer_s <= in_c0_eni2_1;
    i_fpgaindvars_iv_replace_phi_sample_buffer_combproc: PROCESS (i_fpgaindvars_iv_replace_phi_sample_buffer_s, i_acl_pop_i33_fpgaindvars_iv_pop6_sample_buffer_out_data_out, i_ffwd_dst_unnamed_sample_buffer4_sample_buffer_out_dest_data_out_1_0)
    BEGIN
        CASE (i_fpgaindvars_iv_replace_phi_sample_buffer_s) IS
            WHEN "0" => i_fpgaindvars_iv_replace_phi_sample_buffer_q <= i_acl_pop_i33_fpgaindvars_iv_pop6_sample_buffer_out_data_out;
            WHEN "1" => i_fpgaindvars_iv_replace_phi_sample_buffer_q <= i_ffwd_dst_unnamed_sample_buffer4_sample_buffer_out_dest_data_out_1_0;
            WHEN OTHERS => i_fpgaindvars_iv_replace_phi_sample_buffer_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_exitcond1_sample_buffer_cmp_sign(LOGICAL,342)@1
    i_exitcond1_sample_buffer_cmp_sign_q <= STD_LOGIC_VECTOR(i_fpgaindvars_iv_replace_phi_sample_buffer_q(32 downto 32));

    -- i_unnamed_sample_buffer67(LOGICAL,156)@1
    i_unnamed_sample_buffer67_q <= i_exitcond1_sample_buffer_cmp_sign_q or i_ffwd_dst_cmp4_phi_decision2_xor2_sample_buffer_out_dest_data_out_0_0;

    -- i_notexit_sample_buffer(LOGICAL,128)@1
    i_notexit_sample_buffer_q <= i_unnamed_sample_buffer67_q xor VCC_q;

    -- i_acl_push_i1_notexitcond_sample_buffer(BLACKBOX,86)@1
    -- out out_feedback_out_3@20000000
    -- out out_feedback_valid_out_3@20000000
    thei_acl_push_i1_notexitcond_sample_buffer : i_acl_push_i1_notexitcond_sample_buffer68
    PORT MAP (
        in_data_in => i_notexit_sample_buffer_q,
        in_feedback_stall_in_3 => i_acl_pipeline_keep_going_sample_buffer_out_not_exitcond_stall_out,
        in_first_cleanup => i_first_cleanup_sample_buffer_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_3 => i_acl_push_i1_notexitcond_sample_buffer_out_feedback_out_3,
        out_feedback_valid_out_3 => i_acl_push_i1_notexitcond_sample_buffer_out_feedback_valid_out_3,
        clock => clock,
        resetn => resetn
    );

    -- rightShiftStage0Idx1Rng1_uid216_i_next_initerations_sample_buffer_sample_buffer33_shift_x(BITSELECT,215)@1
    rightShiftStage0Idx1Rng1_uid216_i_next_initerations_sample_buffer_sample_buffer33_shift_x_b <= i_acl_pop_i4_initerations_pop8_sample_buffer_out_data_out(3 downto 1);

    -- rightShiftStage0Idx1_uid218_i_next_initerations_sample_buffer_sample_buffer33_shift_x(BITJOIN,217)@1
    rightShiftStage0Idx1_uid218_i_next_initerations_sample_buffer_sample_buffer33_shift_x_q <= GND_q & rightShiftStage0Idx1Rng1_uid216_i_next_initerations_sample_buffer_sample_buffer33_shift_x_b;

    -- i_acl_push_i4_initerations_push8_sample_buffer(BLACKBOX,90)@1
    -- out out_feedback_out_8@20000000
    -- out out_feedback_valid_out_8@20000000
    thei_acl_push_i4_initerations_push8_sample_buffer : i_acl_push_i4_initerations_push8_sample_buffer34
    PORT MAP (
        in_data_in => i_next_initerations_sample_buffer_vt_join_q,
        in_feedback_stall_in_8 => i_acl_pop_i4_initerations_pop8_sample_buffer_out_feedback_stall_out_8,
        in_keep_going => i_acl_pipeline_keep_going_sample_buffer_out_data_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_8 => i_acl_push_i4_initerations_push8_sample_buffer_out_feedback_out_8,
        out_feedback_valid_out_8 => i_acl_push_i4_initerations_push8_sample_buffer_out_feedback_valid_out_8,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i4_initerations_pop8_sample_buffer(BLACKBOX,84)@1
    -- out out_feedback_stall_out_8@20000000
    thei_acl_pop_i4_initerations_pop8_sample_buffer : i_acl_pop_i4_initerations_pop8_sample_buffer31
    PORT MAP (
        in_data_in => c_i4_7gr_q,
        in_dir => in_c0_eni2_1,
        in_feedback_in_8 => i_acl_push_i4_initerations_push8_sample_buffer_out_feedback_out_8,
        in_feedback_valid_in_8 => i_acl_push_i4_initerations_push8_sample_buffer_out_feedback_valid_out_8,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i4_initerations_pop8_sample_buffer_out_data_out,
        out_feedback_stall_out_8 => i_acl_pop_i4_initerations_pop8_sample_buffer_out_feedback_stall_out_8,
        clock => clock,
        resetn => resetn
    );

    -- rightShiftStage0_uid220_i_next_initerations_sample_buffer_sample_buffer33_shift_x(MUX,219)@1
    rightShiftStage0_uid220_i_next_initerations_sample_buffer_sample_buffer33_shift_x_s <= VCC_q;
    rightShiftStage0_uid220_i_next_initerations_sample_buffer_sample_buffer33_shift_x_combproc: PROCESS (rightShiftStage0_uid220_i_next_initerations_sample_buffer_sample_buffer33_shift_x_s, i_acl_pop_i4_initerations_pop8_sample_buffer_out_data_out, rightShiftStage0Idx1_uid218_i_next_initerations_sample_buffer_sample_buffer33_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid220_i_next_initerations_sample_buffer_sample_buffer33_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid220_i_next_initerations_sample_buffer_sample_buffer33_shift_x_q <= i_acl_pop_i4_initerations_pop8_sample_buffer_out_data_out;
            WHEN "1" => rightShiftStage0_uid220_i_next_initerations_sample_buffer_sample_buffer33_shift_x_q <= rightShiftStage0Idx1_uid218_i_next_initerations_sample_buffer_sample_buffer33_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid220_i_next_initerations_sample_buffer_sample_buffer33_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_next_initerations_sample_buffer_vt_select_2(BITSELECT,127)@1
    i_next_initerations_sample_buffer_vt_select_2_b <= rightShiftStage0_uid220_i_next_initerations_sample_buffer_sample_buffer33_shift_x_q(2 downto 0);

    -- i_next_initerations_sample_buffer_vt_join(BITJOIN,126)@1
    i_next_initerations_sample_buffer_vt_join_q <= GND_q & i_next_initerations_sample_buffer_vt_select_2_b;

    -- i_unnamed_sample_buffer36_BitSelect_for_a(BITSELECT,332)@1
    i_unnamed_sample_buffer36_BitSelect_for_a_b <= i_next_initerations_sample_buffer_vt_join_q(0 downto 0);

    -- i_unnamed_sample_buffer36_join(BITJOIN,333)@1
    i_unnamed_sample_buffer36_join_q <= GND_q & GND_q & GND_q & i_unnamed_sample_buffer36_BitSelect_for_a_b;

    -- i_unnamed_sample_buffer36_vt_select_0(BITSELECT,154)@1
    i_unnamed_sample_buffer36_vt_select_0_b <= i_unnamed_sample_buffer36_join_q(0 downto 0);

    -- i_unnamed_sample_buffer36_vt_join(BITJOIN,153)@1
    i_unnamed_sample_buffer36_vt_join_q <= i_cleanups_shl_sample_buffer_vt_const_3_q & i_unnamed_sample_buffer36_vt_select_0_b;

    -- i_last_initeration_sample_buffer(LOGICAL,122)@1
    i_last_initeration_sample_buffer_q <= "1" WHEN i_unnamed_sample_buffer36_vt_join_q /= c_i4_0gr_q ELSE "0";

    -- i_acl_push_i1_lastiniteration_sample_buffer(BLACKBOX,85)@1
    -- out out_feedback_out_2@20000000
    -- out out_feedback_valid_out_2@20000000
    thei_acl_push_i1_lastiniteration_sample_buffer : i_acl_push_i1_lastiniteration_sample_buffer38
    PORT MAP (
        in_data_in => i_last_initeration_sample_buffer_q,
        in_feedback_stall_in_2 => i_acl_pipeline_keep_going_sample_buffer_out_initeration_stall_out,
        in_keep_going => i_acl_pipeline_keep_going_sample_buffer_out_data_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_2 => i_acl_push_i1_lastiniteration_sample_buffer_out_feedback_out_2,
        out_feedback_valid_out_2 => i_acl_push_i1_lastiniteration_sample_buffer_out_feedback_valid_out_2,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going_sample_buffer(BLACKBOX,80)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going_sample_buffer : i_acl_pipeline_keep_going_sample_buffer29
    PORT MAP (
        in_data_in => in_c0_eni2_2,
        in_initeration_in => i_acl_push_i1_lastiniteration_sample_buffer_out_feedback_out_2,
        in_initeration_valid_in => i_acl_push_i1_lastiniteration_sample_buffer_out_feedback_valid_out_2,
        in_not_exitcond_in => i_acl_push_i1_notexitcond_sample_buffer_out_feedback_out_3,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond_sample_buffer_out_feedback_valid_out_3,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pipeline_keep_going_sample_buffer_out_data_out,
        out_exiting_stall_out => i_acl_pipeline_keep_going_sample_buffer_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going_sample_buffer_out_exiting_valid_out,
        out_initeration_stall_out => i_acl_pipeline_keep_going_sample_buffer_out_initeration_stall_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going_sample_buffer_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going_sample_buffer_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0Idx1Rng1_uid208_i_next_cleanups_sample_buffer_sample_buffer70_shift_x(BITSELECT,207)@1
    leftShiftStage0Idx1Rng1_uid208_i_next_cleanups_sample_buffer_sample_buffer70_shift_x_in <= i_acl_pop_i4_cleanups_pop9_sample_buffer_out_data_out(2 downto 0);
    leftShiftStage0Idx1Rng1_uid208_i_next_cleanups_sample_buffer_sample_buffer70_shift_x_b <= leftShiftStage0Idx1Rng1_uid208_i_next_cleanups_sample_buffer_sample_buffer70_shift_x_in(2 downto 0);

    -- leftShiftStage0Idx1_uid209_i_next_cleanups_sample_buffer_sample_buffer70_shift_x(BITJOIN,208)@1
    leftShiftStage0Idx1_uid209_i_next_cleanups_sample_buffer_sample_buffer70_shift_x_q <= leftShiftStage0Idx1Rng1_uid208_i_next_cleanups_sample_buffer_sample_buffer70_shift_x_b & GND_q;

    -- i_or_sample_buffer(LOGICAL,133)@1
    i_or_sample_buffer_q <= i_unnamed_sample_buffer67_q or i_xor_sample_buffer_q;

    -- i_cleanups_shl_sample_buffer_sel_x(BITSELECT,32)@1
    i_cleanups_shl_sample_buffer_sel_x_b <= std_logic_vector(resize(unsigned(i_or_sample_buffer_q(0 downto 0)), 4));

    -- i_cleanups_shl_sample_buffer_vt_select_0(BITSELECT,102)@1
    i_cleanups_shl_sample_buffer_vt_select_0_b <= i_cleanups_shl_sample_buffer_sel_x_b(0 downto 0);

    -- i_cleanups_shl_sample_buffer_vt_join(BITJOIN,101)@1
    i_cleanups_shl_sample_buffer_vt_join_q <= i_cleanups_shl_sample_buffer_vt_const_3_q & i_cleanups_shl_sample_buffer_vt_select_0_b;

    -- i_next_cleanups_sample_buffer_sample_buffer70_shift_narrow_x(BITSELECT,39)@1
    i_next_cleanups_sample_buffer_sample_buffer70_shift_narrow_x_b <= i_cleanups_shl_sample_buffer_vt_join_q(1 downto 0);

    -- leftShiftStageSel0Dto0_uid210_i_next_cleanups_sample_buffer_sample_buffer70_shift_x(BITSELECT,209)@1
    leftShiftStageSel0Dto0_uid210_i_next_cleanups_sample_buffer_sample_buffer70_shift_x_in <= i_next_cleanups_sample_buffer_sample_buffer70_shift_narrow_x_b(0 downto 0);
    leftShiftStageSel0Dto0_uid210_i_next_cleanups_sample_buffer_sample_buffer70_shift_x_b <= leftShiftStageSel0Dto0_uid210_i_next_cleanups_sample_buffer_sample_buffer70_shift_x_in(0 downto 0);

    -- leftShiftStage0_uid211_i_next_cleanups_sample_buffer_sample_buffer70_shift_x(MUX,210)@1
    leftShiftStage0_uid211_i_next_cleanups_sample_buffer_sample_buffer70_shift_x_s <= leftShiftStageSel0Dto0_uid210_i_next_cleanups_sample_buffer_sample_buffer70_shift_x_b;
    leftShiftStage0_uid211_i_next_cleanups_sample_buffer_sample_buffer70_shift_x_combproc: PROCESS (leftShiftStage0_uid211_i_next_cleanups_sample_buffer_sample_buffer70_shift_x_s, i_acl_pop_i4_cleanups_pop9_sample_buffer_out_data_out, leftShiftStage0Idx1_uid209_i_next_cleanups_sample_buffer_sample_buffer70_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid211_i_next_cleanups_sample_buffer_sample_buffer70_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid211_i_next_cleanups_sample_buffer_sample_buffer70_shift_x_q <= i_acl_pop_i4_cleanups_pop9_sample_buffer_out_data_out;
            WHEN "1" => leftShiftStage0_uid211_i_next_cleanups_sample_buffer_sample_buffer70_shift_x_q <= leftShiftStage0Idx1_uid209_i_next_cleanups_sample_buffer_sample_buffer70_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid211_i_next_cleanups_sample_buffer_sample_buffer70_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_push_i4_cleanups_push9_sample_buffer(BLACKBOX,89)@1
    -- out out_feedback_out_9@20000000
    -- out out_feedback_valid_out_9@20000000
    thei_acl_push_i4_cleanups_push9_sample_buffer : i_acl_push_i4_cleanups_push9_sample_buffer71
    PORT MAP (
        in_data_in => leftShiftStage0_uid211_i_next_cleanups_sample_buffer_sample_buffer70_shift_x_q,
        in_feedback_stall_in_9 => i_acl_pop_i4_cleanups_pop9_sample_buffer_out_feedback_stall_out_9,
        in_keep_going => i_acl_pipeline_keep_going_sample_buffer_out_data_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_9 => i_acl_push_i4_cleanups_push9_sample_buffer_out_feedback_out_9,
        out_feedback_valid_out_9 => i_acl_push_i4_cleanups_push9_sample_buffer_out_feedback_valid_out_9,
        clock => clock,
        resetn => resetn
    );

    -- c_i4_7gr(CONSTANT,77)
    c_i4_7gr_q <= "0111";

    -- i_acl_pop_i4_cleanups_pop9_sample_buffer(BLACKBOX,83)@1
    -- out out_feedback_stall_out_9@20000000
    thei_acl_pop_i4_cleanups_pop9_sample_buffer : i_acl_pop_i4_cleanups_pop9_sample_buffer25
    PORT MAP (
        in_data_in => c_i4_7gr_q,
        in_dir => in_c0_eni2_1,
        in_feedback_in_9 => i_acl_push_i4_cleanups_push9_sample_buffer_out_feedback_out_9,
        in_feedback_valid_in_9 => i_acl_push_i4_cleanups_push9_sample_buffer_out_feedback_valid_out_9,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i4_cleanups_pop9_sample_buffer_out_data_out,
        out_feedback_stall_out_9 => i_acl_pop_i4_cleanups_pop9_sample_buffer_out_feedback_stall_out_9,
        clock => clock,
        resetn => resetn
    );

    -- i_unnamed_sample_buffer27(LOGICAL,147)@1
    i_unnamed_sample_buffer27_q <= i_acl_pop_i4_cleanups_pop9_sample_buffer_out_data_out and c_i4_1gr_q;

    -- i_unnamed_sample_buffer27_vt_select_0(BITSELECT,150)@1
    i_unnamed_sample_buffer27_vt_select_0_b <= i_unnamed_sample_buffer27_q(0 downto 0);

    -- i_unnamed_sample_buffer27_vt_join(BITJOIN,149)@1
    i_unnamed_sample_buffer27_vt_join_q <= i_cleanups_shl_sample_buffer_vt_const_3_q & i_unnamed_sample_buffer27_vt_select_0_b;

    -- i_first_cleanup_sample_buffer(LOGICAL,114)@1
    i_first_cleanup_sample_buffer_q <= "1" WHEN i_unnamed_sample_buffer27_vt_join_q /= c_i4_0gr_q ELSE "0";

    -- i_xor_sample_buffer(LOGICAL,157)@1
    i_xor_sample_buffer_q <= i_first_cleanup_sample_buffer_q xor VCC_q;

    -- i_ffwd_dst_cmp4_phi_decision2_xor4_sample_buffer(BLACKBOX,112)@1
    thei_ffwd_dst_cmp4_phi_decision2_xor4_sample_buffer : i_ffwd_dst_cmp4_phi_decision2_xor4_sample_buffer49
    PORT MAP (
        in_intel_reserved_ffwd_0_0 => in_intel_reserved_ffwd_0_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_0_0 => i_ffwd_dst_cmp4_phi_decision2_xor4_sample_buffer_out_dest_data_out_0_0,
        clock => clock,
        resetn => resetn
    );

    -- i_first_cleanup_xor_or_sample_buffer(LOGICAL,116)@1
    i_first_cleanup_xor_or_sample_buffer_q <= i_ffwd_dst_cmp4_phi_decision2_xor4_sample_buffer_out_dest_data_out_0_0 or i_xor_sample_buffer_q;

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_multconst_x(CONSTANT,26)
    i_arrayidx_sample_buffer_sample_buffer48_mult_multconst_x_q <= "0000000000000000000000000000000000000000000000000000000000000";

    -- c_i32_1gr(CONSTANT,67)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- i_inc_sample_buffer(ADD,121)@1
    i_inc_sample_buffer_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i32_i_05_pop7_sample_buffer_out_data_out);
    i_inc_sample_buffer_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_inc_sample_buffer_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc_sample_buffer_a) + UNSIGNED(i_inc_sample_buffer_b));
    i_inc_sample_buffer_q <= i_inc_sample_buffer_o(32 downto 0);

    -- bgTrunc_i_inc_sample_buffer_sel_x(BITSELECT,3)@1
    bgTrunc_i_inc_sample_buffer_sel_x_b <= i_inc_sample_buffer_q(31 downto 0);

    -- i_acl_push_i32_i_05_push7_sample_buffer(BLACKBOX,87)@1
    -- out out_feedback_out_7@20000000
    -- out out_feedback_valid_out_7@20000000
    thei_acl_push_i32_i_05_push7_sample_buffer : i_acl_push_i32_i_05_push7_sample_buffer60
    PORT MAP (
        in_data_in => bgTrunc_i_inc_sample_buffer_sel_x_b,
        in_feedback_stall_in_7 => i_acl_pop_i32_i_05_pop7_sample_buffer_out_feedback_stall_out_7,
        in_keep_going => i_acl_pipeline_keep_going_sample_buffer_out_data_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_7 => i_acl_push_i32_i_05_push7_sample_buffer_out_feedback_out_7,
        out_feedback_valid_out_7 => i_acl_push_i32_i_05_push7_sample_buffer_out_feedback_valid_out_7,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_0gr(CONSTANT,66)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_acl_pop_i32_i_05_pop7_sample_buffer(BLACKBOX,81)@1
    -- out out_feedback_stall_out_7@20000000
    thei_acl_pop_i32_i_05_pop7_sample_buffer : i_acl_pop_i32_i_05_pop7_sample_buffer44
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => in_c0_eni2_1,
        in_feedback_in_7 => i_acl_push_i32_i_05_push7_sample_buffer_out_feedback_out_7,
        in_feedback_valid_in_7 => i_acl_push_i32_i_05_push7_sample_buffer_out_feedback_valid_out_7,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_i_05_pop7_sample_buffer_out_data_out,
        out_feedback_stall_out_7 => i_acl_pop_i32_i_05_pop7_sample_buffer_out_feedback_stall_out_7,
        clock => clock,
        resetn => resetn
    );

    -- i_idxprom_sample_buffer_sel_x(BITSELECT,35)@1
    i_idxprom_sample_buffer_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(i_acl_pop_i32_i_05_pop7_sample_buffer_out_data_out(31 downto 0)), 64)));

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select(BITSELECT,346)@1
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_b <= i_idxprom_sample_buffer_sel_x_b(8 downto 0);
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_c <= i_idxprom_sample_buffer_sel_x_b(62 downto 54);
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_d <= i_idxprom_sample_buffer_sel_x_b(17 downto 9);
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_e <= i_idxprom_sample_buffer_sel_x_b(63 downto 63);
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_f <= i_idxprom_sample_buffer_sel_x_b(26 downto 18);
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_g <= i_idxprom_sample_buffer_sel_x_b(35 downto 27);
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_h <= i_idxprom_sample_buffer_sel_x_b(44 downto 36);
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_i <= i_idxprom_sample_buffer_sel_x_b(53 downto 45);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_im9_shift0(BITSHIFT,337)@1
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im9_shift0_qint <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_e & "00";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im9_shift0_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_im9_shift0_qint(2 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_31(BITSHIFT,200)@1
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_31_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_sample_buffer_sample_buffer48_mult_x_im9_shift0_q) & "000000";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_31_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_31_qint(9 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_im21_shift0(BITSHIFT,341)@1
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im21_shift0_qint <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_i & "00";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im21_shift0_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_im21_shift0_qint(10 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_30(BITSHIFT,199)@1
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_30_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_sample_buffer_sample_buffer48_mult_x_im21_shift0_q) & "000000";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_30_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_30_qint(17 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_im15_shift0(BITSHIFT,339)@1
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im15_shift0_qint <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_g & "00";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im15_shift0_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_im15_shift0_qint(10 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_29(BITSHIFT,198)@1
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_29_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_sample_buffer_sample_buffer48_mult_x_im15_shift0_q) & "000000";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_29_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_29_qint(17 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_im6_shift0(BITSHIFT,336)@1
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im6_shift0_qint <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_d & "00";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im6_shift0_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_im6_shift0_qint(10 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_28(BITSHIFT,197)@1
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_28_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_sample_buffer_sample_buffer48_mult_x_im6_shift0_q) & "000000000";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_28_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_28_qint(20 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_join_32(BITJOIN,201)@1
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_join_32_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_31_q & i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_30_q & i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_29_q & i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_28_q;

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_im3_shift0(BITSHIFT,335)@1
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im3_shift0_qint <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_c & "00";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im3_shift0_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_im3_shift0_qint(10 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_26(BITSHIFT,195)@1
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_26_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_sample_buffer_sample_buffer48_mult_x_im3_shift0_q) & "000000";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_26_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_26_qint(17 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_im18_shift0(BITSHIFT,340)@1
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im18_shift0_qint <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_h & "00";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im18_shift0_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_im18_shift0_qint(10 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_25(BITSHIFT,194)@1
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_25_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_sample_buffer_sample_buffer48_mult_x_im18_shift0_q) & "000000";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_25_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_25_qint(17 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_im12_shift0(BITSHIFT,338)@1
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im12_shift0_qint <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_f & "00";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im12_shift0_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_im12_shift0_qint(10 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_24(BITSHIFT,193)@1
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_24_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_sample_buffer_sample_buffer48_mult_x_im12_shift0_q) & "000000";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_24_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_24_qint(17 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_im0_shift0(BITSHIFT,334)@1
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im0_shift0_qint <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_b & "00";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im0_shift0_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_im0_shift0_qint(10 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_join_27(BITJOIN,196)@1
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_join_27_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_26_q & i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_25_q & i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_24_q & STD_LOGIC_VECTOR("0" & i_arrayidx_sample_buffer_sample_buffer48_mult_x_im0_shift0_q);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0(ADD,202)@1
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00" & i_arrayidx_sample_buffer_sample_buffer48_mult_x_join_27_q);
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx_sample_buffer_sample_buffer48_mult_x_join_32_q);
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_b));
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_o(67 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_extender_x(BITJOIN,25)@1
    i_arrayidx_sample_buffer_sample_buffer48_mult_extender_x_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_multconst_x_q & i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_q(66 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_trunc_sel_x(BITSELECT,27)@1
    i_arrayidx_sample_buffer_sample_buffer48_trunc_sel_x_b <= i_arrayidx_sample_buffer_sample_buffer48_mult_extender_x_q(63 downto 0);

    -- i_syncbuf_sample_buffer_sync_buffer_sample_buffer(BLACKBOX,145)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_sample_buffer_sync_buffer_sample_buffer : i_syncbuf_sample_buffer_sync_buffer_sample_buffer46
    PORT MAP (
        in_buffer_in => in_sample_buffer,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_sample_buffer_sync_buffer_sample_buffer_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx_sample_buffer_sample_buffer48_add_x(ADD,28)@1
    i_arrayidx_sample_buffer_sample_buffer48_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_sample_buffer_sync_buffer_sample_buffer_out_buffer_out);
    i_arrayidx_sample_buffer_sample_buffer48_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx_sample_buffer_sample_buffer48_trunc_sel_x_b);
    i_arrayidx_sample_buffer_sample_buffer48_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_sample_buffer_sample_buffer48_add_x_a) + UNSIGNED(i_arrayidx_sample_buffer_sample_buffer48_add_x_b));
    i_arrayidx_sample_buffer_sample_buffer48_add_x_q <= i_arrayidx_sample_buffer_sample_buffer48_add_x_o(64 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_dupName_0_trunc_sel_x(BITSELECT,22)@1
    i_arrayidx_sample_buffer_sample_buffer48_dupName_0_trunc_sel_x_b <= i_arrayidx_sample_buffer_sample_buffer48_add_x_q(63 downto 0);

    -- i_load_unnamed_sample_buffer5_sample_buffer(BLACKBOX,123)@1
    -- in in_i_stall@20000000
    -- out out_o_readdata@5
    -- out out_o_stall@4
    -- out out_o_valid@5
    -- out out_unnamed_sample_buffer5_avm_address@20000000
    -- out out_unnamed_sample_buffer5_avm_burstcount@20000000
    -- out out_unnamed_sample_buffer5_avm_byteenable@20000000
    -- out out_unnamed_sample_buffer5_avm_enable@20000000
    -- out out_unnamed_sample_buffer5_avm_read@20000000
    -- out out_unnamed_sample_buffer5_avm_write@20000000
    -- out out_unnamed_sample_buffer5_avm_writedata@20000000
    thei_load_unnamed_sample_buffer5_sample_buffer : i_load_unnamed_sample_buffer5_sample_buffer51
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx_sample_buffer_sample_buffer48_dupName_0_trunc_sel_x_b,
        in_i_predicate => i_first_cleanup_xor_or_sample_buffer_q,
        in_i_stall => GND_q,
        in_i_valid => in_i_valid,
        in_unnamed_sample_buffer5_avm_readdata => in_unnamed_sample_buffer5_avm_readdata,
        in_unnamed_sample_buffer5_avm_readdatavalid => in_unnamed_sample_buffer5_avm_readdatavalid,
        in_unnamed_sample_buffer5_avm_waitrequest => in_unnamed_sample_buffer5_avm_waitrequest,
        in_unnamed_sample_buffer5_avm_writeack => in_unnamed_sample_buffer5_avm_writeack,
        out_o_readdata => i_load_unnamed_sample_buffer5_sample_buffer_out_o_readdata,
        out_unnamed_sample_buffer5_avm_address => i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_address,
        out_unnamed_sample_buffer5_avm_burstcount => i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_burstcount,
        out_unnamed_sample_buffer5_avm_byteenable => i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_byteenable,
        out_unnamed_sample_buffer5_avm_enable => i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_enable,
        out_unnamed_sample_buffer5_avm_read => i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_read,
        out_unnamed_sample_buffer5_avm_write => i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_write,
        out_unnamed_sample_buffer5_avm_writedata => i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,6)
    out_unnamed_sample_buffer5_avm_address <= i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_address;
    out_unnamed_sample_buffer5_avm_enable <= i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_enable;
    out_unnamed_sample_buffer5_avm_read <= i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_read;
    out_unnamed_sample_buffer5_avm_write <= i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_write;
    out_unnamed_sample_buffer5_avm_writedata <= i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_writedata;
    out_unnamed_sample_buffer5_avm_byteenable <= i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_byteenable;
    out_unnamed_sample_buffer5_avm_burstcount <= i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_burstcount;

    -- redist3_sync_in_aunroll_x_in_i_valid_5(DELAY,351)
    redist3_sync_in_aunroll_x_in_i_valid_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist3_sync_in_aunroll_x_in_i_valid_5_q, clk => clock, aclr => resetn );

    -- i_masked_sample_buffer(LOGICAL,124)@1 + 1
    i_masked_sample_buffer_qi <= i_unnamed_sample_buffer67_q and i_first_cleanup_sample_buffer_q;
    i_masked_sample_buffer_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_masked_sample_buffer_qi, xout => i_masked_sample_buffer_q, clk => clock, aclr => resetn );

    -- redist1_i_masked_sample_buffer_q_5(DELAY,349)
    redist1_i_masked_sample_buffer_q_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_masked_sample_buffer_q, xout => redist1_i_masked_sample_buffer_q_5_q, clk => clock, aclr => resetn );

    -- redist0_i_xor_sample_buffer_q_5(DELAY,348)
    redist0_i_xor_sample_buffer_q_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor_sample_buffer_q, xout => redist0_i_xor_sample_buffer_q_5_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_cmp4_phi_decision2_xor3_sample_buffer(BLACKBOX,111)@6
    thei_ffwd_dst_cmp4_phi_decision2_xor3_sample_buffer : i_ffwd_dst_cmp4_phi_decision2_xor3_sample_buffer58
    PORT MAP (
        in_intel_reserved_ffwd_0_0 => in_intel_reserved_ffwd_0_0,
        in_stall_in => GND_q,
        in_valid_in => redist3_sync_in_aunroll_x_in_i_valid_5_q,
        out_dest_data_out_0_0 => i_ffwd_dst_cmp4_phi_decision2_xor3_sample_buffer_out_dest_data_out_0_0,
        clock => clock,
        resetn => resetn
    );

    -- i_first_cleanup_xor6_or_sample_buffer(LOGICAL,115)@6
    i_first_cleanup_xor6_or_sample_buffer_q <= i_ffwd_dst_cmp4_phi_decision2_xor3_sample_buffer_out_dest_data_out_0_0 or redist0_i_xor_sample_buffer_q_5_q;

    -- i_shr_i_i_i_i3_sample_buffer_vt_const_279(CONSTANT,141)
    i_shr_i_i_i_i3_sample_buffer_vt_const_279_q <= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    -- leftShiftStage1Idx2Pad8_uid251_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(CONSTANT,250)
    leftShiftStage1Idx2Pad8_uid251_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= "00000000";

    -- rightShiftStage1Idx1Rng8_uid315_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x(BITSELECT,314)@6
    rightShiftStage1Idx1Rng8_uid315_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_b <= rightShiftStage0_uid314_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_q(279 downto 8);

    -- rightShiftStage1Idx1_uid317_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x(BITJOIN,316)@6
    rightShiftStage1Idx1_uid317_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_q <= leftShiftStage1Idx2Pad8_uid251_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q & rightShiftStage1Idx1Rng8_uid315_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_b;

    -- leftShiftStage0Idx4Pad128_uid234_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(CONSTANT,233)
    leftShiftStage0Idx4Pad128_uid234_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    -- rightShiftStage0Idx1Rng128_uid310_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x(BITSELECT,309)@6
    rightShiftStage0Idx1Rng128_uid310_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_b <= i_cond_i_i_sample_buffer_q(279 downto 128);

    -- rightShiftStage0Idx1_uid312_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x(BITJOIN,311)@6
    rightShiftStage0Idx1_uid312_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_q <= leftShiftStage0Idx4Pad128_uid234_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q & rightShiftStage0Idx1Rng128_uid310_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_b;

    -- c_i280_0gr(CONSTANT,64)
    c_i280_0gr_q <= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    -- i_sub_i_i_sample_buffer(SUB,144)@6
    i_sub_i_i_sample_buffer_a <= STD_LOGIC_VECTOR("0" & c_i280_0gr_q);
    i_sub_i_i_sample_buffer_b <= STD_LOGIC_VECTOR("0" & leftShiftStage2_uid281_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q);
    i_sub_i_i_sample_buffer_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub_i_i_sample_buffer_a) - UNSIGNED(i_sub_i_i_sample_buffer_b));
    i_sub_i_i_sample_buffer_q <= i_sub_i_i_sample_buffer_o(280 downto 0);

    -- bgTrunc_i_sub_i_i_sample_buffer_sel_x(BITSELECT,4)@6
    bgTrunc_i_sub_i_i_sample_buffer_sel_x_b <= STD_LOGIC_VECTOR(i_sub_i_i_sample_buffer_q(279 downto 0));

    -- leftShiftStage2Idx3Rng3_uid278_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITSELECT,277)@5
    leftShiftStage2Idx3Rng3_uid278_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in <= leftShiftStage1_uid270_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q(276 downto 0);
    leftShiftStage2Idx3Rng3_uid278_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b <= leftShiftStage2Idx3Rng3_uid278_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in(276 downto 0);

    -- leftShiftStage2Idx3_uid279_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITJOIN,278)@5
    leftShiftStage2Idx3_uid279_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage2Idx3Rng3_uid278_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b & i_cleanups_shl_sample_buffer_vt_const_3_q;

    -- leftShiftStage2Idx2Rng2_uid275_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITSELECT,274)@5
    leftShiftStage2Idx2Rng2_uid275_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in <= leftShiftStage1_uid270_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q(277 downto 0);
    leftShiftStage2Idx2Rng2_uid275_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b <= leftShiftStage2Idx2Rng2_uid275_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in(277 downto 0);

    -- leftShiftStage2Idx2Pad2_uid274_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(CONSTANT,273)
    leftShiftStage2Idx2Pad2_uid274_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= "00";

    -- leftShiftStage2Idx2_uid276_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITJOIN,275)@5
    leftShiftStage2Idx2_uid276_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage2Idx2Rng2_uid275_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b & leftShiftStage2Idx2Pad2_uid274_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;

    -- leftShiftStage2Idx1Rng1_uid272_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITSELECT,271)@5
    leftShiftStage2Idx1Rng1_uid272_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in <= leftShiftStage1_uid270_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q(278 downto 0);
    leftShiftStage2Idx1Rng1_uid272_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b <= leftShiftStage2Idx1Rng1_uid272_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in(278 downto 0);

    -- leftShiftStage2Idx1_uid273_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITJOIN,272)@5
    leftShiftStage2Idx1_uid273_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage2Idx1Rng1_uid272_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b & GND_q;

    -- leftShiftStage1Idx7Rng28_uid267_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITSELECT,266)@5
    leftShiftStage1Idx7Rng28_uid267_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in <= leftShiftStage0_uid247_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q(251 downto 0);
    leftShiftStage1Idx7Rng28_uid267_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b <= leftShiftStage1Idx7Rng28_uid267_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in(251 downto 0);

    -- leftShiftStage1Idx7Pad28_uid266_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(CONSTANT,265)
    leftShiftStage1Idx7Pad28_uid266_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= "0000000000000000000000000000";

    -- leftShiftStage1Idx7_uid268_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITJOIN,267)@5
    leftShiftStage1Idx7_uid268_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage1Idx7Rng28_uid267_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b & leftShiftStage1Idx7Pad28_uid266_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;

    -- leftShiftStage1Idx6Rng24_uid264_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITSELECT,263)@5
    leftShiftStage1Idx6Rng24_uid264_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in <= leftShiftStage0_uid247_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q(255 downto 0);
    leftShiftStage1Idx6Rng24_uid264_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b <= leftShiftStage1Idx6Rng24_uid264_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in(255 downto 0);

    -- i_and3_i_sample_buffer_vt_const_31(CONSTANT,92)
    i_and3_i_sample_buffer_vt_const_31_q <= "000000000000000000000000";

    -- leftShiftStage1Idx6_uid265_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITJOIN,264)@5
    leftShiftStage1Idx6_uid265_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage1Idx6Rng24_uid264_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b & i_and3_i_sample_buffer_vt_const_31_q;

    -- leftShiftStage1Idx5Rng20_uid261_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITSELECT,260)@5
    leftShiftStage1Idx5Rng20_uid261_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in <= leftShiftStage0_uid247_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q(259 downto 0);
    leftShiftStage1Idx5Rng20_uid261_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b <= leftShiftStage1Idx5Rng20_uid261_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in(259 downto 0);

    -- leftShiftStage1Idx5Pad20_uid260_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(CONSTANT,259)
    leftShiftStage1Idx5Pad20_uid260_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= "00000000000000000000";

    -- leftShiftStage1Idx5_uid262_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITJOIN,261)@5
    leftShiftStage1Idx5_uid262_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage1Idx5Rng20_uid261_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b & leftShiftStage1Idx5Pad20_uid260_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;

    -- leftShiftStage1Idx4Rng16_uid258_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITSELECT,257)@5
    leftShiftStage1Idx4Rng16_uid258_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in <= leftShiftStage0_uid247_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q(263 downto 0);
    leftShiftStage1Idx4Rng16_uid258_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b <= leftShiftStage1Idx4Rng16_uid258_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in(263 downto 0);

    -- leftShiftStage1Idx4Pad16_uid257_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(CONSTANT,256)
    leftShiftStage1Idx4Pad16_uid257_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= "0000000000000000";

    -- leftShiftStage1Idx4_uid259_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITJOIN,258)@5
    leftShiftStage1Idx4_uid259_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage1Idx4Rng16_uid258_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b & leftShiftStage1Idx4Pad16_uid257_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;

    -- leftShiftStage1Idx3Rng12_uid255_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITSELECT,254)@5
    leftShiftStage1Idx3Rng12_uid255_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in <= leftShiftStage0_uid247_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q(267 downto 0);
    leftShiftStage1Idx3Rng12_uid255_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b <= leftShiftStage1Idx3Rng12_uid255_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in(267 downto 0);

    -- leftShiftStage1Idx3Pad12_uid254_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(CONSTANT,253)
    leftShiftStage1Idx3Pad12_uid254_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= "000000000000";

    -- leftShiftStage1Idx3_uid256_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITJOIN,255)@5
    leftShiftStage1Idx3_uid256_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage1Idx3Rng12_uid255_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b & leftShiftStage1Idx3Pad12_uid254_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;

    -- leftShiftStage1Idx2Rng8_uid252_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITSELECT,251)@5
    leftShiftStage1Idx2Rng8_uid252_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in <= leftShiftStage0_uid247_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q(271 downto 0);
    leftShiftStage1Idx2Rng8_uid252_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b <= leftShiftStage1Idx2Rng8_uid252_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in(271 downto 0);

    -- leftShiftStage1Idx2_uid253_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITJOIN,252)@5
    leftShiftStage1Idx2_uid253_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage1Idx2Rng8_uid252_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b & leftShiftStage1Idx2Pad8_uid251_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;

    -- leftShiftStage1Idx1Rng4_uid249_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITSELECT,248)@5
    leftShiftStage1Idx1Rng4_uid249_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in <= leftShiftStage0_uid247_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q(275 downto 0);
    leftShiftStage1Idx1Rng4_uid249_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b <= leftShiftStage1Idx1Rng4_uid249_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in(275 downto 0);

    -- leftShiftStage1Idx1_uid250_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITJOIN,249)@5
    leftShiftStage1Idx1_uid250_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage1Idx1Rng4_uid249_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b & c_i4_0gr_q;

    -- leftShiftStage0Idx7Rng224_uid244_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITSELECT,243)@5
    leftShiftStage0Idx7Rng224_uid244_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in <= i_conv_i_i_i1_i_sample_buffer_vt_join_q(55 downto 0);
    leftShiftStage0Idx7Rng224_uid244_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b <= leftShiftStage0Idx7Rng224_uid244_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in(55 downto 0);

    -- leftShiftStage0Idx7Pad224_uid243_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(CONSTANT,242)
    leftShiftStage0Idx7Pad224_uid243_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    -- leftShiftStage0Idx7_uid245_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITJOIN,244)@5
    leftShiftStage0Idx7_uid245_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage0Idx7Rng224_uid244_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b & leftShiftStage0Idx7Pad224_uid243_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;

    -- leftShiftStage0Idx6Rng192_uid241_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITSELECT,240)@5
    leftShiftStage0Idx6Rng192_uid241_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in <= i_conv_i_i_i1_i_sample_buffer_vt_join_q(87 downto 0);
    leftShiftStage0Idx6Rng192_uid241_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b <= leftShiftStage0Idx6Rng192_uid241_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in(87 downto 0);

    -- leftShiftStage0Idx6Pad192_uid240_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(CONSTANT,239)
    leftShiftStage0Idx6Pad192_uid240_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    -- leftShiftStage0Idx6_uid242_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITJOIN,241)@5
    leftShiftStage0Idx6_uid242_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage0Idx6Rng192_uid241_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b & leftShiftStage0Idx6Pad192_uid240_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;

    -- leftShiftStage0Idx5Rng160_uid238_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITSELECT,237)@5
    leftShiftStage0Idx5Rng160_uid238_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in <= i_conv_i_i_i1_i_sample_buffer_vt_join_q(119 downto 0);
    leftShiftStage0Idx5Rng160_uid238_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b <= leftShiftStage0Idx5Rng160_uid238_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in(119 downto 0);

    -- leftShiftStage0Idx5Pad160_uid237_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(CONSTANT,236)
    leftShiftStage0Idx5Pad160_uid237_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    -- leftShiftStage0Idx5_uid239_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITJOIN,238)@5
    leftShiftStage0Idx5_uid239_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage0Idx5Rng160_uid238_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b & leftShiftStage0Idx5Pad160_uid237_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;

    -- leftShiftStage0Idx4Rng128_uid235_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITSELECT,234)@5
    leftShiftStage0Idx4Rng128_uid235_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in <= i_conv_i_i_i1_i_sample_buffer_vt_join_q(151 downto 0);
    leftShiftStage0Idx4Rng128_uid235_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b <= leftShiftStage0Idx4Rng128_uid235_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in(151 downto 0);

    -- leftShiftStage0Idx4_uid236_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITJOIN,235)@5
    leftShiftStage0Idx4_uid236_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage0Idx4Rng128_uid235_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b & leftShiftStage0Idx4Pad128_uid234_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;

    -- leftShiftStage0Idx3Rng96_uid232_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITSELECT,231)@5
    leftShiftStage0Idx3Rng96_uid232_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in <= i_conv_i_i_i1_i_sample_buffer_vt_join_q(183 downto 0);
    leftShiftStage0Idx3Rng96_uid232_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b <= leftShiftStage0Idx3Rng96_uid232_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in(183 downto 0);

    -- leftShiftStage0Idx3Pad96_uid231_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(CONSTANT,230)
    leftShiftStage0Idx3Pad96_uid231_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    -- leftShiftStage0Idx3_uid233_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITJOIN,232)@5
    leftShiftStage0Idx3_uid233_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage0Idx3Rng96_uid232_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b & leftShiftStage0Idx3Pad96_uid231_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;

    -- leftShiftStage0Idx2Rng64_uid229_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITSELECT,228)@5
    leftShiftStage0Idx2Rng64_uid229_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in <= i_conv_i_i_i1_i_sample_buffer_vt_join_q(215 downto 0);
    leftShiftStage0Idx2Rng64_uid229_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b <= leftShiftStage0Idx2Rng64_uid229_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in(215 downto 0);

    -- leftShiftStage0Idx2Pad64_uid228_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(CONSTANT,227)
    leftShiftStage0Idx2Pad64_uid228_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= "0000000000000000000000000000000000000000000000000000000000000000";

    -- leftShiftStage0Idx2_uid230_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITJOIN,229)@5
    leftShiftStage0Idx2_uid230_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage0Idx2Rng64_uid229_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b & leftShiftStage0Idx2Pad64_uid228_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;

    -- leftShiftStage0Idx1Rng32_uid226_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITSELECT,225)@5
    leftShiftStage0Idx1Rng32_uid226_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in <= i_conv_i_i_i1_i_sample_buffer_vt_join_q(247 downto 0);
    leftShiftStage0Idx1Rng32_uid226_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b <= leftShiftStage0Idx1Rng32_uid226_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_in(247 downto 0);

    -- leftShiftStage0Idx1_uid227_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(BITJOIN,226)@5
    leftShiftStage0Idx1_uid227_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage0Idx1Rng32_uid226_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_b & c_i32_0gr_q;

    -- i_conv_i_i_i1_i_sample_buffer_vt_const_279(CONSTANT,105)
    i_conv_i_i_i1_i_sample_buffer_vt_const_279_q <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001";

    -- i_or_i_sample_buffer_vt_const_31(CONSTANT,130)
    i_or_i_sample_buffer_vt_const_31_q <= "000000001";

    -- i_and4_i_sample_buffer_vt_const_31(CONSTANT,96)
    i_and4_i_sample_buffer_vt_const_31_q <= "000000000";

    -- c_i32_8388607(CONSTANT,70)
    c_i32_8388607_q <= "00000000011111111111111111111111";

    -- i_and4_i_sample_buffer(LOGICAL,95)@5
    i_and4_i_sample_buffer_q <= i_load_unnamed_sample_buffer5_sample_buffer_out_o_readdata and c_i32_8388607_q;

    -- i_and4_i_sample_buffer_vt_select_22(BITSELECT,98)@5
    i_and4_i_sample_buffer_vt_select_22_b <= i_and4_i_sample_buffer_q(22 downto 0);

    -- i_and4_i_sample_buffer_vt_join(BITJOIN,97)@5
    i_and4_i_sample_buffer_vt_join_q <= i_and4_i_sample_buffer_vt_const_31_q & i_and4_i_sample_buffer_vt_select_22_b;

    -- i_or_i_sample_buffer_BitSelect_for_a(BITSELECT,329)@5
    i_or_i_sample_buffer_BitSelect_for_a_b <= i_and4_i_sample_buffer_vt_join_q(22 downto 0);

    -- i_or_i_sample_buffer_join(BITJOIN,330)@5
    i_or_i_sample_buffer_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & VCC_q & i_or_i_sample_buffer_BitSelect_for_a_b;

    -- i_or_i_sample_buffer_vt_select_22(BITSELECT,132)@5
    i_or_i_sample_buffer_vt_select_22_b <= i_or_i_sample_buffer_join_q(22 downto 0);

    -- i_or_i_sample_buffer_vt_join(BITJOIN,131)@5
    i_or_i_sample_buffer_vt_join_q <= i_or_i_sample_buffer_vt_const_31_q & i_or_i_sample_buffer_vt_select_22_b;

    -- i_conv_i_i_i1_i_sample_buffer_sel_x(BITSELECT,33)@5
    i_conv_i_i_i1_i_sample_buffer_sel_x_b <= std_logic_vector(resize(unsigned(i_or_i_sample_buffer_vt_join_q(31 downto 0)), 280));

    -- i_conv_i_i_i1_i_sample_buffer_vt_select_22(BITSELECT,107)@5
    i_conv_i_i_i1_i_sample_buffer_vt_select_22_b <= i_conv_i_i_i1_i_sample_buffer_sel_x_b(22 downto 0);

    -- i_conv_i_i_i1_i_sample_buffer_vt_join(BITJOIN,106)@5
    i_conv_i_i_i1_i_sample_buffer_vt_join_q <= i_conv_i_i_i1_i_sample_buffer_vt_const_279_q & i_conv_i_i_i1_i_sample_buffer_vt_select_22_b;

    -- leftShiftStage0_uid247_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(MUX,246)@5
    leftShiftStage0_uid247_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_s <= leftShiftStageSel7Dto5_uid246_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_merged_bit_select_b;
    leftShiftStage0_uid247_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_combproc: PROCESS (leftShiftStage0_uid247_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_s, i_conv_i_i_i1_i_sample_buffer_vt_join_q, leftShiftStage0Idx1_uid227_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q, leftShiftStage0Idx2_uid230_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q, leftShiftStage0Idx3_uid233_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q, leftShiftStage0Idx4_uid236_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q, leftShiftStage0Idx5_uid239_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q, leftShiftStage0Idx6_uid242_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q, leftShiftStage0Idx7_uid245_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid247_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_s) IS
            WHEN "000" => leftShiftStage0_uid247_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= i_conv_i_i_i1_i_sample_buffer_vt_join_q;
            WHEN "001" => leftShiftStage0_uid247_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage0Idx1_uid227_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;
            WHEN "010" => leftShiftStage0_uid247_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage0Idx2_uid230_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;
            WHEN "011" => leftShiftStage0_uid247_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage0Idx3_uid233_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;
            WHEN "100" => leftShiftStage0_uid247_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage0Idx4_uid236_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;
            WHEN "101" => leftShiftStage0_uid247_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage0Idx5_uid239_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;
            WHEN "110" => leftShiftStage0_uid247_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage0Idx6_uid242_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;
            WHEN "111" => leftShiftStage0_uid247_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage0Idx7_uid245_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid247_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid270_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(MUX,269)@5
    leftShiftStage1_uid270_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_s <= leftShiftStageSel7Dto5_uid246_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_merged_bit_select_c;
    leftShiftStage1_uid270_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_combproc: PROCESS (leftShiftStage1_uid270_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_s, leftShiftStage0_uid247_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q, leftShiftStage1Idx1_uid250_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q, leftShiftStage1Idx2_uid253_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q, leftShiftStage1Idx3_uid256_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q, leftShiftStage1Idx4_uid259_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q, leftShiftStage1Idx5_uid262_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q, leftShiftStage1Idx6_uid265_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q, leftShiftStage1Idx7_uid268_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid270_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_s) IS
            WHEN "000" => leftShiftStage1_uid270_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage0_uid247_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;
            WHEN "001" => leftShiftStage1_uid270_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage1Idx1_uid250_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;
            WHEN "010" => leftShiftStage1_uid270_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage1Idx2_uid253_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;
            WHEN "011" => leftShiftStage1_uid270_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage1Idx3_uid256_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;
            WHEN "100" => leftShiftStage1_uid270_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage1Idx4_uid259_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;
            WHEN "101" => leftShiftStage1_uid270_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage1Idx5_uid262_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;
            WHEN "110" => leftShiftStage1_uid270_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage1Idx6_uid265_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;
            WHEN "111" => leftShiftStage1_uid270_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage1Idx7_uid268_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid270_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_sh_prom_i_i_i5_i_sample_buffer_vt_const_279(CONSTANT,135)
    i_sh_prom_i_i_i5_i_sample_buffer_vt_const_279_q <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    -- i_shr2_i_sample_buffer_vt_const_31(CONSTANT,138)
    i_shr2_i_sample_buffer_vt_const_31_q <= "00000000000000000000000";

    -- rightShiftStage3Idx1Rng1_uid301_i_shr2_i_sample_buffer_sample_buffer55_shift_x(BITSELECT,300)@5
    rightShiftStage3Idx1Rng1_uid301_i_shr2_i_sample_buffer_sample_buffer55_shift_x_b <= rightShiftStage2_uid300_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q(31 downto 1);

    -- rightShiftStage3Idx1_uid303_i_shr2_i_sample_buffer_sample_buffer55_shift_x(BITJOIN,302)@5
    rightShiftStage3Idx1_uid303_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q <= GND_q & rightShiftStage3Idx1Rng1_uid301_i_shr2_i_sample_buffer_sample_buffer55_shift_x_b;

    -- rightShiftStage2Idx1Rng2_uid296_i_shr2_i_sample_buffer_sample_buffer55_shift_x(BITSELECT,295)@5
    rightShiftStage2Idx1Rng2_uid296_i_shr2_i_sample_buffer_sample_buffer55_shift_x_b <= rightShiftStage1_uid295_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q(31 downto 2);

    -- rightShiftStage2Idx1_uid298_i_shr2_i_sample_buffer_sample_buffer55_shift_x(BITJOIN,297)@5
    rightShiftStage2Idx1_uid298_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q <= leftShiftStage2Idx2Pad2_uid274_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q & rightShiftStage2Idx1Rng2_uid296_i_shr2_i_sample_buffer_sample_buffer55_shift_x_b;

    -- rightShiftStage1Idx1Rng4_uid291_i_shr2_i_sample_buffer_sample_buffer55_shift_x(BITSELECT,290)@5
    rightShiftStage1Idx1Rng4_uid291_i_shr2_i_sample_buffer_sample_buffer55_shift_x_b <= rightShiftStage0_uid290_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q(31 downto 4);

    -- rightShiftStage1Idx1_uid293_i_shr2_i_sample_buffer_sample_buffer55_shift_x(BITJOIN,292)@5
    rightShiftStage1Idx1_uid293_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q <= c_i4_0gr_q & rightShiftStage1Idx1Rng4_uid291_i_shr2_i_sample_buffer_sample_buffer55_shift_x_b;

    -- rightShiftStage0Idx1Rng16_uid286_i_shr2_i_sample_buffer_sample_buffer55_shift_x(BITSELECT,285)@5
    rightShiftStage0Idx1Rng16_uid286_i_shr2_i_sample_buffer_sample_buffer55_shift_x_b <= i_load_unnamed_sample_buffer5_sample_buffer_out_o_readdata(31 downto 16);

    -- rightShiftStage0Idx1_uid288_i_shr2_i_sample_buffer_sample_buffer55_shift_x(BITJOIN,287)@5
    rightShiftStage0Idx1_uid288_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q <= leftShiftStage1Idx4Pad16_uid257_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q & rightShiftStage0Idx1Rng16_uid286_i_shr2_i_sample_buffer_sample_buffer55_shift_x_b;

    -- rightShiftStage0_uid290_i_shr2_i_sample_buffer_sample_buffer55_shift_x(MUX,289)@5
    rightShiftStage0_uid290_i_shr2_i_sample_buffer_sample_buffer55_shift_x_s <= VCC_q;
    rightShiftStage0_uid290_i_shr2_i_sample_buffer_sample_buffer55_shift_x_combproc: PROCESS (rightShiftStage0_uid290_i_shr2_i_sample_buffer_sample_buffer55_shift_x_s, i_load_unnamed_sample_buffer5_sample_buffer_out_o_readdata, rightShiftStage0Idx1_uid288_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid290_i_shr2_i_sample_buffer_sample_buffer55_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid290_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q <= i_load_unnamed_sample_buffer5_sample_buffer_out_o_readdata;
            WHEN "1" => rightShiftStage0_uid290_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q <= rightShiftStage0Idx1_uid288_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid290_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid295_i_shr2_i_sample_buffer_sample_buffer55_shift_x(MUX,294)@5
    rightShiftStage1_uid295_i_shr2_i_sample_buffer_sample_buffer55_shift_x_s <= VCC_q;
    rightShiftStage1_uid295_i_shr2_i_sample_buffer_sample_buffer55_shift_x_combproc: PROCESS (rightShiftStage1_uid295_i_shr2_i_sample_buffer_sample_buffer55_shift_x_s, rightShiftStage0_uid290_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q, rightShiftStage1Idx1_uid293_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid295_i_shr2_i_sample_buffer_sample_buffer55_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid295_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q <= rightShiftStage0_uid290_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q;
            WHEN "1" => rightShiftStage1_uid295_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q <= rightShiftStage1Idx1_uid293_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid295_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid300_i_shr2_i_sample_buffer_sample_buffer55_shift_x(MUX,299)@5
    rightShiftStage2_uid300_i_shr2_i_sample_buffer_sample_buffer55_shift_x_s <= VCC_q;
    rightShiftStage2_uid300_i_shr2_i_sample_buffer_sample_buffer55_shift_x_combproc: PROCESS (rightShiftStage2_uid300_i_shr2_i_sample_buffer_sample_buffer55_shift_x_s, rightShiftStage1_uid295_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q, rightShiftStage2Idx1_uid298_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid300_i_shr2_i_sample_buffer_sample_buffer55_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid300_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q <= rightShiftStage1_uid295_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q;
            WHEN "1" => rightShiftStage2_uid300_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q <= rightShiftStage2Idx1_uid298_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid300_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid305_i_shr2_i_sample_buffer_sample_buffer55_shift_x(MUX,304)@5
    rightShiftStage3_uid305_i_shr2_i_sample_buffer_sample_buffer55_shift_x_s <= VCC_q;
    rightShiftStage3_uid305_i_shr2_i_sample_buffer_sample_buffer55_shift_x_combproc: PROCESS (rightShiftStage3_uid305_i_shr2_i_sample_buffer_sample_buffer55_shift_x_s, rightShiftStage2_uid300_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q, rightShiftStage3Idx1_uid303_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid305_i_shr2_i_sample_buffer_sample_buffer55_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid305_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q <= rightShiftStage2_uid300_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q;
            WHEN "1" => rightShiftStage3_uid305_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q <= rightShiftStage3Idx1_uid303_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid305_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr2_i_sample_buffer_vt_select_8(BITSELECT,140)@5
    i_shr2_i_sample_buffer_vt_select_8_b <= rightShiftStage3_uid305_i_shr2_i_sample_buffer_sample_buffer55_shift_x_q(8 downto 0);

    -- i_shr2_i_sample_buffer_vt_join(BITJOIN,139)@5
    i_shr2_i_sample_buffer_vt_join_q <= i_shr2_i_sample_buffer_vt_const_31_q & i_shr2_i_sample_buffer_vt_select_8_b;

    -- i_and3_i_sample_buffer_BitSelect_for_a(BITSELECT,323)@5
    i_and3_i_sample_buffer_BitSelect_for_a_b <= i_shr2_i_sample_buffer_vt_join_q(7 downto 0);

    -- i_and3_i_sample_buffer_join(BITJOIN,324)@5
    i_and3_i_sample_buffer_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and3_i_sample_buffer_BitSelect_for_a_b;

    -- i_and3_i_sample_buffer_vt_select_7(BITSELECT,94)@5
    i_and3_i_sample_buffer_vt_select_7_b <= i_and3_i_sample_buffer_join_q(7 downto 0);

    -- i_and3_i_sample_buffer_vt_join(BITJOIN,93)@5
    i_and3_i_sample_buffer_vt_join_q <= i_and3_i_sample_buffer_vt_const_31_q & i_and3_i_sample_buffer_vt_select_7_b;

    -- i_sh_prom_i_i_i5_i_sample_buffer_sel_x(BITSELECT,44)@5
    i_sh_prom_i_i_i5_i_sample_buffer_sel_x_b <= std_logic_vector(resize(unsigned(i_and3_i_sample_buffer_vt_join_q(31 downto 0)), 280));

    -- i_sh_prom_i_i_i5_i_sample_buffer_vt_select_7(BITSELECT,137)@5
    i_sh_prom_i_i_i5_i_sample_buffer_vt_select_7_b <= i_sh_prom_i_i_i5_i_sample_buffer_sel_x_b(7 downto 0);

    -- i_sh_prom_i_i_i5_i_sample_buffer_vt_join(BITJOIN,136)@5
    i_sh_prom_i_i_i5_i_sample_buffer_vt_join_q <= i_sh_prom_i_i_i5_i_sample_buffer_vt_const_279_q & i_sh_prom_i_i_i5_i_sample_buffer_vt_select_7_b;

    -- i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_narrow_x(BITSELECT,48)@5
    i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_narrow_x_b <= i_sh_prom_i_i_i5_i_sample_buffer_vt_join_q(8 downto 0);

    -- leftShiftStageSel7Dto5_uid246_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_merged_bit_select(BITSELECT,347)@5
    leftShiftStageSel7Dto5_uid246_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_merged_bit_select_in <= i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_narrow_x_b(7 downto 0);
    leftShiftStageSel7Dto5_uid246_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_merged_bit_select_b <= leftShiftStageSel7Dto5_uid246_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_merged_bit_select_in(7 downto 5);
    leftShiftStageSel7Dto5_uid246_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_merged_bit_select_c <= leftShiftStageSel7Dto5_uid246_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_merged_bit_select_in(4 downto 2);
    leftShiftStageSel7Dto5_uid246_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_merged_bit_select_d <= leftShiftStageSel7Dto5_uid246_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_merged_bit_select_in(1 downto 0);

    -- leftShiftStage2_uid281_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x(MUX,280)@5 + 1
    leftShiftStage2_uid281_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_s <= leftShiftStageSel7Dto5_uid246_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_merged_bit_select_d;
    leftShiftStage2_uid281_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            leftShiftStage2_uid281_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (leftShiftStage2_uid281_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_s) IS
                WHEN "00" => leftShiftStage2_uid281_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage1_uid270_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;
                WHEN "01" => leftShiftStage2_uid281_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage2Idx1_uid273_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;
                WHEN "10" => leftShiftStage2_uid281_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage2Idx2_uid276_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;
                WHEN "11" => leftShiftStage2_uid281_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= leftShiftStage2Idx3_uid279_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;
                WHEN OTHERS => leftShiftStage2_uid281_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_tobool_i_sample_buffer_cmp_sign(LOGICAL,344)@5 + 1
    i_tobool_i_sample_buffer_cmp_sign_qi <= STD_LOGIC_VECTOR(i_load_unnamed_sample_buffer5_sample_buffer_out_o_readdata(31 downto 31));
    i_tobool_i_sample_buffer_cmp_sign_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_tobool_i_sample_buffer_cmp_sign_qi, xout => i_tobool_i_sample_buffer_cmp_sign_q, clk => clock, aclr => resetn );

    -- i_cond_i_i_sample_buffer(MUX,103)@6
    i_cond_i_i_sample_buffer_s <= i_tobool_i_sample_buffer_cmp_sign_q;
    i_cond_i_i_sample_buffer_combproc: PROCESS (i_cond_i_i_sample_buffer_s, leftShiftStage2_uid281_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q, bgTrunc_i_sub_i_i_sample_buffer_sel_x_b)
    BEGIN
        CASE (i_cond_i_i_sample_buffer_s) IS
            WHEN "0" => i_cond_i_i_sample_buffer_q <= leftShiftStage2_uid281_i_shl_i_i_i_i_sample_buffer_sample_buffer56_shift_x_q;
            WHEN "1" => i_cond_i_i_sample_buffer_q <= bgTrunc_i_sub_i_i_sample_buffer_sel_x_b;
            WHEN OTHERS => i_cond_i_i_sample_buffer_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage0_uid314_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x(MUX,313)@6
    rightShiftStage0_uid314_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_s <= VCC_q;
    rightShiftStage0_uid314_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_combproc: PROCESS (rightShiftStage0_uid314_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_s, i_cond_i_i_sample_buffer_q, rightShiftStage0Idx1_uid312_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid314_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid314_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_q <= i_cond_i_i_sample_buffer_q;
            WHEN "1" => rightShiftStage0_uid314_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_q <= rightShiftStage0Idx1_uid312_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid314_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid319_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x(MUX,318)@6
    rightShiftStage1_uid319_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_s <= VCC_q;
    rightShiftStage1_uid319_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_combproc: PROCESS (rightShiftStage1_uid319_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_s, rightShiftStage0_uid314_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_q, rightShiftStage1Idx1_uid317_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid319_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid319_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_q <= rightShiftStage0_uid314_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_q;
            WHEN "1" => rightShiftStage1_uid319_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_q <= rightShiftStage1Idx1_uid317_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid319_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr_i_i_i_i3_sample_buffer_vt_select_143(BITSELECT,143)@6
    i_shr_i_i_i_i3_sample_buffer_vt_select_143_b <= rightShiftStage1_uid319_i_shr_i_i_i_i3_sample_buffer_sample_buffer57_shift_x_q(143 downto 0);

    -- i_shr_i_i_i_i3_sample_buffer_vt_join(BITJOIN,142)@6
    i_shr_i_i_i_i3_sample_buffer_vt_join_q <= i_shr_i_i_i_i3_sample_buffer_vt_const_279_q & i_shr_i_i_i_i3_sample_buffer_vt_select_143_b;

    -- i_conv_i_i_i_i_sample_buffer_sel_x(BITSELECT,34)@6
    i_conv_i_i_i_i_sample_buffer_sel_x_b <= i_shr_i_i_i_i3_sample_buffer_vt_join_q(15 downto 0);

    -- redist2_i_acl_pipeline_keep_going_sample_buffer_out_data_out_5(DELAY,350)
    redist2_i_acl_pipeline_keep_going_sample_buffer_out_data_out_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pipeline_keep_going_sample_buffer_out_data_out, xout => redist2_i_acl_pipeline_keep_going_sample_buffer_out_data_out_5_q, clk => clock, aclr => resetn );

    -- sync_out_aunroll_x(GPOUT,58)@6
    out_c0_exi4_0 <= GND_q;
    out_c0_exi4_1 <= redist2_i_acl_pipeline_keep_going_sample_buffer_out_data_out_5_q;
    out_c0_exi4_2 <= i_conv_i_i_i_i_sample_buffer_sel_x_b;
    out_c0_exi4_3 <= i_first_cleanup_xor6_or_sample_buffer_q;
    out_c0_exi4_4 <= redist1_i_masked_sample_buffer_q_5_q;
    out_o_valid <= redist3_sync_in_aunroll_x_in_i_valid_5_q;

    -- ext_sig_sync_out(GPOUT,79)
    out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_valid_out <= i_acl_pipeline_keep_going_sample_buffer_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_stall_out <= i_acl_pipeline_keep_going_sample_buffer_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,164)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going_sample_buffer_out_pipeline_valid_out;

END normal;
