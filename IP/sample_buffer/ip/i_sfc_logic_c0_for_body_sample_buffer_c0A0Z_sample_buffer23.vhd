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

-- VHDL created from i_sfc_logic_c0_for_body_sample_buffer_c0_enter11_sample_buffer23
-- VHDL created on Mon Dec 20 12:08:35 2021


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

entity i_sfc_logic_c0_for_body_sample_buffer_c0_enter11_sample_buffer23 is
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
        out_c0_exi4_2 : out std_logic_vector(31 downto 0);  -- float32_m23
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
end i_sfc_logic_c0_for_body_sample_buffer_c0_enter11_sample_buffer23;

architecture normal of i_sfc_logic_c0_for_body_sample_buffer_c0_enter11_sample_buffer23 is

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


    component i_acl_pop_i32_i_02_pop7_sample_buffer44 is
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


    component i_acl_push_i1_notexitcond_sample_buffer63 is
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


    component i_acl_push_i32_i_02_push7_sample_buffer55 is
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


    component i_acl_push_i33_fpgaindvars_iv_push6_sample_buffer58 is
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


    component i_acl_push_i4_cleanups_push9_sample_buffer66 is
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


    component i_ffwd_dst_cmp1_phi_decision2_xor2_sample_buffer60 is
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


    component i_ffwd_dst_cmp1_phi_decision2_xor3_sample_buffer53 is
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


    component i_ffwd_dst_cmp1_phi_decision2_xor4_sample_buffer49 is
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
    signal i_arrayidx_sample_buffer_sample_buffer48_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_cleanups_shl_sample_buffer_sel_x_b : STD_LOGIC_VECTOR (3 downto 0);
    signal i_idxprom_sample_buffer_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_next_cleanups_sample_buffer_sample_buffer65_shift_narrow_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
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
    signal i_acl_pop_i32_i_02_pop7_sample_buffer_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_i_02_pop7_sample_buffer_out_feedback_stall_out_7 : STD_LOGIC_VECTOR (0 downto 0);
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
    signal i_acl_push_i32_i_02_push7_sample_buffer_out_feedback_out_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_i_02_push7_sample_buffer_out_feedback_valid_out_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i33_fpgaindvars_iv_push6_sample_buffer_out_feedback_out_6 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_push_i33_fpgaindvars_iv_push6_sample_buffer_out_feedback_valid_out_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i4_cleanups_push9_sample_buffer_out_feedback_out_9 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i4_cleanups_push9_sample_buffer_out_feedback_valid_out_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i4_initerations_push8_sample_buffer_out_feedback_out_8 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i4_initerations_push8_sample_buffer_out_feedback_valid_out_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cleanups_shl_sample_buffer_vt_const_3_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_cleanups_shl_sample_buffer_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_cleanups_shl_sample_buffer_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp1_phi_decision2_xor2_sample_buffer_out_dest_data_out_0_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp1_phi_decision2_xor3_sample_buffer_out_dest_data_out_0_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp1_phi_decision2_xor4_sample_buffer_out_dest_data_out_0_0 : STD_LOGIC_VECTOR (0 downto 0);
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
    signal i_or_sample_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_sample_buffer_sync_buffer_sample_buffer_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_sample_buffer27_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_sample_buffer27_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_sample_buffer27_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_sample_buffer36_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_sample_buffer36_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_sample_buffer62_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor_sample_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_24_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_24_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_25_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_25_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_26_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_26_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_28_q : STD_LOGIC_VECTOR (20 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_28_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_29_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_29_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_30_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_30_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_31_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_31_qint : STD_LOGIC_VECTOR (9 downto 0);
    signal leftShiftStage0Idx1Rng1_uid152_i_next_cleanups_sample_buffer_sample_buffer65_shift_x_in : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0Idx1Rng1_uid152_i_next_cleanups_sample_buffer_sample_buffer65_shift_x_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0Idx1_uid153_i_next_cleanups_sample_buffer_sample_buffer65_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStageSel0Dto0_uid154_i_next_cleanups_sample_buffer_sample_buffer65_shift_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStageSel0Dto0_uid154_i_next_cleanups_sample_buffer_sample_buffer65_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid155_i_next_cleanups_sample_buffer_sample_buffer65_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid155_i_next_cleanups_sample_buffer_sample_buffer65_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage0Idx1Rng1_uid160_i_next_initerations_sample_buffer_sample_buffer33_shift_x_b : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage0Idx1_uid162_i_next_initerations_sample_buffer_sample_buffer33_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage0_uid164_i_next_initerations_sample_buffer_sample_buffer33_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid164_i_next_initerations_sample_buffer_sample_buffer33_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
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
    signal i_arrayidx_sample_buffer_sample_buffer48_add_x_p1_of_2_a : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_add_x_p1_of_2_b : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_add_x_p1_of_2_o : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_add_x_p1_of_2_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_add_x_p1_of_2_q : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_add_x_p2_of_2_a : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_add_x_p2_of_2_b : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_add_x_p2_of_2_o : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_add_x_p2_of_2_cin : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_add_x_p2_of_2_q : STD_LOGIC_VECTOR (25 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_add_x_BitJoin_for_q_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_UpperBits_for_a_q : STD_LOGIC_VECTOR (1 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p1_of_2_a : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p1_of_2_b : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p1_of_2_o : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p1_of_2_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p1_of_2_q : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p2_of_2_a : STD_LOGIC_VECTOR (30 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p2_of_2_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p2_of_2_o : STD_LOGIC_VECTOR (30 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p2_of_2_cin : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p2_of_2_q : STD_LOGIC_VECTOR (28 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_add_x_BitSelect_for_a_BitJoin_for_c_q : STD_LOGIC_VECTOR (25 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_add_x_BitSelect_for_b_tessel1_0_b : STD_LOGIC_VECTOR (24 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_add_x_BitSelect_for_b_BitJoin_for_c_q : STD_LOGIC_VECTOR (25 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q : STD_LOGIC_VECTOR (28 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q : STD_LOGIC_VECTOR (28 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (8 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (8 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (8 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_f : STD_LOGIC_VECTOR (8 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_g : STD_LOGIC_VECTOR (8 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_h : STD_LOGIC_VECTOR (8 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_i : STD_LOGIC_VECTOR (8 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c : STD_LOGIC_VECTOR (24 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b : STD_LOGIC_VECTOR (8 downto 0);
    signal i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c : STD_LOGIC_VECTOR (8 downto 0);
    signal redist0_i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist1_i_arrayidx_sample_buffer_sample_buffer48_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (24 downto 0);
    signal redist2_i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist3_i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_e_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_i_1_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist5_i_arrayidx_sample_buffer_sample_buffer48_add_x_p1_of_2_q_1_q : STD_LOGIC_VECTOR (38 downto 0);
    signal redist6_i_xor_sample_buffer_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_xor_sample_buffer_q_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_masked_sample_buffer_q_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_acl_pop_i32_i_02_pop7_sample_buffer_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_i_acl_pipeline_keep_going_sample_buffer_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_i_acl_pipeline_keep_going_sample_buffer_out_data_out_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_i_acl_pipeline_keep_going_sample_buffer_out_data_out_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_sync_in_aunroll_x_in_c0_eni2_1_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_sync_in_aunroll_x_in_c0_eni2_1_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_sync_in_aunroll_x_in_i_valid_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_sync_in_aunroll_x_in_i_valid_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_sync_in_aunroll_x_in_i_valid_8_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist15_sync_in_aunroll_x_in_i_valid_1(DELAY,243)
    redist15_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist15_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist16_sync_in_aunroll_x_in_i_valid_2(DELAY,244)
    redist16_sync_in_aunroll_x_in_i_valid_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist15_sync_in_aunroll_x_in_i_valid_1_q, xout => redist16_sync_in_aunroll_x_in_i_valid_2_q, clk => clock, aclr => resetn );

    -- redist17_sync_in_aunroll_x_in_i_valid_3(DELAY,245)
    redist17_sync_in_aunroll_x_in_i_valid_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist16_sync_in_aunroll_x_in_i_valid_2_q, xout => redist17_sync_in_aunroll_x_in_i_valid_3_q, clk => clock, aclr => resetn );

    -- redist18_sync_in_aunroll_x_in_i_valid_4(DELAY,246)
    redist18_sync_in_aunroll_x_in_i_valid_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist17_sync_in_aunroll_x_in_i_valid_3_q, xout => redist18_sync_in_aunroll_x_in_i_valid_4_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- c_i4_0gr(CONSTANT,52)
    c_i4_0gr_q <= "0000";

    -- i_cleanups_shl_sample_buffer_vt_const_3(CONSTANT,69)
    i_cleanups_shl_sample_buffer_vt_const_3_q <= "000";

    -- c_i4_1gr(CONSTANT,53)
    c_i4_1gr_q <= "0001";

    -- i_ffwd_dst_cmp1_phi_decision2_xor2_sample_buffer(BLACKBOX,73)@4
    thei_ffwd_dst_cmp1_phi_decision2_xor2_sample_buffer : i_ffwd_dst_cmp1_phi_decision2_xor2_sample_buffer60
    PORT MAP (
        in_intel_reserved_ffwd_0_0 => in_intel_reserved_ffwd_0_0,
        in_stall_in => GND_q,
        in_valid_in => redist17_sync_in_aunroll_x_in_i_valid_3_q,
        out_dest_data_out_0_0 => i_ffwd_dst_cmp1_phi_decision2_xor2_sample_buffer_out_dest_data_out_0_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_unnamed_sample_buffer4_sample_buffer(BLACKBOX,76)@4
    thei_ffwd_dst_unnamed_sample_buffer4_sample_buffer : i_ffwd_dst_unnamed_sample_buffer4_sample_buffer40
    PORT MAP (
        in_intel_reserved_ffwd_1_0 => in_intel_reserved_ffwd_1_0,
        in_stall_in => GND_q,
        in_valid_in => redist17_sync_in_aunroll_x_in_i_valid_3_q,
        out_dest_data_out_1_0 => i_ffwd_dst_unnamed_sample_buffer4_sample_buffer_out_dest_data_out_1_0,
        clock => clock,
        resetn => resetn
    );

    -- c_i33_1gr(CONSTANT,50)
    c_i33_1gr_q <= "111111111111111111111111111111111";

    -- i_fpgaindvars_iv_next_sample_buffer(ADD,80)@4
    i_fpgaindvars_iv_next_sample_buffer_a <= STD_LOGIC_VECTOR("0" & i_fpgaindvars_iv_replace_phi_sample_buffer_q);
    i_fpgaindvars_iv_next_sample_buffer_b <= STD_LOGIC_VECTOR("0" & c_i33_1gr_q);
    i_fpgaindvars_iv_next_sample_buffer_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next_sample_buffer_a) + UNSIGNED(i_fpgaindvars_iv_next_sample_buffer_b));
    i_fpgaindvars_iv_next_sample_buffer_q <= i_fpgaindvars_iv_next_sample_buffer_o(33 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next_sample_buffer_sel_x(BITSELECT,2)@4
    bgTrunc_i_fpgaindvars_iv_next_sample_buffer_sel_x_b <= i_fpgaindvars_iv_next_sample_buffer_q(32 downto 0);

    -- i_acl_push_i33_fpgaindvars_iv_push6_sample_buffer(BLACKBOX,65)@4
    -- out out_feedback_out_6@20000000
    -- out out_feedback_valid_out_6@20000000
    thei_acl_push_i33_fpgaindvars_iv_push6_sample_buffer : i_acl_push_i33_fpgaindvars_iv_push6_sample_buffer58
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next_sample_buffer_sel_x_b,
        in_feedback_stall_in_6 => i_acl_pop_i33_fpgaindvars_iv_pop6_sample_buffer_out_feedback_stall_out_6,
        in_keep_going => redist11_i_acl_pipeline_keep_going_sample_buffer_out_data_out_3_q,
        in_stall_in => GND_q,
        in_valid_in => redist17_sync_in_aunroll_x_in_i_valid_3_q,
        out_feedback_out_6 => i_acl_push_i33_fpgaindvars_iv_push6_sample_buffer_out_feedback_out_6,
        out_feedback_valid_out_6 => i_acl_push_i33_fpgaindvars_iv_push6_sample_buffer_out_feedback_valid_out_6,
        clock => clock,
        resetn => resetn
    );

    -- c_i33_undef(CONSTANT,51)
    c_i33_undef_q <= "000000000000000000000000000000000";

    -- i_acl_pop_i33_fpgaindvars_iv_pop6_sample_buffer(BLACKBOX,59)@4
    -- out out_feedback_stall_out_6@20000000
    thei_acl_pop_i33_fpgaindvars_iv_pop6_sample_buffer : i_acl_pop_i33_fpgaindvars_iv_pop6_sample_buffer42
    PORT MAP (
        in_data_in => c_i33_undef_q,
        in_dir => redist14_sync_in_aunroll_x_in_c0_eni2_1_3_q,
        in_feedback_in_6 => i_acl_push_i33_fpgaindvars_iv_push6_sample_buffer_out_feedback_out_6,
        in_feedback_valid_in_6 => i_acl_push_i33_fpgaindvars_iv_push6_sample_buffer_out_feedback_valid_out_6,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist17_sync_in_aunroll_x_in_i_valid_3_q,
        out_data_out => i_acl_pop_i33_fpgaindvars_iv_pop6_sample_buffer_out_data_out,
        out_feedback_stall_out_6 => i_acl_pop_i33_fpgaindvars_iv_pop6_sample_buffer_out_feedback_stall_out_6,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv_replace_phi_sample_buffer(MUX,81)@4
    i_fpgaindvars_iv_replace_phi_sample_buffer_s <= redist14_sync_in_aunroll_x_in_c0_eni2_1_3_q;
    i_fpgaindvars_iv_replace_phi_sample_buffer_combproc: PROCESS (i_fpgaindvars_iv_replace_phi_sample_buffer_s, i_acl_pop_i33_fpgaindvars_iv_pop6_sample_buffer_out_data_out, i_ffwd_dst_unnamed_sample_buffer4_sample_buffer_out_dest_data_out_1_0)
    BEGIN
        CASE (i_fpgaindvars_iv_replace_phi_sample_buffer_s) IS
            WHEN "0" => i_fpgaindvars_iv_replace_phi_sample_buffer_q <= i_acl_pop_i33_fpgaindvars_iv_pop6_sample_buffer_out_data_out;
            WHEN "1" => i_fpgaindvars_iv_replace_phi_sample_buffer_q <= i_ffwd_dst_unnamed_sample_buffer4_sample_buffer_out_dest_data_out_1_0;
            WHEN OTHERS => i_fpgaindvars_iv_replace_phi_sample_buffer_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_exitcond1_sample_buffer_cmp_sign(LOGICAL,179)@4
    i_exitcond1_sample_buffer_cmp_sign_q <= STD_LOGIC_VECTOR(i_fpgaindvars_iv_replace_phi_sample_buffer_q(32 downto 32));

    -- i_unnamed_sample_buffer62(LOGICAL,102)@4
    i_unnamed_sample_buffer62_q <= i_exitcond1_sample_buffer_cmp_sign_q or i_ffwd_dst_cmp1_phi_decision2_xor2_sample_buffer_out_dest_data_out_0_0;

    -- i_notexit_sample_buffer(LOGICAL,91)@4
    i_notexit_sample_buffer_q <= i_unnamed_sample_buffer62_q xor VCC_q;

    -- i_acl_push_i1_notexitcond_sample_buffer(BLACKBOX,63)@4
    -- out out_feedback_out_3@20000000
    -- out out_feedback_valid_out_3@20000000
    thei_acl_push_i1_notexitcond_sample_buffer : i_acl_push_i1_notexitcond_sample_buffer63
    PORT MAP (
        in_data_in => i_notexit_sample_buffer_q,
        in_feedback_stall_in_3 => i_acl_pipeline_keep_going_sample_buffer_out_not_exitcond_stall_out,
        in_first_cleanup => i_first_cleanup_sample_buffer_q,
        in_stall_in => GND_q,
        in_valid_in => redist17_sync_in_aunroll_x_in_i_valid_3_q,
        out_feedback_out_3 => i_acl_push_i1_notexitcond_sample_buffer_out_feedback_out_3,
        out_feedback_valid_out_3 => i_acl_push_i1_notexitcond_sample_buffer_out_feedback_valid_out_3,
        clock => clock,
        resetn => resetn
    );

    -- rightShiftStage0Idx1Rng1_uid160_i_next_initerations_sample_buffer_sample_buffer33_shift_x(BITSELECT,159)@2
    rightShiftStage0Idx1Rng1_uid160_i_next_initerations_sample_buffer_sample_buffer33_shift_x_b <= i_acl_pop_i4_initerations_pop8_sample_buffer_out_data_out(3 downto 1);

    -- rightShiftStage0Idx1_uid162_i_next_initerations_sample_buffer_sample_buffer33_shift_x(BITJOIN,161)@2
    rightShiftStage0Idx1_uid162_i_next_initerations_sample_buffer_sample_buffer33_shift_x_q <= GND_q & rightShiftStage0Idx1Rng1_uid160_i_next_initerations_sample_buffer_sample_buffer33_shift_x_b;

    -- i_acl_push_i4_initerations_push8_sample_buffer(BLACKBOX,67)@2
    -- out out_feedback_out_8@20000000
    -- out out_feedback_valid_out_8@20000000
    thei_acl_push_i4_initerations_push8_sample_buffer : i_acl_push_i4_initerations_push8_sample_buffer34
    PORT MAP (
        in_data_in => i_next_initerations_sample_buffer_vt_join_q,
        in_feedback_stall_in_8 => i_acl_pop_i4_initerations_pop8_sample_buffer_out_feedback_stall_out_8,
        in_keep_going => redist10_i_acl_pipeline_keep_going_sample_buffer_out_data_out_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist15_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_8 => i_acl_push_i4_initerations_push8_sample_buffer_out_feedback_out_8,
        out_feedback_valid_out_8 => i_acl_push_i4_initerations_push8_sample_buffer_out_feedback_valid_out_8,
        clock => clock,
        resetn => resetn
    );

    -- redist13_sync_in_aunroll_x_in_c0_eni2_1_1(DELAY,241)
    redist13_sync_in_aunroll_x_in_c0_eni2_1_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni2_1, xout => redist13_sync_in_aunroll_x_in_c0_eni2_1_1_q, clk => clock, aclr => resetn );

    -- i_acl_pop_i4_initerations_pop8_sample_buffer(BLACKBOX,61)@2
    -- out out_feedback_stall_out_8@20000000
    thei_acl_pop_i4_initerations_pop8_sample_buffer : i_acl_pop_i4_initerations_pop8_sample_buffer31
    PORT MAP (
        in_data_in => c_i4_7gr_q,
        in_dir => redist13_sync_in_aunroll_x_in_c0_eni2_1_1_q,
        in_feedback_in_8 => i_acl_push_i4_initerations_push8_sample_buffer_out_feedback_out_8,
        in_feedback_valid_in_8 => i_acl_push_i4_initerations_push8_sample_buffer_out_feedback_valid_out_8,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist15_sync_in_aunroll_x_in_i_valid_1_q,
        out_data_out => i_acl_pop_i4_initerations_pop8_sample_buffer_out_data_out,
        out_feedback_stall_out_8 => i_acl_pop_i4_initerations_pop8_sample_buffer_out_feedback_stall_out_8,
        clock => clock,
        resetn => resetn
    );

    -- rightShiftStage0_uid164_i_next_initerations_sample_buffer_sample_buffer33_shift_x(MUX,163)@2
    rightShiftStage0_uid164_i_next_initerations_sample_buffer_sample_buffer33_shift_x_s <= VCC_q;
    rightShiftStage0_uid164_i_next_initerations_sample_buffer_sample_buffer33_shift_x_combproc: PROCESS (rightShiftStage0_uid164_i_next_initerations_sample_buffer_sample_buffer33_shift_x_s, i_acl_pop_i4_initerations_pop8_sample_buffer_out_data_out, rightShiftStage0Idx1_uid162_i_next_initerations_sample_buffer_sample_buffer33_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid164_i_next_initerations_sample_buffer_sample_buffer33_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid164_i_next_initerations_sample_buffer_sample_buffer33_shift_x_q <= i_acl_pop_i4_initerations_pop8_sample_buffer_out_data_out;
            WHEN "1" => rightShiftStage0_uid164_i_next_initerations_sample_buffer_sample_buffer33_shift_x_q <= rightShiftStage0Idx1_uid162_i_next_initerations_sample_buffer_sample_buffer33_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid164_i_next_initerations_sample_buffer_sample_buffer33_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_next_initerations_sample_buffer_vt_select_2(BITSELECT,90)@2
    i_next_initerations_sample_buffer_vt_select_2_b <= rightShiftStage0_uid164_i_next_initerations_sample_buffer_sample_buffer33_shift_x_q(2 downto 0);

    -- i_next_initerations_sample_buffer_vt_join(BITJOIN,89)@2
    i_next_initerations_sample_buffer_vt_join_q <= GND_q & i_next_initerations_sample_buffer_vt_select_2_b;

    -- i_unnamed_sample_buffer36_BitSelect_for_a(BITSELECT,169)@2
    i_unnamed_sample_buffer36_BitSelect_for_a_b <= i_next_initerations_sample_buffer_vt_join_q(0 downto 0);

    -- i_unnamed_sample_buffer36_join(BITJOIN,170)@2
    i_unnamed_sample_buffer36_join_q <= GND_q & GND_q & GND_q & i_unnamed_sample_buffer36_BitSelect_for_a_b;

    -- i_unnamed_sample_buffer36_vt_select_0(BITSELECT,101)@2
    i_unnamed_sample_buffer36_vt_select_0_b <= i_unnamed_sample_buffer36_join_q(0 downto 0);

    -- i_unnamed_sample_buffer36_vt_join(BITJOIN,100)@2
    i_unnamed_sample_buffer36_vt_join_q <= i_cleanups_shl_sample_buffer_vt_const_3_q & i_unnamed_sample_buffer36_vt_select_0_b;

    -- i_last_initeration_sample_buffer(LOGICAL,85)@2
    i_last_initeration_sample_buffer_q <= "1" WHEN i_unnamed_sample_buffer36_vt_join_q /= c_i4_0gr_q ELSE "0";

    -- i_acl_push_i1_lastiniteration_sample_buffer(BLACKBOX,62)@2
    -- out out_feedback_out_2@20000000
    -- out out_feedback_valid_out_2@20000000
    thei_acl_push_i1_lastiniteration_sample_buffer : i_acl_push_i1_lastiniteration_sample_buffer38
    PORT MAP (
        in_data_in => i_last_initeration_sample_buffer_q,
        in_feedback_stall_in_2 => i_acl_pipeline_keep_going_sample_buffer_out_initeration_stall_out,
        in_keep_going => redist10_i_acl_pipeline_keep_going_sample_buffer_out_data_out_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist15_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_2 => i_acl_push_i1_lastiniteration_sample_buffer_out_feedback_out_2,
        out_feedback_valid_out_2 => i_acl_push_i1_lastiniteration_sample_buffer_out_feedback_valid_out_2,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going_sample_buffer(BLACKBOX,57)@1
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

    -- redist10_i_acl_pipeline_keep_going_sample_buffer_out_data_out_1(DELAY,238)
    redist10_i_acl_pipeline_keep_going_sample_buffer_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pipeline_keep_going_sample_buffer_out_data_out, xout => redist10_i_acl_pipeline_keep_going_sample_buffer_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist11_i_acl_pipeline_keep_going_sample_buffer_out_data_out_3(DELAY,239)
    redist11_i_acl_pipeline_keep_going_sample_buffer_out_data_out_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist10_i_acl_pipeline_keep_going_sample_buffer_out_data_out_1_q, xout => redist11_i_acl_pipeline_keep_going_sample_buffer_out_data_out_3_q, clk => clock, aclr => resetn );

    -- leftShiftStage0Idx1Rng1_uid152_i_next_cleanups_sample_buffer_sample_buffer65_shift_x(BITSELECT,151)@4
    leftShiftStage0Idx1Rng1_uid152_i_next_cleanups_sample_buffer_sample_buffer65_shift_x_in <= i_acl_pop_i4_cleanups_pop9_sample_buffer_out_data_out(2 downto 0);
    leftShiftStage0Idx1Rng1_uid152_i_next_cleanups_sample_buffer_sample_buffer65_shift_x_b <= leftShiftStage0Idx1Rng1_uid152_i_next_cleanups_sample_buffer_sample_buffer65_shift_x_in(2 downto 0);

    -- leftShiftStage0Idx1_uid153_i_next_cleanups_sample_buffer_sample_buffer65_shift_x(BITJOIN,152)@4
    leftShiftStage0Idx1_uid153_i_next_cleanups_sample_buffer_sample_buffer65_shift_x_q <= leftShiftStage0Idx1Rng1_uid152_i_next_cleanups_sample_buffer_sample_buffer65_shift_x_b & GND_q;

    -- i_or_sample_buffer(LOGICAL,92)@4
    i_or_sample_buffer_q <= i_unnamed_sample_buffer62_q or i_xor_sample_buffer_q;

    -- i_cleanups_shl_sample_buffer_sel_x(BITSELECT,31)@4
    i_cleanups_shl_sample_buffer_sel_x_b <= std_logic_vector(resize(unsigned(i_or_sample_buffer_q(0 downto 0)), 4));

    -- i_cleanups_shl_sample_buffer_vt_select_0(BITSELECT,71)@4
    i_cleanups_shl_sample_buffer_vt_select_0_b <= i_cleanups_shl_sample_buffer_sel_x_b(0 downto 0);

    -- i_cleanups_shl_sample_buffer_vt_join(BITJOIN,70)@4
    i_cleanups_shl_sample_buffer_vt_join_q <= i_cleanups_shl_sample_buffer_vt_const_3_q & i_cleanups_shl_sample_buffer_vt_select_0_b;

    -- i_next_cleanups_sample_buffer_sample_buffer65_shift_narrow_x(BITSELECT,36)@4
    i_next_cleanups_sample_buffer_sample_buffer65_shift_narrow_x_b <= i_cleanups_shl_sample_buffer_vt_join_q(1 downto 0);

    -- leftShiftStageSel0Dto0_uid154_i_next_cleanups_sample_buffer_sample_buffer65_shift_x(BITSELECT,153)@4
    leftShiftStageSel0Dto0_uid154_i_next_cleanups_sample_buffer_sample_buffer65_shift_x_in <= i_next_cleanups_sample_buffer_sample_buffer65_shift_narrow_x_b(0 downto 0);
    leftShiftStageSel0Dto0_uid154_i_next_cleanups_sample_buffer_sample_buffer65_shift_x_b <= leftShiftStageSel0Dto0_uid154_i_next_cleanups_sample_buffer_sample_buffer65_shift_x_in(0 downto 0);

    -- leftShiftStage0_uid155_i_next_cleanups_sample_buffer_sample_buffer65_shift_x(MUX,154)@4
    leftShiftStage0_uid155_i_next_cleanups_sample_buffer_sample_buffer65_shift_x_s <= leftShiftStageSel0Dto0_uid154_i_next_cleanups_sample_buffer_sample_buffer65_shift_x_b;
    leftShiftStage0_uid155_i_next_cleanups_sample_buffer_sample_buffer65_shift_x_combproc: PROCESS (leftShiftStage0_uid155_i_next_cleanups_sample_buffer_sample_buffer65_shift_x_s, i_acl_pop_i4_cleanups_pop9_sample_buffer_out_data_out, leftShiftStage0Idx1_uid153_i_next_cleanups_sample_buffer_sample_buffer65_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid155_i_next_cleanups_sample_buffer_sample_buffer65_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid155_i_next_cleanups_sample_buffer_sample_buffer65_shift_x_q <= i_acl_pop_i4_cleanups_pop9_sample_buffer_out_data_out;
            WHEN "1" => leftShiftStage0_uid155_i_next_cleanups_sample_buffer_sample_buffer65_shift_x_q <= leftShiftStage0Idx1_uid153_i_next_cleanups_sample_buffer_sample_buffer65_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid155_i_next_cleanups_sample_buffer_sample_buffer65_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_push_i4_cleanups_push9_sample_buffer(BLACKBOX,66)@4
    -- out out_feedback_out_9@20000000
    -- out out_feedback_valid_out_9@20000000
    thei_acl_push_i4_cleanups_push9_sample_buffer : i_acl_push_i4_cleanups_push9_sample_buffer66
    PORT MAP (
        in_data_in => leftShiftStage0_uid155_i_next_cleanups_sample_buffer_sample_buffer65_shift_x_q,
        in_feedback_stall_in_9 => i_acl_pop_i4_cleanups_pop9_sample_buffer_out_feedback_stall_out_9,
        in_keep_going => redist11_i_acl_pipeline_keep_going_sample_buffer_out_data_out_3_q,
        in_stall_in => GND_q,
        in_valid_in => redist17_sync_in_aunroll_x_in_i_valid_3_q,
        out_feedback_out_9 => i_acl_push_i4_cleanups_push9_sample_buffer_out_feedback_out_9,
        out_feedback_valid_out_9 => i_acl_push_i4_cleanups_push9_sample_buffer_out_feedback_valid_out_9,
        clock => clock,
        resetn => resetn
    );

    -- redist14_sync_in_aunroll_x_in_c0_eni2_1_3(DELAY,242)
    redist14_sync_in_aunroll_x_in_c0_eni2_1_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist13_sync_in_aunroll_x_in_c0_eni2_1_1_q, xout => redist14_sync_in_aunroll_x_in_c0_eni2_1_3_q, clk => clock, aclr => resetn );

    -- c_i4_7gr(CONSTANT,54)
    c_i4_7gr_q <= "0111";

    -- i_acl_pop_i4_cleanups_pop9_sample_buffer(BLACKBOX,60)@4
    -- out out_feedback_stall_out_9@20000000
    thei_acl_pop_i4_cleanups_pop9_sample_buffer : i_acl_pop_i4_cleanups_pop9_sample_buffer25
    PORT MAP (
        in_data_in => c_i4_7gr_q,
        in_dir => redist14_sync_in_aunroll_x_in_c0_eni2_1_3_q,
        in_feedback_in_9 => i_acl_push_i4_cleanups_push9_sample_buffer_out_feedback_out_9,
        in_feedback_valid_in_9 => i_acl_push_i4_cleanups_push9_sample_buffer_out_feedback_valid_out_9,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist17_sync_in_aunroll_x_in_i_valid_3_q,
        out_data_out => i_acl_pop_i4_cleanups_pop9_sample_buffer_out_data_out,
        out_feedback_stall_out_9 => i_acl_pop_i4_cleanups_pop9_sample_buffer_out_feedback_stall_out_9,
        clock => clock,
        resetn => resetn
    );

    -- i_unnamed_sample_buffer27(LOGICAL,94)@4
    i_unnamed_sample_buffer27_q <= i_acl_pop_i4_cleanups_pop9_sample_buffer_out_data_out and c_i4_1gr_q;

    -- i_unnamed_sample_buffer27_vt_select_0(BITSELECT,97)@4
    i_unnamed_sample_buffer27_vt_select_0_b <= i_unnamed_sample_buffer27_q(0 downto 0);

    -- i_unnamed_sample_buffer27_vt_join(BITJOIN,96)@4
    i_unnamed_sample_buffer27_vt_join_q <= i_cleanups_shl_sample_buffer_vt_const_3_q & i_unnamed_sample_buffer27_vt_select_0_b;

    -- i_first_cleanup_sample_buffer(LOGICAL,77)@4
    i_first_cleanup_sample_buffer_q <= "1" WHEN i_unnamed_sample_buffer27_vt_join_q /= c_i4_0gr_q ELSE "0";

    -- i_xor_sample_buffer(LOGICAL,103)@4
    i_xor_sample_buffer_q <= i_first_cleanup_sample_buffer_q xor VCC_q;

    -- redist6_i_xor_sample_buffer_q_1(DELAY,234)
    redist6_i_xor_sample_buffer_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor_sample_buffer_q, xout => redist6_i_xor_sample_buffer_q_1_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_cmp1_phi_decision2_xor4_sample_buffer(BLACKBOX,75)@5
    thei_ffwd_dst_cmp1_phi_decision2_xor4_sample_buffer : i_ffwd_dst_cmp1_phi_decision2_xor4_sample_buffer49
    PORT MAP (
        in_intel_reserved_ffwd_0_0 => in_intel_reserved_ffwd_0_0,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_4_q,
        out_dest_data_out_0_0 => i_ffwd_dst_cmp1_phi_decision2_xor4_sample_buffer_out_dest_data_out_0_0,
        clock => clock,
        resetn => resetn
    );

    -- i_first_cleanup_xor_or_sample_buffer(LOGICAL,79)@5
    i_first_cleanup_xor_or_sample_buffer_q <= i_ffwd_dst_cmp1_phi_decision2_xor4_sample_buffer_out_dest_data_out_0_0 or redist6_i_xor_sample_buffer_q_1_q;

    -- c_i32_1gr(CONSTANT,48)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- i_inc_sample_buffer(ADD,84)@2
    i_inc_sample_buffer_a <= STD_LOGIC_VECTOR("0" & redist9_i_acl_pop_i32_i_02_pop7_sample_buffer_out_data_out_1_q);
    i_inc_sample_buffer_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_inc_sample_buffer_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc_sample_buffer_a) + UNSIGNED(i_inc_sample_buffer_b));
    i_inc_sample_buffer_q <= i_inc_sample_buffer_o(32 downto 0);

    -- bgTrunc_i_inc_sample_buffer_sel_x(BITSELECT,3)@2
    bgTrunc_i_inc_sample_buffer_sel_x_b <= i_inc_sample_buffer_q(31 downto 0);

    -- i_acl_push_i32_i_02_push7_sample_buffer(BLACKBOX,64)@2
    -- out out_feedback_out_7@20000000
    -- out out_feedback_valid_out_7@20000000
    thei_acl_push_i32_i_02_push7_sample_buffer : i_acl_push_i32_i_02_push7_sample_buffer55
    PORT MAP (
        in_data_in => bgTrunc_i_inc_sample_buffer_sel_x_b,
        in_feedback_stall_in_7 => i_acl_pop_i32_i_02_pop7_sample_buffer_out_feedback_stall_out_7,
        in_keep_going => redist10_i_acl_pipeline_keep_going_sample_buffer_out_data_out_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist15_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_7 => i_acl_push_i32_i_02_push7_sample_buffer_out_feedback_out_7,
        out_feedback_valid_out_7 => i_acl_push_i32_i_02_push7_sample_buffer_out_feedback_valid_out_7,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_0gr(CONSTANT,47)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_acl_pop_i32_i_02_pop7_sample_buffer(BLACKBOX,58)@1
    -- out out_feedback_stall_out_7@20000000
    thei_acl_pop_i32_i_02_pop7_sample_buffer : i_acl_pop_i32_i_02_pop7_sample_buffer44
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => in_c0_eni2_1,
        in_feedback_in_7 => i_acl_push_i32_i_02_push7_sample_buffer_out_feedback_out_7,
        in_feedback_valid_in_7 => i_acl_push_i32_i_02_push7_sample_buffer_out_feedback_valid_out_7,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_i_02_pop7_sample_buffer_out_data_out,
        out_feedback_stall_out_7 => i_acl_pop_i32_i_02_pop7_sample_buffer_out_feedback_stall_out_7,
        clock => clock,
        resetn => resetn
    );

    -- redist9_i_acl_pop_i32_i_02_pop7_sample_buffer_out_data_out_1(DELAY,237)
    redist9_i_acl_pop_i32_i_02_pop7_sample_buffer_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_i_02_pop7_sample_buffer_out_data_out, xout => redist9_i_acl_pop_i32_i_02_pop7_sample_buffer_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_idxprom_sample_buffer_sel_x(BITSELECT,32)@2
    i_idxprom_sample_buffer_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(redist9_i_acl_pop_i32_i_02_pop7_sample_buffer_out_data_out_1_q(31 downto 0)), 64)));

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select(BITSELECT,225)@2
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_b <= i_idxprom_sample_buffer_sel_x_b(8 downto 0);
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_c <= i_idxprom_sample_buffer_sel_x_b(62 downto 54);
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_d <= i_idxprom_sample_buffer_sel_x_b(17 downto 9);
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_e <= i_idxprom_sample_buffer_sel_x_b(63 downto 63);
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_f <= i_idxprom_sample_buffer_sel_x_b(26 downto 18);
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_g <= i_idxprom_sample_buffer_sel_x_b(35 downto 27);
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_h <= i_idxprom_sample_buffer_sel_x_b(44 downto 36);
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_i <= i_idxprom_sample_buffer_sel_x_b(53 downto 45);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_im15_shift0(BITSHIFT,176)@2
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im15_shift0_qint <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_g & "00";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im15_shift0_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_im15_shift0_qint(10 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_29(BITSHIFT,142)@2
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_29_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_sample_buffer_sample_buffer48_mult_x_im15_shift0_q) & "000000";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_29_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_29_qint(17 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_im6_shift0(BITSHIFT,173)@2
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im6_shift0_qint <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_d & "00";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im6_shift0_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_im6_shift0_qint(10 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_28(BITSHIFT,141)@2
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_28_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_sample_buffer_sample_buffer48_mult_x_im6_shift0_q) & "000000000";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_28_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_28_qint(20 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,220)@2
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_29_q & i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_28_q;

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_im18_shift0(BITSHIFT,177)@2
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im18_shift0_qint <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_h & "00";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im18_shift0_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_im18_shift0_qint(10 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_25(BITSHIFT,138)@2
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_25_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_sample_buffer_sample_buffer48_mult_x_im18_shift0_q) & "000000";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_25_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_25_qint(17 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select(BITSELECT,227)@2
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b <= STD_LOGIC_VECTOR(i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_25_q(8 downto 0));
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c <= STD_LOGIC_VECTOR(i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_25_q(17 downto 9));

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_im12_shift0(BITSHIFT,175)@2
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im12_shift0_qint <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_f & "00";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im12_shift0_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_im12_shift0_qint(10 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_24(BITSHIFT,137)@2
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_24_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_sample_buffer_sample_buffer48_mult_x_im12_shift0_q) & "000000";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_24_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_24_qint(17 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_im0_shift0(BITSHIFT,171)@2
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im0_shift0_qint <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_b & "00";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im0_shift0_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_im0_shift0_qint(10 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,213)@2
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b & i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_24_q & GND_q & i_arrayidx_sample_buffer_sample_buffer48_mult_x_im0_shift0_q;

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p1_of_2(ADD,196)@2 + 1
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p1_of_2_a <= STD_LOGIC_VECTOR("0" & i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q);
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p1_of_2_b <= STD_LOGIC_VECTOR("0" & i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q);
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p1_of_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p1_of_2_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p1_of_2_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p1_of_2_a) + UNSIGNED(i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p1_of_2_b));
        END IF;
    END PROCESS;
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p1_of_2_c(0) <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p1_of_2_o(39);
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p1_of_2_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p1_of_2_o(38 downto 0);

    -- i_syncbuf_sample_buffer_sync_buffer_sample_buffer(BLACKBOX,93)@0
    -- in in_i_dependence@3
    -- in in_valid_in@3
    -- out out_buffer_out@3
    -- out out_valid_out@3
    thei_syncbuf_sample_buffer_sync_buffer_sample_buffer : i_syncbuf_sample_buffer_sync_buffer_sample_buffer46
    PORT MAP (
        in_buffer_in => in_sample_buffer,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist16_sync_in_aunroll_x_in_i_valid_2_q,
        out_buffer_out => i_syncbuf_sample_buffer_sync_buffer_sample_buffer_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx_sample_buffer_sample_buffer48_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,226)@3
    i_arrayidx_sample_buffer_sample_buffer48_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b <= STD_LOGIC_VECTOR(i_syncbuf_sample_buffer_sync_buffer_sample_buffer_out_buffer_out(38 downto 0));
    i_arrayidx_sample_buffer_sample_buffer48_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c <= STD_LOGIC_VECTOR(i_syncbuf_sample_buffer_sync_buffer_sample_buffer_out_buffer_out(63 downto 39));

    -- i_arrayidx_sample_buffer_sample_buffer48_add_x_p1_of_2(ADD,187)@3 + 1
    i_arrayidx_sample_buffer_sample_buffer48_add_x_p1_of_2_a <= STD_LOGIC_VECTOR("0" & i_arrayidx_sample_buffer_sample_buffer48_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b);
    i_arrayidx_sample_buffer_sample_buffer48_add_x_p1_of_2_b <= STD_LOGIC_VECTOR("0" & i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p1_of_2_q);
    i_arrayidx_sample_buffer_sample_buffer48_add_x_p1_of_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx_sample_buffer_sample_buffer48_add_x_p1_of_2_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx_sample_buffer_sample_buffer48_add_x_p1_of_2_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_sample_buffer_sample_buffer48_add_x_p1_of_2_a) + UNSIGNED(i_arrayidx_sample_buffer_sample_buffer48_add_x_p1_of_2_b));
        END IF;
    END PROCESS;
    i_arrayidx_sample_buffer_sample_buffer48_add_x_p1_of_2_c(0) <= i_arrayidx_sample_buffer_sample_buffer48_add_x_p1_of_2_o(39);
    i_arrayidx_sample_buffer_sample_buffer48_add_x_p1_of_2_q <= i_arrayidx_sample_buffer_sample_buffer48_add_x_p1_of_2_o(38 downto 0);

    -- redist3_i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_e_1(DELAY,231)
    redist3_i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_e_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_e, xout => redist3_i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_e_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_im9_shift0(BITSHIFT,174)@3
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im9_shift0_qint <= redist3_i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_e_1_q & "00";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im9_shift0_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_im9_shift0_qint(2 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_31(BITSHIFT,144)@3
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_31_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_sample_buffer_sample_buffer48_mult_x_im9_shift0_q) & "000000";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_31_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_31_qint(9 downto 0);

    -- redist4_i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_i_1(DELAY,232)
    redist4_i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_i_1 : dspba_delay
    GENERIC MAP ( width => 9, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_i, xout => redist4_i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_i_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_im21_shift0(BITSHIFT,178)@3
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im21_shift0_qint <= redist4_i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_i_1_q & "00";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im21_shift0_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_im21_shift0_qint(10 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_30(BITSHIFT,143)@3
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_30_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_sample_buffer_sample_buffer48_mult_x_im21_shift0_q) & "000000";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_30_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_30_qint(17 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,224)@3
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q <= GND_q & i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_31_q & i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_30_q;

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_UpperBits_for_a(CONSTANT,191)
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_UpperBits_for_a_q <= "00";

    -- redist2_i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_c_1(DELAY,230)
    redist2_i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 9, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_c, xout => redist2_i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_im3_shift0(BITSHIFT,172)@3
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im3_shift0_qint <= redist2_i_arrayidx_sample_buffer_sample_buffer48_mult_x_bs1_merged_bit_select_c_1_q & "00";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_im3_shift0_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_im3_shift0_qint(10 downto 0);

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_26(BITSHIFT,139)@3
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_26_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_sample_buffer_sample_buffer48_mult_x_im3_shift0_q) & "000000";
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_26_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_26_qint(17 downto 0);

    -- redist0_i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1(DELAY,228)
    redist0_i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 9, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c, xout => redist0_i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,217)@3
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_UpperBits_for_a_q & i_arrayidx_sample_buffer_sample_buffer48_mult_x_align_26_q & redist0_i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_q;

    -- i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p2_of_2(ADD,197)@3 + 1
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p2_of_2_cin <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p1_of_2_c;
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p2_of_2_a <= STD_LOGIC_VECTOR("0" & i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q) & '1';
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p2_of_2_b <= STD_LOGIC_VECTOR("0" & i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q) & i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p2_of_2_cin(0);
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p2_of_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p2_of_2_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p2_of_2_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p2_of_2_a) + UNSIGNED(i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p2_of_2_b));
        END IF;
    END PROCESS;
    i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p2_of_2_q <= i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p2_of_2_o(29 downto 1);

    -- i_arrayidx_sample_buffer_sample_buffer48_add_x_BitSelect_for_b_tessel1_0(BITSELECT,206)@4
    i_arrayidx_sample_buffer_sample_buffer48_add_x_BitSelect_for_b_tessel1_0_b <= STD_LOGIC_VECTOR(i_arrayidx_sample_buffer_sample_buffer48_mult_x_result_add_0_0_p2_of_2_q(24 downto 0));

    -- i_arrayidx_sample_buffer_sample_buffer48_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,208)@4
    i_arrayidx_sample_buffer_sample_buffer48_add_x_BitSelect_for_b_BitJoin_for_c_q <= GND_q & i_arrayidx_sample_buffer_sample_buffer48_add_x_BitSelect_for_b_tessel1_0_b;

    -- redist1_i_arrayidx_sample_buffer_sample_buffer48_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,229)
    redist1_i_arrayidx_sample_buffer_sample_buffer48_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 25, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx_sample_buffer_sample_buffer48_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c, xout => redist1_i_arrayidx_sample_buffer_sample_buffer48_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx_sample_buffer_sample_buffer48_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,203)@4
    i_arrayidx_sample_buffer_sample_buffer48_add_x_BitSelect_for_a_BitJoin_for_c_q <= GND_q & redist1_i_arrayidx_sample_buffer_sample_buffer48_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;

    -- i_arrayidx_sample_buffer_sample_buffer48_add_x_p2_of_2(ADD,188)@4 + 1
    i_arrayidx_sample_buffer_sample_buffer48_add_x_p2_of_2_cin <= i_arrayidx_sample_buffer_sample_buffer48_add_x_p1_of_2_c;
    i_arrayidx_sample_buffer_sample_buffer48_add_x_p2_of_2_a <= STD_LOGIC_VECTOR("0" & i_arrayidx_sample_buffer_sample_buffer48_add_x_BitSelect_for_a_BitJoin_for_c_q) & '1';
    i_arrayidx_sample_buffer_sample_buffer48_add_x_p2_of_2_b <= STD_LOGIC_VECTOR("0" & i_arrayidx_sample_buffer_sample_buffer48_add_x_BitSelect_for_b_BitJoin_for_c_q) & i_arrayidx_sample_buffer_sample_buffer48_add_x_p2_of_2_cin(0);
    i_arrayidx_sample_buffer_sample_buffer48_add_x_p2_of_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx_sample_buffer_sample_buffer48_add_x_p2_of_2_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx_sample_buffer_sample_buffer48_add_x_p2_of_2_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_sample_buffer_sample_buffer48_add_x_p2_of_2_a) + UNSIGNED(i_arrayidx_sample_buffer_sample_buffer48_add_x_p2_of_2_b));
        END IF;
    END PROCESS;
    i_arrayidx_sample_buffer_sample_buffer48_add_x_p2_of_2_q <= i_arrayidx_sample_buffer_sample_buffer48_add_x_p2_of_2_o(26 downto 1);

    -- redist5_i_arrayidx_sample_buffer_sample_buffer48_add_x_p1_of_2_q_1(DELAY,233)
    redist5_i_arrayidx_sample_buffer_sample_buffer48_add_x_p1_of_2_q_1 : dspba_delay
    GENERIC MAP ( width => 39, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx_sample_buffer_sample_buffer48_add_x_p1_of_2_q, xout => redist5_i_arrayidx_sample_buffer_sample_buffer48_add_x_p1_of_2_q_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx_sample_buffer_sample_buffer48_add_x_BitJoin_for_q(BITJOIN,189)@5
    i_arrayidx_sample_buffer_sample_buffer48_add_x_BitJoin_for_q_q <= i_arrayidx_sample_buffer_sample_buffer48_add_x_p2_of_2_q & redist5_i_arrayidx_sample_buffer_sample_buffer48_add_x_p1_of_2_q_1_q;

    -- i_arrayidx_sample_buffer_sample_buffer48_dupName_0_trunc_sel_x(BITSELECT,21)@5
    i_arrayidx_sample_buffer_sample_buffer48_dupName_0_trunc_sel_x_b <= i_arrayidx_sample_buffer_sample_buffer48_add_x_BitJoin_for_q_q(63 downto 0);

    -- i_load_unnamed_sample_buffer5_sample_buffer(BLACKBOX,86)@5
    -- in in_i_stall@20000000
    -- out out_o_readdata@9
    -- out out_o_stall@8
    -- out out_o_valid@9
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
        in_i_valid => redist18_sync_in_aunroll_x_in_i_valid_4_q,
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

    -- dupName_0_ext_sig_sync_out_x(GPOUT,5)
    out_unnamed_sample_buffer5_avm_address <= i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_address;
    out_unnamed_sample_buffer5_avm_enable <= i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_enable;
    out_unnamed_sample_buffer5_avm_read <= i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_read;
    out_unnamed_sample_buffer5_avm_write <= i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_write;
    out_unnamed_sample_buffer5_avm_writedata <= i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_writedata;
    out_unnamed_sample_buffer5_avm_byteenable <= i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_byteenable;
    out_unnamed_sample_buffer5_avm_burstcount <= i_load_unnamed_sample_buffer5_sample_buffer_out_unnamed_sample_buffer5_avm_burstcount;

    -- redist19_sync_in_aunroll_x_in_i_valid_8(DELAY,247)
    redist19_sync_in_aunroll_x_in_i_valid_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist18_sync_in_aunroll_x_in_i_valid_4_q, xout => redist19_sync_in_aunroll_x_in_i_valid_8_q, clk => clock, aclr => resetn );

    -- i_masked_sample_buffer(LOGICAL,87)@4 + 1
    i_masked_sample_buffer_qi <= i_unnamed_sample_buffer62_q and i_first_cleanup_sample_buffer_q;
    i_masked_sample_buffer_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_masked_sample_buffer_qi, xout => i_masked_sample_buffer_q, clk => clock, aclr => resetn );

    -- redist8_i_masked_sample_buffer_q_5(DELAY,236)
    redist8_i_masked_sample_buffer_q_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_masked_sample_buffer_q, xout => redist8_i_masked_sample_buffer_q_5_q, clk => clock, aclr => resetn );

    -- redist7_i_xor_sample_buffer_q_5(DELAY,235)
    redist7_i_xor_sample_buffer_q_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist6_i_xor_sample_buffer_q_1_q, xout => redist7_i_xor_sample_buffer_q_5_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_cmp1_phi_decision2_xor3_sample_buffer(BLACKBOX,74)@9
    thei_ffwd_dst_cmp1_phi_decision2_xor3_sample_buffer : i_ffwd_dst_cmp1_phi_decision2_xor3_sample_buffer53
    PORT MAP (
        in_intel_reserved_ffwd_0_0 => in_intel_reserved_ffwd_0_0,
        in_stall_in => GND_q,
        in_valid_in => redist19_sync_in_aunroll_x_in_i_valid_8_q,
        out_dest_data_out_0_0 => i_ffwd_dst_cmp1_phi_decision2_xor3_sample_buffer_out_dest_data_out_0_0,
        clock => clock,
        resetn => resetn
    );

    -- i_first_cleanup_xor6_or_sample_buffer(LOGICAL,78)@9
    i_first_cleanup_xor6_or_sample_buffer_q <= i_ffwd_dst_cmp1_phi_decision2_xor3_sample_buffer_out_dest_data_out_0_0 or redist7_i_xor_sample_buffer_q_5_q;

    -- redist12_i_acl_pipeline_keep_going_sample_buffer_out_data_out_8(DELAY,240)
    redist12_i_acl_pipeline_keep_going_sample_buffer_out_data_out_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist11_i_acl_pipeline_keep_going_sample_buffer_out_data_out_3_q, xout => redist12_i_acl_pipeline_keep_going_sample_buffer_out_data_out_8_q, clk => clock, aclr => resetn );

    -- sync_out_aunroll_x(GPOUT,42)@9
    out_c0_exi4_0 <= GND_q;
    out_c0_exi4_1 <= redist12_i_acl_pipeline_keep_going_sample_buffer_out_data_out_8_q;
    out_c0_exi4_2 <= i_load_unnamed_sample_buffer5_sample_buffer_out_o_readdata;
    out_c0_exi4_3 <= i_first_cleanup_xor6_or_sample_buffer_q;
    out_c0_exi4_4 <= redist8_i_masked_sample_buffer_q_5_q;
    out_o_valid <= redist19_sync_in_aunroll_x_in_i_valid_8_q;

    -- ext_sig_sync_out(GPOUT,56)
    out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_valid_out <= i_acl_pipeline_keep_going_sample_buffer_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_stall_out <= i_acl_pipeline_keep_going_sample_buffer_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,109)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going_sample_buffer_out_pipeline_valid_out;

END normal;
