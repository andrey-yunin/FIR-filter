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

-- VHDL created from i_sfc_logic_c1_wt_entry_result_buffer_c1_enter_result_buffer14
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

entity i_sfc_logic_c1_wt_entry_result_buffer_c1_enter_result_buffer14 is
    port (
        in_c1_eni3_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_eni3_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_eni3_2 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_eni3_3 : in std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_result_buffer : in std_logic_vector(63 downto 0);  -- ufix64
        out_c1_exi1_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exi1_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memdep_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c1_wt_entry_result_buffer_c1_enter_result_buffer14;

architecture normal of i_sfc_logic_c1_wt_entry_result_buffer_c1_enter_result_buffer14 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pop_i32_count_result_buffer_4ha_addr_0_pop3_result_buffer58 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_count_result_buffer_4ha_addr_0_push3_result_buffer60 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component floatComponent_i_sfc_logic_c1_wt_entry_result_buffer_c1_enter_result_buffer14_caA0Z54c2463b0c2463a0455u is
        port (
            in_0 : in std_logic_vector(63 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component thirtysix_six_comp is
        port (
            data : in std_logic_vector(31 downto 0);
            sum : out std_logic_vector(31 downto 0)
        );
    end component;


    component i_store_memdep_result_buffer65 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(31 downto 0);  -- Floating Point
            in_memdep_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memdep_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memdep_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_writeack : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_result_buffer_sync_buffer_result_buffer62 is
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
    signal bgTrunc_i_add_i_i_result_buffer_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add_i_result_buffer_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_inc_result_buffer_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub10_i_result_buffer_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub19_i_result_buffer_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub23_i_result_buffer_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub27_i_result_buffer_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub30_i_result_buffer_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub5_i_result_buffer_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_0_c_i32_1gr_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_0_c_i64_0gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_7_i_result_buffer_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and286_i_result_buffer_sel_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_and313_tr_i_result_buffer_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_multconst_x_q : STD_LOGIC_VECTOR (60 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_cond1_tr_i_result_buffer_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv25_i_result_buffer_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv28_i_result_buffer_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv353_i_result_buffer_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv_i_i_result_buffer_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom_result_buffer_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_vec_2_i_join_x_q : STD_LOGIC_VECTOR (191 downto 0);
    signal i_or44_compressed_i_result_buffer_result_buffer36_or44_shuffle_i_m_join_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom14_i_result_buffer_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom17_i_result_buffer_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom31_i_result_buffer_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom33_i_result_buffer_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom_i_result_buffer_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl15_i_result_buffer_result_buffer26_shift_narrow_x_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_shl18_i_result_buffer_result_buffer27_shift_narrow_x_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_shl24_i_result_buffer_result_buffer28_shift_narrow_x_b : STD_LOGIC_VECTOR (4 downto 0);
    signal i_shl26_i_result_buffer_result_buffer29_shift_narrow_x_b : STD_LOGIC_VECTOR (4 downto 0);
    signal i_shl_i_result_buffer_result_buffer25_shift_narrow_x_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_shr34_i_result_buffer_result_buffer31_shift_narrow_x_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_shr_i_result_buffer_result_buffer30_shift_narrow_x_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_tr_i_result_buffer_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_result_buffer24_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_result_buffer49_sel_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal c_i16_2047_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_10_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1054_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_12_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_15_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_21_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_32_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_3gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_64_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_65535_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_8163_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_85_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i64_1gr_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i64_4503599627370495_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i64_9218868437227405312_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i64_9223372036854775808_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i8_0gr_q : STD_LOGIC_VECTOR (7 downto 0);
    signal c_i8_1gr_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_10_i_result_buffer_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_10_i_result_buffer_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_10_i_result_buffer_vt_const_63_q : STD_LOGIC_VECTOR (62 downto 0);
    signal i_acl_10_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_10_i_result_buffer_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_11_i_result_buffer_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_11_i_result_buffer_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_11_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_11_i_result_buffer_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_22_i_result_buffer_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_22_i_result_buffer_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_22_i_result_buffer_vt_const_31_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_acl_22_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_22_i_result_buffer_vt_select_12_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_acl_46_i_result_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_47_i_result_buffer_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_47_i_result_buffer_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_47_i_result_buffer_vt_const_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal i_acl_47_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_47_i_result_buffer_vt_select_55_b : STD_LOGIC_VECTOR (53 downto 0);
    signal i_acl_5_i_result_buffer_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_5_i_result_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_6_i_result_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_7_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_7_i_result_buffer_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_8_i_result_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_9_i_result_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_count_result_buffer_4ha_addr_0_pop3_result_buffer_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_count_result_buffer_4ha_addr_0_pop3_result_buffer_out_feedback_stall_out_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_count_result_buffer_4ha_addr_0_push3_result_buffer_out_feedback_out_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_count_result_buffer_4ha_addr_0_push3_result_buffer_out_feedback_valid_out_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add_i_i_result_buffer_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_i_i_result_buffer_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_i_i_result_buffer_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_i_i_result_buffer_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_i_i_result_buffer_vt_const_31_q : STD_LOGIC_VECTOR (24 downto 0);
    signal i_add_i_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_add_i_i_result_buffer_vt_select_6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal i_add_i_result_buffer_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_i_result_buffer_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_i_result_buffer_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_i_result_buffer_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_and12_i_result_buffer_vt_const_3_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_and12_i_result_buffer_vt_const_31_q : STD_LOGIC_VECTOR (25 downto 0);
    signal i_and12_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and12_i_result_buffer_vt_select_5_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_and13_i_result_buffer_vt_const_31_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_and13_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and13_i_result_buffer_vt_select_3_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_and16_i_result_buffer_vt_const_31_q : STD_LOGIC_VECTOR (29 downto 0);
    signal i_and16_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and16_i_result_buffer_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_and1_i_result_buffer_vt_const_51_q : STD_LOGIC_VECTOR (51 downto 0);
    signal i_and1_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and1_i_result_buffer_vt_select_63_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_and20_i_result_buffer_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and20_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and20_i_result_buffer_vt_select_3_b : STD_LOGIC_VECTOR (3 downto 0);
    signal i_and253_i_result_buffer_vt_const_11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_and253_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and253_i_result_buffer_vt_select_12_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and265_i_result_buffer_vt_const_31_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_and265_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and265_i_result_buffer_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_and274_i_lobit_result_buffer_vt_const_31_q : STD_LOGIC_VECTOR (30 downto 0);
    signal i_and274_i_lobit_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and274_i_lobit_result_buffer_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and274_i_result_buffer_vt_const_10_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_and274_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and274_i_result_buffer_vt_select_11_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and283_i_result_buffer_vt_const_63_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_and283_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and283_i_result_buffer_vt_select_53_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_and2868_i_result_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and286_i_result_buffer_vt_const_7_q : STD_LOGIC_VECTOR (6 downto 0);
    signal i_and286_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_and286_i_result_buffer_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and29_i_result_buffer_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_and29_i_result_buffer_vt_const_15_q : STD_LOGIC_VECTOR (4 downto 0);
    signal i_and29_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_and29_i_result_buffer_vt_select_10_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_and2_i24_result_buffer_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and2_i24_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and2_i24_result_buffer_vt_select_51_b : STD_LOGIC_VECTOR (51 downto 0);
    signal i_and2_or7_i_result_buffer_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and2_or7_i_result_buffer_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and2_or7_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and2_or7_i_result_buffer_vt_select_52_b : STD_LOGIC_VECTOR (52 downto 0);
    signal i_and2_or7_op_i_result_buffer_vt_const_2_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_and2_or7_op_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and2_or7_op_i_result_buffer_vt_select_55_b : STD_LOGIC_VECTOR (52 downto 0);
    signal i_and308_i_result_buffer_result_buffer52_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and308_i_result_buffer_result_buffer52_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and308_i_result_buffer_result_buffer52_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and308_i_result_buffer_result_buffer52_vt_select_55_b : STD_LOGIC_VECTOR (52 downto 0);
    signal i_and308_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and308_i_result_buffer_vt_select_55_b : STD_LOGIC_VECTOR (52 downto 0);
    signal i_and30_i_result_buffer_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and30_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and30_i_result_buffer_vt_select_3_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_and313_tr_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and313_tr_i_result_buffer_vt_select_12_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_and31_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and31_i_result_buffer_vt_select_12_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_and32_i_result_buffer_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and32_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and32_i_result_buffer_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_and36_i_result_buffer_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and36_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and36_i_result_buffer_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and3_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and3_i_result_buffer_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_and4_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and4_i_result_buffer_vt_select_51_b : STD_LOGIC_VECTOR (51 downto 0);
    signal i_and5_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and5_i_result_buffer_vt_select_11_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and60_i_result_buffer_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and60_i_result_buffer_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and60_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and60_i_result_buffer_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_cmp271_i_result_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp284_i_result_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp2_i_result_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp35_i_result_buffer_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp35_i_result_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp37_i_result_buffer_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp37_i_result_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp38_i_result_buffer_a : STD_LOGIC_VECTOR (17 downto 0);
    signal i_cmp38_i_result_buffer_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_cmp38_i_result_buffer_o : STD_LOGIC_VECTOR (17 downto 0);
    signal i_cmp38_i_result_buffer_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp5_i_result_buffer_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp5_i_result_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp9_i_result_buffer_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp9_i_result_buffer_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp9_i_result_buffer_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp9_i_result_buffer_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_conv22_i_result_buffer_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv22_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv22_i_result_buffer_vt_select_10_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_conv353_i_op_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv353_i_op_result_buffer_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_conv353_i_result_buffer_vt_const_63_q : STD_LOGIC_VECTOR (50 downto 0);
    signal i_conv353_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv353_i_result_buffer_vt_select_12_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_conv50_i_result_buffer_vt_const_54_q : STD_LOGIC_VECTOR (54 downto 0);
    signal i_conv50_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv50_i_result_buffer_vt_select_55_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_conv_i_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv_i_i_result_buffer_vt_select_31_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_result_buffer_vt_const_31_q : STD_LOGIC_VECTOR (20 downto 0);
    signal i_conv_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_result_buffer_vt_select_10_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_conv_result_buffer_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_exponent_0_i_result_buffer_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exponent_0_i_result_buffer_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_exponent_0_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_exponent_0_i_result_buffer_vt_select_62_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_i_result_buffer_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_i_result_buffer_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_inc_result_buffer_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_result_buffer_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_result_buffer_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_result_buffer_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_llvm_ctpop_i32_unnamed_result_buffer3_result_buffer_data : STD_LOGIC_VECTOR (31 downto 0);
    signal i_llvm_ctpop_i32_unnamed_result_buffer3_result_buffer_sum : STD_LOGIC_VECTOR (31 downto 0);
    signal i_llvm_ctpop_i32_unnamed_result_buffer3_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_llvm_ctpop_i32_unnamed_result_buffer3_result_buffer_vt_select_5_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_masked_i_result_buffer_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_masked_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_masked_i_result_buffer_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_neg22_i_i_result_buffer_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_not_cmp9_i_result_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_op_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_op_i_result_buffer_vt_select_62_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_or13_i_i_result_buffer_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or15_i_i_result_buffer_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or17_i_i_result_buffer_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or19_i_i_result_buffer_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or21_i_i_result_buffer_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or352_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or352_i_result_buffer_vt_select_12_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_or44_compressed_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_or44_compressed_i_result_buffer_vt_select_62_b : STD_LOGIC_VECTOR (62 downto 0);
    signal i_or6_i_result_buffer_qi : STD_LOGIC_VECTOR (63 downto 0);
    signal i_or6_i_result_buffer_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_or7_i_result_buffer_vt_const_63_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_or7_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_or7_i_result_buffer_vt_select_51_b : STD_LOGIC_VECTOR (51 downto 0);
    signal i_or_cond_i_result_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or_cond_not_i_result_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or_i_result_buffer_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_or_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_resulting_exp_2_i_result_buffer_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_resulting_exp_2_i_result_buffer_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_resulting_exp_2_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_resulting_exp_2_i_result_buffer_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_sh_prom14_i_result_buffer_vt_const_63_q : STD_LOGIC_VECTOR (59 downto 0);
    signal i_sh_prom14_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom14_i_result_buffer_vt_select_3_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_sh_prom17_i_result_buffer_vt_const_63_q : STD_LOGIC_VECTOR (61 downto 0);
    signal i_sh_prom17_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom17_i_result_buffer_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_sh_prom31_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom31_i_result_buffer_vt_select_3_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_sh_prom33_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom33_i_result_buffer_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_sh_prom_i_result_buffer_vt_const_63_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_sh_prom_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom_i_result_buffer_vt_select_5_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_shl2_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl2_i_result_buffer_vt_select_62_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_shl42_i_result_buffer_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_shl42_i_result_buffer_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl42_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl42_i_result_buffer_vt_select_62_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_shl_i12_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i12_result_buffer_vt_select_63_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_shl_i1_result_buffer_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i1_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i1_result_buffer_vt_select_63_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_shl_i22_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl_i22_result_buffer_vt_select_12_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_shl_i28_result_buffer_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_shl_i28_result_buffer_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i28_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i28_result_buffer_vt_select_55_b : STD_LOGIC_VECTOR (52 downto 0);
    signal i_shr12_i_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr12_i_i_result_buffer_vt_select_30_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_shr14_i_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr14_i_i_result_buffer_vt_select_29_b : STD_LOGIC_VECTOR (29 downto 0);
    signal i_shr16_i_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr16_i_i_result_buffer_vt_select_27_b : STD_LOGIC_VECTOR (27 downto 0);
    signal i_shr18_i_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr18_i_i_result_buffer_vt_select_23_b : STD_LOGIC_VECTOR (23 downto 0);
    signal i_shr20_i_i_result_buffer_vt_const_31_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shr20_i_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr20_i_i_result_buffer_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shr266_i_result_buffer_vt_const_63_q : STD_LOGIC_VECTOR (8 downto 0);
    signal i_shr266_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shr266_i_result_buffer_vt_select_54_b : STD_LOGIC_VECTOR (52 downto 0);
    signal i_shr3_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shr3_i_result_buffer_vt_select_52_b : STD_LOGIC_VECTOR (52 downto 0);
    signal i_shr4_i_result_buffer_vt_const_63_q : STD_LOGIC_VECTOR (52 downto 0);
    signal i_shr4_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shr4_i_result_buffer_vt_select_10_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_store_memdep_result_buffer_out_memdep_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_result_buffer_out_memdep_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_result_buffer_out_memdep_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_store_memdep_result_buffer_out_memdep_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_result_buffer_out_memdep_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_result_buffer_out_memdep_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_result_buffer_out_memdep_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_result_buffer_out_o_writeack : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sub10_i_result_buffer_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub10_i_result_buffer_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub10_i_result_buffer_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub10_i_result_buffer_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub10_i_result_buffer_vt_const_31_q : STD_LOGIC_VECTOR (23 downto 0);
    signal i_sub10_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sub10_i_result_buffer_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_sub19_i_result_buffer_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub19_i_result_buffer_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub19_i_result_buffer_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub19_i_result_buffer_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub23_i_result_buffer_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub23_i_result_buffer_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub23_i_result_buffer_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub23_i_result_buffer_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub27_i_result_buffer_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub27_i_result_buffer_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub27_i_result_buffer_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub27_i_result_buffer_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub30_i_result_buffer_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub30_i_result_buffer_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub30_i_result_buffer_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub30_i_result_buffer_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub30_i_result_buffer_vt_const_31_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_sub30_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sub30_i_result_buffer_vt_select_13_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_sub5_i_result_buffer_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub5_i_result_buffer_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub5_i_result_buffer_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub5_i_result_buffer_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub5_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sub5_i_result_buffer_vt_select_10_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_syncbuf_result_buffer_sync_buffer_result_buffer_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_tobool254_i_result_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tobool275_i_result_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tobool297_i_result_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tobool52_i_result_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tobool_i2_result_buffer_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tr_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_tr_i_result_buffer_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_unnamed_result_buffer24_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_result_buffer24_vt_select_10_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_unnamed_result_buffer40_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_result_buffer40_vt_select_12_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_unnamed_result_buffer48_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_result_buffer48_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_result_buffer48_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_result_buffer49_vt_join_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_result_buffer49_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_result_buffer50_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_result_buffer50_vt_join_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_result_buffer50_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_x_mantissa_mask_i_i_result_buffer_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_x_mantissa_mask_i_i_result_buffer_vt_select_54_b : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage0Idx1Rng32_uid765_i_and1_i_result_buffer_result_buffer55_shift_x_in : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng32_uid765_i_and1_i_result_buffer_result_buffer55_shift_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1_uid766_i_and1_i_result_buffer_result_buffer55_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0_uid768_i_and1_i_result_buffer_result_buffer55_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid768_i_and1_i_result_buffer_result_buffer55_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1Idx1Rng16_uid770_i_and1_i_result_buffer_result_buffer55_shift_x_in : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx1Rng16_uid770_i_and1_i_result_buffer_result_buffer55_shift_x_b : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx1_uid771_i_and1_i_result_buffer_result_buffer55_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1_uid773_i_and1_i_result_buffer_result_buffer55_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid773_i_and1_i_result_buffer_result_buffer55_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage2Idx1Rng4_uid775_i_and1_i_result_buffer_result_buffer55_shift_x_in : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage2Idx1Rng4_uid775_i_and1_i_result_buffer_result_buffer55_shift_x_b : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage2Idx1_uid776_i_and1_i_result_buffer_result_buffer55_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage2_uid778_i_and1_i_result_buffer_result_buffer55_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid778_i_and1_i_result_buffer_result_buffer55_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx1Rng8_uid783_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage0Idx1_uid785_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid787_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid787_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng2_uid788_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage1Idx1_uid790_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid792_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid792_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2Idx1Rng1_uid793_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage2Idx1_uid795_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid797_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid797_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng2_uid803_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_in : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage0Idx1Rng2_uid803_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_b : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage0Idx1_uid804_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0_uid806_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid806_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1Idx1Rng1_uid808_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_in : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage1Idx1Rng1_uid808_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_b : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage1Idx1_uid809_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1_uid811_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid811_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx1Rng32_uid816_i_and3_i_result_buffer_result_buffer37_shift_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1_uid818_i_and3_i_result_buffer_result_buffer37_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0_uid820_i_and3_i_result_buffer_result_buffer37_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid820_i_and3_i_result_buffer_result_buffer37_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage1Idx1Rng16_uid821_i_and3_i_result_buffer_result_buffer37_shift_x_b : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage1Idx1_uid823_i_and3_i_result_buffer_result_buffer37_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage1_uid825_i_and3_i_result_buffer_result_buffer37_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid825_i_and3_i_result_buffer_result_buffer37_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage2Idx1Rng4_uid826_i_and3_i_result_buffer_result_buffer37_shift_x_b : STD_LOGIC_VECTOR (59 downto 0);
    signal rightShiftStage2Idx1_uid828_i_and3_i_result_buffer_result_buffer37_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage2_uid830_i_and3_i_result_buffer_result_buffer37_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid830_i_and3_i_result_buffer_result_buffer37_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_align_24_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_align_24_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_align_25_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_align_25_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_align_26_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_align_26_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_join_27_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_align_28_q : STD_LOGIC_VECTOR (20 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_align_28_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_align_29_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_align_29_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_align_30_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_align_30_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_align_31_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_align_31_qint : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_join_32_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (67 downto 0);
    signal leftShiftStage0Idx1Rng32_uid870_i_op_i_result_buffer_result_buffer34_shift_x_in : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng32_uid870_i_op_i_result_buffer_result_buffer34_shift_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1_uid871_i_op_i_result_buffer_result_buffer34_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0_uid873_i_op_i_result_buffer_result_buffer34_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid873_i_op_i_result_buffer_result_buffer34_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1Idx1Rng16_uid875_i_op_i_result_buffer_result_buffer34_shift_x_in : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx1Rng16_uid875_i_op_i_result_buffer_result_buffer34_shift_x_b : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx1_uid876_i_op_i_result_buffer_result_buffer34_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1_uid878_i_op_i_result_buffer_result_buffer34_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid878_i_op_i_result_buffer_result_buffer34_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage2Idx1Rng4_uid880_i_op_i_result_buffer_result_buffer34_shift_x_in : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage2Idx1Rng4_uid880_i_op_i_result_buffer_result_buffer34_shift_x_b : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage2Idx1_uid881_i_op_i_result_buffer_result_buffer34_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage2_uid883_i_op_i_result_buffer_result_buffer34_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid883_i_op_i_result_buffer_result_buffer34_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx1Rng4_uid889_i_shl15_i_result_buffer_result_buffer26_shift_x_in : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage0Idx1Rng4_uid889_i_shl15_i_result_buffer_result_buffer26_shift_x_b : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage0Idx1_uid890_i_shl15_i_result_buffer_result_buffer26_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx2Rng8_uid892_i_shl15_i_result_buffer_result_buffer26_shift_x_in : STD_LOGIC_VECTOR (55 downto 0);
    signal leftShiftStage0Idx2Rng8_uid892_i_shl15_i_result_buffer_result_buffer26_shift_x_b : STD_LOGIC_VECTOR (55 downto 0);
    signal leftShiftStage0Idx2_uid893_i_shl15_i_result_buffer_result_buffer26_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx3Rng12_uid895_i_shl15_i_result_buffer_result_buffer26_shift_x_in : STD_LOGIC_VECTOR (51 downto 0);
    signal leftShiftStage0Idx3Rng12_uid895_i_shl15_i_result_buffer_result_buffer26_shift_x_b : STD_LOGIC_VECTOR (51 downto 0);
    signal leftShiftStage0Idx3_uid896_i_shl15_i_result_buffer_result_buffer26_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStageSel3Dto2_uid897_i_shl15_i_result_buffer_result_buffer26_shift_x_in : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStageSel3Dto2_uid897_i_shl15_i_result_buffer_result_buffer26_shift_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid898_i_shl15_i_result_buffer_result_buffer26_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid898_i_shl15_i_result_buffer_result_buffer26_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx1Rng1_uid904_i_shl18_i_result_buffer_result_buffer27_shift_x_in : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage0Idx1Rng1_uid904_i_shl18_i_result_buffer_result_buffer27_shift_x_b : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage0Idx1_uid905_i_shl18_i_result_buffer_result_buffer27_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx2Rng2_uid907_i_shl18_i_result_buffer_result_buffer27_shift_x_in : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage0Idx2Rng2_uid907_i_shl18_i_result_buffer_result_buffer27_shift_x_b : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage0Idx2_uid908_i_shl18_i_result_buffer_result_buffer27_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx3Rng3_uid910_i_shl18_i_result_buffer_result_buffer27_shift_x_in : STD_LOGIC_VECTOR (60 downto 0);
    signal leftShiftStage0Idx3Rng3_uid910_i_shl18_i_result_buffer_result_buffer27_shift_x_b : STD_LOGIC_VECTOR (60 downto 0);
    signal leftShiftStage0Idx3_uid911_i_shl18_i_result_buffer_result_buffer27_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStageSel1Dto0_uid912_i_shl18_i_result_buffer_result_buffer27_shift_x_in : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel1Dto0_uid912_i_shl18_i_result_buffer_result_buffer27_shift_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid913_i_shl18_i_result_buffer_result_buffer27_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid913_i_shl18_i_result_buffer_result_buffer27_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx1Rng4_uid919_i_shl24_i_result_buffer_result_buffer28_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1Rng4_uid919_i_shl24_i_result_buffer_result_buffer28_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1_uid920_i_shl24_i_result_buffer_result_buffer28_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx2Rng8_uid922_i_shl24_i_result_buffer_result_buffer28_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx2Rng8_uid922_i_shl24_i_result_buffer_result_buffer28_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx2_uid923_i_shl24_i_result_buffer_result_buffer28_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx3Rng12_uid925_i_shl24_i_result_buffer_result_buffer28_shift_x_in : STD_LOGIC_VECTOR (19 downto 0);
    signal leftShiftStage0Idx3Rng12_uid925_i_shl24_i_result_buffer_result_buffer28_shift_x_b : STD_LOGIC_VECTOR (19 downto 0);
    signal leftShiftStage0Idx3_uid926_i_shl24_i_result_buffer_result_buffer28_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx4Rng16_uid928_i_shl24_i_result_buffer_result_buffer28_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx4Rng16_uid928_i_shl24_i_result_buffer_result_buffer28_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx4_uid929_i_shl24_i_result_buffer_result_buffer28_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx5Rng20_uid931_i_shl24_i_result_buffer_result_buffer28_shift_x_in : STD_LOGIC_VECTOR (11 downto 0);
    signal leftShiftStage0Idx5Rng20_uid931_i_shl24_i_result_buffer_result_buffer28_shift_x_b : STD_LOGIC_VECTOR (11 downto 0);
    signal leftShiftStage0Idx5_uid932_i_shl24_i_result_buffer_result_buffer28_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx6Rng24_uid934_i_shl24_i_result_buffer_result_buffer28_shift_x_in : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage0Idx6Rng24_uid934_i_shl24_i_result_buffer_result_buffer28_shift_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage0Idx6_uid935_i_shl24_i_result_buffer_result_buffer28_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx7Rng28_uid937_i_shl24_i_result_buffer_result_buffer28_shift_x_in : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStage0Idx7Rng28_uid937_i_shl24_i_result_buffer_result_buffer28_shift_x_b : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStage0Idx7_uid938_i_shl24_i_result_buffer_result_buffer28_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid940_i_shl24_i_result_buffer_result_buffer28_shift_x_s : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0_uid940_i_shl24_i_result_buffer_result_buffer28_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng1_uid942_i_shl24_i_result_buffer_result_buffer28_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1Rng1_uid942_i_shl24_i_result_buffer_result_buffer28_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1_uid943_i_shl24_i_result_buffer_result_buffer28_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx2Rng2_uid945_i_shl24_i_result_buffer_result_buffer28_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx2Rng2_uid945_i_shl24_i_result_buffer_result_buffer28_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx2_uid946_i_shl24_i_result_buffer_result_buffer28_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx3Rng3_uid948_i_shl24_i_result_buffer_result_buffer28_shift_x_in : STD_LOGIC_VECTOR (28 downto 0);
    signal leftShiftStage1Idx3Rng3_uid948_i_shl24_i_result_buffer_result_buffer28_shift_x_b : STD_LOGIC_VECTOR (28 downto 0);
    signal leftShiftStage1Idx3_uid949_i_shl24_i_result_buffer_result_buffer28_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid951_i_shl24_i_result_buffer_result_buffer28_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid951_i_shl24_i_result_buffer_result_buffer28_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng2_uid957_i_shl26_i_result_buffer_result_buffer29_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx1Rng2_uid957_i_shl26_i_result_buffer_result_buffer29_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx1_uid958_i_shl26_i_result_buffer_result_buffer29_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx3Pad6_uid962_i_shl26_i_result_buffer_result_buffer29_shift_x_q : STD_LOGIC_VECTOR (5 downto 0);
    signal leftShiftStage0Idx3Rng6_uid963_i_shl26_i_result_buffer_result_buffer29_shift_x_in : STD_LOGIC_VECTOR (25 downto 0);
    signal leftShiftStage0Idx3Rng6_uid963_i_shl26_i_result_buffer_result_buffer29_shift_x_b : STD_LOGIC_VECTOR (25 downto 0);
    signal leftShiftStage0Idx3_uid964_i_shl26_i_result_buffer_result_buffer29_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx5Rng10_uid969_i_shl26_i_result_buffer_result_buffer29_shift_x_in : STD_LOGIC_VECTOR (21 downto 0);
    signal leftShiftStage0Idx5Rng10_uid969_i_shl26_i_result_buffer_result_buffer29_shift_x_b : STD_LOGIC_VECTOR (21 downto 0);
    signal leftShiftStage0Idx5_uid970_i_shl26_i_result_buffer_result_buffer29_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx7Pad14_uid974_i_shl26_i_result_buffer_result_buffer29_shift_x_q : STD_LOGIC_VECTOR (13 downto 0);
    signal leftShiftStage0Idx7Rng14_uid975_i_shl26_i_result_buffer_result_buffer29_shift_x_in : STD_LOGIC_VECTOR (17 downto 0);
    signal leftShiftStage0Idx7Rng14_uid975_i_shl26_i_result_buffer_result_buffer29_shift_x_b : STD_LOGIC_VECTOR (17 downto 0);
    signal leftShiftStage0Idx7_uid976_i_shl26_i_result_buffer_result_buffer29_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid978_i_shl26_i_result_buffer_result_buffer29_shift_x_s : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0_uid978_i_shl26_i_result_buffer_result_buffer29_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng1_uid980_i_shl26_i_result_buffer_result_buffer29_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1Rng1_uid980_i_shl26_i_result_buffer_result_buffer29_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1_uid981_i_shl26_i_result_buffer_result_buffer29_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid983_i_shl26_i_result_buffer_result_buffer29_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid983_i_shl26_i_result_buffer_result_buffer29_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng32_uid989_i_shl_i12_result_buffer_result_buffer54_shift_x_in : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng32_uid989_i_shl_i12_result_buffer_result_buffer54_shift_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1_uid990_i_shl_i12_result_buffer_result_buffer54_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0_uid992_i_shl_i12_result_buffer_result_buffer54_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid992_i_shl_i12_result_buffer_result_buffer54_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1Idx1Rng16_uid994_i_shl_i12_result_buffer_result_buffer54_shift_x_in : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx1Rng16_uid994_i_shl_i12_result_buffer_result_buffer54_shift_x_b : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx1_uid995_i_shl_i12_result_buffer_result_buffer54_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1_uid997_i_shl_i12_result_buffer_result_buffer54_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid997_i_shl_i12_result_buffer_result_buffer54_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage2Idx1Rng2_uid999_i_shl_i12_result_buffer_result_buffer54_shift_x_in : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage2Idx1Rng2_uid999_i_shl_i12_result_buffer_result_buffer54_shift_x_b : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage2Idx1_uid1000_i_shl_i12_result_buffer_result_buffer54_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage2_uid1002_i_shl_i12_result_buffer_result_buffer54_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1002_i_shl_i12_result_buffer_result_buffer54_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage3Idx1Rng1_uid1004_i_shl_i12_result_buffer_result_buffer54_shift_x_in : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage3Idx1Rng1_uid1004_i_shl_i12_result_buffer_result_buffer54_shift_x_b : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage3Idx1_uid1005_i_shl_i12_result_buffer_result_buffer54_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage3_uid1007_i_shl_i12_result_buffer_result_buffer54_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid1007_i_shl_i12_result_buffer_result_buffer54_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1013_i_shl_i_result_buffer_result_buffer25_shift_x_in : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1013_i_shl_i_result_buffer_result_buffer25_shift_x_b : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage0Idx1_uid1014_i_shl_i_result_buffer_result_buffer25_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx2Rng32_uid1016_i_shl_i_result_buffer_result_buffer25_shift_x_in : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx2Rng32_uid1016_i_shl_i_result_buffer_result_buffer25_shift_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx2_uid1017_i_shl_i_result_buffer_result_buffer25_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx3Pad48_uid1018_i_shl_i_result_buffer_result_buffer25_shift_x_q : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage0Idx3Rng48_uid1019_i_shl_i_result_buffer_result_buffer25_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx3Rng48_uid1019_i_shl_i_result_buffer_result_buffer25_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx3_uid1020_i_shl_i_result_buffer_result_buffer25_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStageSel5Dto4_uid1021_i_shl_i_result_buffer_result_buffer25_shift_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid1022_i_shl_i_result_buffer_result_buffer25_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid1022_i_shl_i_result_buffer_result_buffer25_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx1Rng1_uid1027_i_shr12_i_i_result_buffer_result_buffer18_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage0Idx1_uid1029_i_shr12_i_i_result_buffer_result_buffer18_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1031_i_shr12_i_i_result_buffer_result_buffer18_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1031_i_shr12_i_i_result_buffer_result_buffer18_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng2_uid1036_i_shr14_i_i_result_buffer_result_buffer19_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage0Idx1_uid1038_i_shr14_i_i_result_buffer_result_buffer19_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1040_i_shr14_i_i_result_buffer_result_buffer19_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1040_i_shr14_i_i_result_buffer_result_buffer19_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng4_uid1045_i_shr16_i_i_result_buffer_result_buffer20_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage0Idx1_uid1047_i_shr16_i_i_result_buffer_result_buffer20_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1049_i_shr16_i_i_result_buffer_result_buffer20_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1049_i_shr16_i_i_result_buffer_result_buffer20_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng8_uid1054_i_shr18_i_i_result_buffer_result_buffer21_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage0Idx1_uid1056_i_shr18_i_i_result_buffer_result_buffer21_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1058_i_shr18_i_i_result_buffer_result_buffer21_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1058_i_shr18_i_i_result_buffer_result_buffer21_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1063_i_shr20_i_i_result_buffer_result_buffer22_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1065_i_shr20_i_i_result_buffer_result_buffer22_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1067_i_shr20_i_i_result_buffer_result_buffer22_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1067_i_shr20_i_i_result_buffer_result_buffer22_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng1_uid1072_i_shr266_i_result_buffer_result_buffer43_shift_x_b : STD_LOGIC_VECTOR (62 downto 0);
    signal rightShiftStage0Idx1_uid1074_i_shr266_i_result_buffer_result_buffer43_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0_uid1076_i_shr266_i_result_buffer_result_buffer43_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1076_i_shr266_i_result_buffer_result_buffer43_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx1Rng1_uid1081_i_shr34_i_result_buffer_result_buffer31_shift_x_b : STD_LOGIC_VECTOR (62 downto 0);
    signal rightShiftStage0Idx1_uid1083_i_shr34_i_result_buffer_result_buffer31_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx2Rng2_uid1084_i_shr34_i_result_buffer_result_buffer31_shift_x_b : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage0Idx2_uid1086_i_shr34_i_result_buffer_result_buffer31_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx3Rng3_uid1087_i_shr34_i_result_buffer_result_buffer31_shift_x_b : STD_LOGIC_VECTOR (60 downto 0);
    signal rightShiftStage0Idx3_uid1089_i_shr34_i_result_buffer_result_buffer31_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStageSel1Dto0_uid1090_i_shr34_i_result_buffer_result_buffer31_shift_x_in : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel1Dto0_uid1090_i_shr34_i_result_buffer_result_buffer31_shift_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid1091_i_shr34_i_result_buffer_result_buffer31_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid1091_i_shr34_i_result_buffer_result_buffer31_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx1Rng2_uid1096_i_shr3_i_result_buffer_result_buffer56_shift_x_b : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage0Idx1_uid1098_i_shr3_i_result_buffer_result_buffer56_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0_uid1100_i_shr3_i_result_buffer_result_buffer56_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1100_i_shr3_i_result_buffer_result_buffer56_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage1Idx1Rng1_uid1101_i_shr3_i_result_buffer_result_buffer56_shift_x_b : STD_LOGIC_VECTOR (62 downto 0);
    signal rightShiftStage1Idx1_uid1103_i_shr3_i_result_buffer_result_buffer56_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage1_uid1105_i_shr3_i_result_buffer_result_buffer56_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1105_i_shr3_i_result_buffer_result_buffer56_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx1Rng4_uid1110_i_shr_i_result_buffer_result_buffer30_shift_x_b : STD_LOGIC_VECTOR (59 downto 0);
    signal rightShiftStage0Idx1_uid1112_i_shr_i_result_buffer_result_buffer30_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx2Rng8_uid1113_i_shr_i_result_buffer_result_buffer30_shift_x_b : STD_LOGIC_VECTOR (55 downto 0);
    signal rightShiftStage0Idx2_uid1115_i_shr_i_result_buffer_result_buffer30_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx3Rng12_uid1116_i_shr_i_result_buffer_result_buffer30_shift_x_b : STD_LOGIC_VECTOR (51 downto 0);
    signal rightShiftStage0Idx3_uid1118_i_shr_i_result_buffer_result_buffer30_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStageSel3Dto2_uid1119_i_shr_i_result_buffer_result_buffer30_shift_x_in : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStageSel3Dto2_uid1119_i_shr_i_result_buffer_result_buffer30_shift_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid1120_i_shr_i_result_buffer_result_buffer30_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid1120_i_shr_i_result_buffer_result_buffer30_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage2Idx1Rng2_uid1135_i_unnamed_result_buffer41_shift_x_b : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage2Idx1_uid1137_i_unnamed_result_buffer41_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage2_uid1139_i_unnamed_result_buffer41_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1139_i_unnamed_result_buffer41_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage3Idx1Rng1_uid1140_i_unnamed_result_buffer41_shift_x_b : STD_LOGIC_VECTOR (62 downto 0);
    signal rightShiftStage3Idx1_uid1142_i_unnamed_result_buffer41_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage3_uid1144_i_unnamed_result_buffer41_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1144_i_unnamed_result_buffer41_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and12_i_result_buffer_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and13_i_result_buffer_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and16_i_result_buffer_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and253_i_result_buffer_BitSelect_for_a_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and253_i_result_buffer_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and265_i_result_buffer_BitSelect_for_a_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_and265_i_result_buffer_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and274_i_result_buffer_BitSelect_for_a_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and274_i_result_buffer_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and283_i_result_buffer_BitSelect_for_a_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_and283_i_result_buffer_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and308_i_result_buffer_BitSelect_for_a_b : STD_LOGIC_VECTOR (52 downto 0);
    signal i_and308_i_result_buffer_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and31_i_result_buffer_BitSelect_for_a_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_and31_i_result_buffer_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and4_i_result_buffer_BitSelect_for_a_b : STD_LOGIC_VECTOR (51 downto 0);
    signal i_and4_i_result_buffer_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and5_i_result_buffer_BitSelect_for_a_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and5_i_result_buffer_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv353_i_op_result_buffer_BitSelect_for_a_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_conv353_i_op_result_buffer_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv50_i_result_buffer_BitSelect_for_a_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_conv50_i_result_buffer_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv_i_result_buffer_BitSelect_for_a_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_conv_i_result_buffer_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or352_i_result_buffer_BitSelect_for_a_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_or352_i_result_buffer_BitSelect_for_b_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or352_i_result_buffer_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or7_i_result_buffer_BitSelect_for_a_b : STD_LOGIC_VECTOR (51 downto 0);
    signal i_or7_i_result_buffer_BitSelect_for_a_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or7_i_result_buffer_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl2_i_result_buffer_BitSelect_for_a_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_shl2_i_result_buffer_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i22_result_buffer_BitSelect_for_a_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_shl_i22_result_buffer_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr4_i_result_buffer_BitSelect_for_a_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_shr4_i_result_buffer_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_x_mantissa_mask_i_i_result_buffer_BitSelect_for_a_b : STD_LOGIC_VECTOR (52 downto 0);
    signal i_x_mantissa_mask_i_i_result_buffer_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (2 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_im12_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_im12_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_im15_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_im15_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_im18_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_im18_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_im21_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_im21_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (8 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (8 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (8 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_bs1_merged_bit_select_f : STD_LOGIC_VECTOR (8 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_bs1_merged_bit_select_g : STD_LOGIC_VECTOR (8 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_bs1_merged_bit_select_h : STD_LOGIC_VECTOR (8 downto 0);
    signal i_arrayidx_result_buffer_result_buffer64_mult_x_bs1_merged_bit_select_i : STD_LOGIC_VECTOR (8 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in : STD_LOGIC_VECTOR (126 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_f : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_g : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_h : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_i : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_j : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_k : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_l : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_m : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_n : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_o : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_p : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_r : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_t : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_u : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_v : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_w : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_x : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_y : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_z : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_bb : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_cc : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_dd : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ee : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ff : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_gg : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_hh : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ii : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_jj : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_kk : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ll : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_mm : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_nn : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_oo : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_pp : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_qq : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_rr : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ss : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_tt : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_uu : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_vv : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ww : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_xx : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_yy : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_zz : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_o61 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_o62 : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStageSel4Dto2_uid939_i_shl24_i_result_buffer_result_buffer28_shift_x_merged_bit_select_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStageSel4Dto2_uid939_i_shl24_i_result_buffer_result_buffer28_shift_x_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel3Dto1_uid977_i_shl26_i_result_buffer_result_buffer29_shift_x_merged_bit_select_in : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStageSel3Dto1_uid977_i_shl26_i_result_buffer_result_buffer29_shift_x_merged_bit_select_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStageSel3Dto1_uid977_i_shl26_i_result_buffer_result_buffer29_shift_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or_i_result_buffer_vt_select_51_merged_bit_select_b : STD_LOGIC_VECTOR (51 downto 0);
    signal i_or_i_result_buffer_vt_select_51_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and12_i_result_buffer_BitSelect_for_a_merged_bit_select_in : STD_LOGIC_VECTOR (5 downto 0);
    signal i_and12_i_result_buffer_BitSelect_for_a_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_and12_i_result_buffer_BitSelect_for_a_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal i_and12_i_result_buffer_BitSelect_for_a_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_d_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_e_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_f_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_g_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_h_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_i_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_j_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_k_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_l_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_m_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_n_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_o_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_p_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_r_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_s_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_t_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_u_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_v_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_w_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_x_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist23_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_y_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_z_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_aa_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist26_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_bb_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist27_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_cc_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist28_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_dd_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist29_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ee_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist30_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ff_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_gg_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist32_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_hh_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ii_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist34_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_jj_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_kk_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ll_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist37_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_mm_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_nn_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist39_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_oo_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist40_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_pp_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist41_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_qq_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist42_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_rr_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist43_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ss_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist44_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_tt_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist45_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_uu_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist46_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_vv_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist47_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ww_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist48_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_xx_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist49_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_yy_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist50_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_zz_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist51_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_1_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist52_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_2_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist53_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_3_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist54_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_4_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist55_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_5_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist56_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_6_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_7_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist58_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_8_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist59_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_9_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist60_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_0_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist61_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_o61_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist62_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_o62_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist63_i_or352_i_result_buffer_BitSelect_for_b_b_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_i_conv50_i_result_buffer_BitSelect_for_a_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist65_i_sub30_i_result_buffer_vt_select_13_b_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal redist66_i_resulting_exp_2_i_result_buffer_vt_select_11_b_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal redist67_i_llvm_ctpop_i32_unnamed_result_buffer3_result_buffer_vt_select_5_b_1_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist68_i_cmp9_i_result_buffer_c_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist69_i_and4_i_result_buffer_vt_select_51_b_1_q : STD_LOGIC_VECTOR (51 downto 0);
    signal redist70_i_and2_i24_result_buffer_vt_select_51_b_1_q : STD_LOGIC_VECTOR (51 downto 0);
    signal redist71_sync_in_aunroll_x_in_c1_eni3_1_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist72_sync_in_aunroll_x_in_c1_eni3_2_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist73_sync_in_aunroll_x_in_c1_eni3_3_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist74_sync_in_aunroll_x_in_i_valid_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist75_sync_in_aunroll_x_in_i_valid_6_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist74_sync_in_aunroll_x_in_i_valid_5(DELAY,1300)
    redist74_sync_in_aunroll_x_in_i_valid_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist74_sync_in_aunroll_x_in_i_valid_5_q, clk => clock, aclr => resetn );

    -- redist75_sync_in_aunroll_x_in_i_valid_6(DELAY,1301)
    redist75_sync_in_aunroll_x_in_i_valid_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist74_sync_in_aunroll_x_in_i_valid_5_q, xout => redist75_sync_in_aunroll_x_in_i_valid_6_q, clk => clock, aclr => resetn );

    -- leftShiftStage2Idx1Rng4_uid775_i_and1_i_result_buffer_result_buffer55_shift_x(BITSELECT,774)@5
    leftShiftStage2Idx1Rng4_uid775_i_and1_i_result_buffer_result_buffer55_shift_x_in <= leftShiftStage1_uid773_i_and1_i_result_buffer_result_buffer55_shift_x_q(59 downto 0);
    leftShiftStage2Idx1Rng4_uid775_i_and1_i_result_buffer_result_buffer55_shift_x_b <= leftShiftStage2Idx1Rng4_uid775_i_and1_i_result_buffer_result_buffer55_shift_x_in(59 downto 0);

    -- i_and12_i_result_buffer_vt_const_3(CONSTANT,412)
    i_and12_i_result_buffer_vt_const_3_q <= "0000";

    -- leftShiftStage2Idx1_uid776_i_and1_i_result_buffer_result_buffer55_shift_x(BITJOIN,775)@5
    leftShiftStage2Idx1_uid776_i_and1_i_result_buffer_result_buffer55_shift_x_q <= leftShiftStage2Idx1Rng4_uid775_i_and1_i_result_buffer_result_buffer55_shift_x_b & i_and12_i_result_buffer_vt_const_3_q;

    -- leftShiftStage1Idx1Rng16_uid770_i_and1_i_result_buffer_result_buffer55_shift_x(BITSELECT,769)@5
    leftShiftStage1Idx1Rng16_uid770_i_and1_i_result_buffer_result_buffer55_shift_x_in <= leftShiftStage0_uid768_i_and1_i_result_buffer_result_buffer55_shift_x_q(47 downto 0);
    leftShiftStage1Idx1Rng16_uid770_i_and1_i_result_buffer_result_buffer55_shift_x_b <= leftShiftStage1Idx1Rng16_uid770_i_and1_i_result_buffer_result_buffer55_shift_x_in(47 downto 0);

    -- i_shr20_i_i_result_buffer_vt_const_31(CONSTANT,673)
    i_shr20_i_i_result_buffer_vt_const_31_q <= "0000000000000000";

    -- leftShiftStage1Idx1_uid771_i_and1_i_result_buffer_result_buffer55_shift_x(BITJOIN,770)@5
    leftShiftStage1Idx1_uid771_i_and1_i_result_buffer_result_buffer55_shift_x_q <= leftShiftStage1Idx1Rng16_uid770_i_and1_i_result_buffer_result_buffer55_shift_x_b & i_shr20_i_i_result_buffer_vt_const_31_q;

    -- leftShiftStage0Idx1Rng32_uid765_i_and1_i_result_buffer_result_buffer55_shift_x(BITSELECT,764)@5
    leftShiftStage0Idx1Rng32_uid765_i_and1_i_result_buffer_result_buffer55_shift_x_in <= i_and60_i_result_buffer_vt_join_q(31 downto 0);
    leftShiftStage0Idx1Rng32_uid765_i_and1_i_result_buffer_result_buffer55_shift_x_b <= leftShiftStage0Idx1Rng32_uid765_i_and1_i_result_buffer_result_buffer55_shift_x_in(31 downto 0);

    -- c_i32_0gr(CONSTANT,335)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- leftShiftStage0Idx1_uid766_i_and1_i_result_buffer_result_buffer55_shift_x(BITJOIN,765)@5
    leftShiftStage0Idx1_uid766_i_and1_i_result_buffer_result_buffer55_shift_x_q <= leftShiftStage0Idx1Rng32_uid765_i_and1_i_result_buffer_result_buffer55_shift_x_b & c_i32_0gr_q;

    -- i_conv353_i_result_buffer_vt_const_63(CONSTANT,543)
    i_conv353_i_result_buffer_vt_const_63_q <= "000000000000000000000000000000000000000000000000000";

    -- i_acl_22_i_result_buffer_vt_const_31(CONSTANT,387)
    i_acl_22_i_result_buffer_vt_const_31_q <= "0000000000000000000";

    -- rightShiftStage3Idx1Rng1_uid1140_i_unnamed_result_buffer41_shift_x(BITSELECT,1139)@3
    rightShiftStage3Idx1Rng1_uid1140_i_unnamed_result_buffer41_shift_x_b <= rightShiftStage2_uid1139_i_unnamed_result_buffer41_shift_x_q(63 downto 1);

    -- rightShiftStage3Idx1_uid1142_i_unnamed_result_buffer41_shift_x(BITJOIN,1141)@3
    rightShiftStage3Idx1_uid1142_i_unnamed_result_buffer41_shift_x_q <= GND_q & rightShiftStage3Idx1Rng1_uid1140_i_unnamed_result_buffer41_shift_x_b;

    -- i_acl_47_i_result_buffer_vt_const_1(CONSTANT,392)
    i_acl_47_i_result_buffer_vt_const_1_q <= "00";

    -- rightShiftStage2Idx1Rng2_uid1135_i_unnamed_result_buffer41_shift_x(BITSELECT,1134)@3
    rightShiftStage2Idx1Rng2_uid1135_i_unnamed_result_buffer41_shift_x_b <= rightShiftStage1_uid825_i_and3_i_result_buffer_result_buffer37_shift_x_q(63 downto 2);

    -- rightShiftStage2Idx1_uid1137_i_unnamed_result_buffer41_shift_x(BITJOIN,1136)@3
    rightShiftStage2Idx1_uid1137_i_unnamed_result_buffer41_shift_x_q <= i_acl_47_i_result_buffer_vt_const_1_q & rightShiftStage2Idx1Rng2_uid1135_i_unnamed_result_buffer41_shift_x_b;

    -- rightShiftStage1Idx1Rng16_uid821_i_and3_i_result_buffer_result_buffer37_shift_x(BITSELECT,820)@3
    rightShiftStage1Idx1Rng16_uid821_i_and3_i_result_buffer_result_buffer37_shift_x_b <= rightShiftStage0_uid820_i_and3_i_result_buffer_result_buffer37_shift_x_q(63 downto 16);

    -- rightShiftStage1Idx1_uid823_i_and3_i_result_buffer_result_buffer37_shift_x(BITJOIN,822)@3
    rightShiftStage1Idx1_uid823_i_and3_i_result_buffer_result_buffer37_shift_x_q <= i_shr20_i_i_result_buffer_vt_const_31_q & rightShiftStage1Idx1Rng16_uid821_i_and3_i_result_buffer_result_buffer37_shift_x_b;

    -- rightShiftStage0Idx1Rng32_uid816_i_and3_i_result_buffer_result_buffer37_shift_x(BITSELECT,815)@3
    rightShiftStage0Idx1Rng32_uid816_i_and3_i_result_buffer_result_buffer37_shift_x_b <= bgTrunc_i_add_i_result_buffer_sel_x_b(63 downto 32);

    -- rightShiftStage0Idx1_uid818_i_and3_i_result_buffer_result_buffer37_shift_x(BITJOIN,817)@3
    rightShiftStage0Idx1_uid818_i_and3_i_result_buffer_result_buffer37_shift_x_q <= c_i32_0gr_q & rightShiftStage0Idx1Rng32_uid816_i_and3_i_result_buffer_result_buffer37_shift_x_b;

    -- i_acl_10_i_result_buffer_vt_const_63(CONSTANT,379)
    i_acl_10_i_result_buffer_vt_const_63_q <= "000000000000000000000000000000000000000000000000000000000000000";

    -- i_not_cmp9_i_result_buffer(LOGICAL,578)@3
    i_not_cmp9_i_result_buffer_q <= redist68_i_cmp9_i_result_buffer_c_1_q xor VCC_q;

    -- c_i64_1gr(CONSTANT,360)
    c_i64_1gr_q <= "0000000000000000000000000000000000000000000000000000000000000001";

    -- i_and2_or7_op_i_result_buffer_vt_const_2(CONSTANT,471)
    i_and2_or7_op_i_result_buffer_vt_const_2_q <= "000";

    -- rightShiftStage0Idx3Rng3_uid1087_i_shr34_i_result_buffer_result_buffer31_shift_x(BITSELECT,1086)@2
    rightShiftStage0Idx3Rng3_uid1087_i_shr34_i_result_buffer_result_buffer31_shift_x_b <= rightShiftStage0_uid1120_i_shr_i_result_buffer_result_buffer30_shift_x_q(63 downto 3);

    -- rightShiftStage0Idx3_uid1089_i_shr34_i_result_buffer_result_buffer31_shift_x(BITJOIN,1088)@2
    rightShiftStage0Idx3_uid1089_i_shr34_i_result_buffer_result_buffer31_shift_x_q <= i_and2_or7_op_i_result_buffer_vt_const_2_q & rightShiftStage0Idx3Rng3_uid1087_i_shr34_i_result_buffer_result_buffer31_shift_x_b;

    -- rightShiftStage0Idx2Rng2_uid1084_i_shr34_i_result_buffer_result_buffer31_shift_x(BITSELECT,1083)@2
    rightShiftStage0Idx2Rng2_uid1084_i_shr34_i_result_buffer_result_buffer31_shift_x_b <= rightShiftStage0_uid1120_i_shr_i_result_buffer_result_buffer30_shift_x_q(63 downto 2);

    -- rightShiftStage0Idx2_uid1086_i_shr34_i_result_buffer_result_buffer31_shift_x(BITJOIN,1085)@2
    rightShiftStage0Idx2_uid1086_i_shr34_i_result_buffer_result_buffer31_shift_x_q <= i_acl_47_i_result_buffer_vt_const_1_q & rightShiftStage0Idx2Rng2_uid1084_i_shr34_i_result_buffer_result_buffer31_shift_x_b;

    -- rightShiftStage0Idx1Rng1_uid1081_i_shr34_i_result_buffer_result_buffer31_shift_x(BITSELECT,1080)@2
    rightShiftStage0Idx1Rng1_uid1081_i_shr34_i_result_buffer_result_buffer31_shift_x_b <= rightShiftStage0_uid1120_i_shr_i_result_buffer_result_buffer30_shift_x_q(63 downto 1);

    -- rightShiftStage0Idx1_uid1083_i_shr34_i_result_buffer_result_buffer31_shift_x(BITJOIN,1082)@2
    rightShiftStage0Idx1_uid1083_i_shr34_i_result_buffer_result_buffer31_shift_x_q <= GND_q & rightShiftStage0Idx1Rng1_uid1081_i_shr34_i_result_buffer_result_buffer31_shift_x_b;

    -- rightShiftStage0Idx3Rng12_uid1116_i_shr_i_result_buffer_result_buffer30_shift_x(BITSELECT,1115)@2
    rightShiftStage0Idx3Rng12_uid1116_i_shr_i_result_buffer_result_buffer30_shift_x_b <= i_conv_i_i_result_buffer_vt_join_q(63 downto 12);

    -- rightShiftStage0Idx3_uid1118_i_shr_i_result_buffer_result_buffer30_shift_x(BITJOIN,1117)@2
    rightShiftStage0Idx3_uid1118_i_shr_i_result_buffer_result_buffer30_shift_x_q <= i_and253_i_result_buffer_vt_const_11_q & rightShiftStage0Idx3Rng12_uid1116_i_shr_i_result_buffer_result_buffer30_shift_x_b;

    -- c_i8_0gr(CONSTANT,374)
    c_i8_0gr_q <= "00000000";

    -- rightShiftStage0Idx2Rng8_uid1113_i_shr_i_result_buffer_result_buffer30_shift_x(BITSELECT,1112)@2
    rightShiftStage0Idx2Rng8_uid1113_i_shr_i_result_buffer_result_buffer30_shift_x_b <= i_conv_i_i_result_buffer_vt_join_q(63 downto 8);

    -- rightShiftStage0Idx2_uid1115_i_shr_i_result_buffer_result_buffer30_shift_x(BITJOIN,1114)@2
    rightShiftStage0Idx2_uid1115_i_shr_i_result_buffer_result_buffer30_shift_x_q <= c_i8_0gr_q & rightShiftStage0Idx2Rng8_uid1113_i_shr_i_result_buffer_result_buffer30_shift_x_b;

    -- rightShiftStage0Idx1Rng4_uid1110_i_shr_i_result_buffer_result_buffer30_shift_x(BITSELECT,1109)@2
    rightShiftStage0Idx1Rng4_uid1110_i_shr_i_result_buffer_result_buffer30_shift_x_b <= i_conv_i_i_result_buffer_vt_join_q(63 downto 4);

    -- rightShiftStage0Idx1_uid1112_i_shr_i_result_buffer_result_buffer30_shift_x(BITJOIN,1111)@2
    rightShiftStage0Idx1_uid1112_i_shr_i_result_buffer_result_buffer30_shift_x_q <= i_and12_i_result_buffer_vt_const_3_q & rightShiftStage0Idx1Rng4_uid1110_i_shr_i_result_buffer_result_buffer30_shift_x_b;

    -- redist71_sync_in_aunroll_x_in_c1_eni3_1_1(DELAY,1297)
    redist71_sync_in_aunroll_x_in_c1_eni3_1_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c1_eni3_1, xout => redist71_sync_in_aunroll_x_in_c1_eni3_1_1_q, clk => clock, aclr => resetn );

    -- i_conv_i_i_result_buffer_sel_x(BITSELECT,49)@2
    i_conv_i_i_result_buffer_sel_x_b <= std_logic_vector(resize(unsigned(redist71_sync_in_aunroll_x_in_c1_eni3_1_1_q(31 downto 0)), 64));

    -- i_conv_i_i_result_buffer_vt_select_31(BITSELECT,554)@2
    i_conv_i_i_result_buffer_vt_select_31_b <= i_conv_i_i_result_buffer_sel_x_b(31 downto 0);

    -- i_conv_i_i_result_buffer_vt_join(BITJOIN,553)@2
    i_conv_i_i_result_buffer_vt_join_q <= c_i32_0gr_q & i_conv_i_i_result_buffer_vt_select_31_b;

    -- i_sh_prom14_i_result_buffer_vt_const_63(CONSTANT,613)
    i_sh_prom14_i_result_buffer_vt_const_63_q <= "000000000000000000000000000000000000000000000000000000000000";

    -- i_and13_i_result_buffer_vt_const_31(CONSTANT,418)
    i_and13_i_result_buffer_vt_const_31_q <= "0000000000000000000000000000";

    -- c_i32_12(CONSTANT,339)
    c_i32_12_q <= "00000000000000000000000000001100";

    -- i_and12_i_result_buffer_vt_const_31(CONSTANT,413)
    i_and12_i_result_buffer_vt_const_31_q <= "00000000000000000000000000";

    -- dupName_0_c_i32_1gr_x(CONSTANT,12)
    dupName_0_c_i32_1gr_x_q <= "11111111111111111111111111111111";

    -- rightShiftStage0Idx1Rng1_uid1027_i_shr12_i_i_result_buffer_result_buffer18_shift_x(BITSELECT,1026)@1
    rightShiftStage0Idx1Rng1_uid1027_i_shr12_i_i_result_buffer_result_buffer18_shift_x_b <= in_c1_eni3_1(31 downto 1);

    -- rightShiftStage0Idx1_uid1029_i_shr12_i_i_result_buffer_result_buffer18_shift_x(BITJOIN,1028)@1
    rightShiftStage0Idx1_uid1029_i_shr12_i_i_result_buffer_result_buffer18_shift_x_q <= GND_q & rightShiftStage0Idx1Rng1_uid1027_i_shr12_i_i_result_buffer_result_buffer18_shift_x_b;

    -- rightShiftStage0_uid1031_i_shr12_i_i_result_buffer_result_buffer18_shift_x(MUX,1030)@1
    rightShiftStage0_uid1031_i_shr12_i_i_result_buffer_result_buffer18_shift_x_s <= VCC_q;
    rightShiftStage0_uid1031_i_shr12_i_i_result_buffer_result_buffer18_shift_x_combproc: PROCESS (rightShiftStage0_uid1031_i_shr12_i_i_result_buffer_result_buffer18_shift_x_s, in_c1_eni3_1, rightShiftStage0Idx1_uid1029_i_shr12_i_i_result_buffer_result_buffer18_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1031_i_shr12_i_i_result_buffer_result_buffer18_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1031_i_shr12_i_i_result_buffer_result_buffer18_shift_x_q <= in_c1_eni3_1;
            WHEN "1" => rightShiftStage0_uid1031_i_shr12_i_i_result_buffer_result_buffer18_shift_x_q <= rightShiftStage0Idx1_uid1029_i_shr12_i_i_result_buffer_result_buffer18_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1031_i_shr12_i_i_result_buffer_result_buffer18_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr12_i_i_result_buffer_vt_select_30(BITSELECT,663)@1
    i_shr12_i_i_result_buffer_vt_select_30_b <= rightShiftStage0_uid1031_i_shr12_i_i_result_buffer_result_buffer18_shift_x_q(30 downto 0);

    -- i_shr12_i_i_result_buffer_vt_join(BITJOIN,662)@1
    i_shr12_i_i_result_buffer_vt_join_q <= GND_q & i_shr12_i_i_result_buffer_vt_select_30_b;

    -- i_or13_i_i_result_buffer(LOGICAL,583)@1
    i_or13_i_i_result_buffer_q <= i_shr12_i_i_result_buffer_vt_join_q or in_c1_eni3_1;

    -- rightShiftStage0Idx1Rng2_uid1036_i_shr14_i_i_result_buffer_result_buffer19_shift_x(BITSELECT,1035)@1
    rightShiftStage0Idx1Rng2_uid1036_i_shr14_i_i_result_buffer_result_buffer19_shift_x_b <= i_or13_i_i_result_buffer_q(31 downto 2);

    -- rightShiftStage0Idx1_uid1038_i_shr14_i_i_result_buffer_result_buffer19_shift_x(BITJOIN,1037)@1
    rightShiftStage0Idx1_uid1038_i_shr14_i_i_result_buffer_result_buffer19_shift_x_q <= i_acl_47_i_result_buffer_vt_const_1_q & rightShiftStage0Idx1Rng2_uid1036_i_shr14_i_i_result_buffer_result_buffer19_shift_x_b;

    -- rightShiftStage0_uid1040_i_shr14_i_i_result_buffer_result_buffer19_shift_x(MUX,1039)@1
    rightShiftStage0_uid1040_i_shr14_i_i_result_buffer_result_buffer19_shift_x_s <= VCC_q;
    rightShiftStage0_uid1040_i_shr14_i_i_result_buffer_result_buffer19_shift_x_combproc: PROCESS (rightShiftStage0_uid1040_i_shr14_i_i_result_buffer_result_buffer19_shift_x_s, i_or13_i_i_result_buffer_q, rightShiftStage0Idx1_uid1038_i_shr14_i_i_result_buffer_result_buffer19_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1040_i_shr14_i_i_result_buffer_result_buffer19_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1040_i_shr14_i_i_result_buffer_result_buffer19_shift_x_q <= i_or13_i_i_result_buffer_q;
            WHEN "1" => rightShiftStage0_uid1040_i_shr14_i_i_result_buffer_result_buffer19_shift_x_q <= rightShiftStage0Idx1_uid1038_i_shr14_i_i_result_buffer_result_buffer19_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1040_i_shr14_i_i_result_buffer_result_buffer19_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr14_i_i_result_buffer_vt_select_29(BITSELECT,666)@1
    i_shr14_i_i_result_buffer_vt_select_29_b <= rightShiftStage0_uid1040_i_shr14_i_i_result_buffer_result_buffer19_shift_x_q(29 downto 0);

    -- i_shr14_i_i_result_buffer_vt_join(BITJOIN,665)@1
    i_shr14_i_i_result_buffer_vt_join_q <= i_acl_47_i_result_buffer_vt_const_1_q & i_shr14_i_i_result_buffer_vt_select_29_b;

    -- i_or15_i_i_result_buffer(LOGICAL,584)@1
    i_or15_i_i_result_buffer_q <= i_shr14_i_i_result_buffer_vt_join_q or i_or13_i_i_result_buffer_q;

    -- rightShiftStage0Idx1Rng4_uid1045_i_shr16_i_i_result_buffer_result_buffer20_shift_x(BITSELECT,1044)@1
    rightShiftStage0Idx1Rng4_uid1045_i_shr16_i_i_result_buffer_result_buffer20_shift_x_b <= i_or15_i_i_result_buffer_q(31 downto 4);

    -- rightShiftStage0Idx1_uid1047_i_shr16_i_i_result_buffer_result_buffer20_shift_x(BITJOIN,1046)@1
    rightShiftStage0Idx1_uid1047_i_shr16_i_i_result_buffer_result_buffer20_shift_x_q <= i_and12_i_result_buffer_vt_const_3_q & rightShiftStage0Idx1Rng4_uid1045_i_shr16_i_i_result_buffer_result_buffer20_shift_x_b;

    -- rightShiftStage0_uid1049_i_shr16_i_i_result_buffer_result_buffer20_shift_x(MUX,1048)@1
    rightShiftStage0_uid1049_i_shr16_i_i_result_buffer_result_buffer20_shift_x_s <= VCC_q;
    rightShiftStage0_uid1049_i_shr16_i_i_result_buffer_result_buffer20_shift_x_combproc: PROCESS (rightShiftStage0_uid1049_i_shr16_i_i_result_buffer_result_buffer20_shift_x_s, i_or15_i_i_result_buffer_q, rightShiftStage0Idx1_uid1047_i_shr16_i_i_result_buffer_result_buffer20_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1049_i_shr16_i_i_result_buffer_result_buffer20_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1049_i_shr16_i_i_result_buffer_result_buffer20_shift_x_q <= i_or15_i_i_result_buffer_q;
            WHEN "1" => rightShiftStage0_uid1049_i_shr16_i_i_result_buffer_result_buffer20_shift_x_q <= rightShiftStage0Idx1_uid1047_i_shr16_i_i_result_buffer_result_buffer20_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1049_i_shr16_i_i_result_buffer_result_buffer20_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr16_i_i_result_buffer_vt_select_27(BITSELECT,669)@1
    i_shr16_i_i_result_buffer_vt_select_27_b <= rightShiftStage0_uid1049_i_shr16_i_i_result_buffer_result_buffer20_shift_x_q(27 downto 0);

    -- i_shr16_i_i_result_buffer_vt_join(BITJOIN,668)@1
    i_shr16_i_i_result_buffer_vt_join_q <= i_and12_i_result_buffer_vt_const_3_q & i_shr16_i_i_result_buffer_vt_select_27_b;

    -- i_or17_i_i_result_buffer(LOGICAL,585)@1
    i_or17_i_i_result_buffer_q <= i_shr16_i_i_result_buffer_vt_join_q or i_or15_i_i_result_buffer_q;

    -- rightShiftStage0Idx1Rng8_uid1054_i_shr18_i_i_result_buffer_result_buffer21_shift_x(BITSELECT,1053)@1
    rightShiftStage0Idx1Rng8_uid1054_i_shr18_i_i_result_buffer_result_buffer21_shift_x_b <= i_or17_i_i_result_buffer_q(31 downto 8);

    -- rightShiftStage0Idx1_uid1056_i_shr18_i_i_result_buffer_result_buffer21_shift_x(BITJOIN,1055)@1
    rightShiftStage0Idx1_uid1056_i_shr18_i_i_result_buffer_result_buffer21_shift_x_q <= c_i8_0gr_q & rightShiftStage0Idx1Rng8_uid1054_i_shr18_i_i_result_buffer_result_buffer21_shift_x_b;

    -- rightShiftStage0_uid1058_i_shr18_i_i_result_buffer_result_buffer21_shift_x(MUX,1057)@1
    rightShiftStage0_uid1058_i_shr18_i_i_result_buffer_result_buffer21_shift_x_s <= VCC_q;
    rightShiftStage0_uid1058_i_shr18_i_i_result_buffer_result_buffer21_shift_x_combproc: PROCESS (rightShiftStage0_uid1058_i_shr18_i_i_result_buffer_result_buffer21_shift_x_s, i_or17_i_i_result_buffer_q, rightShiftStage0Idx1_uid1056_i_shr18_i_i_result_buffer_result_buffer21_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1058_i_shr18_i_i_result_buffer_result_buffer21_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1058_i_shr18_i_i_result_buffer_result_buffer21_shift_x_q <= i_or17_i_i_result_buffer_q;
            WHEN "1" => rightShiftStage0_uid1058_i_shr18_i_i_result_buffer_result_buffer21_shift_x_q <= rightShiftStage0Idx1_uid1056_i_shr18_i_i_result_buffer_result_buffer21_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1058_i_shr18_i_i_result_buffer_result_buffer21_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr18_i_i_result_buffer_vt_select_23(BITSELECT,672)@1
    i_shr18_i_i_result_buffer_vt_select_23_b <= rightShiftStage0_uid1058_i_shr18_i_i_result_buffer_result_buffer21_shift_x_q(23 downto 0);

    -- i_shr18_i_i_result_buffer_vt_join(BITJOIN,671)@1
    i_shr18_i_i_result_buffer_vt_join_q <= c_i8_0gr_q & i_shr18_i_i_result_buffer_vt_select_23_b;

    -- i_or19_i_i_result_buffer(LOGICAL,586)@1
    i_or19_i_i_result_buffer_q <= i_shr18_i_i_result_buffer_vt_join_q or i_or17_i_i_result_buffer_q;

    -- rightShiftStage0Idx1Rng16_uid1063_i_shr20_i_i_result_buffer_result_buffer22_shift_x(BITSELECT,1062)@1
    rightShiftStage0Idx1Rng16_uid1063_i_shr20_i_i_result_buffer_result_buffer22_shift_x_b <= i_or19_i_i_result_buffer_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1065_i_shr20_i_i_result_buffer_result_buffer22_shift_x(BITJOIN,1064)@1
    rightShiftStage0Idx1_uid1065_i_shr20_i_i_result_buffer_result_buffer22_shift_x_q <= i_shr20_i_i_result_buffer_vt_const_31_q & rightShiftStage0Idx1Rng16_uid1063_i_shr20_i_i_result_buffer_result_buffer22_shift_x_b;

    -- rightShiftStage0_uid1067_i_shr20_i_i_result_buffer_result_buffer22_shift_x(MUX,1066)@1
    rightShiftStage0_uid1067_i_shr20_i_i_result_buffer_result_buffer22_shift_x_s <= VCC_q;
    rightShiftStage0_uid1067_i_shr20_i_i_result_buffer_result_buffer22_shift_x_combproc: PROCESS (rightShiftStage0_uid1067_i_shr20_i_i_result_buffer_result_buffer22_shift_x_s, i_or19_i_i_result_buffer_q, rightShiftStage0Idx1_uid1065_i_shr20_i_i_result_buffer_result_buffer22_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1067_i_shr20_i_i_result_buffer_result_buffer22_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1067_i_shr20_i_i_result_buffer_result_buffer22_shift_x_q <= i_or19_i_i_result_buffer_q;
            WHEN "1" => rightShiftStage0_uid1067_i_shr20_i_i_result_buffer_result_buffer22_shift_x_q <= rightShiftStage0Idx1_uid1065_i_shr20_i_i_result_buffer_result_buffer22_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1067_i_shr20_i_i_result_buffer_result_buffer22_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr20_i_i_result_buffer_vt_select_15(BITSELECT,675)@1
    i_shr20_i_i_result_buffer_vt_select_15_b <= rightShiftStage0_uid1067_i_shr20_i_i_result_buffer_result_buffer22_shift_x_q(15 downto 0);

    -- i_shr20_i_i_result_buffer_vt_join(BITJOIN,674)@1
    i_shr20_i_i_result_buffer_vt_join_q <= i_shr20_i_i_result_buffer_vt_const_31_q & i_shr20_i_i_result_buffer_vt_select_15_b;

    -- i_or21_i_i_result_buffer(LOGICAL,587)@1
    i_or21_i_i_result_buffer_q <= i_shr20_i_i_result_buffer_vt_join_q or i_or19_i_i_result_buffer_q;

    -- i_neg22_i_i_result_buffer(LOGICAL,577)@1
    i_neg22_i_i_result_buffer_q <= i_or21_i_i_result_buffer_q xor dupName_0_c_i32_1gr_x_q;

    -- i_llvm_ctpop_i32_unnamed_result_buffer3_result_buffer(EXTIFACE,569)@1
    i_llvm_ctpop_i32_unnamed_result_buffer3_result_buffer_data <= i_neg22_i_i_result_buffer_q;
    thei_llvm_ctpop_i32_unnamed_result_buffer3_result_buffer : thirtysix_six_comp
    PORT MAP (
        data => i_neg22_i_i_result_buffer_q,
        sum => i_llvm_ctpop_i32_unnamed_result_buffer3_result_buffer_sum
    );

    -- i_llvm_ctpop_i32_unnamed_result_buffer3_result_buffer_vt_select_5(BITSELECT,572)@1
    i_llvm_ctpop_i32_unnamed_result_buffer3_result_buffer_vt_select_5_b <= i_llvm_ctpop_i32_unnamed_result_buffer3_result_buffer_sum(5 downto 0);

    -- redist67_i_llvm_ctpop_i32_unnamed_result_buffer3_result_buffer_vt_select_5_b_1(DELAY,1293)
    redist67_i_llvm_ctpop_i32_unnamed_result_buffer3_result_buffer_vt_select_5_b_1 : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_llvm_ctpop_i32_unnamed_result_buffer3_result_buffer_vt_select_5_b, xout => redist67_i_llvm_ctpop_i32_unnamed_result_buffer3_result_buffer_vt_select_5_b_1_q, clk => clock, aclr => resetn );

    -- i_llvm_ctpop_i32_unnamed_result_buffer3_result_buffer_vt_join(BITJOIN,571)@2
    i_llvm_ctpop_i32_unnamed_result_buffer3_result_buffer_vt_join_q <= i_and12_i_result_buffer_vt_const_31_q & redist67_i_llvm_ctpop_i32_unnamed_result_buffer3_result_buffer_vt_select_5_b_1_q;

    -- c_i32_21(CONSTANT,345)
    c_i32_21_q <= "11111111111111111111111111101011";

    -- i_sub19_i_result_buffer(SUB,692)@2
    i_sub19_i_result_buffer_a <= STD_LOGIC_VECTOR("0" & c_i32_21_q);
    i_sub19_i_result_buffer_b <= STD_LOGIC_VECTOR("0" & i_llvm_ctpop_i32_unnamed_result_buffer3_result_buffer_vt_join_q);
    i_sub19_i_result_buffer_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub19_i_result_buffer_a) - UNSIGNED(i_sub19_i_result_buffer_b));
    i_sub19_i_result_buffer_q <= i_sub19_i_result_buffer_o(32 downto 0);

    -- bgTrunc_i_sub19_i_result_buffer_sel_x(BITSELECT,6)@2
    bgTrunc_i_sub19_i_result_buffer_sel_x_b <= STD_LOGIC_VECTOR(i_sub19_i_result_buffer_q(31 downto 0));

    -- i_and30_i_result_buffer(LOGICAL,485)@2
    i_and30_i_result_buffer_q <= bgTrunc_i_sub19_i_result_buffer_sel_x_b and c_i32_12_q;

    -- i_and30_i_result_buffer_vt_select_3(BITSELECT,489)@2
    i_and30_i_result_buffer_vt_select_3_b <= i_and30_i_result_buffer_q(3 downto 2);

    -- i_and30_i_result_buffer_vt_join(BITJOIN,488)@2
    i_and30_i_result_buffer_vt_join_q <= i_and13_i_result_buffer_vt_const_31_q & i_and30_i_result_buffer_vt_select_3_b & i_acl_47_i_result_buffer_vt_const_1_q;

    -- i_sh_prom31_i_result_buffer_sel_x(BITSELECT,251)@2
    i_sh_prom31_i_result_buffer_sel_x_b <= std_logic_vector(resize(unsigned(i_and30_i_result_buffer_vt_join_q(31 downto 0)), 64));

    -- i_sh_prom31_i_result_buffer_vt_select_3(BITSELECT,624)@2
    i_sh_prom31_i_result_buffer_vt_select_3_b <= i_sh_prom31_i_result_buffer_sel_x_b(3 downto 2);

    -- i_sh_prom31_i_result_buffer_vt_join(BITJOIN,623)@2
    i_sh_prom31_i_result_buffer_vt_join_q <= i_sh_prom14_i_result_buffer_vt_const_63_q & i_sh_prom31_i_result_buffer_vt_select_3_b & i_acl_47_i_result_buffer_vt_const_1_q;

    -- i_shr_i_result_buffer_result_buffer30_shift_narrow_x(BITSELECT,313)@2
    i_shr_i_result_buffer_result_buffer30_shift_narrow_x_b <= i_sh_prom31_i_result_buffer_vt_join_q(5 downto 0);

    -- rightShiftStageSel3Dto2_uid1119_i_shr_i_result_buffer_result_buffer30_shift_x(BITSELECT,1118)@2
    rightShiftStageSel3Dto2_uid1119_i_shr_i_result_buffer_result_buffer30_shift_x_in <= i_shr_i_result_buffer_result_buffer30_shift_narrow_x_b(3 downto 0);
    rightShiftStageSel3Dto2_uid1119_i_shr_i_result_buffer_result_buffer30_shift_x_b <= rightShiftStageSel3Dto2_uid1119_i_shr_i_result_buffer_result_buffer30_shift_x_in(3 downto 2);

    -- rightShiftStage0_uid1120_i_shr_i_result_buffer_result_buffer30_shift_x(MUX,1119)@2
    rightShiftStage0_uid1120_i_shr_i_result_buffer_result_buffer30_shift_x_s <= rightShiftStageSel3Dto2_uid1119_i_shr_i_result_buffer_result_buffer30_shift_x_b;
    rightShiftStage0_uid1120_i_shr_i_result_buffer_result_buffer30_shift_x_combproc: PROCESS (rightShiftStage0_uid1120_i_shr_i_result_buffer_result_buffer30_shift_x_s, i_conv_i_i_result_buffer_vt_join_q, rightShiftStage0Idx1_uid1112_i_shr_i_result_buffer_result_buffer30_shift_x_q, rightShiftStage0Idx2_uid1115_i_shr_i_result_buffer_result_buffer30_shift_x_q, rightShiftStage0Idx3_uid1118_i_shr_i_result_buffer_result_buffer30_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1120_i_shr_i_result_buffer_result_buffer30_shift_x_s) IS
            WHEN "00" => rightShiftStage0_uid1120_i_shr_i_result_buffer_result_buffer30_shift_x_q <= i_conv_i_i_result_buffer_vt_join_q;
            WHEN "01" => rightShiftStage0_uid1120_i_shr_i_result_buffer_result_buffer30_shift_x_q <= rightShiftStage0Idx1_uid1112_i_shr_i_result_buffer_result_buffer30_shift_x_q;
            WHEN "10" => rightShiftStage0_uid1120_i_shr_i_result_buffer_result_buffer30_shift_x_q <= rightShiftStage0Idx2_uid1115_i_shr_i_result_buffer_result_buffer30_shift_x_q;
            WHEN "11" => rightShiftStage0_uid1120_i_shr_i_result_buffer_result_buffer30_shift_x_q <= rightShiftStage0Idx3_uid1118_i_shr_i_result_buffer_result_buffer30_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1120_i_shr_i_result_buffer_result_buffer30_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_sh_prom17_i_result_buffer_vt_const_63(CONSTANT,617)
    i_sh_prom17_i_result_buffer_vt_const_63_q <= "00000000000000000000000000000000000000000000000000000000000000";

    -- i_and16_i_result_buffer_vt_const_31(CONSTANT,422)
    i_and16_i_result_buffer_vt_const_31_q <= "000000000000000000000000000000";

    -- c_i32_3gr(CONSTANT,348)
    c_i32_3gr_q <= "00000000000000000000000000000011";

    -- i_and32_i_result_buffer(LOGICAL,498)@2
    i_and32_i_result_buffer_q <= bgTrunc_i_sub19_i_result_buffer_sel_x_b and c_i32_3gr_q;

    -- i_and32_i_result_buffer_vt_select_1(BITSELECT,501)@2
    i_and32_i_result_buffer_vt_select_1_b <= i_and32_i_result_buffer_q(1 downto 0);

    -- i_and32_i_result_buffer_vt_join(BITJOIN,500)@2
    i_and32_i_result_buffer_vt_join_q <= i_and16_i_result_buffer_vt_const_31_q & i_and32_i_result_buffer_vt_select_1_b;

    -- i_sh_prom33_i_result_buffer_sel_x(BITSELECT,252)@2
    i_sh_prom33_i_result_buffer_sel_x_b <= std_logic_vector(resize(unsigned(i_and32_i_result_buffer_vt_join_q(31 downto 0)), 64));

    -- i_sh_prom33_i_result_buffer_vt_select_1(BITSELECT,628)@2
    i_sh_prom33_i_result_buffer_vt_select_1_b <= i_sh_prom33_i_result_buffer_sel_x_b(1 downto 0);

    -- i_sh_prom33_i_result_buffer_vt_join(BITJOIN,627)@2
    i_sh_prom33_i_result_buffer_vt_join_q <= i_sh_prom17_i_result_buffer_vt_const_63_q & i_sh_prom33_i_result_buffer_vt_select_1_b;

    -- i_shr34_i_result_buffer_result_buffer31_shift_narrow_x(BITSELECT,305)@2
    i_shr34_i_result_buffer_result_buffer31_shift_narrow_x_b <= i_sh_prom33_i_result_buffer_vt_join_q(5 downto 0);

    -- rightShiftStageSel1Dto0_uid1090_i_shr34_i_result_buffer_result_buffer31_shift_x(BITSELECT,1089)@2
    rightShiftStageSel1Dto0_uid1090_i_shr34_i_result_buffer_result_buffer31_shift_x_in <= i_shr34_i_result_buffer_result_buffer31_shift_narrow_x_b(1 downto 0);
    rightShiftStageSel1Dto0_uid1090_i_shr34_i_result_buffer_result_buffer31_shift_x_b <= rightShiftStageSel1Dto0_uid1090_i_shr34_i_result_buffer_result_buffer31_shift_x_in(1 downto 0);

    -- rightShiftStage0_uid1091_i_shr34_i_result_buffer_result_buffer31_shift_x(MUX,1090)@2
    rightShiftStage0_uid1091_i_shr34_i_result_buffer_result_buffer31_shift_x_s <= rightShiftStageSel1Dto0_uid1090_i_shr34_i_result_buffer_result_buffer31_shift_x_b;
    rightShiftStage0_uid1091_i_shr34_i_result_buffer_result_buffer31_shift_x_combproc: PROCESS (rightShiftStage0_uid1091_i_shr34_i_result_buffer_result_buffer31_shift_x_s, rightShiftStage0_uid1120_i_shr_i_result_buffer_result_buffer30_shift_x_q, rightShiftStage0Idx1_uid1083_i_shr34_i_result_buffer_result_buffer31_shift_x_q, rightShiftStage0Idx2_uid1086_i_shr34_i_result_buffer_result_buffer31_shift_x_q, rightShiftStage0Idx3_uid1089_i_shr34_i_result_buffer_result_buffer31_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1091_i_shr34_i_result_buffer_result_buffer31_shift_x_s) IS
            WHEN "00" => rightShiftStage0_uid1091_i_shr34_i_result_buffer_result_buffer31_shift_x_q <= rightShiftStage0_uid1120_i_shr_i_result_buffer_result_buffer30_shift_x_q;
            WHEN "01" => rightShiftStage0_uid1091_i_shr34_i_result_buffer_result_buffer31_shift_x_q <= rightShiftStage0Idx1_uid1083_i_shr34_i_result_buffer_result_buffer31_shift_x_q;
            WHEN "10" => rightShiftStage0_uid1091_i_shr34_i_result_buffer_result_buffer31_shift_x_q <= rightShiftStage0Idx2_uid1086_i_shr34_i_result_buffer_result_buffer31_shift_x_q;
            WHEN "11" => rightShiftStage0_uid1091_i_shr34_i_result_buffer_result_buffer31_shift_x_q <= rightShiftStage0Idx3_uid1089_i_shr34_i_result_buffer_result_buffer31_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1091_i_shr34_i_result_buffer_result_buffer31_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and36_i_result_buffer(LOGICAL,502)@2
    i_and36_i_result_buffer_q <= rightShiftStage0_uid1091_i_shr34_i_result_buffer_result_buffer31_shift_x_q and c_i64_1gr_q;

    -- i_and36_i_result_buffer_vt_select_0(BITSELECT,505)@2
    i_and36_i_result_buffer_vt_select_0_b <= i_and36_i_result_buffer_q(0 downto 0);

    -- i_and36_i_result_buffer_vt_join(BITJOIN,504)@2
    i_and36_i_result_buffer_vt_join_q <= i_acl_10_i_result_buffer_vt_const_63_q & i_and36_i_result_buffer_vt_select_0_b;

    -- i_cmp37_i_result_buffer(LOGICAL,527)@2 + 1
    i_cmp37_i_result_buffer_qi <= "1" WHEN i_and36_i_result_buffer_vt_join_q /= dupName_0_c_i64_0gr_x_q ELSE "0";
    i_cmp37_i_result_buffer_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp37_i_result_buffer_qi, xout => i_cmp37_i_result_buffer_q, clk => clock, aclr => resetn );

    -- i_or_cond_i_result_buffer(LOGICAL,600)@3
    i_or_cond_i_result_buffer_q <= i_cmp37_i_result_buffer_q or i_cmp38_i_result_buffer_c;

    -- i_and29_i_result_buffer_vt_const_15(CONSTANT,460)
    i_and29_i_result_buffer_vt_const_15_q <= "00000";

    -- c_i32_65535(CONSTANT,354)
    c_i32_65535_q <= "00000000000000001111111111111111";

    -- leftShiftStage1Idx1Rng1_uid980_i_shl26_i_result_buffer_result_buffer29_shift_x(BITSELECT,979)@2
    leftShiftStage1Idx1Rng1_uid980_i_shl26_i_result_buffer_result_buffer29_shift_x_in <= leftShiftStage0_uid978_i_shl26_i_result_buffer_result_buffer29_shift_x_q(30 downto 0);
    leftShiftStage1Idx1Rng1_uid980_i_shl26_i_result_buffer_result_buffer29_shift_x_b <= leftShiftStage1Idx1Rng1_uid980_i_shl26_i_result_buffer_result_buffer29_shift_x_in(30 downto 0);

    -- leftShiftStage1Idx1_uid981_i_shl26_i_result_buffer_result_buffer29_shift_x(BITJOIN,980)@2
    leftShiftStage1Idx1_uid981_i_shl26_i_result_buffer_result_buffer29_shift_x_q <= leftShiftStage1Idx1Rng1_uid980_i_shl26_i_result_buffer_result_buffer29_shift_x_b & GND_q;

    -- leftShiftStage0Idx7Rng14_uid975_i_shl26_i_result_buffer_result_buffer29_shift_x(BITSELECT,974)
    leftShiftStage0Idx7Rng14_uid975_i_shl26_i_result_buffer_result_buffer29_shift_x_in <= c_i32_1gr_q(17 downto 0);
    leftShiftStage0Idx7Rng14_uid975_i_shl26_i_result_buffer_result_buffer29_shift_x_b <= leftShiftStage0Idx7Rng14_uid975_i_shl26_i_result_buffer_result_buffer29_shift_x_in(17 downto 0);

    -- leftShiftStage0Idx7Pad14_uid974_i_shl26_i_result_buffer_result_buffer29_shift_x(CONSTANT,973)
    leftShiftStage0Idx7Pad14_uid974_i_shl26_i_result_buffer_result_buffer29_shift_x_q <= "00000000000000";

    -- leftShiftStage0Idx7_uid976_i_shl26_i_result_buffer_result_buffer29_shift_x(BITJOIN,975)
    leftShiftStage0Idx7_uid976_i_shl26_i_result_buffer_result_buffer29_shift_x_q <= leftShiftStage0Idx7Rng14_uid975_i_shl26_i_result_buffer_result_buffer29_shift_x_b & leftShiftStage0Idx7Pad14_uid974_i_shl26_i_result_buffer_result_buffer29_shift_x_q;

    -- leftShiftStage0Idx3Rng12_uid925_i_shl24_i_result_buffer_result_buffer28_shift_x(BITSELECT,924)
    leftShiftStage0Idx3Rng12_uid925_i_shl24_i_result_buffer_result_buffer28_shift_x_in <= c_i32_1gr_q(19 downto 0);
    leftShiftStage0Idx3Rng12_uid925_i_shl24_i_result_buffer_result_buffer28_shift_x_b <= leftShiftStage0Idx3Rng12_uid925_i_shl24_i_result_buffer_result_buffer28_shift_x_in(19 downto 0);

    -- leftShiftStage0Idx3_uid926_i_shl24_i_result_buffer_result_buffer28_shift_x(BITJOIN,925)
    leftShiftStage0Idx3_uid926_i_shl24_i_result_buffer_result_buffer28_shift_x_q <= leftShiftStage0Idx3Rng12_uid925_i_shl24_i_result_buffer_result_buffer28_shift_x_b & i_and253_i_result_buffer_vt_const_11_q;

    -- leftShiftStage0Idx5Rng10_uid969_i_shl26_i_result_buffer_result_buffer29_shift_x(BITSELECT,968)
    leftShiftStage0Idx5Rng10_uid969_i_shl26_i_result_buffer_result_buffer29_shift_x_in <= c_i32_1gr_q(21 downto 0);
    leftShiftStage0Idx5Rng10_uid969_i_shl26_i_result_buffer_result_buffer29_shift_x_b <= leftShiftStage0Idx5Rng10_uid969_i_shl26_i_result_buffer_result_buffer29_shift_x_in(21 downto 0);

    -- i_and283_i_result_buffer_vt_const_63(CONSTANT,451)
    i_and283_i_result_buffer_vt_const_63_q <= "0000000000";

    -- leftShiftStage0Idx5_uid970_i_shl26_i_result_buffer_result_buffer29_shift_x(BITJOIN,969)
    leftShiftStage0Idx5_uid970_i_shl26_i_result_buffer_result_buffer29_shift_x_q <= leftShiftStage0Idx5Rng10_uid969_i_shl26_i_result_buffer_result_buffer29_shift_x_b & i_and283_i_result_buffer_vt_const_63_q;

    -- leftShiftStage0Idx2Rng8_uid922_i_shl24_i_result_buffer_result_buffer28_shift_x(BITSELECT,921)
    leftShiftStage0Idx2Rng8_uid922_i_shl24_i_result_buffer_result_buffer28_shift_x_in <= c_i32_1gr_q(23 downto 0);
    leftShiftStage0Idx2Rng8_uid922_i_shl24_i_result_buffer_result_buffer28_shift_x_b <= leftShiftStage0Idx2Rng8_uid922_i_shl24_i_result_buffer_result_buffer28_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx2_uid923_i_shl24_i_result_buffer_result_buffer28_shift_x(BITJOIN,922)
    leftShiftStage0Idx2_uid923_i_shl24_i_result_buffer_result_buffer28_shift_x_q <= leftShiftStage0Idx2Rng8_uid922_i_shl24_i_result_buffer_result_buffer28_shift_x_b & c_i8_0gr_q;

    -- leftShiftStage0Idx3Rng6_uid963_i_shl26_i_result_buffer_result_buffer29_shift_x(BITSELECT,962)
    leftShiftStage0Idx3Rng6_uid963_i_shl26_i_result_buffer_result_buffer29_shift_x_in <= c_i32_1gr_q(25 downto 0);
    leftShiftStage0Idx3Rng6_uid963_i_shl26_i_result_buffer_result_buffer29_shift_x_b <= leftShiftStage0Idx3Rng6_uid963_i_shl26_i_result_buffer_result_buffer29_shift_x_in(25 downto 0);

    -- leftShiftStage0Idx3Pad6_uid962_i_shl26_i_result_buffer_result_buffer29_shift_x(CONSTANT,961)
    leftShiftStage0Idx3Pad6_uid962_i_shl26_i_result_buffer_result_buffer29_shift_x_q <= "000000";

    -- leftShiftStage0Idx3_uid964_i_shl26_i_result_buffer_result_buffer29_shift_x(BITJOIN,963)
    leftShiftStage0Idx3_uid964_i_shl26_i_result_buffer_result_buffer29_shift_x_q <= leftShiftStage0Idx3Rng6_uid963_i_shl26_i_result_buffer_result_buffer29_shift_x_b & leftShiftStage0Idx3Pad6_uid962_i_shl26_i_result_buffer_result_buffer29_shift_x_q;

    -- leftShiftStage0Idx1Rng4_uid919_i_shl24_i_result_buffer_result_buffer28_shift_x(BITSELECT,918)
    leftShiftStage0Idx1Rng4_uid919_i_shl24_i_result_buffer_result_buffer28_shift_x_in <= c_i32_1gr_q(27 downto 0);
    leftShiftStage0Idx1Rng4_uid919_i_shl24_i_result_buffer_result_buffer28_shift_x_b <= leftShiftStage0Idx1Rng4_uid919_i_shl24_i_result_buffer_result_buffer28_shift_x_in(27 downto 0);

    -- leftShiftStage0Idx1_uid920_i_shl24_i_result_buffer_result_buffer28_shift_x(BITJOIN,919)
    leftShiftStage0Idx1_uid920_i_shl24_i_result_buffer_result_buffer28_shift_x_q <= leftShiftStage0Idx1Rng4_uid919_i_shl24_i_result_buffer_result_buffer28_shift_x_b & i_and12_i_result_buffer_vt_const_3_q;

    -- leftShiftStage0Idx1Rng2_uid957_i_shl26_i_result_buffer_result_buffer29_shift_x(BITSELECT,956)
    leftShiftStage0Idx1Rng2_uid957_i_shl26_i_result_buffer_result_buffer29_shift_x_in <= c_i32_1gr_q(29 downto 0);
    leftShiftStage0Idx1Rng2_uid957_i_shl26_i_result_buffer_result_buffer29_shift_x_b <= leftShiftStage0Idx1Rng2_uid957_i_shl26_i_result_buffer_result_buffer29_shift_x_in(29 downto 0);

    -- leftShiftStage0Idx1_uid958_i_shl26_i_result_buffer_result_buffer29_shift_x(BITJOIN,957)
    leftShiftStage0Idx1_uid958_i_shl26_i_result_buffer_result_buffer29_shift_x_q <= leftShiftStage0Idx1Rng2_uid957_i_shl26_i_result_buffer_result_buffer29_shift_x_b & i_acl_47_i_result_buffer_vt_const_1_q;

    -- c_i32_1gr(CONSTANT,342)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- leftShiftStage0_uid978_i_shl26_i_result_buffer_result_buffer29_shift_x(MUX,977)@2
    leftShiftStage0_uid978_i_shl26_i_result_buffer_result_buffer29_shift_x_s <= leftShiftStageSel3Dto1_uid977_i_shl26_i_result_buffer_result_buffer29_shift_x_merged_bit_select_b;
    leftShiftStage0_uid978_i_shl26_i_result_buffer_result_buffer29_shift_x_combproc: PROCESS (leftShiftStage0_uid978_i_shl26_i_result_buffer_result_buffer29_shift_x_s, c_i32_1gr_q, leftShiftStage0Idx1_uid958_i_shl26_i_result_buffer_result_buffer29_shift_x_q, leftShiftStage0Idx1_uid920_i_shl24_i_result_buffer_result_buffer28_shift_x_q, leftShiftStage0Idx3_uid964_i_shl26_i_result_buffer_result_buffer29_shift_x_q, leftShiftStage0Idx2_uid923_i_shl24_i_result_buffer_result_buffer28_shift_x_q, leftShiftStage0Idx5_uid970_i_shl26_i_result_buffer_result_buffer29_shift_x_q, leftShiftStage0Idx3_uid926_i_shl24_i_result_buffer_result_buffer28_shift_x_q, leftShiftStage0Idx7_uid976_i_shl26_i_result_buffer_result_buffer29_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid978_i_shl26_i_result_buffer_result_buffer29_shift_x_s) IS
            WHEN "000" => leftShiftStage0_uid978_i_shl26_i_result_buffer_result_buffer29_shift_x_q <= c_i32_1gr_q;
            WHEN "001" => leftShiftStage0_uid978_i_shl26_i_result_buffer_result_buffer29_shift_x_q <= leftShiftStage0Idx1_uid958_i_shl26_i_result_buffer_result_buffer29_shift_x_q;
            WHEN "010" => leftShiftStage0_uid978_i_shl26_i_result_buffer_result_buffer29_shift_x_q <= leftShiftStage0Idx1_uid920_i_shl24_i_result_buffer_result_buffer28_shift_x_q;
            WHEN "011" => leftShiftStage0_uid978_i_shl26_i_result_buffer_result_buffer29_shift_x_q <= leftShiftStage0Idx3_uid964_i_shl26_i_result_buffer_result_buffer29_shift_x_q;
            WHEN "100" => leftShiftStage0_uid978_i_shl26_i_result_buffer_result_buffer29_shift_x_q <= leftShiftStage0Idx2_uid923_i_shl24_i_result_buffer_result_buffer28_shift_x_q;
            WHEN "101" => leftShiftStage0_uid978_i_shl26_i_result_buffer_result_buffer29_shift_x_q <= leftShiftStage0Idx5_uid970_i_shl26_i_result_buffer_result_buffer29_shift_x_q;
            WHEN "110" => leftShiftStage0_uid978_i_shl26_i_result_buffer_result_buffer29_shift_x_q <= leftShiftStage0Idx3_uid926_i_shl24_i_result_buffer_result_buffer28_shift_x_q;
            WHEN "111" => leftShiftStage0_uid978_i_shl26_i_result_buffer_result_buffer29_shift_x_q <= leftShiftStage0Idx7_uid976_i_shl26_i_result_buffer_result_buffer29_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid978_i_shl26_i_result_buffer_result_buffer29_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- c_i32_15(CONSTANT,340)
    c_i32_15_q <= "00000000000000000000000000001111";

    -- i_and20_i_result_buffer(LOGICAL,428)@2
    i_and20_i_result_buffer_q <= bgTrunc_i_sub19_i_result_buffer_sel_x_b and c_i32_15_q;

    -- i_and20_i_result_buffer_vt_select_3(BITSELECT,431)@2
    i_and20_i_result_buffer_vt_select_3_b <= i_and20_i_result_buffer_q(3 downto 0);

    -- i_and20_i_result_buffer_vt_join(BITJOIN,430)@2
    i_and20_i_result_buffer_vt_join_q <= i_and13_i_result_buffer_vt_const_31_q & i_and20_i_result_buffer_vt_select_3_b;

    -- i_shl26_i_result_buffer_result_buffer29_shift_narrow_x(BITSELECT,269)@2
    i_shl26_i_result_buffer_result_buffer29_shift_narrow_x_b <= i_and20_i_result_buffer_vt_join_q(4 downto 0);

    -- leftShiftStageSel3Dto1_uid977_i_shl26_i_result_buffer_result_buffer29_shift_x_merged_bit_select(BITSELECT,1223)@2
    leftShiftStageSel3Dto1_uid977_i_shl26_i_result_buffer_result_buffer29_shift_x_merged_bit_select_in <= i_shl26_i_result_buffer_result_buffer29_shift_narrow_x_b(3 downto 0);
    leftShiftStageSel3Dto1_uid977_i_shl26_i_result_buffer_result_buffer29_shift_x_merged_bit_select_b <= leftShiftStageSel3Dto1_uid977_i_shl26_i_result_buffer_result_buffer29_shift_x_merged_bit_select_in(3 downto 1);
    leftShiftStageSel3Dto1_uid977_i_shl26_i_result_buffer_result_buffer29_shift_x_merged_bit_select_c <= leftShiftStageSel3Dto1_uid977_i_shl26_i_result_buffer_result_buffer29_shift_x_merged_bit_select_in(0 downto 0);

    -- leftShiftStage1_uid983_i_shl26_i_result_buffer_result_buffer29_shift_x(MUX,982)@2
    leftShiftStage1_uid983_i_shl26_i_result_buffer_result_buffer29_shift_x_s <= leftShiftStageSel3Dto1_uid977_i_shl26_i_result_buffer_result_buffer29_shift_x_merged_bit_select_c;
    leftShiftStage1_uid983_i_shl26_i_result_buffer_result_buffer29_shift_x_combproc: PROCESS (leftShiftStage1_uid983_i_shl26_i_result_buffer_result_buffer29_shift_x_s, leftShiftStage0_uid978_i_shl26_i_result_buffer_result_buffer29_shift_x_q, leftShiftStage1Idx1_uid981_i_shl26_i_result_buffer_result_buffer29_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid983_i_shl26_i_result_buffer_result_buffer29_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid983_i_shl26_i_result_buffer_result_buffer29_shift_x_q <= leftShiftStage0_uid978_i_shl26_i_result_buffer_result_buffer29_shift_x_q;
            WHEN "1" => leftShiftStage1_uid983_i_shl26_i_result_buffer_result_buffer29_shift_x_q <= leftShiftStage1Idx1_uid981_i_shl26_i_result_buffer_result_buffer29_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid983_i_shl26_i_result_buffer_result_buffer29_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_sub27_i_result_buffer(ADD,694)@2
    i_sub27_i_result_buffer_a <= STD_LOGIC_VECTOR("0" & leftShiftStage1_uid983_i_shl26_i_result_buffer_result_buffer29_shift_x_q);
    i_sub27_i_result_buffer_b <= STD_LOGIC_VECTOR("0" & c_i32_65535_q);
    i_sub27_i_result_buffer_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub27_i_result_buffer_a) + UNSIGNED(i_sub27_i_result_buffer_b));
    i_sub27_i_result_buffer_q <= i_sub27_i_result_buffer_o(32 downto 0);

    -- bgTrunc_i_sub27_i_result_buffer_sel_x(BITSELECT,8)@2
    bgTrunc_i_sub27_i_result_buffer_sel_x_b <= i_sub27_i_result_buffer_q(31 downto 0);

    -- i_conv28_i_result_buffer_sel_x(BITSELECT,47)@2
    i_conv28_i_result_buffer_sel_x_b <= bgTrunc_i_sub27_i_result_buffer_sel_x_b(15 downto 0);

    -- c_i16_2047(CONSTANT,332)
    c_i16_2047_q <= "0000011111111111";

    -- i_cond1_tr_i_result_buffer_sel_x(BITSELECT,45)@2
    i_cond1_tr_i_result_buffer_sel_x_b <= redist71_sync_in_aunroll_x_in_c1_eni3_1_1_q(15 downto 0);

    -- i_conv22_i_result_buffer(LOGICAL,532)@2
    i_conv22_i_result_buffer_q <= i_cond1_tr_i_result_buffer_sel_x_b and c_i16_2047_q;

    -- i_conv22_i_result_buffer_vt_select_10(BITSELECT,535)@2
    i_conv22_i_result_buffer_vt_select_10_b <= i_conv22_i_result_buffer_q(10 downto 0);

    -- i_conv22_i_result_buffer_vt_join(BITJOIN,534)@2
    i_conv22_i_result_buffer_vt_join_q <= i_and29_i_result_buffer_vt_const_15_q & i_conv22_i_result_buffer_vt_select_10_b;

    -- i_and29_i_result_buffer(LOGICAL,459)@2
    i_and29_i_result_buffer_q <= i_conv22_i_result_buffer_vt_join_q and i_conv28_i_result_buffer_sel_x_b;

    -- i_and29_i_result_buffer_vt_select_10(BITSELECT,462)@2
    i_and29_i_result_buffer_vt_select_10_b <= i_and29_i_result_buffer_q(10 downto 0);

    -- i_and29_i_result_buffer_vt_join(BITJOIN,461)@2
    i_and29_i_result_buffer_vt_join_q <= i_and29_i_result_buffer_vt_const_15_q & i_and29_i_result_buffer_vt_select_10_b;

    -- leftShiftStage1Idx3Rng3_uid948_i_shl24_i_result_buffer_result_buffer28_shift_x(BITSELECT,947)@2
    leftShiftStage1Idx3Rng3_uid948_i_shl24_i_result_buffer_result_buffer28_shift_x_in <= leftShiftStage0_uid940_i_shl24_i_result_buffer_result_buffer28_shift_x_q(28 downto 0);
    leftShiftStage1Idx3Rng3_uid948_i_shl24_i_result_buffer_result_buffer28_shift_x_b <= leftShiftStage1Idx3Rng3_uid948_i_shl24_i_result_buffer_result_buffer28_shift_x_in(28 downto 0);

    -- leftShiftStage1Idx3_uid949_i_shl24_i_result_buffer_result_buffer28_shift_x(BITJOIN,948)@2
    leftShiftStage1Idx3_uid949_i_shl24_i_result_buffer_result_buffer28_shift_x_q <= leftShiftStage1Idx3Rng3_uid948_i_shl24_i_result_buffer_result_buffer28_shift_x_b & i_and2_or7_op_i_result_buffer_vt_const_2_q;

    -- leftShiftStage1Idx2Rng2_uid945_i_shl24_i_result_buffer_result_buffer28_shift_x(BITSELECT,944)@2
    leftShiftStage1Idx2Rng2_uid945_i_shl24_i_result_buffer_result_buffer28_shift_x_in <= leftShiftStage0_uid940_i_shl24_i_result_buffer_result_buffer28_shift_x_q(29 downto 0);
    leftShiftStage1Idx2Rng2_uid945_i_shl24_i_result_buffer_result_buffer28_shift_x_b <= leftShiftStage1Idx2Rng2_uid945_i_shl24_i_result_buffer_result_buffer28_shift_x_in(29 downto 0);

    -- leftShiftStage1Idx2_uid946_i_shl24_i_result_buffer_result_buffer28_shift_x(BITJOIN,945)@2
    leftShiftStage1Idx2_uid946_i_shl24_i_result_buffer_result_buffer28_shift_x_q <= leftShiftStage1Idx2Rng2_uid945_i_shl24_i_result_buffer_result_buffer28_shift_x_b & i_acl_47_i_result_buffer_vt_const_1_q;

    -- leftShiftStage1Idx1Rng1_uid942_i_shl24_i_result_buffer_result_buffer28_shift_x(BITSELECT,941)@2
    leftShiftStage1Idx1Rng1_uid942_i_shl24_i_result_buffer_result_buffer28_shift_x_in <= leftShiftStage0_uid940_i_shl24_i_result_buffer_result_buffer28_shift_x_q(30 downto 0);
    leftShiftStage1Idx1Rng1_uid942_i_shl24_i_result_buffer_result_buffer28_shift_x_b <= leftShiftStage1Idx1Rng1_uid942_i_shl24_i_result_buffer_result_buffer28_shift_x_in(30 downto 0);

    -- leftShiftStage1Idx1_uid943_i_shl24_i_result_buffer_result_buffer28_shift_x(BITJOIN,942)@2
    leftShiftStage1Idx1_uid943_i_shl24_i_result_buffer_result_buffer28_shift_x_q <= leftShiftStage1Idx1Rng1_uid942_i_shl24_i_result_buffer_result_buffer28_shift_x_b & GND_q;

    -- leftShiftStage0Idx7Rng28_uid937_i_shl24_i_result_buffer_result_buffer28_shift_x(BITSELECT,936)
    leftShiftStage0Idx7Rng28_uid937_i_shl24_i_result_buffer_result_buffer28_shift_x_in <= c_i32_1gr_q(3 downto 0);
    leftShiftStage0Idx7Rng28_uid937_i_shl24_i_result_buffer_result_buffer28_shift_x_b <= leftShiftStage0Idx7Rng28_uid937_i_shl24_i_result_buffer_result_buffer28_shift_x_in(3 downto 0);

    -- leftShiftStage0Idx7_uid938_i_shl24_i_result_buffer_result_buffer28_shift_x(BITJOIN,937)
    leftShiftStage0Idx7_uid938_i_shl24_i_result_buffer_result_buffer28_shift_x_q <= leftShiftStage0Idx7Rng28_uid937_i_shl24_i_result_buffer_result_buffer28_shift_x_b & i_and13_i_result_buffer_vt_const_31_q;

    -- leftShiftStage0Idx6Rng24_uid934_i_shl24_i_result_buffer_result_buffer28_shift_x(BITSELECT,933)
    leftShiftStage0Idx6Rng24_uid934_i_shl24_i_result_buffer_result_buffer28_shift_x_in <= c_i32_1gr_q(7 downto 0);
    leftShiftStage0Idx6Rng24_uid934_i_shl24_i_result_buffer_result_buffer28_shift_x_b <= leftShiftStage0Idx6Rng24_uid934_i_shl24_i_result_buffer_result_buffer28_shift_x_in(7 downto 0);

    -- i_sub10_i_result_buffer_vt_const_31(CONSTANT,689)
    i_sub10_i_result_buffer_vt_const_31_q <= "000000000000000000000000";

    -- leftShiftStage0Idx6_uid935_i_shl24_i_result_buffer_result_buffer28_shift_x(BITJOIN,934)
    leftShiftStage0Idx6_uid935_i_shl24_i_result_buffer_result_buffer28_shift_x_q <= leftShiftStage0Idx6Rng24_uid934_i_shl24_i_result_buffer_result_buffer28_shift_x_b & i_sub10_i_result_buffer_vt_const_31_q;

    -- leftShiftStage0Idx5Rng20_uid931_i_shl24_i_result_buffer_result_buffer28_shift_x(BITSELECT,930)
    leftShiftStage0Idx5Rng20_uid931_i_shl24_i_result_buffer_result_buffer28_shift_x_in <= c_i32_1gr_q(11 downto 0);
    leftShiftStage0Idx5Rng20_uid931_i_shl24_i_result_buffer_result_buffer28_shift_x_b <= leftShiftStage0Idx5Rng20_uid931_i_shl24_i_result_buffer_result_buffer28_shift_x_in(11 downto 0);

    -- i_and265_i_result_buffer_vt_const_31(CONSTANT,438)
    i_and265_i_result_buffer_vt_const_31_q <= "00000000000000000000";

    -- leftShiftStage0Idx5_uid932_i_shl24_i_result_buffer_result_buffer28_shift_x(BITJOIN,931)
    leftShiftStage0Idx5_uid932_i_shl24_i_result_buffer_result_buffer28_shift_x_q <= leftShiftStage0Idx5Rng20_uid931_i_shl24_i_result_buffer_result_buffer28_shift_x_b & i_and265_i_result_buffer_vt_const_31_q;

    -- leftShiftStage0Idx4Rng16_uid928_i_shl24_i_result_buffer_result_buffer28_shift_x(BITSELECT,927)
    leftShiftStage0Idx4Rng16_uid928_i_shl24_i_result_buffer_result_buffer28_shift_x_in <= c_i32_1gr_q(15 downto 0);
    leftShiftStage0Idx4Rng16_uid928_i_shl24_i_result_buffer_result_buffer28_shift_x_b <= leftShiftStage0Idx4Rng16_uid928_i_shl24_i_result_buffer_result_buffer28_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx4_uid929_i_shl24_i_result_buffer_result_buffer28_shift_x(BITJOIN,928)
    leftShiftStage0Idx4_uid929_i_shl24_i_result_buffer_result_buffer28_shift_x_q <= leftShiftStage0Idx4Rng16_uid928_i_shl24_i_result_buffer_result_buffer28_shift_x_b & i_shr20_i_i_result_buffer_vt_const_31_q;

    -- leftShiftStage0_uid940_i_shl24_i_result_buffer_result_buffer28_shift_x(MUX,939)@2
    leftShiftStage0_uid940_i_shl24_i_result_buffer_result_buffer28_shift_x_s <= leftShiftStageSel4Dto2_uid939_i_shl24_i_result_buffer_result_buffer28_shift_x_merged_bit_select_b;
    leftShiftStage0_uid940_i_shl24_i_result_buffer_result_buffer28_shift_x_combproc: PROCESS (leftShiftStage0_uid940_i_shl24_i_result_buffer_result_buffer28_shift_x_s, c_i32_1gr_q, leftShiftStage0Idx1_uid920_i_shl24_i_result_buffer_result_buffer28_shift_x_q, leftShiftStage0Idx2_uid923_i_shl24_i_result_buffer_result_buffer28_shift_x_q, leftShiftStage0Idx3_uid926_i_shl24_i_result_buffer_result_buffer28_shift_x_q, leftShiftStage0Idx4_uid929_i_shl24_i_result_buffer_result_buffer28_shift_x_q, leftShiftStage0Idx5_uid932_i_shl24_i_result_buffer_result_buffer28_shift_x_q, leftShiftStage0Idx6_uid935_i_shl24_i_result_buffer_result_buffer28_shift_x_q, leftShiftStage0Idx7_uid938_i_shl24_i_result_buffer_result_buffer28_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid940_i_shl24_i_result_buffer_result_buffer28_shift_x_s) IS
            WHEN "000" => leftShiftStage0_uid940_i_shl24_i_result_buffer_result_buffer28_shift_x_q <= c_i32_1gr_q;
            WHEN "001" => leftShiftStage0_uid940_i_shl24_i_result_buffer_result_buffer28_shift_x_q <= leftShiftStage0Idx1_uid920_i_shl24_i_result_buffer_result_buffer28_shift_x_q;
            WHEN "010" => leftShiftStage0_uid940_i_shl24_i_result_buffer_result_buffer28_shift_x_q <= leftShiftStage0Idx2_uid923_i_shl24_i_result_buffer_result_buffer28_shift_x_q;
            WHEN "011" => leftShiftStage0_uid940_i_shl24_i_result_buffer_result_buffer28_shift_x_q <= leftShiftStage0Idx3_uid926_i_shl24_i_result_buffer_result_buffer28_shift_x_q;
            WHEN "100" => leftShiftStage0_uid940_i_shl24_i_result_buffer_result_buffer28_shift_x_q <= leftShiftStage0Idx4_uid929_i_shl24_i_result_buffer_result_buffer28_shift_x_q;
            WHEN "101" => leftShiftStage0_uid940_i_shl24_i_result_buffer_result_buffer28_shift_x_q <= leftShiftStage0Idx5_uid932_i_shl24_i_result_buffer_result_buffer28_shift_x_q;
            WHEN "110" => leftShiftStage0_uid940_i_shl24_i_result_buffer_result_buffer28_shift_x_q <= leftShiftStage0Idx6_uid935_i_shl24_i_result_buffer_result_buffer28_shift_x_q;
            WHEN "111" => leftShiftStage0_uid940_i_shl24_i_result_buffer_result_buffer28_shift_x_q <= leftShiftStage0Idx7_uid938_i_shl24_i_result_buffer_result_buffer28_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid940_i_shl24_i_result_buffer_result_buffer28_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_sub23_i_result_buffer(ADD,693)@2
    i_sub23_i_result_buffer_a <= STD_LOGIC_VECTOR("0" & i_and20_i_result_buffer_vt_join_q);
    i_sub23_i_result_buffer_b <= STD_LOGIC_VECTOR("0" & dupName_0_c_i32_1gr_x_q);
    i_sub23_i_result_buffer_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub23_i_result_buffer_a) + UNSIGNED(i_sub23_i_result_buffer_b));
    i_sub23_i_result_buffer_q <= i_sub23_i_result_buffer_o(32 downto 0);

    -- bgTrunc_i_sub23_i_result_buffer_sel_x(BITSELECT,7)@2
    bgTrunc_i_sub23_i_result_buffer_sel_x_b <= i_sub23_i_result_buffer_q(31 downto 0);

    -- i_shl24_i_result_buffer_result_buffer28_shift_narrow_x(BITSELECT,265)@2
    i_shl24_i_result_buffer_result_buffer28_shift_narrow_x_b <= bgTrunc_i_sub23_i_result_buffer_sel_x_b(4 downto 0);

    -- leftShiftStageSel4Dto2_uid939_i_shl24_i_result_buffer_result_buffer28_shift_x_merged_bit_select(BITSELECT,1222)@2
    leftShiftStageSel4Dto2_uid939_i_shl24_i_result_buffer_result_buffer28_shift_x_merged_bit_select_b <= i_shl24_i_result_buffer_result_buffer28_shift_narrow_x_b(4 downto 2);
    leftShiftStageSel4Dto2_uid939_i_shl24_i_result_buffer_result_buffer28_shift_x_merged_bit_select_c <= i_shl24_i_result_buffer_result_buffer28_shift_narrow_x_b(1 downto 0);

    -- leftShiftStage1_uid951_i_shl24_i_result_buffer_result_buffer28_shift_x(MUX,950)@2
    leftShiftStage1_uid951_i_shl24_i_result_buffer_result_buffer28_shift_x_s <= leftShiftStageSel4Dto2_uid939_i_shl24_i_result_buffer_result_buffer28_shift_x_merged_bit_select_c;
    leftShiftStage1_uid951_i_shl24_i_result_buffer_result_buffer28_shift_x_combproc: PROCESS (leftShiftStage1_uid951_i_shl24_i_result_buffer_result_buffer28_shift_x_s, leftShiftStage0_uid940_i_shl24_i_result_buffer_result_buffer28_shift_x_q, leftShiftStage1Idx1_uid943_i_shl24_i_result_buffer_result_buffer28_shift_x_q, leftShiftStage1Idx2_uid946_i_shl24_i_result_buffer_result_buffer28_shift_x_q, leftShiftStage1Idx3_uid949_i_shl24_i_result_buffer_result_buffer28_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid951_i_shl24_i_result_buffer_result_buffer28_shift_x_s) IS
            WHEN "00" => leftShiftStage1_uid951_i_shl24_i_result_buffer_result_buffer28_shift_x_q <= leftShiftStage0_uid940_i_shl24_i_result_buffer_result_buffer28_shift_x_q;
            WHEN "01" => leftShiftStage1_uid951_i_shl24_i_result_buffer_result_buffer28_shift_x_q <= leftShiftStage1Idx1_uid943_i_shl24_i_result_buffer_result_buffer28_shift_x_q;
            WHEN "10" => leftShiftStage1_uid951_i_shl24_i_result_buffer_result_buffer28_shift_x_q <= leftShiftStage1Idx2_uid946_i_shl24_i_result_buffer_result_buffer28_shift_x_q;
            WHEN "11" => leftShiftStage1_uid951_i_shl24_i_result_buffer_result_buffer28_shift_x_q <= leftShiftStage1Idx3_uid949_i_shl24_i_result_buffer_result_buffer28_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid951_i_shl24_i_result_buffer_result_buffer28_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_conv25_i_result_buffer_sel_x(BITSELECT,46)@2
    i_conv25_i_result_buffer_sel_x_b <= leftShiftStage1_uid951_i_shl24_i_result_buffer_result_buffer28_shift_x_q(15 downto 0);

    -- i_cmp38_i_result_buffer(COMPARE,528)@2 + 1
    i_cmp38_i_result_buffer_a <= STD_LOGIC_VECTOR("00" & i_conv25_i_result_buffer_sel_x_b);
    i_cmp38_i_result_buffer_b <= STD_LOGIC_VECTOR("00" & i_and29_i_result_buffer_vt_join_q);
    i_cmp38_i_result_buffer_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp38_i_result_buffer_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp38_i_result_buffer_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp38_i_result_buffer_a) - UNSIGNED(i_cmp38_i_result_buffer_b));
        END IF;
    END PROCESS;
    i_cmp38_i_result_buffer_c(0) <= i_cmp38_i_result_buffer_o(17);

    -- i_cmp35_i_result_buffer(LOGICAL,526)@2 + 1
    i_cmp35_i_result_buffer_qi <= "1" WHEN i_and29_i_result_buffer_vt_join_q = i_conv25_i_result_buffer_sel_x_b ELSE "0";
    i_cmp35_i_result_buffer_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp35_i_result_buffer_qi, xout => i_cmp35_i_result_buffer_q, clk => clock, aclr => resetn );

    -- i_acl_5_i_result_buffer(MUX,396)@3
    i_acl_5_i_result_buffer_s <= i_cmp35_i_result_buffer_q;
    i_acl_5_i_result_buffer_combproc: PROCESS (i_acl_5_i_result_buffer_s, i_cmp38_i_result_buffer_c, i_or_cond_i_result_buffer_q)
    BEGIN
        CASE (i_acl_5_i_result_buffer_s) IS
            WHEN "0" => i_acl_5_i_result_buffer_q <= i_cmp38_i_result_buffer_c;
            WHEN "1" => i_acl_5_i_result_buffer_q <= i_or_cond_i_result_buffer_q;
            WHEN OTHERS => i_acl_5_i_result_buffer_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_6_i_result_buffer(LOGICAL,397)@3
    i_acl_6_i_result_buffer_q <= i_acl_5_i_result_buffer_q and i_not_cmp9_i_result_buffer_q;

    -- i_acl_7_i_result_buffer_sel_x(BITSELECT,16)@3
    i_acl_7_i_result_buffer_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_6_i_result_buffer_q(0 downto 0)), 64));

    -- i_acl_7_i_result_buffer_vt_select_0(BITSELECT,401)@3
    i_acl_7_i_result_buffer_vt_select_0_b <= i_acl_7_i_result_buffer_sel_x_b(0 downto 0);

    -- i_acl_7_i_result_buffer_vt_join(BITJOIN,400)@3
    i_acl_7_i_result_buffer_vt_join_q <= i_acl_10_i_result_buffer_vt_const_63_q & i_acl_7_i_result_buffer_vt_select_0_b;

    -- i_or_cond_not_i_result_buffer(LOGICAL,601)@3
    i_or_cond_not_i_result_buffer_q <= i_or_cond_i_result_buffer_q xor VCC_q;

    -- i_acl_8_i_result_buffer(LOGICAL,402)@3
    i_acl_8_i_result_buffer_q <= i_cmp35_i_result_buffer_q and i_or_cond_not_i_result_buffer_q;

    -- i_acl_9_i_result_buffer(LOGICAL,403)@3
    i_acl_9_i_result_buffer_q <= i_acl_8_i_result_buffer_q and i_not_cmp9_i_result_buffer_q;

    -- i_acl_10_i_result_buffer(MUX,378)@3
    i_acl_10_i_result_buffer_s <= i_acl_9_i_result_buffer_q;
    i_acl_10_i_result_buffer_combproc: PROCESS (i_acl_10_i_result_buffer_s, i_acl_7_i_result_buffer_vt_join_q, dupName_0_c_i64_0gr_x_q)
    BEGIN
        CASE (i_acl_10_i_result_buffer_s) IS
            WHEN "0" => i_acl_10_i_result_buffer_q <= i_acl_7_i_result_buffer_vt_join_q;
            WHEN "1" => i_acl_10_i_result_buffer_q <= dupName_0_c_i64_0gr_x_q;
            WHEN OTHERS => i_acl_10_i_result_buffer_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_10_i_result_buffer_vt_select_0(BITSELECT,381)@3
    i_acl_10_i_result_buffer_vt_select_0_b <= i_acl_10_i_result_buffer_q(0 downto 0);

    -- i_acl_10_i_result_buffer_vt_join(BITJOIN,380)@3
    i_acl_10_i_result_buffer_vt_join_q <= i_acl_10_i_result_buffer_vt_const_63_q & i_acl_10_i_result_buffer_vt_select_0_b;

    -- i_add_i_i_result_buffer_vt_const_31(CONSTANT,407)
    i_add_i_i_result_buffer_vt_const_31_q <= "0000000000000000000000000";

    -- c_i32_32(CONSTANT,347)
    c_i32_32_q <= "00000000000000000000000000100000";

    -- i_add_i_i_result_buffer(ADD,406)@2
    i_add_i_i_result_buffer_a <= STD_LOGIC_VECTOR("0" & i_llvm_ctpop_i32_unnamed_result_buffer3_result_buffer_vt_join_q);
    i_add_i_i_result_buffer_b <= STD_LOGIC_VECTOR("0" & c_i32_32_q);
    i_add_i_i_result_buffer_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_i_i_result_buffer_a) + UNSIGNED(i_add_i_i_result_buffer_b));
    i_add_i_i_result_buffer_q <= i_add_i_i_result_buffer_o(32 downto 0);

    -- bgTrunc_i_add_i_i_result_buffer_sel_x(BITSELECT,2)@2
    bgTrunc_i_add_i_i_result_buffer_sel_x_b <= i_add_i_i_result_buffer_q(31 downto 0);

    -- i_add_i_i_result_buffer_vt_select_6(BITSELECT,409)@2
    i_add_i_i_result_buffer_vt_select_6_b <= bgTrunc_i_add_i_i_result_buffer_sel_x_b(6 downto 0);

    -- i_add_i_i_result_buffer_vt_join(BITJOIN,408)@2
    i_add_i_i_result_buffer_vt_join_q <= i_add_i_i_result_buffer_vt_const_31_q & i_add_i_i_result_buffer_vt_select_6_b;

    -- c_i32_10(CONSTANT,336)
    c_i32_10_q <= "00000000000000000000000000001010";

    -- i_cmp9_i_result_buffer(COMPARE,530)@2
    i_cmp9_i_result_buffer_a <= STD_LOGIC_VECTOR("00" & c_i32_10_q);
    i_cmp9_i_result_buffer_b <= STD_LOGIC_VECTOR("00" & i_add_i_i_result_buffer_vt_join_q);
    i_cmp9_i_result_buffer_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp9_i_result_buffer_a) - UNSIGNED(i_cmp9_i_result_buffer_b));
    i_cmp9_i_result_buffer_c(0) <= i_cmp9_i_result_buffer_o(33);

    -- redist68_i_cmp9_i_result_buffer_c_1(DELAY,1294)
    redist68_i_cmp9_i_result_buffer_c_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp9_i_result_buffer_c, xout => redist68_i_cmp9_i_result_buffer_c_1_q, clk => clock, aclr => resetn );

    -- i_acl_11_i_result_buffer(MUX,382)@3
    i_acl_11_i_result_buffer_s <= redist68_i_cmp9_i_result_buffer_c_1_q;
    i_acl_11_i_result_buffer_combproc: PROCESS (i_acl_11_i_result_buffer_s, i_acl_10_i_result_buffer_vt_join_q, dupName_0_c_i64_0gr_x_q)
    BEGIN
        CASE (i_acl_11_i_result_buffer_s) IS
            WHEN "0" => i_acl_11_i_result_buffer_q <= i_acl_10_i_result_buffer_vt_join_q;
            WHEN "1" => i_acl_11_i_result_buffer_q <= dupName_0_c_i64_0gr_x_q;
            WHEN OTHERS => i_acl_11_i_result_buffer_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_11_i_result_buffer_vt_select_0(BITSELECT,385)@3
    i_acl_11_i_result_buffer_vt_select_0_b <= i_acl_11_i_result_buffer_q(0 downto 0);

    -- i_acl_11_i_result_buffer_vt_join(BITJOIN,384)@3
    i_acl_11_i_result_buffer_vt_join_q <= i_acl_10_i_result_buffer_vt_const_63_q & i_acl_11_i_result_buffer_vt_select_0_b;

    -- leftShiftStage2Idx1Rng4_uid880_i_op_i_result_buffer_result_buffer34_shift_x(BITSELECT,879)@2
    leftShiftStage2Idx1Rng4_uid880_i_op_i_result_buffer_result_buffer34_shift_x_in <= leftShiftStage1_uid878_i_op_i_result_buffer_result_buffer34_shift_x_q(59 downto 0);
    leftShiftStage2Idx1Rng4_uid880_i_op_i_result_buffer_result_buffer34_shift_x_b <= leftShiftStage2Idx1Rng4_uid880_i_op_i_result_buffer_result_buffer34_shift_x_in(59 downto 0);

    -- leftShiftStage2Idx1_uid881_i_op_i_result_buffer_result_buffer34_shift_x(BITJOIN,880)@2
    leftShiftStage2Idx1_uid881_i_op_i_result_buffer_result_buffer34_shift_x_q <= leftShiftStage2Idx1Rng4_uid880_i_op_i_result_buffer_result_buffer34_shift_x_b & i_and12_i_result_buffer_vt_const_3_q;

    -- leftShiftStage1Idx1Rng16_uid875_i_op_i_result_buffer_result_buffer34_shift_x(BITSELECT,874)@2
    leftShiftStage1Idx1Rng16_uid875_i_op_i_result_buffer_result_buffer34_shift_x_in <= leftShiftStage0_uid873_i_op_i_result_buffer_result_buffer34_shift_x_q(47 downto 0);
    leftShiftStage1Idx1Rng16_uid875_i_op_i_result_buffer_result_buffer34_shift_x_b <= leftShiftStage1Idx1Rng16_uid875_i_op_i_result_buffer_result_buffer34_shift_x_in(47 downto 0);

    -- leftShiftStage1Idx1_uid876_i_op_i_result_buffer_result_buffer34_shift_x(BITJOIN,875)@2
    leftShiftStage1Idx1_uid876_i_op_i_result_buffer_result_buffer34_shift_x_q <= leftShiftStage1Idx1Rng16_uid875_i_op_i_result_buffer_result_buffer34_shift_x_b & i_shr20_i_i_result_buffer_vt_const_31_q;

    -- leftShiftStage0Idx1Rng32_uid870_i_op_i_result_buffer_result_buffer34_shift_x(BITSELECT,869)@2
    leftShiftStage0Idx1Rng32_uid870_i_op_i_result_buffer_result_buffer34_shift_x_in <= i_unnamed_result_buffer24_vt_join_q(31 downto 0);
    leftShiftStage0Idx1Rng32_uid870_i_op_i_result_buffer_result_buffer34_shift_x_b <= leftShiftStage0Idx1Rng32_uid870_i_op_i_result_buffer_result_buffer34_shift_x_in(31 downto 0);

    -- leftShiftStage0Idx1_uid871_i_op_i_result_buffer_result_buffer34_shift_x(BITJOIN,870)@2
    leftShiftStage0Idx1_uid871_i_op_i_result_buffer_result_buffer34_shift_x_q <= leftShiftStage0Idx1Rng32_uid870_i_op_i_result_buffer_result_buffer34_shift_x_b & c_i32_0gr_q;

    -- i_shr4_i_result_buffer_vt_const_63(CONSTANT,684)
    i_shr4_i_result_buffer_vt_const_63_q <= "00000000000000000000000000000000000000000000000000000";

    -- i_conv_i_result_buffer_vt_const_31(CONSTANT,556)
    i_conv_i_result_buffer_vt_const_31_q <= "000000000000000000000";

    -- c_i32_1054(CONSTANT,337)
    c_i32_1054_q <= "00000000000000000000010000011110";

    -- i_sub5_i_result_buffer(SUB,699)@2
    i_sub5_i_result_buffer_a <= STD_LOGIC_VECTOR("0" & c_i32_1054_q);
    i_sub5_i_result_buffer_b <= STD_LOGIC_VECTOR("0" & i_llvm_ctpop_i32_unnamed_result_buffer3_result_buffer_vt_join_q);
    i_sub5_i_result_buffer_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub5_i_result_buffer_a) - UNSIGNED(i_sub5_i_result_buffer_b));
    i_sub5_i_result_buffer_q <= i_sub5_i_result_buffer_o(32 downto 0);

    -- bgTrunc_i_sub5_i_result_buffer_sel_x(BITSELECT,10)@2
    bgTrunc_i_sub5_i_result_buffer_sel_x_b <= STD_LOGIC_VECTOR(i_sub5_i_result_buffer_q(31 downto 0));

    -- i_sub5_i_result_buffer_vt_select_10(BITSELECT,702)@2
    i_sub5_i_result_buffer_vt_select_10_b <= bgTrunc_i_sub5_i_result_buffer_sel_x_b(10 downto 0);

    -- i_sub5_i_result_buffer_vt_join(BITJOIN,701)@2
    i_sub5_i_result_buffer_vt_join_q <= i_conv_i_result_buffer_vt_const_31_q & i_sub5_i_result_buffer_vt_select_10_b;

    -- i_unnamed_result_buffer24_sel_x(BITSELECT,315)@2
    i_unnamed_result_buffer24_sel_x_b <= std_logic_vector(resize(unsigned(i_sub5_i_result_buffer_vt_join_q(31 downto 0)), 64));

    -- i_unnamed_result_buffer24_vt_select_10(BITSELECT,716)@2
    i_unnamed_result_buffer24_vt_select_10_b <= i_unnamed_result_buffer24_sel_x_b(10 downto 0);

    -- i_unnamed_result_buffer24_vt_join(BITJOIN,715)@2
    i_unnamed_result_buffer24_vt_join_q <= i_shr4_i_result_buffer_vt_const_63_q & i_unnamed_result_buffer24_vt_select_10_b;

    -- leftShiftStage0_uid873_i_op_i_result_buffer_result_buffer34_shift_x(MUX,872)@2
    leftShiftStage0_uid873_i_op_i_result_buffer_result_buffer34_shift_x_s <= VCC_q;
    leftShiftStage0_uid873_i_op_i_result_buffer_result_buffer34_shift_x_combproc: PROCESS (leftShiftStage0_uid873_i_op_i_result_buffer_result_buffer34_shift_x_s, i_unnamed_result_buffer24_vt_join_q, leftShiftStage0Idx1_uid871_i_op_i_result_buffer_result_buffer34_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid873_i_op_i_result_buffer_result_buffer34_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid873_i_op_i_result_buffer_result_buffer34_shift_x_q <= i_unnamed_result_buffer24_vt_join_q;
            WHEN "1" => leftShiftStage0_uid873_i_op_i_result_buffer_result_buffer34_shift_x_q <= leftShiftStage0Idx1_uid871_i_op_i_result_buffer_result_buffer34_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid873_i_op_i_result_buffer_result_buffer34_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid878_i_op_i_result_buffer_result_buffer34_shift_x(MUX,877)@2
    leftShiftStage1_uid878_i_op_i_result_buffer_result_buffer34_shift_x_s <= VCC_q;
    leftShiftStage1_uid878_i_op_i_result_buffer_result_buffer34_shift_x_combproc: PROCESS (leftShiftStage1_uid878_i_op_i_result_buffer_result_buffer34_shift_x_s, leftShiftStage0_uid873_i_op_i_result_buffer_result_buffer34_shift_x_q, leftShiftStage1Idx1_uid876_i_op_i_result_buffer_result_buffer34_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid878_i_op_i_result_buffer_result_buffer34_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid878_i_op_i_result_buffer_result_buffer34_shift_x_q <= leftShiftStage0_uid873_i_op_i_result_buffer_result_buffer34_shift_x_q;
            WHEN "1" => leftShiftStage1_uid878_i_op_i_result_buffer_result_buffer34_shift_x_q <= leftShiftStage1Idx1_uid876_i_op_i_result_buffer_result_buffer34_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid878_i_op_i_result_buffer_result_buffer34_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid883_i_op_i_result_buffer_result_buffer34_shift_x(MUX,882)@2
    leftShiftStage2_uid883_i_op_i_result_buffer_result_buffer34_shift_x_s <= VCC_q;
    leftShiftStage2_uid883_i_op_i_result_buffer_result_buffer34_shift_x_combproc: PROCESS (leftShiftStage2_uid883_i_op_i_result_buffer_result_buffer34_shift_x_s, leftShiftStage1_uid878_i_op_i_result_buffer_result_buffer34_shift_x_q, leftShiftStage2Idx1_uid881_i_op_i_result_buffer_result_buffer34_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid883_i_op_i_result_buffer_result_buffer34_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid883_i_op_i_result_buffer_result_buffer34_shift_x_q <= leftShiftStage1_uid878_i_op_i_result_buffer_result_buffer34_shift_x_q;
            WHEN "1" => leftShiftStage2_uid883_i_op_i_result_buffer_result_buffer34_shift_x_q <= leftShiftStage2Idx1_uid881_i_op_i_result_buffer_result_buffer34_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid883_i_op_i_result_buffer_result_buffer34_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_op_i_result_buffer_vt_select_62(BITSELECT,582)@2
    i_op_i_result_buffer_vt_select_62_b <= leftShiftStage2_uid883_i_op_i_result_buffer_result_buffer34_shift_x_q(62 downto 52);

    -- i_op_i_result_buffer_vt_join(BITJOIN,581)@2
    i_op_i_result_buffer_vt_join_q <= GND_q & i_op_i_result_buffer_vt_select_62_b & i_and1_i_result_buffer_vt_const_51_q;

    -- c_i32_64(CONSTANT,353)
    c_i32_64_q <= "00000000000000000000000001000000";

    -- i_cmp2_i_result_buffer(LOGICAL,525)@2
    i_cmp2_i_result_buffer_q <= "1" WHEN i_add_i_i_result_buffer_vt_join_q = c_i32_64_q ELSE "0";

    -- i_shl42_i_result_buffer(MUX,639)@2
    i_shl42_i_result_buffer_s <= i_cmp2_i_result_buffer_q;
    i_shl42_i_result_buffer_combproc: PROCESS (i_shl42_i_result_buffer_s, i_op_i_result_buffer_vt_join_q, dupName_0_c_i64_0gr_x_q)
    BEGIN
        CASE (i_shl42_i_result_buffer_s) IS
            WHEN "0" => i_shl42_i_result_buffer_q <= i_op_i_result_buffer_vt_join_q;
            WHEN "1" => i_shl42_i_result_buffer_q <= dupName_0_c_i64_0gr_x_q;
            WHEN OTHERS => i_shl42_i_result_buffer_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shl42_i_result_buffer_vt_select_62(BITSELECT,643)@2
    i_shl42_i_result_buffer_vt_select_62_b <= i_shl42_i_result_buffer_q(62 downto 52);

    -- i_shl42_i_result_buffer_vt_join(BITJOIN,642)@2
    i_shl42_i_result_buffer_vt_join_q <= GND_q & i_shl42_i_result_buffer_vt_select_62_b & i_and1_i_result_buffer_vt_const_51_q;

    -- leftShiftStage0Idx3Rng3_uid910_i_shl18_i_result_buffer_result_buffer27_shift_x(BITSELECT,909)@2
    leftShiftStage0Idx3Rng3_uid910_i_shl18_i_result_buffer_result_buffer27_shift_x_in <= leftShiftStage0_uid898_i_shl15_i_result_buffer_result_buffer26_shift_x_q(60 downto 0);
    leftShiftStage0Idx3Rng3_uid910_i_shl18_i_result_buffer_result_buffer27_shift_x_b <= leftShiftStage0Idx3Rng3_uid910_i_shl18_i_result_buffer_result_buffer27_shift_x_in(60 downto 0);

    -- leftShiftStage0Idx3_uid911_i_shl18_i_result_buffer_result_buffer27_shift_x(BITJOIN,910)@2
    leftShiftStage0Idx3_uid911_i_shl18_i_result_buffer_result_buffer27_shift_x_q <= leftShiftStage0Idx3Rng3_uid910_i_shl18_i_result_buffer_result_buffer27_shift_x_b & i_and2_or7_op_i_result_buffer_vt_const_2_q;

    -- leftShiftStage0Idx2Rng2_uid907_i_shl18_i_result_buffer_result_buffer27_shift_x(BITSELECT,906)@2
    leftShiftStage0Idx2Rng2_uid907_i_shl18_i_result_buffer_result_buffer27_shift_x_in <= leftShiftStage0_uid898_i_shl15_i_result_buffer_result_buffer26_shift_x_q(61 downto 0);
    leftShiftStage0Idx2Rng2_uid907_i_shl18_i_result_buffer_result_buffer27_shift_x_b <= leftShiftStage0Idx2Rng2_uid907_i_shl18_i_result_buffer_result_buffer27_shift_x_in(61 downto 0);

    -- leftShiftStage0Idx2_uid908_i_shl18_i_result_buffer_result_buffer27_shift_x(BITJOIN,907)@2
    leftShiftStage0Idx2_uid908_i_shl18_i_result_buffer_result_buffer27_shift_x_q <= leftShiftStage0Idx2Rng2_uid907_i_shl18_i_result_buffer_result_buffer27_shift_x_b & i_acl_47_i_result_buffer_vt_const_1_q;

    -- leftShiftStage0Idx1Rng1_uid904_i_shl18_i_result_buffer_result_buffer27_shift_x(BITSELECT,903)@2
    leftShiftStage0Idx1Rng1_uid904_i_shl18_i_result_buffer_result_buffer27_shift_x_in <= leftShiftStage0_uid898_i_shl15_i_result_buffer_result_buffer26_shift_x_q(62 downto 0);
    leftShiftStage0Idx1Rng1_uid904_i_shl18_i_result_buffer_result_buffer27_shift_x_b <= leftShiftStage0Idx1Rng1_uid904_i_shl18_i_result_buffer_result_buffer27_shift_x_in(62 downto 0);

    -- leftShiftStage0Idx1_uid905_i_shl18_i_result_buffer_result_buffer27_shift_x(BITJOIN,904)@2
    leftShiftStage0Idx1_uid905_i_shl18_i_result_buffer_result_buffer27_shift_x_q <= leftShiftStage0Idx1Rng1_uid904_i_shl18_i_result_buffer_result_buffer27_shift_x_b & GND_q;

    -- leftShiftStage0Idx3Rng12_uid895_i_shl15_i_result_buffer_result_buffer26_shift_x(BITSELECT,894)@2
    leftShiftStage0Idx3Rng12_uid895_i_shl15_i_result_buffer_result_buffer26_shift_x_in <= leftShiftStage0_uid1022_i_shl_i_result_buffer_result_buffer25_shift_x_q(51 downto 0);
    leftShiftStage0Idx3Rng12_uid895_i_shl15_i_result_buffer_result_buffer26_shift_x_b <= leftShiftStage0Idx3Rng12_uid895_i_shl15_i_result_buffer_result_buffer26_shift_x_in(51 downto 0);

    -- leftShiftStage0Idx3_uid896_i_shl15_i_result_buffer_result_buffer26_shift_x(BITJOIN,895)@2
    leftShiftStage0Idx3_uid896_i_shl15_i_result_buffer_result_buffer26_shift_x_q <= leftShiftStage0Idx3Rng12_uid895_i_shl15_i_result_buffer_result_buffer26_shift_x_b & i_and253_i_result_buffer_vt_const_11_q;

    -- leftShiftStage0Idx2Rng8_uid892_i_shl15_i_result_buffer_result_buffer26_shift_x(BITSELECT,891)@2
    leftShiftStage0Idx2Rng8_uid892_i_shl15_i_result_buffer_result_buffer26_shift_x_in <= leftShiftStage0_uid1022_i_shl_i_result_buffer_result_buffer25_shift_x_q(55 downto 0);
    leftShiftStage0Idx2Rng8_uid892_i_shl15_i_result_buffer_result_buffer26_shift_x_b <= leftShiftStage0Idx2Rng8_uid892_i_shl15_i_result_buffer_result_buffer26_shift_x_in(55 downto 0);

    -- leftShiftStage0Idx2_uid893_i_shl15_i_result_buffer_result_buffer26_shift_x(BITJOIN,892)@2
    leftShiftStage0Idx2_uid893_i_shl15_i_result_buffer_result_buffer26_shift_x_q <= leftShiftStage0Idx2Rng8_uid892_i_shl15_i_result_buffer_result_buffer26_shift_x_b & c_i8_0gr_q;

    -- leftShiftStage0Idx1Rng4_uid889_i_shl15_i_result_buffer_result_buffer26_shift_x(BITSELECT,888)@2
    leftShiftStage0Idx1Rng4_uid889_i_shl15_i_result_buffer_result_buffer26_shift_x_in <= leftShiftStage0_uid1022_i_shl_i_result_buffer_result_buffer25_shift_x_q(59 downto 0);
    leftShiftStage0Idx1Rng4_uid889_i_shl15_i_result_buffer_result_buffer26_shift_x_b <= leftShiftStage0Idx1Rng4_uid889_i_shl15_i_result_buffer_result_buffer26_shift_x_in(59 downto 0);

    -- leftShiftStage0Idx1_uid890_i_shl15_i_result_buffer_result_buffer26_shift_x(BITJOIN,889)@2
    leftShiftStage0Idx1_uid890_i_shl15_i_result_buffer_result_buffer26_shift_x_q <= leftShiftStage0Idx1Rng4_uid889_i_shl15_i_result_buffer_result_buffer26_shift_x_b & i_and12_i_result_buffer_vt_const_3_q;

    -- leftShiftStage0Idx3Rng48_uid1019_i_shl_i_result_buffer_result_buffer25_shift_x(BITSELECT,1018)@2
    leftShiftStage0Idx3Rng48_uid1019_i_shl_i_result_buffer_result_buffer25_shift_x_in <= i_conv_i_i_result_buffer_vt_join_q(15 downto 0);
    leftShiftStage0Idx3Rng48_uid1019_i_shl_i_result_buffer_result_buffer25_shift_x_b <= leftShiftStage0Idx3Rng48_uid1019_i_shl_i_result_buffer_result_buffer25_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx3Pad48_uid1018_i_shl_i_result_buffer_result_buffer25_shift_x(CONSTANT,1017)
    leftShiftStage0Idx3Pad48_uid1018_i_shl_i_result_buffer_result_buffer25_shift_x_q <= "000000000000000000000000000000000000000000000000";

    -- leftShiftStage0Idx3_uid1020_i_shl_i_result_buffer_result_buffer25_shift_x(BITJOIN,1019)@2
    leftShiftStage0Idx3_uid1020_i_shl_i_result_buffer_result_buffer25_shift_x_q <= leftShiftStage0Idx3Rng48_uid1019_i_shl_i_result_buffer_result_buffer25_shift_x_b & leftShiftStage0Idx3Pad48_uid1018_i_shl_i_result_buffer_result_buffer25_shift_x_q;

    -- leftShiftStage0Idx2Rng32_uid1016_i_shl_i_result_buffer_result_buffer25_shift_x(BITSELECT,1015)@2
    leftShiftStage0Idx2Rng32_uid1016_i_shl_i_result_buffer_result_buffer25_shift_x_in <= i_conv_i_i_result_buffer_vt_join_q(31 downto 0);
    leftShiftStage0Idx2Rng32_uid1016_i_shl_i_result_buffer_result_buffer25_shift_x_b <= leftShiftStage0Idx2Rng32_uid1016_i_shl_i_result_buffer_result_buffer25_shift_x_in(31 downto 0);

    -- leftShiftStage0Idx2_uid1017_i_shl_i_result_buffer_result_buffer25_shift_x(BITJOIN,1016)@2
    leftShiftStage0Idx2_uid1017_i_shl_i_result_buffer_result_buffer25_shift_x_q <= leftShiftStage0Idx2Rng32_uid1016_i_shl_i_result_buffer_result_buffer25_shift_x_b & c_i32_0gr_q;

    -- leftShiftStage0Idx1Rng16_uid1013_i_shl_i_result_buffer_result_buffer25_shift_x(BITSELECT,1012)@2
    leftShiftStage0Idx1Rng16_uid1013_i_shl_i_result_buffer_result_buffer25_shift_x_in <= i_conv_i_i_result_buffer_vt_join_q(47 downto 0);
    leftShiftStage0Idx1Rng16_uid1013_i_shl_i_result_buffer_result_buffer25_shift_x_b <= leftShiftStage0Idx1Rng16_uid1013_i_shl_i_result_buffer_result_buffer25_shift_x_in(47 downto 0);

    -- leftShiftStage0Idx1_uid1014_i_shl_i_result_buffer_result_buffer25_shift_x(BITJOIN,1013)@2
    leftShiftStage0Idx1_uid1014_i_shl_i_result_buffer_result_buffer25_shift_x_q <= leftShiftStage0Idx1Rng16_uid1013_i_shl_i_result_buffer_result_buffer25_shift_x_b & i_shr20_i_i_result_buffer_vt_const_31_q;

    -- i_sh_prom_i_result_buffer_vt_const_63(CONSTANT,631)
    i_sh_prom_i_result_buffer_vt_const_63_q <= "0000000000000000000000000000000000000000000000000000000000";

    -- c_i32_85(CONSTANT,357)
    c_i32_85_q <= "00000000000000000000000001010101";

    -- i_sub10_i_result_buffer(ADD,688)@2
    i_sub10_i_result_buffer_a <= STD_LOGIC_VECTOR("0" & i_llvm_ctpop_i32_unnamed_result_buffer3_result_buffer_vt_join_q);
    i_sub10_i_result_buffer_b <= STD_LOGIC_VECTOR("0" & c_i32_85_q);
    i_sub10_i_result_buffer_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub10_i_result_buffer_a) + UNSIGNED(i_sub10_i_result_buffer_b));
    i_sub10_i_result_buffer_q <= i_sub10_i_result_buffer_o(32 downto 0);

    -- bgTrunc_i_sub10_i_result_buffer_sel_x(BITSELECT,5)@2
    bgTrunc_i_sub10_i_result_buffer_sel_x_b <= i_sub10_i_result_buffer_q(31 downto 0);

    -- i_sub10_i_result_buffer_vt_select_7(BITSELECT,691)@2
    i_sub10_i_result_buffer_vt_select_7_b <= bgTrunc_i_sub10_i_result_buffer_sel_x_b(7 downto 0);

    -- i_sub10_i_result_buffer_vt_join(BITJOIN,690)@2
    i_sub10_i_result_buffer_vt_join_q <= i_sub10_i_result_buffer_vt_const_31_q & i_sub10_i_result_buffer_vt_select_7_b;

    -- i_and12_i_result_buffer_BitSelect_for_a_merged_bit_select(BITSELECT,1225)@2
    i_and12_i_result_buffer_BitSelect_for_a_merged_bit_select_in <= i_sub10_i_result_buffer_vt_join_q(5 downto 0);
    i_and12_i_result_buffer_BitSelect_for_a_merged_bit_select_b <= i_and12_i_result_buffer_BitSelect_for_a_merged_bit_select_in(5 downto 4);
    i_and12_i_result_buffer_BitSelect_for_a_merged_bit_select_c <= i_and12_i_result_buffer_BitSelect_for_a_merged_bit_select_in(3 downto 2);
    i_and12_i_result_buffer_BitSelect_for_a_merged_bit_select_d <= i_and12_i_result_buffer_BitSelect_for_a_merged_bit_select_in(1 downto 0);

    -- i_and12_i_result_buffer_join(BITJOIN,1156)@2
    i_and12_i_result_buffer_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and12_i_result_buffer_BitSelect_for_a_merged_bit_select_b & GND_q & GND_q & GND_q & GND_q;

    -- i_and12_i_result_buffer_vt_select_5(BITSELECT,415)@2
    i_and12_i_result_buffer_vt_select_5_b <= i_and12_i_result_buffer_join_q(5 downto 4);

    -- i_and12_i_result_buffer_vt_join(BITJOIN,414)@2
    i_and12_i_result_buffer_vt_join_q <= i_and12_i_result_buffer_vt_const_31_q & i_and12_i_result_buffer_vt_select_5_b & i_and12_i_result_buffer_vt_const_3_q;

    -- i_sh_prom_i_result_buffer_sel_x(BITSELECT,253)@2
    i_sh_prom_i_result_buffer_sel_x_b <= std_logic_vector(resize(unsigned(i_and12_i_result_buffer_vt_join_q(31 downto 0)), 64));

    -- i_sh_prom_i_result_buffer_vt_select_5(BITSELECT,633)@2
    i_sh_prom_i_result_buffer_vt_select_5_b <= i_sh_prom_i_result_buffer_sel_x_b(5 downto 4);

    -- i_sh_prom_i_result_buffer_vt_join(BITJOIN,632)@2
    i_sh_prom_i_result_buffer_vt_join_q <= i_sh_prom_i_result_buffer_vt_const_63_q & i_sh_prom_i_result_buffer_vt_select_5_b & i_and12_i_result_buffer_vt_const_3_q;

    -- i_shl_i_result_buffer_result_buffer25_shift_narrow_x(BITSELECT,277)@2
    i_shl_i_result_buffer_result_buffer25_shift_narrow_x_b <= i_sh_prom_i_result_buffer_vt_join_q(5 downto 0);

    -- leftShiftStageSel5Dto4_uid1021_i_shl_i_result_buffer_result_buffer25_shift_x(BITSELECT,1020)@2
    leftShiftStageSel5Dto4_uid1021_i_shl_i_result_buffer_result_buffer25_shift_x_b <= i_shl_i_result_buffer_result_buffer25_shift_narrow_x_b(5 downto 4);

    -- leftShiftStage0_uid1022_i_shl_i_result_buffer_result_buffer25_shift_x(MUX,1021)@2
    leftShiftStage0_uid1022_i_shl_i_result_buffer_result_buffer25_shift_x_s <= leftShiftStageSel5Dto4_uid1021_i_shl_i_result_buffer_result_buffer25_shift_x_b;
    leftShiftStage0_uid1022_i_shl_i_result_buffer_result_buffer25_shift_x_combproc: PROCESS (leftShiftStage0_uid1022_i_shl_i_result_buffer_result_buffer25_shift_x_s, i_conv_i_i_result_buffer_vt_join_q, leftShiftStage0Idx1_uid1014_i_shl_i_result_buffer_result_buffer25_shift_x_q, leftShiftStage0Idx2_uid1017_i_shl_i_result_buffer_result_buffer25_shift_x_q, leftShiftStage0Idx3_uid1020_i_shl_i_result_buffer_result_buffer25_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1022_i_shl_i_result_buffer_result_buffer25_shift_x_s) IS
            WHEN "00" => leftShiftStage0_uid1022_i_shl_i_result_buffer_result_buffer25_shift_x_q <= i_conv_i_i_result_buffer_vt_join_q;
            WHEN "01" => leftShiftStage0_uid1022_i_shl_i_result_buffer_result_buffer25_shift_x_q <= leftShiftStage0Idx1_uid1014_i_shl_i_result_buffer_result_buffer25_shift_x_q;
            WHEN "10" => leftShiftStage0_uid1022_i_shl_i_result_buffer_result_buffer25_shift_x_q <= leftShiftStage0Idx2_uid1017_i_shl_i_result_buffer_result_buffer25_shift_x_q;
            WHEN "11" => leftShiftStage0_uid1022_i_shl_i_result_buffer_result_buffer25_shift_x_q <= leftShiftStage0Idx3_uid1020_i_shl_i_result_buffer_result_buffer25_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1022_i_shl_i_result_buffer_result_buffer25_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and13_i_result_buffer_join(BITJOIN,1158)@2
    i_and13_i_result_buffer_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and12_i_result_buffer_BitSelect_for_a_merged_bit_select_c & GND_q & GND_q;

    -- i_and13_i_result_buffer_vt_select_3(BITSELECT,420)@2
    i_and13_i_result_buffer_vt_select_3_b <= i_and13_i_result_buffer_join_q(3 downto 2);

    -- i_and13_i_result_buffer_vt_join(BITJOIN,419)@2
    i_and13_i_result_buffer_vt_join_q <= i_and13_i_result_buffer_vt_const_31_q & i_and13_i_result_buffer_vt_select_3_b & i_acl_47_i_result_buffer_vt_const_1_q;

    -- i_sh_prom14_i_result_buffer_sel_x(BITSELECT,249)@2
    i_sh_prom14_i_result_buffer_sel_x_b <= std_logic_vector(resize(unsigned(i_and13_i_result_buffer_vt_join_q(31 downto 0)), 64));

    -- i_sh_prom14_i_result_buffer_vt_select_3(BITSELECT,615)@2
    i_sh_prom14_i_result_buffer_vt_select_3_b <= i_sh_prom14_i_result_buffer_sel_x_b(3 downto 2);

    -- i_sh_prom14_i_result_buffer_vt_join(BITJOIN,614)@2
    i_sh_prom14_i_result_buffer_vt_join_q <= i_sh_prom14_i_result_buffer_vt_const_63_q & i_sh_prom14_i_result_buffer_vt_select_3_b & i_acl_47_i_result_buffer_vt_const_1_q;

    -- i_shl15_i_result_buffer_result_buffer26_shift_narrow_x(BITSELECT,257)@2
    i_shl15_i_result_buffer_result_buffer26_shift_narrow_x_b <= i_sh_prom14_i_result_buffer_vt_join_q(5 downto 0);

    -- leftShiftStageSel3Dto2_uid897_i_shl15_i_result_buffer_result_buffer26_shift_x(BITSELECT,896)@2
    leftShiftStageSel3Dto2_uid897_i_shl15_i_result_buffer_result_buffer26_shift_x_in <= i_shl15_i_result_buffer_result_buffer26_shift_narrow_x_b(3 downto 0);
    leftShiftStageSel3Dto2_uid897_i_shl15_i_result_buffer_result_buffer26_shift_x_b <= leftShiftStageSel3Dto2_uid897_i_shl15_i_result_buffer_result_buffer26_shift_x_in(3 downto 2);

    -- leftShiftStage0_uid898_i_shl15_i_result_buffer_result_buffer26_shift_x(MUX,897)@2
    leftShiftStage0_uid898_i_shl15_i_result_buffer_result_buffer26_shift_x_s <= leftShiftStageSel3Dto2_uid897_i_shl15_i_result_buffer_result_buffer26_shift_x_b;
    leftShiftStage0_uid898_i_shl15_i_result_buffer_result_buffer26_shift_x_combproc: PROCESS (leftShiftStage0_uid898_i_shl15_i_result_buffer_result_buffer26_shift_x_s, leftShiftStage0_uid1022_i_shl_i_result_buffer_result_buffer25_shift_x_q, leftShiftStage0Idx1_uid890_i_shl15_i_result_buffer_result_buffer26_shift_x_q, leftShiftStage0Idx2_uid893_i_shl15_i_result_buffer_result_buffer26_shift_x_q, leftShiftStage0Idx3_uid896_i_shl15_i_result_buffer_result_buffer26_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid898_i_shl15_i_result_buffer_result_buffer26_shift_x_s) IS
            WHEN "00" => leftShiftStage0_uid898_i_shl15_i_result_buffer_result_buffer26_shift_x_q <= leftShiftStage0_uid1022_i_shl_i_result_buffer_result_buffer25_shift_x_q;
            WHEN "01" => leftShiftStage0_uid898_i_shl15_i_result_buffer_result_buffer26_shift_x_q <= leftShiftStage0Idx1_uid890_i_shl15_i_result_buffer_result_buffer26_shift_x_q;
            WHEN "10" => leftShiftStage0_uid898_i_shl15_i_result_buffer_result_buffer26_shift_x_q <= leftShiftStage0Idx2_uid893_i_shl15_i_result_buffer_result_buffer26_shift_x_q;
            WHEN "11" => leftShiftStage0_uid898_i_shl15_i_result_buffer_result_buffer26_shift_x_q <= leftShiftStage0Idx3_uid896_i_shl15_i_result_buffer_result_buffer26_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid898_i_shl15_i_result_buffer_result_buffer26_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and16_i_result_buffer_join(BITJOIN,1160)@2
    i_and16_i_result_buffer_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and12_i_result_buffer_BitSelect_for_a_merged_bit_select_d;

    -- i_and16_i_result_buffer_vt_select_1(BITSELECT,424)@2
    i_and16_i_result_buffer_vt_select_1_b <= i_and16_i_result_buffer_join_q(1 downto 0);

    -- i_and16_i_result_buffer_vt_join(BITJOIN,423)@2
    i_and16_i_result_buffer_vt_join_q <= i_and16_i_result_buffer_vt_const_31_q & i_and16_i_result_buffer_vt_select_1_b;

    -- i_sh_prom17_i_result_buffer_sel_x(BITSELECT,250)@2
    i_sh_prom17_i_result_buffer_sel_x_b <= std_logic_vector(resize(unsigned(i_and16_i_result_buffer_vt_join_q(31 downto 0)), 64));

    -- i_sh_prom17_i_result_buffer_vt_select_1(BITSELECT,619)@2
    i_sh_prom17_i_result_buffer_vt_select_1_b <= i_sh_prom17_i_result_buffer_sel_x_b(1 downto 0);

    -- i_sh_prom17_i_result_buffer_vt_join(BITJOIN,618)@2
    i_sh_prom17_i_result_buffer_vt_join_q <= i_sh_prom17_i_result_buffer_vt_const_63_q & i_sh_prom17_i_result_buffer_vt_select_1_b;

    -- i_shl18_i_result_buffer_result_buffer27_shift_narrow_x(BITSELECT,261)@2
    i_shl18_i_result_buffer_result_buffer27_shift_narrow_x_b <= i_sh_prom17_i_result_buffer_vt_join_q(5 downto 0);

    -- leftShiftStageSel1Dto0_uid912_i_shl18_i_result_buffer_result_buffer27_shift_x(BITSELECT,911)@2
    leftShiftStageSel1Dto0_uid912_i_shl18_i_result_buffer_result_buffer27_shift_x_in <= i_shl18_i_result_buffer_result_buffer27_shift_narrow_x_b(1 downto 0);
    leftShiftStageSel1Dto0_uid912_i_shl18_i_result_buffer_result_buffer27_shift_x_b <= leftShiftStageSel1Dto0_uid912_i_shl18_i_result_buffer_result_buffer27_shift_x_in(1 downto 0);

    -- leftShiftStage0_uid913_i_shl18_i_result_buffer_result_buffer27_shift_x(MUX,912)@2
    leftShiftStage0_uid913_i_shl18_i_result_buffer_result_buffer27_shift_x_s <= leftShiftStageSel1Dto0_uid912_i_shl18_i_result_buffer_result_buffer27_shift_x_b;
    leftShiftStage0_uid913_i_shl18_i_result_buffer_result_buffer27_shift_x_combproc: PROCESS (leftShiftStage0_uid913_i_shl18_i_result_buffer_result_buffer27_shift_x_s, leftShiftStage0_uid898_i_shl15_i_result_buffer_result_buffer26_shift_x_q, leftShiftStage0Idx1_uid905_i_shl18_i_result_buffer_result_buffer27_shift_x_q, leftShiftStage0Idx2_uid908_i_shl18_i_result_buffer_result_buffer27_shift_x_q, leftShiftStage0Idx3_uid911_i_shl18_i_result_buffer_result_buffer27_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid913_i_shl18_i_result_buffer_result_buffer27_shift_x_s) IS
            WHEN "00" => leftShiftStage0_uid913_i_shl18_i_result_buffer_result_buffer27_shift_x_q <= leftShiftStage0_uid898_i_shl15_i_result_buffer_result_buffer26_shift_x_q;
            WHEN "01" => leftShiftStage0_uid913_i_shl18_i_result_buffer_result_buffer27_shift_x_q <= leftShiftStage0Idx1_uid905_i_shl18_i_result_buffer_result_buffer27_shift_x_q;
            WHEN "10" => leftShiftStage0_uid913_i_shl18_i_result_buffer_result_buffer27_shift_x_q <= leftShiftStage0Idx2_uid908_i_shl18_i_result_buffer_result_buffer27_shift_x_q;
            WHEN "11" => leftShiftStage0_uid913_i_shl18_i_result_buffer_result_buffer27_shift_x_q <= leftShiftStage0Idx3_uid911_i_shl18_i_result_buffer_result_buffer27_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid913_i_shl18_i_result_buffer_result_buffer27_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_i_result_buffer(MUX,565)@2
    i_i_result_buffer_s <= i_cmp9_i_result_buffer_c;
    i_i_result_buffer_combproc: PROCESS (i_i_result_buffer_s, rightShiftStage0_uid1091_i_shr34_i_result_buffer_result_buffer31_shift_x_q, leftShiftStage0_uid913_i_shl18_i_result_buffer_result_buffer27_shift_x_q)
    BEGIN
        CASE (i_i_result_buffer_s) IS
            WHEN "0" => i_i_result_buffer_q <= rightShiftStage0_uid1091_i_shr34_i_result_buffer_result_buffer31_shift_x_q;
            WHEN "1" => i_i_result_buffer_q <= leftShiftStage0_uid913_i_shl18_i_result_buffer_result_buffer27_shift_x_q;
            WHEN OTHERS => i_i_result_buffer_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_or44_bitvec_i_result_buffer_result_buffer35_or44_vec_2_i_join_x(BITJOIN,247)@2
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_vec_2_i_join_x_q <= i_conv_i_i_result_buffer_vt_join_q & i_shl42_i_result_buffer_vt_join_q & i_i_result_buffer_q;

    -- i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select(BITSELECT,1221)@2
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_vec_2_i_join_x_q(126 downto 0);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_b <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(0 downto 0);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_c <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(1 downto 1);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_d <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(10 downto 10);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_e <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(11 downto 11);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_f <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(116 downto 116);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_g <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(117 downto 117);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_h <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(118 downto 118);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_i <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(119 downto 119);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_j <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(12 downto 12);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_k <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(120 downto 120);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_l <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(121 downto 121);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_m <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(122 downto 122);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_n <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(123 downto 123);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_o <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(124 downto 124);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_p <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(125 downto 125);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_q <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(126 downto 126);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_r <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(13 downto 13);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_s <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(14 downto 14);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_t <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(15 downto 15);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_u <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(16 downto 16);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_v <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(17 downto 17);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_w <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(18 downto 18);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_x <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(19 downto 19);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_y <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(2 downto 2);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_z <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(20 downto 20);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_aa <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(21 downto 21);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_bb <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(22 downto 22);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_cc <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(23 downto 23);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_dd <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(24 downto 24);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ee <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(25 downto 25);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ff <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(26 downto 26);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_gg <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(27 downto 27);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_hh <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(28 downto 28);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ii <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(29 downto 29);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_jj <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(3 downto 3);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_kk <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(30 downto 30);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ll <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(31 downto 31);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_mm <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(32 downto 32);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_nn <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(33 downto 33);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_oo <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(34 downto 34);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_pp <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(35 downto 35);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_qq <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(36 downto 36);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_rr <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(37 downto 37);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ss <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(38 downto 38);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_tt <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(39 downto 39);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_uu <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(4 downto 4);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_vv <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(40 downto 40);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ww <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(41 downto 41);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_xx <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(42 downto 42);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_yy <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(43 downto 43);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_zz <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(44 downto 44);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_1 <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(45 downto 45);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_2 <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(46 downto 46);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_3 <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(47 downto 47);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_4 <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(48 downto 48);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_5 <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(49 downto 49);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_6 <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(5 downto 5);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_7 <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(50 downto 50);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_8 <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(51 downto 51);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_9 <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(6 downto 6);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_0 <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(7 downto 7);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_o61 <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(8 downto 8);
    i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_o62 <= i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_in(9 downto 9);

    -- redist15_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_q_1(DELAY,1241)
    redist15_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_q, xout => redist15_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_q_1_q, clk => clock, aclr => resetn );

    -- redist14_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_p_1(DELAY,1240)
    redist14_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_p_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_p, xout => redist14_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_p_1_q, clk => clock, aclr => resetn );

    -- redist13_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_o_1(DELAY,1239)
    redist13_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_o_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_o, xout => redist13_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_o_1_q, clk => clock, aclr => resetn );

    -- redist12_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_n_1(DELAY,1238)
    redist12_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_n_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_n, xout => redist12_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_n_1_q, clk => clock, aclr => resetn );

    -- redist11_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_m_1(DELAY,1237)
    redist11_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_m_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_m, xout => redist11_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_m_1_q, clk => clock, aclr => resetn );

    -- redist10_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_l_1(DELAY,1236)
    redist10_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_l_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_l, xout => redist10_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_l_1_q, clk => clock, aclr => resetn );

    -- redist9_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_k_1(DELAY,1235)
    redist9_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_k_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_k, xout => redist9_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_k_1_q, clk => clock, aclr => resetn );

    -- redist7_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_i_1(DELAY,1233)
    redist7_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_i_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_i, xout => redist7_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_i_1_q, clk => clock, aclr => resetn );

    -- redist6_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_h_1(DELAY,1232)
    redist6_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_h_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_h, xout => redist6_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_h_1_q, clk => clock, aclr => resetn );

    -- redist5_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_g_1(DELAY,1231)
    redist5_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_g_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_g, xout => redist5_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_g_1_q, clk => clock, aclr => resetn );

    -- redist4_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_f_1(DELAY,1230)
    redist4_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_f_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_f, xout => redist4_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_f_1_q, clk => clock, aclr => resetn );

    -- redist58_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_8_1(DELAY,1284)
    redist58_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_8_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_8, xout => redist58_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_8_1_q, clk => clock, aclr => resetn );

    -- redist57_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_7_1(DELAY,1283)
    redist57_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_7_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_7, xout => redist57_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_7_1_q, clk => clock, aclr => resetn );

    -- redist55_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_5_1(DELAY,1281)
    redist55_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_5_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_5, xout => redist55_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_5_1_q, clk => clock, aclr => resetn );

    -- redist54_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_4_1(DELAY,1280)
    redist54_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_4_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_4, xout => redist54_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_4_1_q, clk => clock, aclr => resetn );

    -- redist53_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_3_1(DELAY,1279)
    redist53_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_3_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_3, xout => redist53_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_3_1_q, clk => clock, aclr => resetn );

    -- redist52_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_2_1(DELAY,1278)
    redist52_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_2_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_2, xout => redist52_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_2_1_q, clk => clock, aclr => resetn );

    -- redist51_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_1_1(DELAY,1277)
    redist51_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_1_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_1, xout => redist51_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_1_1_q, clk => clock, aclr => resetn );

    -- redist50_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_zz_1(DELAY,1276)
    redist50_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_zz_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_zz, xout => redist50_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_zz_1_q, clk => clock, aclr => resetn );

    -- redist49_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_yy_1(DELAY,1275)
    redist49_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_yy_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_yy, xout => redist49_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_yy_1_q, clk => clock, aclr => resetn );

    -- redist48_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_xx_1(DELAY,1274)
    redist48_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_xx_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_xx, xout => redist48_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_xx_1_q, clk => clock, aclr => resetn );

    -- redist47_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ww_1(DELAY,1273)
    redist47_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ww_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ww, xout => redist47_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ww_1_q, clk => clock, aclr => resetn );

    -- redist46_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_vv_1(DELAY,1272)
    redist46_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_vv_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_vv, xout => redist46_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_vv_1_q, clk => clock, aclr => resetn );

    -- redist44_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_tt_1(DELAY,1270)
    redist44_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_tt_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_tt, xout => redist44_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_tt_1_q, clk => clock, aclr => resetn );

    -- redist43_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ss_1(DELAY,1269)
    redist43_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ss_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ss, xout => redist43_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ss_1_q, clk => clock, aclr => resetn );

    -- redist42_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_rr_1(DELAY,1268)
    redist42_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_rr_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_rr, xout => redist42_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_rr_1_q, clk => clock, aclr => resetn );

    -- redist41_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_qq_1(DELAY,1267)
    redist41_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_qq_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_qq, xout => redist41_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_qq_1_q, clk => clock, aclr => resetn );

    -- redist40_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_pp_1(DELAY,1266)
    redist40_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_pp_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_pp, xout => redist40_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_pp_1_q, clk => clock, aclr => resetn );

    -- redist39_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_oo_1(DELAY,1265)
    redist39_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_oo_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_oo, xout => redist39_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_oo_1_q, clk => clock, aclr => resetn );

    -- redist38_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_nn_1(DELAY,1264)
    redist38_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_nn_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_nn, xout => redist38_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_nn_1_q, clk => clock, aclr => resetn );

    -- redist37_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_mm_1(DELAY,1263)
    redist37_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_mm_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_mm, xout => redist37_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_mm_1_q, clk => clock, aclr => resetn );

    -- redist36_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ll_1(DELAY,1262)
    redist36_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ll_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ll, xout => redist36_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ll_1_q, clk => clock, aclr => resetn );

    -- redist35_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_kk_1(DELAY,1261)
    redist35_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_kk_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_kk, xout => redist35_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_kk_1_q, clk => clock, aclr => resetn );

    -- redist33_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ii_1(DELAY,1259)
    redist33_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ii_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ii, xout => redist33_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ii_1_q, clk => clock, aclr => resetn );

    -- redist32_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_hh_1(DELAY,1258)
    redist32_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_hh_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_hh, xout => redist32_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_hh_1_q, clk => clock, aclr => resetn );

    -- redist31_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_gg_1(DELAY,1257)
    redist31_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_gg_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_gg, xout => redist31_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_gg_1_q, clk => clock, aclr => resetn );

    -- redist30_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ff_1(DELAY,1256)
    redist30_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ff_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ff, xout => redist30_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ff_1_q, clk => clock, aclr => resetn );

    -- redist29_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ee_1(DELAY,1255)
    redist29_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ee_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ee, xout => redist29_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ee_1_q, clk => clock, aclr => resetn );

    -- redist28_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_dd_1(DELAY,1254)
    redist28_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_dd_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_dd, xout => redist28_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_dd_1_q, clk => clock, aclr => resetn );

    -- redist27_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_cc_1(DELAY,1253)
    redist27_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_cc_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_cc, xout => redist27_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_cc_1_q, clk => clock, aclr => resetn );

    -- redist26_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_bb_1(DELAY,1252)
    redist26_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_bb_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_bb, xout => redist26_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_bb_1_q, clk => clock, aclr => resetn );

    -- redist25_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_aa_1(DELAY,1251)
    redist25_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_aa_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_aa, xout => redist25_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_aa_1_q, clk => clock, aclr => resetn );

    -- redist24_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_z_1(DELAY,1250)
    redist24_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_z_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_z, xout => redist24_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_z_1_q, clk => clock, aclr => resetn );

    -- redist22_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_x_1(DELAY,1248)
    redist22_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_x_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_x, xout => redist22_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_x_1_q, clk => clock, aclr => resetn );

    -- redist21_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_w_1(DELAY,1247)
    redist21_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_w_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_w, xout => redist21_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_w_1_q, clk => clock, aclr => resetn );

    -- redist20_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_v_1(DELAY,1246)
    redist20_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_v_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_v, xout => redist20_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_v_1_q, clk => clock, aclr => resetn );

    -- redist19_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_u_1(DELAY,1245)
    redist19_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_u_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_u, xout => redist19_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_u_1_q, clk => clock, aclr => resetn );

    -- redist18_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_t_1(DELAY,1244)
    redist18_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_t_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_t, xout => redist18_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_t_1_q, clk => clock, aclr => resetn );

    -- redist17_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_s_1(DELAY,1243)
    redist17_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_s_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_s, xout => redist17_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_s_1_q, clk => clock, aclr => resetn );

    -- redist16_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_r_1(DELAY,1242)
    redist16_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_r_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_r, xout => redist16_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_r_1_q, clk => clock, aclr => resetn );

    -- redist8_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_j_1(DELAY,1234)
    redist8_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_j_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_j, xout => redist8_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_j_1_q, clk => clock, aclr => resetn );

    -- redist3_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_e_1(DELAY,1229)
    redist3_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_e_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_e, xout => redist3_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_e_1_q, clk => clock, aclr => resetn );

    -- redist2_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_d_1(DELAY,1228)
    redist2_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_d_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_d, xout => redist2_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_d_1_q, clk => clock, aclr => resetn );

    -- redist62_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_o62_1(DELAY,1288)
    redist62_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_o62_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_o62, xout => redist62_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_o62_1_q, clk => clock, aclr => resetn );

    -- redist61_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_o61_1(DELAY,1287)
    redist61_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_o61_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_o61, xout => redist61_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_o61_1_q, clk => clock, aclr => resetn );

    -- redist60_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_0_1(DELAY,1286)
    redist60_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_0_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_0, xout => redist60_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_0_1_q, clk => clock, aclr => resetn );

    -- redist59_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_9_1(DELAY,1285)
    redist59_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_9_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_9, xout => redist59_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_9_1_q, clk => clock, aclr => resetn );

    -- redist56_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_6_1(DELAY,1282)
    redist56_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_6_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_6, xout => redist56_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_6_1_q, clk => clock, aclr => resetn );

    -- redist45_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_uu_1(DELAY,1271)
    redist45_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_uu_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_uu, xout => redist45_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_uu_1_q, clk => clock, aclr => resetn );

    -- redist34_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_jj_1(DELAY,1260)
    redist34_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_jj_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_jj, xout => redist34_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_jj_1_q, clk => clock, aclr => resetn );

    -- redist23_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_y_1(DELAY,1249)
    redist23_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_y_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_y, xout => redist23_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_y_1_q, clk => clock, aclr => resetn );

    -- redist1_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_c_1(DELAY,1227)
    redist1_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_c, xout => redist1_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- redist0_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_b_1(DELAY,1226)
    redist0_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_b, xout => redist0_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_b_1_q, clk => clock, aclr => resetn );

    -- i_or44_compressed_i_result_buffer_result_buffer36_or44_shuffle_i_m_join_x(BITJOIN,248)@3
    i_or44_compressed_i_result_buffer_result_buffer36_or44_shuffle_i_m_join_x_q <= GND_q & redist15_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_q_1_q & redist14_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_p_1_q & redist13_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_o_1_q & redist12_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_n_1_q & redist11_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_m_1_q & redist10_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_l_1_q & redist9_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_k_1_q & redist7_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_i_1_q & redist6_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_h_1_q & redist5_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_g_1_q & redist4_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_f_1_q & redist58_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_8_1_q & redist57_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_7_1_q & redist55_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_5_1_q & redist54_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_4_1_q & redist53_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_3_1_q & redist52_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_2_1_q & redist51_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_1_1_q & redist50_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_zz_1_q & redist49_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_yy_1_q & redist48_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_xx_1_q & redist47_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ww_1_q & redist46_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_vv_1_q & redist44_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_tt_1_q & redist43_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ss_1_q & redist42_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_rr_1_q & redist41_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_qq_1_q & redist40_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_pp_1_q & redist39_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_oo_1_q & redist38_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_nn_1_q & redist37_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_mm_1_q & redist36_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ll_1_q & redist35_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_kk_1_q & redist33_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ii_1_q & redist32_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_hh_1_q & redist31_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_gg_1_q & redist30_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ff_1_q & redist29_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_ee_1_q & redist28_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_dd_1_q & redist27_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_cc_1_q & redist26_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_bb_1_q & redist25_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_aa_1_q & redist24_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_z_1_q & redist22_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_x_1_q & redist21_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_w_1_q & redist20_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_v_1_q & redist19_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_u_1_q & redist18_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_t_1_q & redist17_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_s_1_q & redist16_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_r_1_q & redist8_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_j_1_q & redist3_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_e_1_q & redist2_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_d_1_q & redist62_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_o62_1_q & redist61_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_o61_1_q & redist60_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_0_1_q & redist59_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_9_1_q & redist56_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_6_1_q & redist45_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_uu_1_q & redist34_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_jj_1_q & redist23_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_y_1_q & redist1_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_c_1_q & redist0_i_or44_bitvec_i_result_buffer_result_buffer35_or44_bitvec_i_select_0_x_merged_bit_select_b_1_q;

    -- i_or44_compressed_i_result_buffer_vt_select_62(BITSELECT,594)@3
    i_or44_compressed_i_result_buffer_vt_select_62_b <= i_or44_compressed_i_result_buffer_result_buffer36_or44_shuffle_i_m_join_x_q(62 downto 0);

    -- i_or44_compressed_i_result_buffer_vt_join(BITJOIN,593)@3
    i_or44_compressed_i_result_buffer_vt_join_q <= GND_q & i_or44_compressed_i_result_buffer_vt_select_62_b;

    -- i_add_i_result_buffer(ADD,410)@3
    i_add_i_result_buffer_a <= STD_LOGIC_VECTOR("0" & i_or44_compressed_i_result_buffer_vt_join_q);
    i_add_i_result_buffer_b <= STD_LOGIC_VECTOR("0" & i_acl_11_i_result_buffer_vt_join_q);
    i_add_i_result_buffer_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_i_result_buffer_a) + UNSIGNED(i_add_i_result_buffer_b));
    i_add_i_result_buffer_q <= i_add_i_result_buffer_o(64 downto 0);

    -- bgTrunc_i_add_i_result_buffer_sel_x(BITSELECT,3)@3
    bgTrunc_i_add_i_result_buffer_sel_x_b <= i_add_i_result_buffer_q(63 downto 0);

    -- rightShiftStage0_uid820_i_and3_i_result_buffer_result_buffer37_shift_x(MUX,819)@3
    rightShiftStage0_uid820_i_and3_i_result_buffer_result_buffer37_shift_x_s <= VCC_q;
    rightShiftStage0_uid820_i_and3_i_result_buffer_result_buffer37_shift_x_combproc: PROCESS (rightShiftStage0_uid820_i_and3_i_result_buffer_result_buffer37_shift_x_s, bgTrunc_i_add_i_result_buffer_sel_x_b, rightShiftStage0Idx1_uid818_i_and3_i_result_buffer_result_buffer37_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid820_i_and3_i_result_buffer_result_buffer37_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid820_i_and3_i_result_buffer_result_buffer37_shift_x_q <= bgTrunc_i_add_i_result_buffer_sel_x_b;
            WHEN "1" => rightShiftStage0_uid820_i_and3_i_result_buffer_result_buffer37_shift_x_q <= rightShiftStage0Idx1_uid818_i_and3_i_result_buffer_result_buffer37_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid820_i_and3_i_result_buffer_result_buffer37_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid825_i_and3_i_result_buffer_result_buffer37_shift_x(MUX,824)@3
    rightShiftStage1_uid825_i_and3_i_result_buffer_result_buffer37_shift_x_s <= VCC_q;
    rightShiftStage1_uid825_i_and3_i_result_buffer_result_buffer37_shift_x_combproc: PROCESS (rightShiftStage1_uid825_i_and3_i_result_buffer_result_buffer37_shift_x_s, rightShiftStage0_uid820_i_and3_i_result_buffer_result_buffer37_shift_x_q, rightShiftStage1Idx1_uid823_i_and3_i_result_buffer_result_buffer37_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid825_i_and3_i_result_buffer_result_buffer37_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid825_i_and3_i_result_buffer_result_buffer37_shift_x_q <= rightShiftStage0_uid820_i_and3_i_result_buffer_result_buffer37_shift_x_q;
            WHEN "1" => rightShiftStage1_uid825_i_and3_i_result_buffer_result_buffer37_shift_x_q <= rightShiftStage1Idx1_uid823_i_and3_i_result_buffer_result_buffer37_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid825_i_and3_i_result_buffer_result_buffer37_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1139_i_unnamed_result_buffer41_shift_x(MUX,1138)@3
    rightShiftStage2_uid1139_i_unnamed_result_buffer41_shift_x_s <= VCC_q;
    rightShiftStage2_uid1139_i_unnamed_result_buffer41_shift_x_combproc: PROCESS (rightShiftStage2_uid1139_i_unnamed_result_buffer41_shift_x_s, rightShiftStage1_uid825_i_and3_i_result_buffer_result_buffer37_shift_x_q, rightShiftStage2Idx1_uid1137_i_unnamed_result_buffer41_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1139_i_unnamed_result_buffer41_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1139_i_unnamed_result_buffer41_shift_x_q <= rightShiftStage1_uid825_i_and3_i_result_buffer_result_buffer37_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1139_i_unnamed_result_buffer41_shift_x_q <= rightShiftStage2Idx1_uid1137_i_unnamed_result_buffer41_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1139_i_unnamed_result_buffer41_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1144_i_unnamed_result_buffer41_shift_x(MUX,1143)@3
    rightShiftStage3_uid1144_i_unnamed_result_buffer41_shift_x_s <= VCC_q;
    rightShiftStage3_uid1144_i_unnamed_result_buffer41_shift_x_combproc: PROCESS (rightShiftStage3_uid1144_i_unnamed_result_buffer41_shift_x_s, rightShiftStage2_uid1139_i_unnamed_result_buffer41_shift_x_q, rightShiftStage3Idx1_uid1142_i_unnamed_result_buffer41_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1144_i_unnamed_result_buffer41_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1144_i_unnamed_result_buffer41_shift_x_q <= rightShiftStage2_uid1139_i_unnamed_result_buffer41_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1144_i_unnamed_result_buffer41_shift_x_q <= rightShiftStage3Idx1_uid1142_i_unnamed_result_buffer41_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1144_i_unnamed_result_buffer41_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_result_buffer40_vt_select_12(BITSELECT,719)@3
    i_unnamed_result_buffer40_vt_select_12_b <= rightShiftStage3_uid1144_i_unnamed_result_buffer41_shift_x_q(12 downto 0);

    -- i_unnamed_result_buffer40_vt_join(BITJOIN,718)@3
    i_unnamed_result_buffer40_vt_join_q <= i_conv353_i_result_buffer_vt_const_63_q & i_unnamed_result_buffer40_vt_select_12_b;

    -- i_and313_tr_i_result_buffer_sel_x(BITSELECT,30)@3
    i_and313_tr_i_result_buffer_sel_x_b <= i_unnamed_result_buffer40_vt_join_q(31 downto 0);

    -- i_and313_tr_i_result_buffer_vt_select_12(BITSELECT,493)@3
    i_and313_tr_i_result_buffer_vt_select_12_b <= i_and313_tr_i_result_buffer_sel_x_b(12 downto 0);

    -- i_and313_tr_i_result_buffer_vt_join(BITJOIN,492)@3
    i_and313_tr_i_result_buffer_vt_join_q <= i_acl_22_i_result_buffer_vt_const_31_q & i_and313_tr_i_result_buffer_vt_select_12_b;

    -- i_shl_i22_result_buffer_BitSelect_for_a(BITSELECT,1203)@3
    i_shl_i22_result_buffer_BitSelect_for_a_b <= i_and313_tr_i_result_buffer_vt_join_q(12 downto 12);

    -- i_shl_i22_result_buffer_join(BITJOIN,1204)@3
    i_shl_i22_result_buffer_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_shl_i22_result_buffer_BitSelect_for_a_b & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_shl_i22_result_buffer_vt_select_12(BITSELECT,655)@3
    i_shl_i22_result_buffer_vt_select_12_b <= i_shl_i22_result_buffer_join_q(12 downto 12);

    -- i_and253_i_result_buffer_vt_const_11(CONSTANT,433)
    i_and253_i_result_buffer_vt_const_11_q <= "000000000000";

    -- i_shl_i22_result_buffer_vt_join(BITJOIN,654)@3
    i_shl_i22_result_buffer_vt_join_q <= i_acl_22_i_result_buffer_vt_const_31_q & i_shl_i22_result_buffer_vt_select_12_b & i_and253_i_result_buffer_vt_const_11_q;

    -- i_or352_i_result_buffer_BitSelect_for_b(BITSELECT,1192)@3
    i_or352_i_result_buffer_BitSelect_for_b_b <= i_shl_i22_result_buffer_vt_join_q(12 downto 12);

    -- redist63_i_or352_i_result_buffer_BitSelect_for_b_b_2(DELAY,1289)
    redist63_i_or352_i_result_buffer_BitSelect_for_b_b_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or352_i_result_buffer_BitSelect_for_b_b, xout => redist63_i_or352_i_result_buffer_BitSelect_for_b_b_2_q, clk => clock, aclr => resetn );

    -- i_sub30_i_result_buffer_vt_const_31(CONSTANT,696)
    i_sub30_i_result_buffer_vt_const_31_q <= "000000000000000000";

    -- c_i32_8163(CONSTANT,355)
    c_i32_8163_q <= "00000000000000000001111111100011";

    -- rightShiftStage2Idx1Rng4_uid826_i_and3_i_result_buffer_result_buffer37_shift_x(BITSELECT,825)@3
    rightShiftStage2Idx1Rng4_uid826_i_and3_i_result_buffer_result_buffer37_shift_x_b <= rightShiftStage1_uid825_i_and3_i_result_buffer_result_buffer37_shift_x_q(63 downto 4);

    -- rightShiftStage2Idx1_uid828_i_and3_i_result_buffer_result_buffer37_shift_x(BITJOIN,827)@3
    rightShiftStage2Idx1_uid828_i_and3_i_result_buffer_result_buffer37_shift_x_q <= i_and12_i_result_buffer_vt_const_3_q & rightShiftStage2Idx1Rng4_uid826_i_and3_i_result_buffer_result_buffer37_shift_x_b;

    -- rightShiftStage2_uid830_i_and3_i_result_buffer_result_buffer37_shift_x(MUX,829)@3
    rightShiftStage2_uid830_i_and3_i_result_buffer_result_buffer37_shift_x_s <= VCC_q;
    rightShiftStage2_uid830_i_and3_i_result_buffer_result_buffer37_shift_x_combproc: PROCESS (rightShiftStage2_uid830_i_and3_i_result_buffer_result_buffer37_shift_x_s, rightShiftStage1_uid825_i_and3_i_result_buffer_result_buffer37_shift_x_q, rightShiftStage2Idx1_uid828_i_and3_i_result_buffer_result_buffer37_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid830_i_and3_i_result_buffer_result_buffer37_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid830_i_and3_i_result_buffer_result_buffer37_shift_x_q <= rightShiftStage1_uid825_i_and3_i_result_buffer_result_buffer37_shift_x_q;
            WHEN "1" => rightShiftStage2_uid830_i_and3_i_result_buffer_result_buffer37_shift_x_q <= rightShiftStage2Idx1_uid828_i_and3_i_result_buffer_result_buffer37_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid830_i_and3_i_result_buffer_result_buffer37_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and3_i_result_buffer_vt_select_11(BITSELECT,508)@3
    i_and3_i_result_buffer_vt_select_11_b <= rightShiftStage2_uid830_i_and3_i_result_buffer_result_buffer37_shift_x_q(11 downto 0);

    -- i_and3_i_result_buffer_vt_join(BITJOIN,507)@3
    i_and3_i_result_buffer_vt_join_q <= i_and1_i_result_buffer_vt_const_51_q & i_and3_i_result_buffer_vt_select_11_b;

    -- i_tr_i_result_buffer_sel_x(BITSELECT,314)@3
    i_tr_i_result_buffer_sel_x_b <= i_and3_i_result_buffer_vt_join_q(31 downto 0);

    -- i_tr_i_result_buffer_vt_select_11(BITSELECT,712)@3
    i_tr_i_result_buffer_vt_select_11_b <= i_tr_i_result_buffer_sel_x_b(11 downto 0);

    -- i_tr_i_result_buffer_vt_join(BITJOIN,711)@3
    i_tr_i_result_buffer_vt_join_q <= i_and265_i_result_buffer_vt_const_31_q & i_tr_i_result_buffer_vt_select_11_b;

    -- i_conv_i_result_buffer_BitSelect_for_a(BITSELECT,1188)@3
    i_conv_i_result_buffer_BitSelect_for_a_b <= i_tr_i_result_buffer_vt_join_q(10 downto 0);

    -- i_conv_i_result_buffer_join(BITJOIN,1189)@3
    i_conv_i_result_buffer_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_conv_i_result_buffer_BitSelect_for_a_b;

    -- i_conv_i_result_buffer_vt_select_10(BITSELECT,558)@3
    i_conv_i_result_buffer_vt_select_10_b <= i_conv_i_result_buffer_join_q(10 downto 0);

    -- i_conv_i_result_buffer_vt_join(BITJOIN,557)@3
    i_conv_i_result_buffer_vt_join_q <= i_conv_i_result_buffer_vt_const_31_q & i_conv_i_result_buffer_vt_select_10_b;

    -- i_sub30_i_result_buffer(ADD,695)@3
    i_sub30_i_result_buffer_a <= STD_LOGIC_VECTOR("0" & i_conv_i_result_buffer_vt_join_q);
    i_sub30_i_result_buffer_b <= STD_LOGIC_VECTOR("0" & c_i32_8163_q);
    i_sub30_i_result_buffer_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub30_i_result_buffer_a) + UNSIGNED(i_sub30_i_result_buffer_b));
    i_sub30_i_result_buffer_q <= i_sub30_i_result_buffer_o(32 downto 0);

    -- bgTrunc_i_sub30_i_result_buffer_sel_x(BITSELECT,9)@3
    bgTrunc_i_sub30_i_result_buffer_sel_x_b <= i_sub30_i_result_buffer_q(31 downto 0);

    -- i_sub30_i_result_buffer_vt_select_13(BITSELECT,698)@3
    i_sub30_i_result_buffer_vt_select_13_b <= bgTrunc_i_sub30_i_result_buffer_sel_x_b(13 downto 0);

    -- redist65_i_sub30_i_result_buffer_vt_select_13_b_1(DELAY,1291)
    redist65_i_sub30_i_result_buffer_vt_select_13_b_1 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_sub30_i_result_buffer_vt_select_13_b, xout => redist65_i_sub30_i_result_buffer_vt_select_13_b_1_q, clk => clock, aclr => resetn );

    -- i_sub30_i_result_buffer_vt_join(BITJOIN,697)@4
    i_sub30_i_result_buffer_vt_join_q <= i_sub30_i_result_buffer_vt_const_31_q & redist65_i_sub30_i_result_buffer_vt_select_13_b_1_q;

    -- i_and31_i_result_buffer_BitSelect_for_a(BITSELECT,1173)@4
    i_and31_i_result_buffer_BitSelect_for_a_b <= i_sub30_i_result_buffer_vt_join_q(12 downto 0);

    -- i_and31_i_result_buffer_join(BITJOIN,1174)@4
    i_and31_i_result_buffer_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and31_i_result_buffer_BitSelect_for_a_b;

    -- i_and31_i_result_buffer_vt_select_12(BITSELECT,497)@4
    i_and31_i_result_buffer_vt_select_12_b <= i_and31_i_result_buffer_join_q(12 downto 0);

    -- i_and31_i_result_buffer_vt_join(BITJOIN,496)@4
    i_and31_i_result_buffer_vt_join_q <= i_acl_22_i_result_buffer_vt_const_31_q & i_and31_i_result_buffer_vt_select_12_b;

    -- i_and253_i_result_buffer_BitSelect_for_a(BITSELECT,1161)@4
    i_and253_i_result_buffer_BitSelect_for_a_b <= i_sub30_i_result_buffer_vt_join_q(12 downto 12);

    -- i_and253_i_result_buffer_join(BITJOIN,1162)@4
    i_and253_i_result_buffer_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and253_i_result_buffer_BitSelect_for_a_b & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_and253_i_result_buffer_vt_select_12(BITSELECT,436)@4
    i_and253_i_result_buffer_vt_select_12_b <= i_and253_i_result_buffer_join_q(12 downto 12);

    -- i_and253_i_result_buffer_vt_join(BITJOIN,435)@4
    i_and253_i_result_buffer_vt_join_q <= i_acl_22_i_result_buffer_vt_const_31_q & i_and253_i_result_buffer_vt_select_12_b & i_and253_i_result_buffer_vt_const_11_q;

    -- i_tobool254_i_result_buffer(LOGICAL,704)@4
    i_tobool254_i_result_buffer_q <= "1" WHEN i_and253_i_result_buffer_vt_join_q = c_i32_0gr_q ELSE "0";

    -- i_acl_22_i_result_buffer(MUX,386)@4
    i_acl_22_i_result_buffer_s <= i_tobool254_i_result_buffer_q;
    i_acl_22_i_result_buffer_combproc: PROCESS (i_acl_22_i_result_buffer_s, c_i32_0gr_q, i_and31_i_result_buffer_vt_join_q)
    BEGIN
        CASE (i_acl_22_i_result_buffer_s) IS
            WHEN "0" => i_acl_22_i_result_buffer_q <= c_i32_0gr_q;
            WHEN "1" => i_acl_22_i_result_buffer_q <= i_and31_i_result_buffer_vt_join_q;
            WHEN OTHERS => i_acl_22_i_result_buffer_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_22_i_result_buffer_vt_select_12(BITSELECT,389)@4
    i_acl_22_i_result_buffer_vt_select_12_b <= i_acl_22_i_result_buffer_q(12 downto 0);

    -- i_acl_22_i_result_buffer_vt_join(BITJOIN,388)@4
    i_acl_22_i_result_buffer_vt_join_q <= i_acl_22_i_result_buffer_vt_const_31_q & i_acl_22_i_result_buffer_vt_select_12_b;

    -- i_and265_i_result_buffer_BitSelect_for_a(BITSELECT,1163)@4
    i_and265_i_result_buffer_BitSelect_for_a_b <= i_acl_22_i_result_buffer_vt_join_q(11 downto 0);

    -- i_and265_i_result_buffer_join(BITJOIN,1164)@4
    i_and265_i_result_buffer_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and265_i_result_buffer_BitSelect_for_a_b;

    -- i_and265_i_result_buffer_vt_select_11(BITSELECT,440)@4
    i_and265_i_result_buffer_vt_select_11_b <= i_and265_i_result_buffer_join_q(11 downto 0);

    -- i_and265_i_result_buffer_vt_join(BITJOIN,439)@4
    i_and265_i_result_buffer_vt_join_q <= i_and265_i_result_buffer_vt_const_31_q & i_and265_i_result_buffer_vt_select_11_b;

    -- i_and274_i_result_buffer_BitSelect_for_a(BITSELECT,1165)@4
    i_and274_i_result_buffer_BitSelect_for_a_b <= i_acl_22_i_result_buffer_vt_join_q(11 downto 11);

    -- i_and274_i_result_buffer_join(BITJOIN,1166)@4
    i_and274_i_result_buffer_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and274_i_result_buffer_BitSelect_for_a_b & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_and274_i_result_buffer_vt_select_11(BITSELECT,448)@4
    i_and274_i_result_buffer_vt_select_11_b <= i_and274_i_result_buffer_join_q(11 downto 11);

    -- i_and274_i_result_buffer_vt_const_10(CONSTANT,445)
    i_and274_i_result_buffer_vt_const_10_q <= "00000000000";

    -- i_and274_i_result_buffer_vt_join(BITJOIN,447)@4
    i_and274_i_result_buffer_vt_join_q <= i_and265_i_result_buffer_vt_const_31_q & i_and274_i_result_buffer_vt_select_11_b & i_and274_i_result_buffer_vt_const_10_q;

    -- i_tobool275_i_result_buffer(LOGICAL,705)@4
    i_tobool275_i_result_buffer_q <= "1" WHEN i_and274_i_result_buffer_vt_join_q = c_i32_0gr_q ELSE "0";

    -- i_resulting_exp_2_i_result_buffer(MUX,607)@4
    i_resulting_exp_2_i_result_buffer_s <= i_tobool275_i_result_buffer_q;
    i_resulting_exp_2_i_result_buffer_combproc: PROCESS (i_resulting_exp_2_i_result_buffer_s, c_i32_0gr_q, i_and265_i_result_buffer_vt_join_q)
    BEGIN
        CASE (i_resulting_exp_2_i_result_buffer_s) IS
            WHEN "0" => i_resulting_exp_2_i_result_buffer_q <= c_i32_0gr_q;
            WHEN "1" => i_resulting_exp_2_i_result_buffer_q <= i_and265_i_result_buffer_vt_join_q;
            WHEN OTHERS => i_resulting_exp_2_i_result_buffer_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_resulting_exp_2_i_result_buffer_vt_select_11(BITSELECT,610)@4
    i_resulting_exp_2_i_result_buffer_vt_select_11_b <= i_resulting_exp_2_i_result_buffer_q(11 downto 0);

    -- redist66_i_resulting_exp_2_i_result_buffer_vt_select_11_b_1(DELAY,1292)
    redist66_i_resulting_exp_2_i_result_buffer_vt_select_11_b_1 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_resulting_exp_2_i_result_buffer_vt_select_11_b, xout => redist66_i_resulting_exp_2_i_result_buffer_vt_select_11_b_1_q, clk => clock, aclr => resetn );

    -- i_resulting_exp_2_i_result_buffer_vt_join(BITJOIN,609)@5
    i_resulting_exp_2_i_result_buffer_vt_join_q <= i_and265_i_result_buffer_vt_const_31_q & redist66_i_resulting_exp_2_i_result_buffer_vt_select_11_b_1_q;

    -- i_or352_i_result_buffer_BitSelect_for_a(BITSELECT,1191)@5
    i_or352_i_result_buffer_BitSelect_for_a_b <= i_resulting_exp_2_i_result_buffer_vt_join_q(11 downto 0);

    -- i_or352_i_result_buffer_join(BITJOIN,1193)@5
    i_or352_i_result_buffer_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & redist63_i_or352_i_result_buffer_BitSelect_for_b_b_2_q & i_or352_i_result_buffer_BitSelect_for_a_b;

    -- i_or352_i_result_buffer_vt_select_12(BITSELECT,591)@5
    i_or352_i_result_buffer_vt_select_12_b <= i_or352_i_result_buffer_join_q(12 downto 0);

    -- i_or352_i_result_buffer_vt_join(BITJOIN,590)@5
    i_or352_i_result_buffer_vt_join_q <= i_acl_22_i_result_buffer_vt_const_31_q & i_or352_i_result_buffer_vt_select_12_b;

    -- i_conv353_i_result_buffer_sel_x(BITSELECT,48)@5
    i_conv353_i_result_buffer_sel_x_b <= std_logic_vector(resize(unsigned(i_or352_i_result_buffer_vt_join_q(31 downto 0)), 64));

    -- i_conv353_i_result_buffer_vt_select_12(BITSELECT,545)@5
    i_conv353_i_result_buffer_vt_select_12_b <= i_conv353_i_result_buffer_sel_x_b(12 downto 0);

    -- i_conv353_i_result_buffer_vt_join(BITJOIN,544)@5
    i_conv353_i_result_buffer_vt_join_q <= i_conv353_i_result_buffer_vt_const_63_q & i_conv353_i_result_buffer_vt_select_12_b;

    -- i_conv353_i_op_result_buffer_BitSelect_for_a(BITSELECT,1182)@5
    i_conv353_i_op_result_buffer_BitSelect_for_a_b <= i_conv353_i_result_buffer_vt_join_q(11 downto 0);

    -- i_conv353_i_op_result_buffer_join(BITJOIN,1183)@5
    i_conv353_i_op_result_buffer_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_conv353_i_op_result_buffer_BitSelect_for_a_b;

    -- i_conv353_i_op_result_buffer_vt_select_11(BITSELECT,541)@5
    i_conv353_i_op_result_buffer_vt_select_11_b <= i_conv353_i_op_result_buffer_join_q(11 downto 0);

    -- i_conv353_i_op_result_buffer_vt_join(BITJOIN,540)@5
    i_conv353_i_op_result_buffer_vt_join_q <= i_and1_i_result_buffer_vt_const_51_q & i_conv353_i_op_result_buffer_vt_select_11_b;

    -- dupName_0_c_i64_0gr_x(CONSTANT,13)
    dupName_0_c_i64_0gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000000";

    -- i_shr266_i_result_buffer_vt_const_63(CONSTANT,677)
    i_shr266_i_result_buffer_vt_const_63_q <= "000000000";

    -- rightShiftStage0Idx1Rng1_uid1072_i_shr266_i_result_buffer_result_buffer43_shift_x(BITSELECT,1071)@4
    rightShiftStage0Idx1Rng1_uid1072_i_shr266_i_result_buffer_result_buffer43_shift_x_b <= i_shl_i28_result_buffer_vt_join_q(63 downto 1);

    -- rightShiftStage0Idx1_uid1074_i_shr266_i_result_buffer_result_buffer43_shift_x(BITJOIN,1073)@4
    rightShiftStage0Idx1_uid1074_i_shr266_i_result_buffer_result_buffer43_shift_x_q <= GND_q & rightShiftStage0Idx1Rng1_uid1072_i_shr266_i_result_buffer_result_buffer43_shift_x_b;

    -- leftShiftStage1Idx1Rng1_uid808_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x(BITSELECT,807)@4
    leftShiftStage1Idx1Rng1_uid808_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_in <= leftShiftStage0_uid806_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_q(62 downto 0);
    leftShiftStage1Idx1Rng1_uid808_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_b <= leftShiftStage1Idx1Rng1_uid808_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_in(62 downto 0);

    -- leftShiftStage1Idx1_uid809_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x(BITJOIN,808)@4
    leftShiftStage1Idx1_uid809_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_q <= leftShiftStage1Idx1Rng1_uid808_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_b & GND_q;

    -- leftShiftStage0Idx1Rng2_uid803_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x(BITSELECT,802)@4
    leftShiftStage0Idx1Rng2_uid803_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_in <= i_and2_or7_i_result_buffer_vt_join_q(61 downto 0);
    leftShiftStage0Idx1Rng2_uid803_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_b <= leftShiftStage0Idx1Rng2_uid803_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_in(61 downto 0);

    -- leftShiftStage0Idx1_uid804_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x(BITJOIN,803)@4
    leftShiftStage0Idx1_uid804_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_q <= leftShiftStage0Idx1Rng2_uid803_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_b & i_acl_47_i_result_buffer_vt_const_1_q;

    -- c_i64_4503599627370495(CONSTANT,367)
    c_i64_4503599627370495_q <= "0000000000001111111111111111111111111111111111111111111111111111";

    -- i_and2_i24_result_buffer(LOGICAL,463)@3
    i_and2_i24_result_buffer_q <= bgTrunc_i_add_i_result_buffer_sel_x_b and c_i64_4503599627370495_q;

    -- i_and2_i24_result_buffer_vt_select_51(BITSELECT,466)@3
    i_and2_i24_result_buffer_vt_select_51_b <= i_and2_i24_result_buffer_q(51 downto 0);

    -- redist70_i_and2_i24_result_buffer_vt_select_51_b_1(DELAY,1296)
    redist70_i_and2_i24_result_buffer_vt_select_51_b_1 : dspba_delay
    GENERIC MAP ( width => 52, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_and2_i24_result_buffer_vt_select_51_b, xout => redist70_i_and2_i24_result_buffer_vt_select_51_b_1_q, clk => clock, aclr => resetn );

    -- i_and2_i24_result_buffer_vt_join(BITJOIN,465)@4
    i_and2_i24_result_buffer_vt_join_q <= i_and253_i_result_buffer_vt_const_11_q & redist70_i_and2_i24_result_buffer_vt_select_51_b_1_q;

    -- i_or7_i_result_buffer_vt_const_63(CONSTANT,597)
    i_or7_i_result_buffer_vt_const_63_q <= "000000000001";

    -- i_or7_i_result_buffer_BitSelect_for_a(BITSELECT,1194)@4
    i_or7_i_result_buffer_BitSelect_for_a_b <= i_and2_i24_result_buffer_vt_join_q(51 downto 0);
    i_or7_i_result_buffer_BitSelect_for_a_c <= i_and2_i24_result_buffer_vt_join_q(63 downto 63);

    -- i_or7_i_result_buffer_join(BITJOIN,1195)@4
    i_or7_i_result_buffer_join_q <= i_or7_i_result_buffer_BitSelect_for_a_c & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & VCC_q & i_or7_i_result_buffer_BitSelect_for_a_b;

    -- i_or7_i_result_buffer_vt_select_51(BITSELECT,599)@4
    i_or7_i_result_buffer_vt_select_51_b <= i_or7_i_result_buffer_join_q(51 downto 0);

    -- i_or7_i_result_buffer_vt_join(BITJOIN,598)@4
    i_or7_i_result_buffer_vt_join_q <= i_or7_i_result_buffer_vt_const_63_q & i_or7_i_result_buffer_vt_select_51_b;

    -- i_and2_or7_i_result_buffer(MUX,467)@4
    i_and2_or7_i_result_buffer_s <= i_cmp5_i_result_buffer_q;
    i_and2_or7_i_result_buffer_combproc: PROCESS (i_and2_or7_i_result_buffer_s, i_or7_i_result_buffer_vt_join_q, i_and2_i24_result_buffer_vt_join_q)
    BEGIN
        CASE (i_and2_or7_i_result_buffer_s) IS
            WHEN "0" => i_and2_or7_i_result_buffer_q <= i_or7_i_result_buffer_vt_join_q;
            WHEN "1" => i_and2_or7_i_result_buffer_q <= i_and2_i24_result_buffer_vt_join_q;
            WHEN OTHERS => i_and2_or7_i_result_buffer_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and2_or7_i_result_buffer_vt_select_52(BITSELECT,470)@4
    i_and2_or7_i_result_buffer_vt_select_52_b <= i_and2_or7_i_result_buffer_q(52 downto 0);

    -- i_and2_or7_i_result_buffer_vt_join(BITJOIN,469)@4
    i_and2_or7_i_result_buffer_vt_join_q <= i_and274_i_result_buffer_vt_const_10_q & i_and2_or7_i_result_buffer_vt_select_52_b;

    -- leftShiftStage0_uid806_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x(MUX,805)@4
    leftShiftStage0_uid806_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_s <= VCC_q;
    leftShiftStage0_uid806_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_combproc: PROCESS (leftShiftStage0_uid806_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_s, i_and2_or7_i_result_buffer_vt_join_q, leftShiftStage0Idx1_uid804_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid806_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid806_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_q <= i_and2_or7_i_result_buffer_vt_join_q;
            WHEN "1" => leftShiftStage0_uid806_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_q <= leftShiftStage0Idx1_uid804_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid806_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid811_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x(MUX,810)@4
    leftShiftStage1_uid811_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_s <= VCC_q;
    leftShiftStage1_uid811_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_combproc: PROCESS (leftShiftStage1_uid811_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_s, leftShiftStage0_uid806_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_q, leftShiftStage1Idx1_uid809_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid811_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid811_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_q <= leftShiftStage0_uid806_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_q;
            WHEN "1" => leftShiftStage1_uid811_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_q <= leftShiftStage1Idx1_uid809_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid811_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and2_or7_op_i_result_buffer_vt_select_55(BITSELECT,474)@4
    i_and2_or7_op_i_result_buffer_vt_select_55_b <= leftShiftStage1_uid811_i_and2_or7_op_i_result_buffer_result_buffer39_shift_x_q(55 downto 3);

    -- i_and2_or7_op_i_result_buffer_vt_join(BITJOIN,473)@4
    i_and2_or7_op_i_result_buffer_vt_join_q <= c_i8_0gr_q & i_and2_or7_op_i_result_buffer_vt_select_55_b & i_and2_or7_op_i_result_buffer_vt_const_2_q;

    -- i_shr4_i_result_buffer_BitSelect_for_a(BITSELECT,1205)@3
    i_shr4_i_result_buffer_BitSelect_for_a_b <= i_and3_i_result_buffer_vt_join_q(10 downto 0);

    -- i_shr4_i_result_buffer_join(BITJOIN,1206)@3
    i_shr4_i_result_buffer_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_shr4_i_result_buffer_BitSelect_for_a_b;

    -- i_shr4_i_result_buffer_vt_select_10(BITSELECT,686)@3
    i_shr4_i_result_buffer_vt_select_10_b <= i_shr4_i_result_buffer_join_q(10 downto 0);

    -- i_shr4_i_result_buffer_vt_join(BITJOIN,685)@3
    i_shr4_i_result_buffer_vt_join_q <= i_shr4_i_result_buffer_vt_const_63_q & i_shr4_i_result_buffer_vt_select_10_b;

    -- i_cmp5_i_result_buffer(LOGICAL,529)@3 + 1
    i_cmp5_i_result_buffer_qi <= "1" WHEN i_shr4_i_result_buffer_vt_join_q = dupName_0_c_i64_0gr_x_q ELSE "0";
    i_cmp5_i_result_buffer_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp5_i_result_buffer_qi, xout => i_cmp5_i_result_buffer_q, clk => clock, aclr => resetn );

    -- i_shl_i28_result_buffer(MUX,656)@4
    i_shl_i28_result_buffer_s <= i_cmp5_i_result_buffer_q;
    i_shl_i28_result_buffer_combproc: PROCESS (i_shl_i28_result_buffer_s, i_and2_or7_op_i_result_buffer_vt_join_q, dupName_0_c_i64_0gr_x_q)
    BEGIN
        CASE (i_shl_i28_result_buffer_s) IS
            WHEN "0" => i_shl_i28_result_buffer_q <= i_and2_or7_op_i_result_buffer_vt_join_q;
            WHEN "1" => i_shl_i28_result_buffer_q <= dupName_0_c_i64_0gr_x_q;
            WHEN OTHERS => i_shl_i28_result_buffer_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shl_i28_result_buffer_vt_select_55(BITSELECT,660)@4
    i_shl_i28_result_buffer_vt_select_55_b <= i_shl_i28_result_buffer_q(55 downto 3);

    -- i_shl_i28_result_buffer_vt_join(BITJOIN,659)@4
    i_shl_i28_result_buffer_vt_join_q <= c_i8_0gr_q & i_shl_i28_result_buffer_vt_select_55_b & i_and2_or7_op_i_result_buffer_vt_const_2_q;

    -- rightShiftStage0_uid1076_i_shr266_i_result_buffer_result_buffer43_shift_x(MUX,1075)@4
    rightShiftStage0_uid1076_i_shr266_i_result_buffer_result_buffer43_shift_x_s <= VCC_q;
    rightShiftStage0_uid1076_i_shr266_i_result_buffer_result_buffer43_shift_x_combproc: PROCESS (rightShiftStage0_uid1076_i_shr266_i_result_buffer_result_buffer43_shift_x_s, i_shl_i28_result_buffer_vt_join_q, rightShiftStage0Idx1_uid1074_i_shr266_i_result_buffer_result_buffer43_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1076_i_shr266_i_result_buffer_result_buffer43_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1076_i_shr266_i_result_buffer_result_buffer43_shift_x_q <= i_shl_i28_result_buffer_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1076_i_shr266_i_result_buffer_result_buffer43_shift_x_q <= rightShiftStage0Idx1_uid1074_i_shr266_i_result_buffer_result_buffer43_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1076_i_shr266_i_result_buffer_result_buffer43_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr266_i_result_buffer_vt_select_54(BITSELECT,679)@4
    i_shr266_i_result_buffer_vt_select_54_b <= rightShiftStage0_uid1076_i_shr266_i_result_buffer_result_buffer43_shift_x_q(54 downto 2);

    -- i_shr266_i_result_buffer_vt_join(BITJOIN,678)@4
    i_shr266_i_result_buffer_vt_join_q <= i_shr266_i_result_buffer_vt_const_63_q & i_shr266_i_result_buffer_vt_select_54_b & i_acl_47_i_result_buffer_vt_const_1_q;

    -- i_x_mantissa_mask_i_i_result_buffer_BitSelect_for_a(BITSELECT,1210)@4
    i_x_mantissa_mask_i_i_result_buffer_BitSelect_for_a_b <= i_shr266_i_result_buffer_vt_join_q(54 downto 2);

    -- i_x_mantissa_mask_i_i_result_buffer_join(BITJOIN,1211)@4
    i_x_mantissa_mask_i_i_result_buffer_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_x_mantissa_mask_i_i_result_buffer_BitSelect_for_a_b & GND_q & GND_q;

    -- i_x_mantissa_mask_i_i_result_buffer_vt_select_54(BITSELECT,736)@4
    i_x_mantissa_mask_i_i_result_buffer_vt_select_54_b <= i_x_mantissa_mask_i_i_result_buffer_join_q(54 downto 2);

    -- i_x_mantissa_mask_i_i_result_buffer_vt_join(BITJOIN,735)@4
    i_x_mantissa_mask_i_i_result_buffer_vt_join_q <= i_shr266_i_result_buffer_vt_const_63_q & i_x_mantissa_mask_i_i_result_buffer_vt_select_54_b & i_acl_47_i_result_buffer_vt_const_1_q;

    -- i_and308_i_result_buffer_BitSelect_for_a(BITSELECT,1170)@4
    i_and308_i_result_buffer_BitSelect_for_a_b <= i_shl_i28_result_buffer_vt_join_q(55 downto 3);

    -- i_and308_i_result_buffer_join(BITJOIN,1171)@4
    i_and308_i_result_buffer_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and308_i_result_buffer_BitSelect_for_a_b & GND_q & GND_q & GND_q;

    -- i_and308_i_result_buffer_vt_select_55(BITSELECT,484)@4
    i_and308_i_result_buffer_vt_select_55_b <= i_and308_i_result_buffer_join_q(55 downto 3);

    -- i_and308_i_result_buffer_vt_join(BITJOIN,483)@4
    i_and308_i_result_buffer_vt_join_q <= c_i8_0gr_q & i_and308_i_result_buffer_vt_select_55_b & i_and2_or7_op_i_result_buffer_vt_const_2_q;

    -- i_and286_i_result_buffer_vt_const_7(CONSTANT,456)
    i_and286_i_result_buffer_vt_const_7_q <= "0000000";

    -- c_i8_1gr(CONSTANT,375)
    c_i8_1gr_q <= "00000001";

    -- i_and274_i_lobit_result_buffer_vt_const_31(CONSTANT,441)
    i_and274_i_lobit_result_buffer_vt_const_31_q <= "0000000000000000000000000000000";

    -- rightShiftStage2Idx1Rng1_uid793_i_and274_i_lobit_result_buffer_result_buffer47_shift_x(BITSELECT,792)@4
    rightShiftStage2Idx1Rng1_uid793_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_b <= rightShiftStage1_uid792_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q(31 downto 1);

    -- rightShiftStage2Idx1_uid795_i_and274_i_lobit_result_buffer_result_buffer47_shift_x(BITJOIN,794)@4
    rightShiftStage2Idx1_uid795_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q <= GND_q & rightShiftStage2Idx1Rng1_uid793_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_b;

    -- rightShiftStage1Idx1Rng2_uid788_i_and274_i_lobit_result_buffer_result_buffer47_shift_x(BITSELECT,787)@4
    rightShiftStage1Idx1Rng2_uid788_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_b <= rightShiftStage0_uid787_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q(31 downto 2);

    -- rightShiftStage1Idx1_uid790_i_and274_i_lobit_result_buffer_result_buffer47_shift_x(BITJOIN,789)@4
    rightShiftStage1Idx1_uid790_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q <= i_acl_47_i_result_buffer_vt_const_1_q & rightShiftStage1Idx1Rng2_uid788_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_b;

    -- rightShiftStage0Idx1Rng8_uid783_i_and274_i_lobit_result_buffer_result_buffer47_shift_x(BITSELECT,782)@4
    rightShiftStage0Idx1Rng8_uid783_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_b <= i_and274_i_result_buffer_vt_join_q(31 downto 8);

    -- rightShiftStage0Idx1_uid785_i_and274_i_lobit_result_buffer_result_buffer47_shift_x(BITJOIN,784)@4
    rightShiftStage0Idx1_uid785_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q <= c_i8_0gr_q & rightShiftStage0Idx1Rng8_uid783_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_b;

    -- rightShiftStage0_uid787_i_and274_i_lobit_result_buffer_result_buffer47_shift_x(MUX,786)@4
    rightShiftStage0_uid787_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_s <= VCC_q;
    rightShiftStage0_uid787_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_combproc: PROCESS (rightShiftStage0_uid787_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_s, i_and274_i_result_buffer_vt_join_q, rightShiftStage0Idx1_uid785_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid787_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid787_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q <= i_and274_i_result_buffer_vt_join_q;
            WHEN "1" => rightShiftStage0_uid787_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q <= rightShiftStage0Idx1_uid785_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid787_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid792_i_and274_i_lobit_result_buffer_result_buffer47_shift_x(MUX,791)@4
    rightShiftStage1_uid792_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_s <= VCC_q;
    rightShiftStage1_uid792_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_combproc: PROCESS (rightShiftStage1_uid792_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_s, rightShiftStage0_uid787_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q, rightShiftStage1Idx1_uid790_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid792_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid792_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q <= rightShiftStage0_uid787_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q;
            WHEN "1" => rightShiftStage1_uid792_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q <= rightShiftStage1Idx1_uid790_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid792_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid797_i_and274_i_lobit_result_buffer_result_buffer47_shift_x(MUX,796)@4
    rightShiftStage2_uid797_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_s <= VCC_q;
    rightShiftStage2_uid797_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_combproc: PROCESS (rightShiftStage2_uid797_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_s, rightShiftStage1_uid792_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q, rightShiftStage2Idx1_uid795_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid797_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid797_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q <= rightShiftStage1_uid792_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q;
            WHEN "1" => rightShiftStage2_uid797_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q <= rightShiftStage2Idx1_uid795_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid797_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and274_i_lobit_result_buffer_vt_select_0(BITSELECT,443)@4
    i_and274_i_lobit_result_buffer_vt_select_0_b <= rightShiftStage2_uid797_i_and274_i_lobit_result_buffer_result_buffer47_shift_x_q(0 downto 0);

    -- i_and274_i_lobit_result_buffer_vt_join(BITJOIN,442)@4
    i_and274_i_lobit_result_buffer_vt_join_q <= i_and274_i_lobit_result_buffer_vt_const_31_q & i_and274_i_lobit_result_buffer_vt_select_0_b;

    -- i_unnamed_result_buffer48(LOGICAL,720)@4
    i_unnamed_result_buffer48_q <= i_and274_i_lobit_result_buffer_vt_join_q xor c_i32_1gr_q;

    -- i_unnamed_result_buffer48_vt_select_0(BITSELECT,723)@4
    i_unnamed_result_buffer48_vt_select_0_b <= i_unnamed_result_buffer48_q(0 downto 0);

    -- i_unnamed_result_buffer48_vt_join(BITJOIN,722)@4
    i_unnamed_result_buffer48_vt_join_q <= i_and274_i_lobit_result_buffer_vt_const_31_q & i_unnamed_result_buffer48_vt_select_0_b;

    -- i_unnamed_result_buffer49_sel_x(BITSELECT,320)@4
    i_unnamed_result_buffer49_sel_x_b <= i_unnamed_result_buffer48_vt_join_q(7 downto 0);

    -- i_unnamed_result_buffer49_vt_select_0(BITSELECT,727)@4
    i_unnamed_result_buffer49_vt_select_0_b <= i_unnamed_result_buffer49_sel_x_b(0 downto 0);

    -- i_unnamed_result_buffer49_vt_join(BITJOIN,726)@4
    i_unnamed_result_buffer49_vt_join_q <= i_and286_i_result_buffer_vt_const_7_q & i_unnamed_result_buffer49_vt_select_0_b;

    -- i_masked_i_result_buffer(LOGICAL,573)@4
    i_masked_i_result_buffer_q <= i_unnamed_result_buffer49_vt_join_q xor c_i8_1gr_q;

    -- i_masked_i_result_buffer_vt_select_0(BITSELECT,576)@4
    i_masked_i_result_buffer_vt_select_0_b <= i_masked_i_result_buffer_q(0 downto 0);

    -- i_masked_i_result_buffer_vt_join(BITJOIN,575)@4
    i_masked_i_result_buffer_vt_join_q <= i_and286_i_result_buffer_vt_const_7_q & i_masked_i_result_buffer_vt_select_0_b;

    -- i_and283_i_result_buffer_BitSelect_for_a(BITSELECT,1167)@4
    i_and283_i_result_buffer_BitSelect_for_a_b <= i_shl_i28_result_buffer_vt_join_q(53 downto 52);

    -- i_and283_i_result_buffer_join(BITJOIN,1168)@4
    i_and283_i_result_buffer_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and283_i_result_buffer_BitSelect_for_a_b & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_and283_i_result_buffer_vt_select_53(BITSELECT,453)@4
    i_and283_i_result_buffer_vt_select_53_b <= i_and283_i_result_buffer_join_q(53 downto 52);

    -- i_and283_i_result_buffer_vt_join(BITJOIN,452)@4
    i_and283_i_result_buffer_vt_join_q <= i_and283_i_result_buffer_vt_const_63_q & i_and283_i_result_buffer_vt_select_53_b & i_and1_i_result_buffer_vt_const_51_q;

    -- i_cmp284_i_result_buffer(LOGICAL,524)@4
    i_cmp284_i_result_buffer_q <= "1" WHEN i_and283_i_result_buffer_vt_join_q = dupName_0_c_i64_0gr_x_q ELSE "0";

    -- i_cmp271_i_result_buffer(LOGICAL,523)@4
    i_cmp271_i_result_buffer_q <= "1" WHEN i_and265_i_result_buffer_vt_join_q = c_i32_0gr_q ELSE "0";

    -- i_and2868_i_result_buffer(LOGICAL,454)@4
    i_and2868_i_result_buffer_q <= i_cmp271_i_result_buffer_q and i_cmp284_i_result_buffer_q;

    -- i_and286_i_result_buffer_sel_x(BITSELECT,25)@4
    i_and286_i_result_buffer_sel_x_b <= std_logic_vector(resize(unsigned(i_and2868_i_result_buffer_q(0 downto 0)), 8));

    -- i_and286_i_result_buffer_vt_select_0(BITSELECT,458)@4
    i_and286_i_result_buffer_vt_select_0_b <= i_and286_i_result_buffer_sel_x_b(0 downto 0);

    -- i_and286_i_result_buffer_vt_join(BITJOIN,457)@4
    i_and286_i_result_buffer_vt_join_q <= i_and286_i_result_buffer_vt_const_7_q & i_and286_i_result_buffer_vt_select_0_b;

    -- i_unnamed_result_buffer50(LOGICAL,728)@4
    i_unnamed_result_buffer50_q <= i_and286_i_result_buffer_vt_join_q or i_masked_i_result_buffer_vt_join_q;

    -- i_unnamed_result_buffer50_vt_select_0(BITSELECT,731)@4
    i_unnamed_result_buffer50_vt_select_0_b <= i_unnamed_result_buffer50_q(0 downto 0);

    -- i_unnamed_result_buffer50_vt_join(BITJOIN,730)@4
    i_unnamed_result_buffer50_vt_join_q <= i_and286_i_result_buffer_vt_const_7_q & i_unnamed_result_buffer50_vt_select_0_b;

    -- i_tobool297_i_result_buffer(LOGICAL,706)@4
    i_tobool297_i_result_buffer_q <= "1" WHEN i_unnamed_result_buffer50_vt_join_q = c_i8_0gr_q ELSE "0";

    -- i_and308_i_result_buffer_result_buffer52(MUX,476)@4
    i_and308_i_result_buffer_result_buffer52_s <= i_tobool297_i_result_buffer_q;
    i_and308_i_result_buffer_result_buffer52_combproc: PROCESS (i_and308_i_result_buffer_result_buffer52_s, dupName_0_c_i64_0gr_x_q, i_and308_i_result_buffer_vt_join_q)
    BEGIN
        CASE (i_and308_i_result_buffer_result_buffer52_s) IS
            WHEN "0" => i_and308_i_result_buffer_result_buffer52_q <= dupName_0_c_i64_0gr_x_q;
            WHEN "1" => i_and308_i_result_buffer_result_buffer52_q <= i_and308_i_result_buffer_vt_join_q;
            WHEN OTHERS => i_and308_i_result_buffer_result_buffer52_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and308_i_result_buffer_result_buffer52_vt_select_55(BITSELECT,480)@4
    i_and308_i_result_buffer_result_buffer52_vt_select_55_b <= i_and308_i_result_buffer_result_buffer52_q(55 downto 3);

    -- i_and308_i_result_buffer_result_buffer52_vt_join(BITJOIN,479)@4
    i_and308_i_result_buffer_result_buffer52_vt_join_q <= c_i8_0gr_q & i_and308_i_result_buffer_result_buffer52_vt_select_55_b & i_and2_or7_op_i_result_buffer_vt_const_2_q;

    -- i_acl_46_i_result_buffer(LOGICAL,390)@4
    i_acl_46_i_result_buffer_q <= i_tobool297_i_result_buffer_q and i_cmp271_i_result_buffer_q;

    -- i_acl_47_i_result_buffer(MUX,391)@4
    i_acl_47_i_result_buffer_s <= i_acl_46_i_result_buffer_q;
    i_acl_47_i_result_buffer_combproc: PROCESS (i_acl_47_i_result_buffer_s, i_and308_i_result_buffer_result_buffer52_vt_join_q, i_x_mantissa_mask_i_i_result_buffer_vt_join_q)
    BEGIN
        CASE (i_acl_47_i_result_buffer_s) IS
            WHEN "0" => i_acl_47_i_result_buffer_q <= i_and308_i_result_buffer_result_buffer52_vt_join_q;
            WHEN "1" => i_acl_47_i_result_buffer_q <= i_x_mantissa_mask_i_i_result_buffer_vt_join_q;
            WHEN OTHERS => i_acl_47_i_result_buffer_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_47_i_result_buffer_vt_select_55(BITSELECT,395)@4
    i_acl_47_i_result_buffer_vt_select_55_b <= i_acl_47_i_result_buffer_q(55 downto 2);

    -- i_acl_47_i_result_buffer_vt_join(BITJOIN,394)@4
    i_acl_47_i_result_buffer_vt_join_q <= c_i8_0gr_q & i_acl_47_i_result_buffer_vt_select_55_b & i_acl_47_i_result_buffer_vt_const_1_q;

    -- i_conv50_i_result_buffer_BitSelect_for_a(BITSELECT,1185)@4
    i_conv50_i_result_buffer_BitSelect_for_a_b <= i_acl_47_i_result_buffer_vt_join_q(55 downto 55);

    -- redist64_i_conv50_i_result_buffer_BitSelect_for_a_b_1(DELAY,1290)
    redist64_i_conv50_i_result_buffer_BitSelect_for_a_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_conv50_i_result_buffer_BitSelect_for_a_b, xout => redist64_i_conv50_i_result_buffer_BitSelect_for_a_b_1_q, clk => clock, aclr => resetn );

    -- i_conv50_i_result_buffer_join(BITJOIN,1186)@5
    i_conv50_i_result_buffer_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & redist64_i_conv50_i_result_buffer_BitSelect_for_a_b_1_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_conv50_i_result_buffer_vt_select_55(BITSELECT,550)@5
    i_conv50_i_result_buffer_vt_select_55_b <= i_conv50_i_result_buffer_join_q(55 downto 55);

    -- i_conv50_i_result_buffer_vt_const_54(CONSTANT,547)
    i_conv50_i_result_buffer_vt_const_54_q <= "0000000000000000000000000000000000000000000000000000000";

    -- i_conv50_i_result_buffer_vt_join(BITJOIN,549)@5
    i_conv50_i_result_buffer_vt_join_q <= c_i8_0gr_q & i_conv50_i_result_buffer_vt_select_55_b & i_conv50_i_result_buffer_vt_const_54_q;

    -- i_tobool52_i_result_buffer(LOGICAL,707)@5
    i_tobool52_i_result_buffer_q <= "1" WHEN i_conv50_i_result_buffer_vt_join_q /= dupName_0_c_i64_0gr_x_q ELSE "0";

    -- i_and60_i_result_buffer(MUX,518)@5
    i_and60_i_result_buffer_s <= i_tobool52_i_result_buffer_q;
    i_and60_i_result_buffer_combproc: PROCESS (i_and60_i_result_buffer_s, dupName_0_c_i64_0gr_x_q, i_conv353_i_op_result_buffer_vt_join_q)
    BEGIN
        CASE (i_and60_i_result_buffer_s) IS
            WHEN "0" => i_and60_i_result_buffer_q <= dupName_0_c_i64_0gr_x_q;
            WHEN "1" => i_and60_i_result_buffer_q <= i_conv353_i_op_result_buffer_vt_join_q;
            WHEN OTHERS => i_and60_i_result_buffer_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and60_i_result_buffer_vt_select_11(BITSELECT,521)@5
    i_and60_i_result_buffer_vt_select_11_b <= i_and60_i_result_buffer_q(11 downto 0);

    -- i_and60_i_result_buffer_vt_join(BITJOIN,520)@5
    i_and60_i_result_buffer_vt_join_q <= i_and1_i_result_buffer_vt_const_51_q & i_and60_i_result_buffer_vt_select_11_b;

    -- leftShiftStage0_uid768_i_and1_i_result_buffer_result_buffer55_shift_x(MUX,767)@5
    leftShiftStage0_uid768_i_and1_i_result_buffer_result_buffer55_shift_x_s <= VCC_q;
    leftShiftStage0_uid768_i_and1_i_result_buffer_result_buffer55_shift_x_combproc: PROCESS (leftShiftStage0_uid768_i_and1_i_result_buffer_result_buffer55_shift_x_s, i_and60_i_result_buffer_vt_join_q, leftShiftStage0Idx1_uid766_i_and1_i_result_buffer_result_buffer55_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid768_i_and1_i_result_buffer_result_buffer55_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid768_i_and1_i_result_buffer_result_buffer55_shift_x_q <= i_and60_i_result_buffer_vt_join_q;
            WHEN "1" => leftShiftStage0_uid768_i_and1_i_result_buffer_result_buffer55_shift_x_q <= leftShiftStage0Idx1_uid766_i_and1_i_result_buffer_result_buffer55_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid768_i_and1_i_result_buffer_result_buffer55_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid773_i_and1_i_result_buffer_result_buffer55_shift_x(MUX,772)@5
    leftShiftStage1_uid773_i_and1_i_result_buffer_result_buffer55_shift_x_s <= VCC_q;
    leftShiftStage1_uid773_i_and1_i_result_buffer_result_buffer55_shift_x_combproc: PROCESS (leftShiftStage1_uid773_i_and1_i_result_buffer_result_buffer55_shift_x_s, leftShiftStage0_uid768_i_and1_i_result_buffer_result_buffer55_shift_x_q, leftShiftStage1Idx1_uid771_i_and1_i_result_buffer_result_buffer55_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid773_i_and1_i_result_buffer_result_buffer55_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid773_i_and1_i_result_buffer_result_buffer55_shift_x_q <= leftShiftStage0_uid768_i_and1_i_result_buffer_result_buffer55_shift_x_q;
            WHEN "1" => leftShiftStage1_uid773_i_and1_i_result_buffer_result_buffer55_shift_x_q <= leftShiftStage1Idx1_uid771_i_and1_i_result_buffer_result_buffer55_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid773_i_and1_i_result_buffer_result_buffer55_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid778_i_and1_i_result_buffer_result_buffer55_shift_x(MUX,777)@5
    leftShiftStage2_uid778_i_and1_i_result_buffer_result_buffer55_shift_x_s <= VCC_q;
    leftShiftStage2_uid778_i_and1_i_result_buffer_result_buffer55_shift_x_combproc: PROCESS (leftShiftStage2_uid778_i_and1_i_result_buffer_result_buffer55_shift_x_s, leftShiftStage1_uid773_i_and1_i_result_buffer_result_buffer55_shift_x_q, leftShiftStage2Idx1_uid776_i_and1_i_result_buffer_result_buffer55_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid778_i_and1_i_result_buffer_result_buffer55_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid778_i_and1_i_result_buffer_result_buffer55_shift_x_q <= leftShiftStage1_uid773_i_and1_i_result_buffer_result_buffer55_shift_x_q;
            WHEN "1" => leftShiftStage2_uid778_i_and1_i_result_buffer_result_buffer55_shift_x_q <= leftShiftStage2Idx1_uid776_i_and1_i_result_buffer_result_buffer55_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid778_i_and1_i_result_buffer_result_buffer55_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and1_i_result_buffer_vt_select_63(BITSELECT,427)@5
    i_and1_i_result_buffer_vt_select_63_b <= leftShiftStage2_uid778_i_and1_i_result_buffer_result_buffer55_shift_x_q(63 downto 52);

    -- i_and1_i_result_buffer_vt_join(BITJOIN,426)@5
    i_and1_i_result_buffer_vt_join_q <= i_and1_i_result_buffer_vt_select_63_b & i_and1_i_result_buffer_vt_const_51_q;

    -- i_shl2_i_result_buffer_BitSelect_for_a(BITSELECT,1201)@5
    i_shl2_i_result_buffer_BitSelect_for_a_b <= i_and1_i_result_buffer_vt_join_q(62 downto 52);

    -- i_shl2_i_result_buffer_join(BITJOIN,1202)@5
    i_shl2_i_result_buffer_join_q <= GND_q & i_shl2_i_result_buffer_BitSelect_for_a_b & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_shl2_i_result_buffer_vt_select_62(BITSELECT,638)@5
    i_shl2_i_result_buffer_vt_select_62_b <= i_shl2_i_result_buffer_join_q(62 downto 52);

    -- i_shl2_i_result_buffer_vt_join(BITJOIN,637)@5
    i_shl2_i_result_buffer_vt_join_q <= GND_q & i_shl2_i_result_buffer_vt_select_62_b & i_and1_i_result_buffer_vt_const_51_q;

    -- c_i64_9218868437227405312(CONSTANT,372)
    c_i64_9218868437227405312_q <= "0111111111110000000000000000000000000000000000000000000000000000";

    -- i_and5_i_result_buffer_BitSelect_for_a(BITSELECT,1177)@5
    i_and5_i_result_buffer_BitSelect_for_a_b <= i_and60_i_result_buffer_vt_join_q(11 downto 11);

    -- i_and5_i_result_buffer_join(BITJOIN,1178)@5
    i_and5_i_result_buffer_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and5_i_result_buffer_BitSelect_for_a_b & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_and5_i_result_buffer_vt_select_11(BITSELECT,517)@5
    i_and5_i_result_buffer_vt_select_11_b <= i_and5_i_result_buffer_join_q(11 downto 11);

    -- i_and5_i_result_buffer_vt_join(BITJOIN,516)@5
    i_and5_i_result_buffer_vt_join_q <= i_and1_i_result_buffer_vt_const_51_q & i_and5_i_result_buffer_vt_select_11_b & i_and274_i_result_buffer_vt_const_10_q;

    -- i_tobool_i2_result_buffer(LOGICAL,708)@5
    i_tobool_i2_result_buffer_q <= "1" WHEN i_and5_i_result_buffer_vt_join_q = dupName_0_c_i64_0gr_x_q ELSE "0";

    -- i_exponent_0_i_result_buffer(MUX,560)@5
    i_exponent_0_i_result_buffer_s <= i_tobool_i2_result_buffer_q;
    i_exponent_0_i_result_buffer_combproc: PROCESS (i_exponent_0_i_result_buffer_s, c_i64_9218868437227405312_q, i_shl2_i_result_buffer_vt_join_q)
    BEGIN
        CASE (i_exponent_0_i_result_buffer_s) IS
            WHEN "0" => i_exponent_0_i_result_buffer_q <= c_i64_9218868437227405312_q;
            WHEN "1" => i_exponent_0_i_result_buffer_q <= i_shl2_i_result_buffer_vt_join_q;
            WHEN OTHERS => i_exponent_0_i_result_buffer_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_exponent_0_i_result_buffer_vt_select_62(BITSELECT,564)@5
    i_exponent_0_i_result_buffer_vt_select_62_b <= i_exponent_0_i_result_buffer_q(62 downto 52);

    -- i_and1_i_result_buffer_vt_const_51(CONSTANT,425)
    i_and1_i_result_buffer_vt_const_51_q <= "0000000000000000000000000000000000000000000000000000";

    -- i_exponent_0_i_result_buffer_vt_join(BITJOIN,563)@5
    i_exponent_0_i_result_buffer_vt_join_q <= GND_q & i_exponent_0_i_result_buffer_vt_select_62_b & i_and1_i_result_buffer_vt_const_51_q;

    -- rightShiftStage1Idx1Rng1_uid1101_i_shr3_i_result_buffer_result_buffer56_shift_x(BITSELECT,1100)@4
    rightShiftStage1Idx1Rng1_uid1101_i_shr3_i_result_buffer_result_buffer56_shift_x_b <= rightShiftStage0_uid1100_i_shr3_i_result_buffer_result_buffer56_shift_x_q(63 downto 1);

    -- rightShiftStage1Idx1_uid1103_i_shr3_i_result_buffer_result_buffer56_shift_x(BITJOIN,1102)@4
    rightShiftStage1Idx1_uid1103_i_shr3_i_result_buffer_result_buffer56_shift_x_q <= GND_q & rightShiftStage1Idx1Rng1_uid1101_i_shr3_i_result_buffer_result_buffer56_shift_x_b;

    -- rightShiftStage0Idx1Rng2_uid1096_i_shr3_i_result_buffer_result_buffer56_shift_x(BITSELECT,1095)@4
    rightShiftStage0Idx1Rng2_uid1096_i_shr3_i_result_buffer_result_buffer56_shift_x_b <= i_acl_47_i_result_buffer_vt_join_q(63 downto 2);

    -- rightShiftStage0Idx1_uid1098_i_shr3_i_result_buffer_result_buffer56_shift_x(BITJOIN,1097)@4
    rightShiftStage0Idx1_uid1098_i_shr3_i_result_buffer_result_buffer56_shift_x_q <= i_acl_47_i_result_buffer_vt_const_1_q & rightShiftStage0Idx1Rng2_uid1096_i_shr3_i_result_buffer_result_buffer56_shift_x_b;

    -- rightShiftStage0_uid1100_i_shr3_i_result_buffer_result_buffer56_shift_x(MUX,1099)@4
    rightShiftStage0_uid1100_i_shr3_i_result_buffer_result_buffer56_shift_x_s <= VCC_q;
    rightShiftStage0_uid1100_i_shr3_i_result_buffer_result_buffer56_shift_x_combproc: PROCESS (rightShiftStage0_uid1100_i_shr3_i_result_buffer_result_buffer56_shift_x_s, i_acl_47_i_result_buffer_vt_join_q, rightShiftStage0Idx1_uid1098_i_shr3_i_result_buffer_result_buffer56_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1100_i_shr3_i_result_buffer_result_buffer56_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1100_i_shr3_i_result_buffer_result_buffer56_shift_x_q <= i_acl_47_i_result_buffer_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1100_i_shr3_i_result_buffer_result_buffer56_shift_x_q <= rightShiftStage0Idx1_uid1098_i_shr3_i_result_buffer_result_buffer56_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1100_i_shr3_i_result_buffer_result_buffer56_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1105_i_shr3_i_result_buffer_result_buffer56_shift_x(MUX,1104)@4
    rightShiftStage1_uid1105_i_shr3_i_result_buffer_result_buffer56_shift_x_s <= VCC_q;
    rightShiftStage1_uid1105_i_shr3_i_result_buffer_result_buffer56_shift_x_combproc: PROCESS (rightShiftStage1_uid1105_i_shr3_i_result_buffer_result_buffer56_shift_x_s, rightShiftStage0_uid1100_i_shr3_i_result_buffer_result_buffer56_shift_x_q, rightShiftStage1Idx1_uid1103_i_shr3_i_result_buffer_result_buffer56_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1105_i_shr3_i_result_buffer_result_buffer56_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1105_i_shr3_i_result_buffer_result_buffer56_shift_x_q <= rightShiftStage0_uid1100_i_shr3_i_result_buffer_result_buffer56_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1105_i_shr3_i_result_buffer_result_buffer56_shift_x_q <= rightShiftStage1Idx1_uid1103_i_shr3_i_result_buffer_result_buffer56_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1105_i_shr3_i_result_buffer_result_buffer56_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr3_i_result_buffer_vt_select_52(BITSELECT,682)@4
    i_shr3_i_result_buffer_vt_select_52_b <= rightShiftStage1_uid1105_i_shr3_i_result_buffer_result_buffer56_shift_x_q(52 downto 0);

    -- i_shr3_i_result_buffer_vt_join(BITJOIN,681)@4
    i_shr3_i_result_buffer_vt_join_q <= i_and274_i_result_buffer_vt_const_10_q & i_shr3_i_result_buffer_vt_select_52_b;

    -- i_and4_i_result_buffer_BitSelect_for_a(BITSELECT,1175)@4
    i_and4_i_result_buffer_BitSelect_for_a_b <= i_shr3_i_result_buffer_vt_join_q(51 downto 0);

    -- i_and4_i_result_buffer_join(BITJOIN,1176)@4
    i_and4_i_result_buffer_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and4_i_result_buffer_BitSelect_for_a_b;

    -- i_and4_i_result_buffer_vt_select_51(BITSELECT,512)@4
    i_and4_i_result_buffer_vt_select_51_b <= i_and4_i_result_buffer_join_q(51 downto 0);

    -- redist69_i_and4_i_result_buffer_vt_select_51_b_1(DELAY,1295)
    redist69_i_and4_i_result_buffer_vt_select_51_b_1 : dspba_delay
    GENERIC MAP ( width => 52, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_and4_i_result_buffer_vt_select_51_b, xout => redist69_i_and4_i_result_buffer_vt_select_51_b_1_q, clk => clock, aclr => resetn );

    -- i_and4_i_result_buffer_vt_join(BITJOIN,511)@5
    i_and4_i_result_buffer_vt_join_q <= i_and253_i_result_buffer_vt_const_11_q & redist69_i_and4_i_result_buffer_vt_select_51_b_1_q;

    -- c_i64_9223372036854775808(CONSTANT,373)
    c_i64_9223372036854775808_q <= "1000000000000000000000000000000000000000000000000000000000000000";

    -- leftShiftStage3Idx1Rng1_uid1004_i_shl_i12_result_buffer_result_buffer54_shift_x(BITSELECT,1003)@5
    leftShiftStage3Idx1Rng1_uid1004_i_shl_i12_result_buffer_result_buffer54_shift_x_in <= leftShiftStage2_uid1002_i_shl_i12_result_buffer_result_buffer54_shift_x_q(62 downto 0);
    leftShiftStage3Idx1Rng1_uid1004_i_shl_i12_result_buffer_result_buffer54_shift_x_b <= leftShiftStage3Idx1Rng1_uid1004_i_shl_i12_result_buffer_result_buffer54_shift_x_in(62 downto 0);

    -- leftShiftStage3Idx1_uid1005_i_shl_i12_result_buffer_result_buffer54_shift_x(BITJOIN,1004)@5
    leftShiftStage3Idx1_uid1005_i_shl_i12_result_buffer_result_buffer54_shift_x_q <= leftShiftStage3Idx1Rng1_uid1004_i_shl_i12_result_buffer_result_buffer54_shift_x_b & GND_q;

    -- leftShiftStage2Idx1Rng2_uid999_i_shl_i12_result_buffer_result_buffer54_shift_x(BITSELECT,998)@5
    leftShiftStage2Idx1Rng2_uid999_i_shl_i12_result_buffer_result_buffer54_shift_x_in <= leftShiftStage1_uid997_i_shl_i12_result_buffer_result_buffer54_shift_x_q(61 downto 0);
    leftShiftStage2Idx1Rng2_uid999_i_shl_i12_result_buffer_result_buffer54_shift_x_b <= leftShiftStage2Idx1Rng2_uid999_i_shl_i12_result_buffer_result_buffer54_shift_x_in(61 downto 0);

    -- leftShiftStage2Idx1_uid1000_i_shl_i12_result_buffer_result_buffer54_shift_x(BITJOIN,999)@5
    leftShiftStage2Idx1_uid1000_i_shl_i12_result_buffer_result_buffer54_shift_x_q <= leftShiftStage2Idx1Rng2_uid999_i_shl_i12_result_buffer_result_buffer54_shift_x_b & i_acl_47_i_result_buffer_vt_const_1_q;

    -- leftShiftStage1Idx1Rng16_uid994_i_shl_i12_result_buffer_result_buffer54_shift_x(BITSELECT,993)@5
    leftShiftStage1Idx1Rng16_uid994_i_shl_i12_result_buffer_result_buffer54_shift_x_in <= leftShiftStage0_uid992_i_shl_i12_result_buffer_result_buffer54_shift_x_q(47 downto 0);
    leftShiftStage1Idx1Rng16_uid994_i_shl_i12_result_buffer_result_buffer54_shift_x_b <= leftShiftStage1Idx1Rng16_uid994_i_shl_i12_result_buffer_result_buffer54_shift_x_in(47 downto 0);

    -- leftShiftStage1Idx1_uid995_i_shl_i12_result_buffer_result_buffer54_shift_x(BITJOIN,994)@5
    leftShiftStage1Idx1_uid995_i_shl_i12_result_buffer_result_buffer54_shift_x_q <= leftShiftStage1Idx1Rng16_uid994_i_shl_i12_result_buffer_result_buffer54_shift_x_b & i_shr20_i_i_result_buffer_vt_const_31_q;

    -- leftShiftStage0Idx1Rng32_uid989_i_shl_i12_result_buffer_result_buffer54_shift_x(BITSELECT,988)@5
    leftShiftStage0Idx1Rng32_uid989_i_shl_i12_result_buffer_result_buffer54_shift_x_in <= i_conv353_i_result_buffer_vt_join_q(31 downto 0);
    leftShiftStage0Idx1Rng32_uid989_i_shl_i12_result_buffer_result_buffer54_shift_x_b <= leftShiftStage0Idx1Rng32_uid989_i_shl_i12_result_buffer_result_buffer54_shift_x_in(31 downto 0);

    -- leftShiftStage0Idx1_uid990_i_shl_i12_result_buffer_result_buffer54_shift_x(BITJOIN,989)@5
    leftShiftStage0Idx1_uid990_i_shl_i12_result_buffer_result_buffer54_shift_x_q <= leftShiftStage0Idx1Rng32_uid989_i_shl_i12_result_buffer_result_buffer54_shift_x_b & c_i32_0gr_q;

    -- leftShiftStage0_uid992_i_shl_i12_result_buffer_result_buffer54_shift_x(MUX,991)@5
    leftShiftStage0_uid992_i_shl_i12_result_buffer_result_buffer54_shift_x_s <= VCC_q;
    leftShiftStage0_uid992_i_shl_i12_result_buffer_result_buffer54_shift_x_combproc: PROCESS (leftShiftStage0_uid992_i_shl_i12_result_buffer_result_buffer54_shift_x_s, i_conv353_i_result_buffer_vt_join_q, leftShiftStage0Idx1_uid990_i_shl_i12_result_buffer_result_buffer54_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid992_i_shl_i12_result_buffer_result_buffer54_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid992_i_shl_i12_result_buffer_result_buffer54_shift_x_q <= i_conv353_i_result_buffer_vt_join_q;
            WHEN "1" => leftShiftStage0_uid992_i_shl_i12_result_buffer_result_buffer54_shift_x_q <= leftShiftStage0Idx1_uid990_i_shl_i12_result_buffer_result_buffer54_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid992_i_shl_i12_result_buffer_result_buffer54_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid997_i_shl_i12_result_buffer_result_buffer54_shift_x(MUX,996)@5
    leftShiftStage1_uid997_i_shl_i12_result_buffer_result_buffer54_shift_x_s <= VCC_q;
    leftShiftStage1_uid997_i_shl_i12_result_buffer_result_buffer54_shift_x_combproc: PROCESS (leftShiftStage1_uid997_i_shl_i12_result_buffer_result_buffer54_shift_x_s, leftShiftStage0_uid992_i_shl_i12_result_buffer_result_buffer54_shift_x_q, leftShiftStage1Idx1_uid995_i_shl_i12_result_buffer_result_buffer54_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid997_i_shl_i12_result_buffer_result_buffer54_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid997_i_shl_i12_result_buffer_result_buffer54_shift_x_q <= leftShiftStage0_uid992_i_shl_i12_result_buffer_result_buffer54_shift_x_q;
            WHEN "1" => leftShiftStage1_uid997_i_shl_i12_result_buffer_result_buffer54_shift_x_q <= leftShiftStage1Idx1_uid995_i_shl_i12_result_buffer_result_buffer54_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid997_i_shl_i12_result_buffer_result_buffer54_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1002_i_shl_i12_result_buffer_result_buffer54_shift_x(MUX,1001)@5
    leftShiftStage2_uid1002_i_shl_i12_result_buffer_result_buffer54_shift_x_s <= VCC_q;
    leftShiftStage2_uid1002_i_shl_i12_result_buffer_result_buffer54_shift_x_combproc: PROCESS (leftShiftStage2_uid1002_i_shl_i12_result_buffer_result_buffer54_shift_x_s, leftShiftStage1_uid997_i_shl_i12_result_buffer_result_buffer54_shift_x_q, leftShiftStage2Idx1_uid1000_i_shl_i12_result_buffer_result_buffer54_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1002_i_shl_i12_result_buffer_result_buffer54_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1002_i_shl_i12_result_buffer_result_buffer54_shift_x_q <= leftShiftStage1_uid997_i_shl_i12_result_buffer_result_buffer54_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1002_i_shl_i12_result_buffer_result_buffer54_shift_x_q <= leftShiftStage2Idx1_uid1000_i_shl_i12_result_buffer_result_buffer54_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1002_i_shl_i12_result_buffer_result_buffer54_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage3_uid1007_i_shl_i12_result_buffer_result_buffer54_shift_x(MUX,1006)@5
    leftShiftStage3_uid1007_i_shl_i12_result_buffer_result_buffer54_shift_x_s <= VCC_q;
    leftShiftStage3_uid1007_i_shl_i12_result_buffer_result_buffer54_shift_x_combproc: PROCESS (leftShiftStage3_uid1007_i_shl_i12_result_buffer_result_buffer54_shift_x_s, leftShiftStage2_uid1002_i_shl_i12_result_buffer_result_buffer54_shift_x_q, leftShiftStage3Idx1_uid1005_i_shl_i12_result_buffer_result_buffer54_shift_x_q)
    BEGIN
        CASE (leftShiftStage3_uid1007_i_shl_i12_result_buffer_result_buffer54_shift_x_s) IS
            WHEN "0" => leftShiftStage3_uid1007_i_shl_i12_result_buffer_result_buffer54_shift_x_q <= leftShiftStage2_uid1002_i_shl_i12_result_buffer_result_buffer54_shift_x_q;
            WHEN "1" => leftShiftStage3_uid1007_i_shl_i12_result_buffer_result_buffer54_shift_x_q <= leftShiftStage3Idx1_uid1005_i_shl_i12_result_buffer_result_buffer54_shift_x_q;
            WHEN OTHERS => leftShiftStage3_uid1007_i_shl_i12_result_buffer_result_buffer54_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shl_i12_result_buffer_vt_select_63(BITSELECT,646)@5
    i_shl_i12_result_buffer_vt_select_63_b <= leftShiftStage3_uid1007_i_shl_i12_result_buffer_result_buffer54_shift_x_q(63 downto 51);

    -- i_shl_i12_result_buffer_vt_join(BITJOIN,645)@5
    i_shl_i12_result_buffer_vt_join_q <= i_shl_i12_result_buffer_vt_select_63_b & i_conv353_i_result_buffer_vt_const_63_q;

    -- i_shl_i1_result_buffer(LOGICAL,647)@5
    i_shl_i1_result_buffer_q <= i_shl_i12_result_buffer_vt_join_q and c_i64_9223372036854775808_q;

    -- i_shl_i1_result_buffer_vt_select_63(BITSELECT,650)@5
    i_shl_i1_result_buffer_vt_select_63_b <= i_shl_i1_result_buffer_q(63 downto 63);

    -- i_shl_i1_result_buffer_vt_join(BITJOIN,649)@5
    i_shl_i1_result_buffer_vt_join_q <= i_shl_i1_result_buffer_vt_select_63_b & i_acl_10_i_result_buffer_vt_const_63_q;

    -- i_or_i_result_buffer(LOGICAL,602)@5
    i_or_i_result_buffer_q <= i_shl_i1_result_buffer_vt_join_q or i_and4_i_result_buffer_vt_join_q;

    -- i_or_i_result_buffer_vt_select_51_merged_bit_select(BITSELECT,1224)@5
    i_or_i_result_buffer_vt_select_51_merged_bit_select_b <= i_or_i_result_buffer_q(51 downto 0);
    i_or_i_result_buffer_vt_select_51_merged_bit_select_c <= i_or_i_result_buffer_q(63 downto 63);

    -- i_or_i_result_buffer_vt_join(BITJOIN,604)@5
    i_or_i_result_buffer_vt_join_q <= i_or_i_result_buffer_vt_select_51_merged_bit_select_c & i_and274_i_result_buffer_vt_const_10_q & i_or_i_result_buffer_vt_select_51_merged_bit_select_b;

    -- i_or6_i_result_buffer(LOGICAL,595)@5 + 1
    i_or6_i_result_buffer_qi <= i_or_i_result_buffer_vt_join_q or i_exponent_0_i_result_buffer_vt_join_q;
    i_or6_i_result_buffer_delay : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or6_i_result_buffer_qi, xout => i_or6_i_result_buffer_q, clk => clock, aclr => resetn );

    -- i_conv_result_buffer(BLACKBOX,559)@6
    thei_conv_result_buffer : floatComponent_i_sfc_logic_c1_wt_entry_result_buffer_c1_enter_result_buffer14_caA0Z54c2463b0c2463a0455u
    PORT MAP (
        in_0 => i_or6_i_result_buffer_q,
        out_primWireOut => i_conv_result_buffer_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx_result_buffer_result_buffer64_mult_multconst_x(CONSTANT,39)
    i_arrayidx_result_buffer_result_buffer64_mult_multconst_x_q <= "0000000000000000000000000000000000000000000000000000000000000";

    -- i_inc_result_buffer(ADD,568)@6
    i_inc_result_buffer_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i32_count_result_buffer_4ha_addr_0_pop3_result_buffer_out_data_out);
    i_inc_result_buffer_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_inc_result_buffer_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc_result_buffer_a) + UNSIGNED(i_inc_result_buffer_b));
    i_inc_result_buffer_q <= i_inc_result_buffer_o(32 downto 0);

    -- bgTrunc_i_inc_result_buffer_sel_x(BITSELECT,4)@6
    bgTrunc_i_inc_result_buffer_sel_x_b <= i_inc_result_buffer_q(31 downto 0);

    -- i_acl_push_i32_count_result_buffer_4ha_addr_0_push3_result_buffer(BLACKBOX,405)@6
    -- out out_feedback_out_3@20000000
    -- out out_feedback_valid_out_3@20000000
    thei_acl_push_i32_count_result_buffer_4ha_addr_0_push3_result_buffer : i_acl_push_i32_count_result_buffer_4ha_addr_0_push3_result_buffer60
    PORT MAP (
        in_data_in => bgTrunc_i_inc_result_buffer_sel_x_b,
        in_feedback_stall_in_3 => i_acl_pop_i32_count_result_buffer_4ha_addr_0_pop3_result_buffer_out_feedback_stall_out_3,
        in_stall_in => GND_q,
        in_valid_in => redist74_sync_in_aunroll_x_in_i_valid_5_q,
        out_feedback_out_3 => i_acl_push_i32_count_result_buffer_4ha_addr_0_push3_result_buffer_out_feedback_out_3,
        out_feedback_valid_out_3 => i_acl_push_i32_count_result_buffer_4ha_addr_0_push3_result_buffer_out_feedback_valid_out_3,
        clock => clock,
        resetn => resetn
    );

    -- redist72_sync_in_aunroll_x_in_c1_eni3_2_5(DELAY,1298)
    redist72_sync_in_aunroll_x_in_c1_eni3_2_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c1_eni3_2, xout => redist72_sync_in_aunroll_x_in_c1_eni3_2_5_q, clk => clock, aclr => resetn );

    -- i_acl_pop_i32_count_result_buffer_4ha_addr_0_pop3_result_buffer(BLACKBOX,404)@6
    -- out out_feedback_stall_out_3@20000000
    thei_acl_pop_i32_count_result_buffer_4ha_addr_0_pop3_result_buffer : i_acl_pop_i32_count_result_buffer_4ha_addr_0_pop3_result_buffer58
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => redist72_sync_in_aunroll_x_in_c1_eni3_2_5_q,
        in_feedback_in_3 => i_acl_push_i32_count_result_buffer_4ha_addr_0_push3_result_buffer_out_feedback_out_3,
        in_feedback_valid_in_3 => i_acl_push_i32_count_result_buffer_4ha_addr_0_push3_result_buffer_out_feedback_valid_out_3,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist74_sync_in_aunroll_x_in_i_valid_5_q,
        out_data_out => i_acl_pop_i32_count_result_buffer_4ha_addr_0_pop3_result_buffer_out_data_out,
        out_feedback_stall_out_3 => i_acl_pop_i32_count_result_buffer_4ha_addr_0_pop3_result_buffer_out_feedback_stall_out_3,
        clock => clock,
        resetn => resetn
    );

    -- i_idxprom_result_buffer_sel_x(BITSELECT,50)@6
    i_idxprom_result_buffer_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(i_acl_pop_i32_count_result_buffer_4ha_addr_0_pop3_result_buffer_out_data_out(31 downto 0)), 64)));

    -- i_arrayidx_result_buffer_result_buffer64_mult_x_bs1_merged_bit_select(BITSELECT,1220)@6
    i_arrayidx_result_buffer_result_buffer64_mult_x_bs1_merged_bit_select_b <= i_idxprom_result_buffer_sel_x_b(8 downto 0);
    i_arrayidx_result_buffer_result_buffer64_mult_x_bs1_merged_bit_select_c <= i_idxprom_result_buffer_sel_x_b(62 downto 54);
    i_arrayidx_result_buffer_result_buffer64_mult_x_bs1_merged_bit_select_d <= i_idxprom_result_buffer_sel_x_b(17 downto 9);
    i_arrayidx_result_buffer_result_buffer64_mult_x_bs1_merged_bit_select_e <= i_idxprom_result_buffer_sel_x_b(63 downto 63);
    i_arrayidx_result_buffer_result_buffer64_mult_x_bs1_merged_bit_select_f <= i_idxprom_result_buffer_sel_x_b(26 downto 18);
    i_arrayidx_result_buffer_result_buffer64_mult_x_bs1_merged_bit_select_g <= i_idxprom_result_buffer_sel_x_b(35 downto 27);
    i_arrayidx_result_buffer_result_buffer64_mult_x_bs1_merged_bit_select_h <= i_idxprom_result_buffer_sel_x_b(44 downto 36);
    i_arrayidx_result_buffer_result_buffer64_mult_x_bs1_merged_bit_select_i <= i_idxprom_result_buffer_sel_x_b(53 downto 45);

    -- i_arrayidx_result_buffer_result_buffer64_mult_x_im9_shift0(BITSHIFT,1215)@6
    i_arrayidx_result_buffer_result_buffer64_mult_x_im9_shift0_qint <= i_arrayidx_result_buffer_result_buffer64_mult_x_bs1_merged_bit_select_e & "00";
    i_arrayidx_result_buffer_result_buffer64_mult_x_im9_shift0_q <= i_arrayidx_result_buffer_result_buffer64_mult_x_im9_shift0_qint(2 downto 0);

    -- i_arrayidx_result_buffer_result_buffer64_mult_x_align_31(BITSHIFT,862)@6
    i_arrayidx_result_buffer_result_buffer64_mult_x_align_31_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_result_buffer_result_buffer64_mult_x_im9_shift0_q) & "000000";
    i_arrayidx_result_buffer_result_buffer64_mult_x_align_31_q <= i_arrayidx_result_buffer_result_buffer64_mult_x_align_31_qint(9 downto 0);

    -- i_arrayidx_result_buffer_result_buffer64_mult_x_im21_shift0(BITSHIFT,1219)@6
    i_arrayidx_result_buffer_result_buffer64_mult_x_im21_shift0_qint <= i_arrayidx_result_buffer_result_buffer64_mult_x_bs1_merged_bit_select_i & "00";
    i_arrayidx_result_buffer_result_buffer64_mult_x_im21_shift0_q <= i_arrayidx_result_buffer_result_buffer64_mult_x_im21_shift0_qint(10 downto 0);

    -- i_arrayidx_result_buffer_result_buffer64_mult_x_align_30(BITSHIFT,861)@6
    i_arrayidx_result_buffer_result_buffer64_mult_x_align_30_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_result_buffer_result_buffer64_mult_x_im21_shift0_q) & "000000";
    i_arrayidx_result_buffer_result_buffer64_mult_x_align_30_q <= i_arrayidx_result_buffer_result_buffer64_mult_x_align_30_qint(17 downto 0);

    -- i_arrayidx_result_buffer_result_buffer64_mult_x_im15_shift0(BITSHIFT,1217)@6
    i_arrayidx_result_buffer_result_buffer64_mult_x_im15_shift0_qint <= i_arrayidx_result_buffer_result_buffer64_mult_x_bs1_merged_bit_select_g & "00";
    i_arrayidx_result_buffer_result_buffer64_mult_x_im15_shift0_q <= i_arrayidx_result_buffer_result_buffer64_mult_x_im15_shift0_qint(10 downto 0);

    -- i_arrayidx_result_buffer_result_buffer64_mult_x_align_29(BITSHIFT,860)@6
    i_arrayidx_result_buffer_result_buffer64_mult_x_align_29_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_result_buffer_result_buffer64_mult_x_im15_shift0_q) & "000000";
    i_arrayidx_result_buffer_result_buffer64_mult_x_align_29_q <= i_arrayidx_result_buffer_result_buffer64_mult_x_align_29_qint(17 downto 0);

    -- i_arrayidx_result_buffer_result_buffer64_mult_x_im6_shift0(BITSHIFT,1214)@6
    i_arrayidx_result_buffer_result_buffer64_mult_x_im6_shift0_qint <= i_arrayidx_result_buffer_result_buffer64_mult_x_bs1_merged_bit_select_d & "00";
    i_arrayidx_result_buffer_result_buffer64_mult_x_im6_shift0_q <= i_arrayidx_result_buffer_result_buffer64_mult_x_im6_shift0_qint(10 downto 0);

    -- i_arrayidx_result_buffer_result_buffer64_mult_x_align_28(BITSHIFT,859)@6
    i_arrayidx_result_buffer_result_buffer64_mult_x_align_28_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_result_buffer_result_buffer64_mult_x_im6_shift0_q) & "000000000";
    i_arrayidx_result_buffer_result_buffer64_mult_x_align_28_q <= i_arrayidx_result_buffer_result_buffer64_mult_x_align_28_qint(20 downto 0);

    -- i_arrayidx_result_buffer_result_buffer64_mult_x_join_32(BITJOIN,863)@6
    i_arrayidx_result_buffer_result_buffer64_mult_x_join_32_q <= i_arrayidx_result_buffer_result_buffer64_mult_x_align_31_q & i_arrayidx_result_buffer_result_buffer64_mult_x_align_30_q & i_arrayidx_result_buffer_result_buffer64_mult_x_align_29_q & i_arrayidx_result_buffer_result_buffer64_mult_x_align_28_q;

    -- i_arrayidx_result_buffer_result_buffer64_mult_x_im3_shift0(BITSHIFT,1213)@6
    i_arrayidx_result_buffer_result_buffer64_mult_x_im3_shift0_qint <= i_arrayidx_result_buffer_result_buffer64_mult_x_bs1_merged_bit_select_c & "00";
    i_arrayidx_result_buffer_result_buffer64_mult_x_im3_shift0_q <= i_arrayidx_result_buffer_result_buffer64_mult_x_im3_shift0_qint(10 downto 0);

    -- i_arrayidx_result_buffer_result_buffer64_mult_x_align_26(BITSHIFT,857)@6
    i_arrayidx_result_buffer_result_buffer64_mult_x_align_26_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_result_buffer_result_buffer64_mult_x_im3_shift0_q) & "000000";
    i_arrayidx_result_buffer_result_buffer64_mult_x_align_26_q <= i_arrayidx_result_buffer_result_buffer64_mult_x_align_26_qint(17 downto 0);

    -- i_arrayidx_result_buffer_result_buffer64_mult_x_im18_shift0(BITSHIFT,1218)@6
    i_arrayidx_result_buffer_result_buffer64_mult_x_im18_shift0_qint <= i_arrayidx_result_buffer_result_buffer64_mult_x_bs1_merged_bit_select_h & "00";
    i_arrayidx_result_buffer_result_buffer64_mult_x_im18_shift0_q <= i_arrayidx_result_buffer_result_buffer64_mult_x_im18_shift0_qint(10 downto 0);

    -- i_arrayidx_result_buffer_result_buffer64_mult_x_align_25(BITSHIFT,856)@6
    i_arrayidx_result_buffer_result_buffer64_mult_x_align_25_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_result_buffer_result_buffer64_mult_x_im18_shift0_q) & "000000";
    i_arrayidx_result_buffer_result_buffer64_mult_x_align_25_q <= i_arrayidx_result_buffer_result_buffer64_mult_x_align_25_qint(17 downto 0);

    -- i_arrayidx_result_buffer_result_buffer64_mult_x_im12_shift0(BITSHIFT,1216)@6
    i_arrayidx_result_buffer_result_buffer64_mult_x_im12_shift0_qint <= i_arrayidx_result_buffer_result_buffer64_mult_x_bs1_merged_bit_select_f & "00";
    i_arrayidx_result_buffer_result_buffer64_mult_x_im12_shift0_q <= i_arrayidx_result_buffer_result_buffer64_mult_x_im12_shift0_qint(10 downto 0);

    -- i_arrayidx_result_buffer_result_buffer64_mult_x_align_24(BITSHIFT,855)@6
    i_arrayidx_result_buffer_result_buffer64_mult_x_align_24_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_result_buffer_result_buffer64_mult_x_im12_shift0_q) & "000000";
    i_arrayidx_result_buffer_result_buffer64_mult_x_align_24_q <= i_arrayidx_result_buffer_result_buffer64_mult_x_align_24_qint(17 downto 0);

    -- i_arrayidx_result_buffer_result_buffer64_mult_x_im0_shift0(BITSHIFT,1212)@6
    i_arrayidx_result_buffer_result_buffer64_mult_x_im0_shift0_qint <= i_arrayidx_result_buffer_result_buffer64_mult_x_bs1_merged_bit_select_b & "00";
    i_arrayidx_result_buffer_result_buffer64_mult_x_im0_shift0_q <= i_arrayidx_result_buffer_result_buffer64_mult_x_im0_shift0_qint(10 downto 0);

    -- i_arrayidx_result_buffer_result_buffer64_mult_x_join_27(BITJOIN,858)@6
    i_arrayidx_result_buffer_result_buffer64_mult_x_join_27_q <= i_arrayidx_result_buffer_result_buffer64_mult_x_align_26_q & i_arrayidx_result_buffer_result_buffer64_mult_x_align_25_q & i_arrayidx_result_buffer_result_buffer64_mult_x_align_24_q & STD_LOGIC_VECTOR("0" & i_arrayidx_result_buffer_result_buffer64_mult_x_im0_shift0_q);

    -- i_arrayidx_result_buffer_result_buffer64_mult_x_result_add_0_0(ADD,864)@6
    i_arrayidx_result_buffer_result_buffer64_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00" & i_arrayidx_result_buffer_result_buffer64_mult_x_join_27_q);
    i_arrayidx_result_buffer_result_buffer64_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx_result_buffer_result_buffer64_mult_x_join_32_q);
    i_arrayidx_result_buffer_result_buffer64_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_result_buffer_result_buffer64_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx_result_buffer_result_buffer64_mult_x_result_add_0_0_b));
    i_arrayidx_result_buffer_result_buffer64_mult_x_result_add_0_0_q <= i_arrayidx_result_buffer_result_buffer64_mult_x_result_add_0_0_o(67 downto 0);

    -- i_arrayidx_result_buffer_result_buffer64_mult_extender_x(BITJOIN,38)@6
    i_arrayidx_result_buffer_result_buffer64_mult_extender_x_q <= i_arrayidx_result_buffer_result_buffer64_mult_multconst_x_q & i_arrayidx_result_buffer_result_buffer64_mult_x_result_add_0_0_q(66 downto 0);

    -- i_arrayidx_result_buffer_result_buffer64_trunc_sel_x(BITSELECT,40)@6
    i_arrayidx_result_buffer_result_buffer64_trunc_sel_x_b <= i_arrayidx_result_buffer_result_buffer64_mult_extender_x_q(63 downto 0);

    -- redist73_sync_in_aunroll_x_in_c1_eni3_3_5(DELAY,1299)
    redist73_sync_in_aunroll_x_in_c1_eni3_3_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c1_eni3_3, xout => redist73_sync_in_aunroll_x_in_c1_eni3_3_5_q, clk => clock, aclr => resetn );

    -- i_syncbuf_result_buffer_sync_buffer_result_buffer(BLACKBOX,703)@0
    -- in in_i_dependence@6
    -- in in_valid_in@6
    -- out out_buffer_out@6
    -- out out_valid_out@6
    thei_syncbuf_result_buffer_sync_buffer_result_buffer : i_syncbuf_result_buffer_sync_buffer_result_buffer62
    PORT MAP (
        in_buffer_in => in_result_buffer,
        in_i_dependence => redist73_sync_in_aunroll_x_in_c1_eni3_3_5_q,
        in_stall_in => GND_q,
        in_valid_in => redist74_sync_in_aunroll_x_in_i_valid_5_q,
        out_buffer_out => i_syncbuf_result_buffer_sync_buffer_result_buffer_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx_result_buffer_result_buffer64_add_x(ADD,41)@6
    i_arrayidx_result_buffer_result_buffer64_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_result_buffer_sync_buffer_result_buffer_out_buffer_out);
    i_arrayidx_result_buffer_result_buffer64_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx_result_buffer_result_buffer64_trunc_sel_x_b);
    i_arrayidx_result_buffer_result_buffer64_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_result_buffer_result_buffer64_add_x_a) + UNSIGNED(i_arrayidx_result_buffer_result_buffer64_add_x_b));
    i_arrayidx_result_buffer_result_buffer64_add_x_q <= i_arrayidx_result_buffer_result_buffer64_add_x_o(64 downto 0);

    -- i_arrayidx_result_buffer_result_buffer64_dupName_0_trunc_sel_x(BITSELECT,35)@6
    i_arrayidx_result_buffer_result_buffer64_dupName_0_trunc_sel_x_b <= i_arrayidx_result_buffer_result_buffer64_add_x_q(63 downto 0);

    -- i_store_memdep_result_buffer(BLACKBOX,687)@6
    -- out out_memdep_avm_address@20000000
    -- out out_memdep_avm_burstcount@20000000
    -- out out_memdep_avm_byteenable@20000000
    -- out out_memdep_avm_enable@20000000
    -- out out_memdep_avm_read@20000000
    -- out out_memdep_avm_write@20000000
    -- out out_memdep_avm_writedata@20000000
    -- out out_o_stall@7
    -- out out_o_valid@7
    -- out out_o_writeack@7
    thei_store_memdep_result_buffer : i_store_memdep_result_buffer65
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx_result_buffer_result_buffer64_dupName_0_trunc_sel_x_b,
        in_i_predicate => GND_q,
        in_i_stall => GND_q,
        in_i_valid => redist74_sync_in_aunroll_x_in_i_valid_5_q,
        in_i_writedata => i_conv_result_buffer_out_primWireOut,
        in_memdep_avm_readdata => in_memdep_avm_readdata,
        in_memdep_avm_readdatavalid => in_memdep_avm_readdatavalid,
        in_memdep_avm_waitrequest => in_memdep_avm_waitrequest,
        in_memdep_avm_writeack => in_memdep_avm_writeack,
        out_memdep_avm_address => i_store_memdep_result_buffer_out_memdep_avm_address,
        out_memdep_avm_burstcount => i_store_memdep_result_buffer_out_memdep_avm_burstcount,
        out_memdep_avm_byteenable => i_store_memdep_result_buffer_out_memdep_avm_byteenable,
        out_memdep_avm_enable => i_store_memdep_result_buffer_out_memdep_avm_enable,
        out_memdep_avm_read => i_store_memdep_result_buffer_out_memdep_avm_read,
        out_memdep_avm_write => i_store_memdep_result_buffer_out_memdep_avm_write,
        out_memdep_avm_writedata => i_store_memdep_result_buffer_out_memdep_avm_writedata,
        out_o_writeack => i_store_memdep_result_buffer_out_o_writeack,
        clock => clock,
        resetn => resetn
    );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,322)@7
    out_c1_exi1_0 <= GND_q;
    out_c1_exi1_1 <= i_store_memdep_result_buffer_out_o_writeack;
    out_o_valid <= redist75_sync_in_aunroll_x_in_i_valid_6_q;

    -- ext_sig_sync_out(GPOUT,377)
    out_memdep_avm_address <= i_store_memdep_result_buffer_out_memdep_avm_address;
    out_memdep_avm_enable <= i_store_memdep_result_buffer_out_memdep_avm_enable;
    out_memdep_avm_read <= i_store_memdep_result_buffer_out_memdep_avm_read;
    out_memdep_avm_write <= i_store_memdep_result_buffer_out_memdep_avm_write;
    out_memdep_avm_writedata <= i_store_memdep_result_buffer_out_memdep_avm_writedata;
    out_memdep_avm_byteenable <= i_store_memdep_result_buffer_out_memdep_avm_byteenable;
    out_memdep_avm_burstcount <= i_store_memdep_result_buffer_out_memdep_avm_burstcount;

END normal;
