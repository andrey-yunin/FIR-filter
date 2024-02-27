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

-- VHDL created from i_sfc_logic_c1_wt_entry_fir_filter_c1_enter_fir_filter14
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

entity i_sfc_logic_c1_wt_entry_fir_filter_c1_enter_fir_filter14 is
    port (
        in_c1_eni2_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_eni2_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_eni2_2 : in std_logic_vector(15 downto 0);  -- ufix16
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exi1_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exi1_1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c1_wt_entry_fir_filter_c1_enter_fir_filter14;

architecture normal of i_sfc_logic_c1_wt_entry_fir_filter_c1_enter_fir_filter14 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_0_0_0_0_pop33_fir_filter82 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_33 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_33 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_33 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_10_0_0_0_pop23_fir_filter42 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_23 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_23 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_23 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_11_0_0_0_pop22_fir_filter38 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_22 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_22 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_22 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_12_0_0_0_pop21_fir_filter34 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_21 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_21 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_21 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_13_0_0_0_pop20_fir_filter30 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_20 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_20 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_20 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_14_0_0_0_pop19_fir_filter26 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_19 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_19 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_19 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_15_0_0_0_pop18_fir_filter22 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_18 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_18 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_18 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_1_0_0_0_pop32_fir_filter78 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_32 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_32 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_32 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_2_0_0_0_pop31_fir_filter74 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_31 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_31 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_31 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_3_0_0_0_pop30_fir_filter70 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_30 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_30 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_30 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_4_0_0_0_pop29_fir_filter66 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_29 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_29 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_29 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_5_0_0_0_pop28_fir_filter62 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_28 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_28 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_28 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_6_0_0_0_pop27_fir_filter58 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_27 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_27 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_27 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_7_0_0_0_pop26_fir_filter54 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_26 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_26 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_26 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_8_0_0_0_pop25_fir_filter50 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_25 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_25 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_25 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_9_0_0_0_pop24_fir_filter46 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_24 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_24 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_24 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_0_0_0_0_pop17_fir_filter122 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_17 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_17 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_17 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_10_0_0_0_pop7_fir_filter102 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_7 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_11_0_0_0_pop6_fir_filter100 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_6 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_12_0_0_0_pop5_fir_filter98 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_5 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_13_0_0_0_pop4_fir_filter96 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_4 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_14_0_0_0_pop3_fir_filter94 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_3 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_1_0_0_0_pop16_fir_filter120 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_16 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_16 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_16 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_2_0_0_0_pop15_fir_filter118 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_15 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_15 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_15 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_3_0_0_0_pop14_fir_filter116 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_14 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_14 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_14 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_4_0_0_0_pop13_fir_filter114 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_13 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_13 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_13 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_5_0_0_0_pop12_fir_filter112 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_12 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_6_0_0_0_pop11_fir_filter110 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_11 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_7_0_0_0_pop10_fir_filter108 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_10 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_8_0_0_0_pop9_fir_filter106 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_9 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_9_0_0_0_pop8_fir_filter104 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_8 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_s1_fir_filter_4ia_addr_0_pop34_fir_filter16 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_34 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_34 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_34 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_0_0_0_0_push33_fir_filter84 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_33 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_33 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_33 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_10_0_0_0_push23_fir_filter44 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_23 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_23 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_23 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_11_0_0_0_push22_fir_filter40 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_22 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_22 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_22 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_12_0_0_0_push21_fir_filter36 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_21 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_21 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_21 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_13_0_0_0_push20_fir_filter32 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_20 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_20 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_20 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_14_0_0_0_push19_fir_filter28 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_19 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_19 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_19 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_15_0_0_0_push18_fir_filter24 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_18 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_18 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_18 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_1_0_0_0_push32_fir_filter80 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_32 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_32 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_32 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_2_0_0_0_push31_fir_filter76 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_31 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_31 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_31 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_3_0_0_0_push30_fir_filter72 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_30 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_30 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_30 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_4_0_0_0_push29_fir_filter68 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_29 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_29 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_29 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_5_0_0_0_push28_fir_filter64 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_28 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_28 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_28 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_6_0_0_0_push27_fir_filter60 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_27 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_27 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_27 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_7_0_0_0_push26_fir_filter56 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_26 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_26 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_26 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_8_0_0_0_push25_fir_filter52 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_25 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_25 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_25 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_9_0_0_0_push24_fir_filter48 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_24 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_24 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_24 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_0_0_0_0_push17_fir_filter124 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_17 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_17 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_17 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_10_0_0_0_push7_fir_filter144 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_7 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_11_0_0_0_push6_fir_filter146 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_6 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_12_0_0_0_push5_fir_filter148 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_5 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_13_0_0_0_push4_fir_filter150 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_4 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_14_0_0_0_push3_fir_filter152 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_3 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_1_0_0_0_push16_fir_filter126 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_16 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_16 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_16 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_2_0_0_0_push15_fir_filter128 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_15 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_15 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_15 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_3_0_0_0_push14_fir_filter130 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_14 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_14 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_14 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_4_0_0_0_push13_fir_filter132 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_13 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_13 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_13 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_5_0_0_0_push12_fir_filter134 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_12 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_6_0_0_0_push11_fir_filter136 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_11 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_7_0_0_0_push10_fir_filter138 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_10 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_8_0_0_0_push9_fir_filter140 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_9 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_9_0_0_0_push8_fir_filter142 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_8 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_s1_fir_filter_4ia_addr_0_push34_fir_filter90 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_34 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_34 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_34 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_reduction_fir_filter_0_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_fir_filter_10_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_fir_filter_11_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_fir_filter_12_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_fir_filter_13_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_fir_filter_14_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_fir_filter_1_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_fir_filter_2_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_fir_filter_3_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_fir_filter_4_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_fir_filter_5_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_fir_filter_6_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_fir_filter_7_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_fir_filter_8_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_reduction_fir_filter_9_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_shl_i_i_i_i_i_10_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_shl_i_i_i_i_i_11_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_shl_i_i_i_i_i_12_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_shl_i_i_i_i_i_13_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_shl_i_i_i_i_i_14_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_shl_i_i_i_i_i_15_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_shl_i_i_i_i_i_1_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_shl_i_i_i_i_i_2_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_shl_i_i_i_i_i_3_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_shl_i_i_i_i_i_4_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_shl_i_i_i_i_i_5_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_shl_i_i_i_i_i_6_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_shl_i_i_i_i_i_7_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_shl_i_i_i_i_i_8_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_shl_i_i_i_i_i_9_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_shl_i_i_i_i_i_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv4_i_i_10_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv4_i_i_11_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv4_i_i_12_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv4_i_i_13_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv4_i_i_14_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv4_i_i_15_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv4_i_i_1_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv4_i_i_2_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv4_i_i_3_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv4_i_i_4_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv4_i_i_5_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv4_i_i_6_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv4_i_i_7_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv4_i_i_8_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv4_i_i_9_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv4_i_i_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_10_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_11_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_12_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_13_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_14_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_15_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_1_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_2_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_3_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_4_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_5_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_6_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_7_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_8_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_9_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_fir_filter_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl_i_i_i_i_i_10_fir_filter_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i_i_i_i_i_10_fir_filter_multconst_x_q : STD_LOGIC_VECTOR (30 downto 0);
    signal i_shl_i_i_i_i_i_11_fir_filter_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i_i_i_i_i_12_fir_filter_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i_i_i_i_i_13_fir_filter_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i_i_i_i_i_14_fir_filter_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i_i_i_i_i_15_fir_filter_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i_i_i_i_i_1_fir_filter_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i_i_i_i_i_2_fir_filter_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i_i_i_i_i_3_fir_filter_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i_i_i_i_i_4_fir_filter_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i_i_i_i_i_5_fir_filter_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i_i_i_i_i_6_fir_filter_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i_i_i_i_i_7_fir_filter_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i_i_i_i_i_8_fir_filter_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i_i_i_i_i_9_fir_filter_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i_i_i_i_i_fir_filter_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i16_0gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_10113_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_10277_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_10821_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_11848_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_12219_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_13115_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_13321_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_14917_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_2958_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_353_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_5691_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_6280_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_6288_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_738_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_8683_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_9427_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_2gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_140_fir_filter_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_140_fir_filter_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_141_fir_filter_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_141_fir_filter_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_142_fir_filter_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_142_fir_filter_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_143_fir_filter_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_143_fir_filter_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_144_fir_filter_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_144_fir_filter_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_145_fir_filter_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_145_fir_filter_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_146_fir_filter_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_146_fir_filter_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_147_fir_filter_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_147_fir_filter_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_148_fir_filter_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_148_fir_filter_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_149_fir_filter_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_149_fir_filter_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_150_fir_filter_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_150_fir_filter_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_151_fir_filter_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_151_fir_filter_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_152_fir_filter_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_152_fir_filter_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_153_fir_filter_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_153_fir_filter_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_154_fir_filter_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_154_fir_filter_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_fir_filter_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_fir_filter_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_0_0_0_0_pop33_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_0_0_0_0_pop33_fir_filter_out_feedback_stall_out_33 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_10_0_0_0_pop23_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_10_0_0_0_pop23_fir_filter_out_feedback_stall_out_23 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_11_0_0_0_pop22_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_11_0_0_0_pop22_fir_filter_out_feedback_stall_out_22 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_12_0_0_0_pop21_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_12_0_0_0_pop21_fir_filter_out_feedback_stall_out_21 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_13_0_0_0_pop20_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_13_0_0_0_pop20_fir_filter_out_feedback_stall_out_20 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_14_0_0_0_pop19_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_14_0_0_0_pop19_fir_filter_out_feedback_stall_out_19 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_15_0_0_0_pop18_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_15_0_0_0_pop18_fir_filter_out_feedback_stall_out_18 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_1_0_0_0_pop32_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_1_0_0_0_pop32_fir_filter_out_feedback_stall_out_32 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_2_0_0_0_pop31_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_2_0_0_0_pop31_fir_filter_out_feedback_stall_out_31 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_3_0_0_0_pop30_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_3_0_0_0_pop30_fir_filter_out_feedback_stall_out_30 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_4_0_0_0_pop29_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_4_0_0_0_pop29_fir_filter_out_feedback_stall_out_29 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_5_0_0_0_pop28_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_5_0_0_0_pop28_fir_filter_out_feedback_stall_out_28 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_6_0_0_0_pop27_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_6_0_0_0_pop27_fir_filter_out_feedback_stall_out_27 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_7_0_0_0_pop26_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_7_0_0_0_pop26_fir_filter_out_feedback_stall_out_26 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_8_0_0_0_pop25_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_8_0_0_0_pop25_fir_filter_out_feedback_stall_out_25 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_9_0_0_0_pop24_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_9_0_0_0_pop24_fir_filter_out_feedback_stall_out_24 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_0_0_0_0_pop17_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_0_0_0_0_pop17_fir_filter_out_feedback_stall_out_17 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_10_0_0_0_pop7_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_10_0_0_0_pop7_fir_filter_out_feedback_stall_out_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_11_0_0_0_pop6_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_11_0_0_0_pop6_fir_filter_out_feedback_stall_out_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_12_0_0_0_pop5_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_12_0_0_0_pop5_fir_filter_out_feedback_stall_out_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_13_0_0_0_pop4_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_13_0_0_0_pop4_fir_filter_out_feedback_stall_out_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_14_0_0_0_pop3_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_14_0_0_0_pop3_fir_filter_out_feedback_stall_out_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_1_0_0_0_pop16_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_1_0_0_0_pop16_fir_filter_out_feedback_stall_out_16 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_2_0_0_0_pop15_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_2_0_0_0_pop15_fir_filter_out_feedback_stall_out_15 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_3_0_0_0_pop14_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_3_0_0_0_pop14_fir_filter_out_feedback_stall_out_14 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_4_0_0_0_pop13_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_4_0_0_0_pop13_fir_filter_out_feedback_stall_out_13 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_5_0_0_0_pop12_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_5_0_0_0_pop12_fir_filter_out_feedback_stall_out_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_6_0_0_0_pop11_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_6_0_0_0_pop11_fir_filter_out_feedback_stall_out_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_7_0_0_0_pop10_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_7_0_0_0_pop10_fir_filter_out_feedback_stall_out_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_8_0_0_0_pop9_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_8_0_0_0_pop9_fir_filter_out_feedback_stall_out_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_9_0_0_0_pop8_fir_filter_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_9_0_0_0_pop8_fir_filter_out_feedback_stall_out_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_s1_fir_filter_4ia_addr_0_pop34_fir_filter_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_s1_fir_filter_4ia_addr_0_pop34_fir_filter_out_feedback_stall_out_34 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_0_0_0_0_push33_fir_filter_out_feedback_out_33 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_0_0_0_0_push33_fir_filter_out_feedback_valid_out_33 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_10_0_0_0_push23_fir_filter_out_feedback_out_23 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_10_0_0_0_push23_fir_filter_out_feedback_valid_out_23 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_11_0_0_0_push22_fir_filter_out_feedback_out_22 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_11_0_0_0_push22_fir_filter_out_feedback_valid_out_22 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_12_0_0_0_push21_fir_filter_out_feedback_out_21 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_12_0_0_0_push21_fir_filter_out_feedback_valid_out_21 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_13_0_0_0_push20_fir_filter_out_feedback_out_20 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_13_0_0_0_push20_fir_filter_out_feedback_valid_out_20 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_14_0_0_0_push19_fir_filter_out_feedback_out_19 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_14_0_0_0_push19_fir_filter_out_feedback_valid_out_19 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_15_0_0_0_push18_fir_filter_out_feedback_out_18 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_15_0_0_0_push18_fir_filter_out_feedback_valid_out_18 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_1_0_0_0_push32_fir_filter_out_feedback_out_32 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_1_0_0_0_push32_fir_filter_out_feedback_valid_out_32 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_2_0_0_0_push31_fir_filter_out_feedback_out_31 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_2_0_0_0_push31_fir_filter_out_feedback_valid_out_31 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_3_0_0_0_push30_fir_filter_out_feedback_out_30 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_3_0_0_0_push30_fir_filter_out_feedback_valid_out_30 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_4_0_0_0_push29_fir_filter_out_feedback_out_29 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_4_0_0_0_push29_fir_filter_out_feedback_valid_out_29 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_5_0_0_0_push28_fir_filter_out_feedback_out_28 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_5_0_0_0_push28_fir_filter_out_feedback_valid_out_28 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_6_0_0_0_push27_fir_filter_out_feedback_out_27 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_6_0_0_0_push27_fir_filter_out_feedback_valid_out_27 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_7_0_0_0_push26_fir_filter_out_feedback_out_26 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_7_0_0_0_push26_fir_filter_out_feedback_valid_out_26 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_8_0_0_0_push25_fir_filter_out_feedback_out_25 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_8_0_0_0_push25_fir_filter_out_feedback_valid_out_25 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_9_0_0_0_push24_fir_filter_out_feedback_out_24 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_9_0_0_0_push24_fir_filter_out_feedback_valid_out_24 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_0_0_0_0_push17_fir_filter_out_feedback_out_17 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_0_0_0_0_push17_fir_filter_out_feedback_valid_out_17 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_10_0_0_0_push7_fir_filter_out_feedback_out_7 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_10_0_0_0_push7_fir_filter_out_feedback_valid_out_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_11_0_0_0_push6_fir_filter_out_feedback_out_6 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_11_0_0_0_push6_fir_filter_out_feedback_valid_out_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_12_0_0_0_push5_fir_filter_out_feedback_out_5 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_12_0_0_0_push5_fir_filter_out_feedback_valid_out_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_13_0_0_0_push4_fir_filter_out_feedback_out_4 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_13_0_0_0_push4_fir_filter_out_feedback_valid_out_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_14_0_0_0_push3_fir_filter_out_feedback_out_3 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_14_0_0_0_push3_fir_filter_out_feedback_valid_out_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_1_0_0_0_push16_fir_filter_out_feedback_out_16 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_1_0_0_0_push16_fir_filter_out_feedback_valid_out_16 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_2_0_0_0_push15_fir_filter_out_feedback_out_15 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_2_0_0_0_push15_fir_filter_out_feedback_valid_out_15 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_3_0_0_0_push14_fir_filter_out_feedback_out_14 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_3_0_0_0_push14_fir_filter_out_feedback_valid_out_14 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_4_0_0_0_push13_fir_filter_out_feedback_out_13 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_4_0_0_0_push13_fir_filter_out_feedback_valid_out_13 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_5_0_0_0_push12_fir_filter_out_feedback_out_12 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_5_0_0_0_push12_fir_filter_out_feedback_valid_out_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_6_0_0_0_push11_fir_filter_out_feedback_out_11 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_6_0_0_0_push11_fir_filter_out_feedback_valid_out_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_7_0_0_0_push10_fir_filter_out_feedback_out_10 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_7_0_0_0_push10_fir_filter_out_feedback_valid_out_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_8_0_0_0_push9_fir_filter_out_feedback_out_9 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_8_0_0_0_push9_fir_filter_out_feedback_valid_out_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_9_0_0_0_push8_fir_filter_out_feedback_out_8 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_9_0_0_0_push8_fir_filter_out_feedback_valid_out_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_s1_fir_filter_4ia_addr_0_push34_fir_filter_out_feedback_out_34 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_s1_fir_filter_4ia_addr_0_push34_fir_filter_out_feedback_valid_out_34 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_conv4_i_i_10_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv4_i_i_11_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv4_i_i_12_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv4_i_i_13_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv4_i_i_14_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv4_i_i_15_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv4_i_i_1_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv4_i_i_2_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv4_i_i_3_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv4_i_i_4_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv4_i_i_5_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv4_i_i_6_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv4_i_i_7_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv4_i_i_8_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv4_i_i_9_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv4_i_i_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv_i_i_10_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_10_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv_i_i_11_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_11_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv_i_i_12_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_12_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv_i_i_13_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_13_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv_i_i_14_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_14_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv_i_i_15_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_15_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv_i_i_1_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_1_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv_i_i_2_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_2_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv_i_i_3_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_3_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv_i_i_4_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_4_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv_i_i_5_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_5_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv_i_i_6_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_6_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv_i_i_7_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_7_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv_i_i_8_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_8_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv_i_i_9_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_9_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv_i_i_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_fir_filter_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul_i_i_10_fir_filter_vt_join_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_mul_i_i_10_fir_filter_vt_select_16_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul_i_i_11_fir_filter_vt_join_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_mul_i_i_11_fir_filter_vt_select_16_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul_i_i_12_fir_filter_vt_join_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_mul_i_i_12_fir_filter_vt_select_16_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul_i_i_13_fir_filter_vt_join_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_mul_i_i_13_fir_filter_vt_select_16_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul_i_i_14_fir_filter_vt_join_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_mul_i_i_14_fir_filter_vt_select_16_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul_i_i_15_fir_filter_vt_join_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_mul_i_i_15_fir_filter_vt_select_16_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul_i_i_1_fir_filter_vt_join_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_mul_i_i_1_fir_filter_vt_select_16_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul_i_i_2_fir_filter_vt_join_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_mul_i_i_2_fir_filter_vt_select_16_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul_i_i_3_fir_filter_vt_join_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_mul_i_i_3_fir_filter_vt_select_16_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul_i_i_4_fir_filter_vt_join_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_mul_i_i_4_fir_filter_vt_select_16_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul_i_i_5_fir_filter_vt_join_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_mul_i_i_5_fir_filter_vt_select_16_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul_i_i_6_fir_filter_vt_join_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_mul_i_i_6_fir_filter_vt_select_16_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul_i_i_7_fir_filter_vt_join_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_mul_i_i_7_fir_filter_vt_select_16_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul_i_i_8_fir_filter_vt_join_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_mul_i_i_8_fir_filter_vt_select_16_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul_i_i_9_fir_filter_vt_join_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_mul_i_i_9_fir_filter_vt_select_16_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul_i_i_fir_filter_vt_join_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_mul_i_i_fir_filter_vt_select_16_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_reduction_fir_filter_0_fir_filter_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_0_fir_filter_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_0_fir_filter_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_0_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_0_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_fir_filter_0_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_reduction_fir_filter_10_fir_filter_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_10_fir_filter_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_10_fir_filter_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_10_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_10_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_fir_filter_10_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_reduction_fir_filter_11_fir_filter_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_11_fir_filter_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_11_fir_filter_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_11_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_11_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_fir_filter_11_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_reduction_fir_filter_12_fir_filter_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_12_fir_filter_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_12_fir_filter_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_12_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_12_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_fir_filter_12_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_reduction_fir_filter_13_fir_filter_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_13_fir_filter_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_13_fir_filter_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_13_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_13_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_fir_filter_13_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_reduction_fir_filter_14_fir_filter_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_14_fir_filter_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_14_fir_filter_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_14_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_14_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_fir_filter_14_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_reduction_fir_filter_1_fir_filter_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_1_fir_filter_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_1_fir_filter_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_1_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_1_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_fir_filter_1_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_reduction_fir_filter_2_fir_filter_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_2_fir_filter_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_2_fir_filter_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_2_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_2_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_fir_filter_2_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_reduction_fir_filter_3_fir_filter_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_3_fir_filter_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_3_fir_filter_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_3_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_3_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_fir_filter_3_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_reduction_fir_filter_4_fir_filter_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_4_fir_filter_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_4_fir_filter_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_4_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_4_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_fir_filter_4_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_reduction_fir_filter_5_fir_filter_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_5_fir_filter_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_5_fir_filter_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_5_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_5_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_fir_filter_5_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_reduction_fir_filter_6_fir_filter_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_6_fir_filter_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_6_fir_filter_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_6_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_6_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_fir_filter_6_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_reduction_fir_filter_7_fir_filter_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_7_fir_filter_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_7_fir_filter_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_7_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_7_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_fir_filter_7_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_reduction_fir_filter_8_fir_filter_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_8_fir_filter_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_8_fir_filter_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_8_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_8_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_fir_filter_8_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_reduction_fir_filter_9_fir_filter_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_9_fir_filter_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_9_fir_filter_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_9_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_fir_filter_9_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_fir_filter_9_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_s1_fir_filter_4ia_addr_0_fir_filter_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_s1_fir_filter_4ia_addr_1_fir_filter_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_s1_fir_filter_4ia_addr_1_fir_filter_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl_i_i_i_i_i_10_fir_filter_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_shl_i_i_i_i_i_10_fir_filter_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shl_i_i_i_i_i_10_fir_filter_s1 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_10_fir_filter_reset : std_logic;
    signal i_shl_i_i_i_i_i_10_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_10_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl_i_i_i_i_i_10_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_shl_i_i_i_i_i_11_fir_filter_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_shl_i_i_i_i_i_11_fir_filter_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shl_i_i_i_i_i_11_fir_filter_s1 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_11_fir_filter_reset : std_logic;
    signal i_shl_i_i_i_i_i_11_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_11_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl_i_i_i_i_i_11_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_shl_i_i_i_i_i_12_fir_filter_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_shl_i_i_i_i_i_12_fir_filter_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shl_i_i_i_i_i_12_fir_filter_s1 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_12_fir_filter_reset : std_logic;
    signal i_shl_i_i_i_i_i_12_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_12_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl_i_i_i_i_i_12_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_shl_i_i_i_i_i_13_fir_filter_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_shl_i_i_i_i_i_13_fir_filter_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shl_i_i_i_i_i_13_fir_filter_s1 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_13_fir_filter_reset : std_logic;
    signal i_shl_i_i_i_i_i_13_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_13_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl_i_i_i_i_i_13_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_shl_i_i_i_i_i_14_fir_filter_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_shl_i_i_i_i_i_14_fir_filter_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shl_i_i_i_i_i_14_fir_filter_s1 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_14_fir_filter_reset : std_logic;
    signal i_shl_i_i_i_i_i_14_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_14_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl_i_i_i_i_i_14_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_shl_i_i_i_i_i_15_fir_filter_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_shl_i_i_i_i_i_15_fir_filter_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shl_i_i_i_i_i_15_fir_filter_s1 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_15_fir_filter_reset : std_logic;
    signal i_shl_i_i_i_i_i_15_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_15_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl_i_i_i_i_i_15_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_shl_i_i_i_i_i_1_fir_filter_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_shl_i_i_i_i_i_1_fir_filter_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shl_i_i_i_i_i_1_fir_filter_s1 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_1_fir_filter_reset : std_logic;
    signal i_shl_i_i_i_i_i_1_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_1_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl_i_i_i_i_i_1_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_shl_i_i_i_i_i_2_fir_filter_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_shl_i_i_i_i_i_2_fir_filter_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shl_i_i_i_i_i_2_fir_filter_s1 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_2_fir_filter_reset : std_logic;
    signal i_shl_i_i_i_i_i_2_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_2_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl_i_i_i_i_i_2_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_shl_i_i_i_i_i_3_fir_filter_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_shl_i_i_i_i_i_3_fir_filter_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shl_i_i_i_i_i_3_fir_filter_s1 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_3_fir_filter_reset : std_logic;
    signal i_shl_i_i_i_i_i_3_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_3_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl_i_i_i_i_i_3_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_shl_i_i_i_i_i_4_fir_filter_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_shl_i_i_i_i_i_4_fir_filter_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shl_i_i_i_i_i_4_fir_filter_s1 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_4_fir_filter_reset : std_logic;
    signal i_shl_i_i_i_i_i_4_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_4_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl_i_i_i_i_i_4_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_shl_i_i_i_i_i_5_fir_filter_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_shl_i_i_i_i_i_5_fir_filter_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shl_i_i_i_i_i_5_fir_filter_s1 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_5_fir_filter_reset : std_logic;
    signal i_shl_i_i_i_i_i_5_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_5_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl_i_i_i_i_i_5_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_shl_i_i_i_i_i_6_fir_filter_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_shl_i_i_i_i_i_6_fir_filter_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shl_i_i_i_i_i_6_fir_filter_s1 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_6_fir_filter_reset : std_logic;
    signal i_shl_i_i_i_i_i_6_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_6_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl_i_i_i_i_i_6_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_shl_i_i_i_i_i_7_fir_filter_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_shl_i_i_i_i_i_7_fir_filter_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shl_i_i_i_i_i_7_fir_filter_s1 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_7_fir_filter_reset : std_logic;
    signal i_shl_i_i_i_i_i_7_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_7_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl_i_i_i_i_i_7_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_shl_i_i_i_i_i_8_fir_filter_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_shl_i_i_i_i_i_8_fir_filter_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shl_i_i_i_i_i_8_fir_filter_s1 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_8_fir_filter_reset : std_logic;
    signal i_shl_i_i_i_i_i_8_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_8_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl_i_i_i_i_i_8_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_shl_i_i_i_i_i_9_fir_filter_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_shl_i_i_i_i_i_9_fir_filter_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shl_i_i_i_i_i_9_fir_filter_s1 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_9_fir_filter_reset : std_logic;
    signal i_shl_i_i_i_i_i_9_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_9_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl_i_i_i_i_i_9_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_shl_i_i_i_i_i_fir_filter_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_shl_i_i_i_i_i_fir_filter_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shl_i_i_i_i_i_fir_filter_s1 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_fir_filter_reset : std_logic;
    signal i_shl_i_i_i_i_i_fir_filter_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shl_i_i_i_i_i_fir_filter_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl_i_i_i_i_i_fir_filter_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_unnamed_fir_filter18_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_fir_filter18_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_fir_filter18_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_fir_filter19_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_fir_filter21_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_fir_filter21_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_fir_filter21_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_fir_filter86_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_fir_filter86_vt_const_31_q : STD_LOGIC_VECTOR (29 downto 0);
    signal i_unnamed_fir_filter86_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_fir_filter86_vt_select_1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_fir_filter87_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_fir_filter87_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_fir_filter88_q : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0Idx1Rng1_uid705_i_mul_i_i_10_fir_filter_fir_filter164_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid705_i_mul_i_i_10_fir_filter_fir_filter164_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid706_i_mul_i_i_10_fir_filter_fir_filter164_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid708_i_mul_i_i_10_fir_filter_fir_filter164_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid708_i_mul_i_i_10_fir_filter_fir_filter164_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid714_i_mul_i_i_11_fir_filter_fir_filter165_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid714_i_mul_i_i_11_fir_filter_fir_filter165_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid715_i_mul_i_i_11_fir_filter_fir_filter165_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid717_i_mul_i_i_11_fir_filter_fir_filter165_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid717_i_mul_i_i_11_fir_filter_fir_filter165_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid723_i_mul_i_i_12_fir_filter_fir_filter166_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid723_i_mul_i_i_12_fir_filter_fir_filter166_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid724_i_mul_i_i_12_fir_filter_fir_filter166_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid726_i_mul_i_i_12_fir_filter_fir_filter166_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid726_i_mul_i_i_12_fir_filter_fir_filter166_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid732_i_mul_i_i_13_fir_filter_fir_filter167_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid732_i_mul_i_i_13_fir_filter_fir_filter167_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid733_i_mul_i_i_13_fir_filter_fir_filter167_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid735_i_mul_i_i_13_fir_filter_fir_filter167_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid735_i_mul_i_i_13_fir_filter_fir_filter167_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid741_i_mul_i_i_14_fir_filter_fir_filter168_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid741_i_mul_i_i_14_fir_filter_fir_filter168_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid742_i_mul_i_i_14_fir_filter_fir_filter168_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid744_i_mul_i_i_14_fir_filter_fir_filter168_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid744_i_mul_i_i_14_fir_filter_fir_filter168_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid750_i_mul_i_i_15_fir_filter_fir_filter169_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid750_i_mul_i_i_15_fir_filter_fir_filter169_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid751_i_mul_i_i_15_fir_filter_fir_filter169_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid753_i_mul_i_i_15_fir_filter_fir_filter169_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid753_i_mul_i_i_15_fir_filter_fir_filter169_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid759_i_mul_i_i_1_fir_filter_fir_filter155_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid759_i_mul_i_i_1_fir_filter_fir_filter155_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid760_i_mul_i_i_1_fir_filter_fir_filter155_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid762_i_mul_i_i_1_fir_filter_fir_filter155_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid762_i_mul_i_i_1_fir_filter_fir_filter155_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid768_i_mul_i_i_2_fir_filter_fir_filter156_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid768_i_mul_i_i_2_fir_filter_fir_filter156_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid769_i_mul_i_i_2_fir_filter_fir_filter156_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid771_i_mul_i_i_2_fir_filter_fir_filter156_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid771_i_mul_i_i_2_fir_filter_fir_filter156_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid777_i_mul_i_i_3_fir_filter_fir_filter157_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid777_i_mul_i_i_3_fir_filter_fir_filter157_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid778_i_mul_i_i_3_fir_filter_fir_filter157_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid780_i_mul_i_i_3_fir_filter_fir_filter157_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid780_i_mul_i_i_3_fir_filter_fir_filter157_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid786_i_mul_i_i_4_fir_filter_fir_filter158_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid786_i_mul_i_i_4_fir_filter_fir_filter158_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid787_i_mul_i_i_4_fir_filter_fir_filter158_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid789_i_mul_i_i_4_fir_filter_fir_filter158_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid789_i_mul_i_i_4_fir_filter_fir_filter158_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid795_i_mul_i_i_5_fir_filter_fir_filter159_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid795_i_mul_i_i_5_fir_filter_fir_filter159_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid796_i_mul_i_i_5_fir_filter_fir_filter159_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid798_i_mul_i_i_5_fir_filter_fir_filter159_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid798_i_mul_i_i_5_fir_filter_fir_filter159_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid804_i_mul_i_i_6_fir_filter_fir_filter160_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid804_i_mul_i_i_6_fir_filter_fir_filter160_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid805_i_mul_i_i_6_fir_filter_fir_filter160_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid807_i_mul_i_i_6_fir_filter_fir_filter160_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid807_i_mul_i_i_6_fir_filter_fir_filter160_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid813_i_mul_i_i_7_fir_filter_fir_filter161_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid813_i_mul_i_i_7_fir_filter_fir_filter161_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid814_i_mul_i_i_7_fir_filter_fir_filter161_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid816_i_mul_i_i_7_fir_filter_fir_filter161_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid816_i_mul_i_i_7_fir_filter_fir_filter161_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid822_i_mul_i_i_8_fir_filter_fir_filter162_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid822_i_mul_i_i_8_fir_filter_fir_filter162_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid823_i_mul_i_i_8_fir_filter_fir_filter162_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid825_i_mul_i_i_8_fir_filter_fir_filter162_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid825_i_mul_i_i_8_fir_filter_fir_filter162_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid831_i_mul_i_i_9_fir_filter_fir_filter163_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid831_i_mul_i_i_9_fir_filter_fir_filter163_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid832_i_mul_i_i_9_fir_filter_fir_filter163_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid834_i_mul_i_i_9_fir_filter_fir_filter163_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid834_i_mul_i_i_9_fir_filter_fir_filter163_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid840_i_mul_i_i_fir_filter_fir_filter154_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid840_i_mul_i_i_fir_filter_fir_filter154_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid841_i_mul_i_i_fir_filter_fir_filter154_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid843_i_mul_i_i_fir_filter_fir_filter154_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid843_i_mul_i_i_fir_filter_fir_filter154_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_fir_filter87_vt_select_0_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_fir_filter87_vt_select_0_merged_bit_select_c : STD_LOGIC_VECTOR (29 downto 0);
    signal redist0_sync_in_aunroll_x_in_i_valid_2_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist0_sync_in_aunroll_x_in_i_valid_2(DELAY,908)
    redist0_sync_in_aunroll_x_in_i_valid_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist0_sync_in_aunroll_x_in_i_valid_2_q, clk => clock, aclr => resetn );

    -- i_shl_i_i_i_i_i_10_fir_filter_multconst_x(CONSTANT,193)
    i_shl_i_i_i_i_i_10_fir_filter_multconst_x_q <= "0000000000000000000000000000000";

    -- c_i16_8683(CONSTANT,272)
    c_i16_8683_q <= "0010000111101011";

    -- i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_15_0_0_0_push18_fir_filter(BLACKBOX,332)@1
    -- out out_feedback_out_18@20000000
    -- out out_feedback_valid_out_18@20000000
    thei_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_15_0_0_0_push18_fir_filter : i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_15_0_0_0_push18_fir_filter24
    PORT MAP (
        in_data_in => i_acl_fir_filter_q,
        in_feedback_stall_in_18 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_15_0_0_0_pop18_fir_filter_out_feedback_stall_out_18,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_18 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_15_0_0_0_push18_fir_filter_out_feedback_out_18,
        out_feedback_valid_out_18 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_15_0_0_0_push18_fir_filter_out_feedback_valid_out_18,
        clock => clock,
        resetn => resetn
    );

    -- c_i16_0gr(CONSTANT,257)
    c_i16_0gr_q <= "0000000000000000";

    -- i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_15_0_0_0_pop18_fir_filter(BLACKBOX,300)@1
    -- out out_feedback_stall_out_18@20000000
    thei_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_15_0_0_0_pop18_fir_filter : i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_15_0_0_0_pop18_fir_filter22
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_18 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_15_0_0_0_push18_fir_filter_out_feedback_out_18,
        in_feedback_valid_in_18 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_15_0_0_0_push18_fir_filter_out_feedback_valid_out_18,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_15_0_0_0_pop18_fir_filter_out_data_out,
        out_feedback_stall_out_18 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_15_0_0_0_pop18_fir_filter_out_feedback_stall_out_18,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_0gr(CONSTANT,275)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- c_i32_1gr(CONSTANT,276)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- c_i32_2gr(CONSTANT,277)
    c_i32_2gr_q <= "00000000000000000000000000000010";

    -- i_unnamed_fir_filter87(LOGICAL,690)@1
    i_unnamed_fir_filter87_q <= i_s1_fir_filter_4ia_addr_0_fir_filter_q or c_i32_2gr_q;

    -- i_unnamed_fir_filter87_vt_select_0_merged_bit_select(BITSELECT,907)@1
    i_unnamed_fir_filter87_vt_select_0_merged_bit_select_b <= i_unnamed_fir_filter87_q(0 downto 0);
    i_unnamed_fir_filter87_vt_select_0_merged_bit_select_c <= i_unnamed_fir_filter87_q(31 downto 2);

    -- i_unnamed_fir_filter87_vt_join(BITJOIN,692)@1
    i_unnamed_fir_filter87_vt_join_q <= i_unnamed_fir_filter87_vt_select_0_merged_bit_select_c & VCC_q & i_unnamed_fir_filter87_vt_select_0_merged_bit_select_b;

    -- i_unnamed_fir_filter21(LOGICAL,681)@1
    i_unnamed_fir_filter21_q <= i_unnamed_fir_filter18_vt_join_q xor c_i32_1gr_q;

    -- i_unnamed_fir_filter21_vt_select_0(BITSELECT,684)@1
    i_unnamed_fir_filter21_vt_select_0_b <= i_unnamed_fir_filter21_q(0 downto 0);

    -- i_unnamed_fir_filter21_vt_join(BITJOIN,683)@1
    i_unnamed_fir_filter21_vt_join_q <= i_shl_i_i_i_i_i_10_fir_filter_multconst_x_q & i_unnamed_fir_filter21_vt_select_0_b;

    -- i_s1_fir_filter_4ia_addr_0_fir_filter(LOGICAL,610)@1
    i_s1_fir_filter_4ia_addr_0_fir_filter_q <= i_acl_pop_i32_s1_fir_filter_4ia_addr_0_pop34_fir_filter_out_data_out or i_unnamed_fir_filter21_vt_join_q;

    -- i_unnamed_fir_filter86_vt_const_31(CONSTANT,687)
    i_unnamed_fir_filter86_vt_const_31_q <= "000000000000000000000000000000";

    -- i_unnamed_fir_filter86(LOGICAL,685)@1
    i_unnamed_fir_filter86_q <= i_acl_pop_i32_s1_fir_filter_4ia_addr_0_pop34_fir_filter_out_data_out and c_i32_2gr_q;

    -- i_unnamed_fir_filter86_vt_select_1(BITSELECT,689)@1
    i_unnamed_fir_filter86_vt_select_1_b <= i_unnamed_fir_filter86_q(1 downto 1);

    -- i_unnamed_fir_filter86_vt_join(BITJOIN,688)@1
    i_unnamed_fir_filter86_vt_join_q <= i_unnamed_fir_filter86_vt_const_31_q & i_unnamed_fir_filter86_vt_select_1_b & GND_q;

    -- i_unnamed_fir_filter88(LOGICAL,695)@1
    i_unnamed_fir_filter88_q <= "1" WHEN i_unnamed_fir_filter86_vt_join_q = c_i32_0gr_q ELSE "0";

    -- i_s1_fir_filter_4ia_addr_1_fir_filter(MUX,611)@1
    i_s1_fir_filter_4ia_addr_1_fir_filter_s <= i_unnamed_fir_filter88_q;
    i_s1_fir_filter_4ia_addr_1_fir_filter_combproc: PROCESS (i_s1_fir_filter_4ia_addr_1_fir_filter_s, i_s1_fir_filter_4ia_addr_0_fir_filter_q, i_unnamed_fir_filter87_vt_join_q)
    BEGIN
        CASE (i_s1_fir_filter_4ia_addr_1_fir_filter_s) IS
            WHEN "0" => i_s1_fir_filter_4ia_addr_1_fir_filter_q <= i_s1_fir_filter_4ia_addr_0_fir_filter_q;
            WHEN "1" => i_s1_fir_filter_4ia_addr_1_fir_filter_q <= i_unnamed_fir_filter87_vt_join_q;
            WHEN OTHERS => i_s1_fir_filter_4ia_addr_1_fir_filter_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_push_i32_s1_fir_filter_4ia_addr_0_push34_fir_filter(BLACKBOX,357)@1
    -- out out_feedback_out_34@20000000
    -- out out_feedback_valid_out_34@20000000
    thei_acl_push_i32_s1_fir_filter_4ia_addr_0_push34_fir_filter : i_acl_push_i32_s1_fir_filter_4ia_addr_0_push34_fir_filter90
    PORT MAP (
        in_data_in => i_s1_fir_filter_4ia_addr_1_fir_filter_q,
        in_feedback_stall_in_34 => i_acl_pop_i32_s1_fir_filter_4ia_addr_0_pop34_fir_filter_out_feedback_stall_out_34,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_34 => i_acl_push_i32_s1_fir_filter_4ia_addr_0_push34_fir_filter_out_feedback_out_34,
        out_feedback_valid_out_34 => i_acl_push_i32_s1_fir_filter_4ia_addr_0_push34_fir_filter_out_feedback_valid_out_34,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_s1_fir_filter_4ia_addr_0_pop34_fir_filter(BLACKBOX,325)@1
    -- out out_feedback_stall_out_34@20000000
    thei_acl_pop_i32_s1_fir_filter_4ia_addr_0_pop34_fir_filter : i_acl_pop_i32_s1_fir_filter_4ia_addr_0_pop34_fir_filter16
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_34 => i_acl_push_i32_s1_fir_filter_4ia_addr_0_push34_fir_filter_out_feedback_out_34,
        in_feedback_valid_in_34 => i_acl_push_i32_s1_fir_filter_4ia_addr_0_push34_fir_filter_out_feedback_valid_out_34,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_s1_fir_filter_4ia_addr_0_pop34_fir_filter_out_data_out,
        out_feedback_stall_out_34 => i_acl_pop_i32_s1_fir_filter_4ia_addr_0_pop34_fir_filter_out_feedback_stall_out_34,
        clock => clock,
        resetn => resetn
    );

    -- i_unnamed_fir_filter18(LOGICAL,676)@1
    i_unnamed_fir_filter18_q <= i_acl_pop_i32_s1_fir_filter_4ia_addr_0_pop34_fir_filter_out_data_out and c_i32_1gr_q;

    -- i_unnamed_fir_filter18_vt_select_0(BITSELECT,679)@1
    i_unnamed_fir_filter18_vt_select_0_b <= i_unnamed_fir_filter18_q(0 downto 0);

    -- i_unnamed_fir_filter18_vt_join(BITJOIN,678)@1
    i_unnamed_fir_filter18_vt_join_q <= i_shl_i_i_i_i_i_10_fir_filter_multconst_x_q & i_unnamed_fir_filter18_vt_select_0_b;

    -- i_unnamed_fir_filter19(LOGICAL,680)@1
    i_unnamed_fir_filter19_q <= "1" WHEN i_unnamed_fir_filter18_vt_join_q = c_i32_0gr_q ELSE "0";

    -- i_acl_fir_filter(MUX,293)@1
    i_acl_fir_filter_s <= i_unnamed_fir_filter19_q;
    i_acl_fir_filter_combproc: PROCESS (i_acl_fir_filter_s, i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_15_0_0_0_pop18_fir_filter_out_data_out, c_i16_8683_q)
    BEGIN
        CASE (i_acl_fir_filter_s) IS
            WHEN "0" => i_acl_fir_filter_q <= i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_15_0_0_0_pop18_fir_filter_out_data_out;
            WHEN "1" => i_acl_fir_filter_q <= c_i16_8683_q;
            WHEN OTHERS => i_acl_fir_filter_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_conv4_i_i_fir_filter_sel_x(BITSELECT,111)@1
    i_conv4_i_i_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_fir_filter_q(15 downto 0)), 32));

    -- i_conv4_i_i_fir_filter_vt_select_15(BITSELECT,421)@1
    i_conv4_i_i_fir_filter_vt_select_15_b <= i_conv4_i_i_fir_filter_sel_x_b(15 downto 0);

    -- leftShiftStage0Idx1Rng1_uid840_i_mul_i_i_fir_filter_fir_filter154_shift_x(BITSELECT,839)@1
    leftShiftStage0Idx1Rng1_uid840_i_mul_i_i_fir_filter_fir_filter154_shift_x_in <= i_conv_i_i_fir_filter_vt_join_q(30 downto 0);
    leftShiftStage0Idx1Rng1_uid840_i_mul_i_i_fir_filter_fir_filter154_shift_x_b <= leftShiftStage0Idx1Rng1_uid840_i_mul_i_i_fir_filter_fir_filter154_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid841_i_mul_i_i_fir_filter_fir_filter154_shift_x(BITJOIN,840)@1
    leftShiftStage0Idx1_uid841_i_mul_i_i_fir_filter_fir_filter154_shift_x_q <= leftShiftStage0Idx1Rng1_uid840_i_mul_i_i_fir_filter_fir_filter154_shift_x_b & GND_q;

    -- i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_0_0_0_0_push17_fir_filter(BLACKBOX,342)@1
    -- out out_feedback_out_17@20000000
    -- out out_feedback_valid_out_17@20000000
    thei_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_0_0_0_0_push17_fir_filter : i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_0_0_0_0_push17_fir_filter124
    PORT MAP (
        in_data_in => in_c1_eni2_2,
        in_feedback_stall_in_17 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_0_0_0_0_pop17_fir_filter_out_feedback_stall_out_17,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_17 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_0_0_0_0_push17_fir_filter_out_feedback_out_17,
        out_feedback_valid_out_17 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_0_0_0_0_push17_fir_filter_out_feedback_valid_out_17,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_0_0_0_0_pop17_fir_filter(BLACKBOX,310)@1
    -- out out_feedback_stall_out_17@20000000
    thei_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_0_0_0_0_pop17_fir_filter : i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_0_0_0_0_pop17_fir_filter122
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_17 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_0_0_0_0_push17_fir_filter_out_feedback_out_17,
        in_feedback_valid_in_17 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_0_0_0_0_push17_fir_filter_out_feedback_valid_out_17,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_0_0_0_0_pop17_fir_filter_out_data_out,
        out_feedback_stall_out_17 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_0_0_0_0_pop17_fir_filter_out_feedback_stall_out_17,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_1_0_0_0_push16_fir_filter(BLACKBOX,348)@1
    -- out out_feedback_out_16@20000000
    -- out out_feedback_valid_out_16@20000000
    thei_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_1_0_0_0_push16_fir_filter : i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_1_0_0_0_push16_fir_filter126
    PORT MAP (
        in_data_in => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_0_0_0_0_pop17_fir_filter_out_data_out,
        in_feedback_stall_in_16 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_1_0_0_0_pop16_fir_filter_out_feedback_stall_out_16,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_16 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_1_0_0_0_push16_fir_filter_out_feedback_out_16,
        out_feedback_valid_out_16 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_1_0_0_0_push16_fir_filter_out_feedback_valid_out_16,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_1_0_0_0_pop16_fir_filter(BLACKBOX,316)@1
    -- out out_feedback_stall_out_16@20000000
    thei_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_1_0_0_0_pop16_fir_filter : i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_1_0_0_0_pop16_fir_filter120
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_16 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_1_0_0_0_push16_fir_filter_out_feedback_out_16,
        in_feedback_valid_in_16 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_1_0_0_0_push16_fir_filter_out_feedback_valid_out_16,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_1_0_0_0_pop16_fir_filter_out_data_out,
        out_feedback_stall_out_16 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_1_0_0_0_pop16_fir_filter_out_feedback_stall_out_16,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_2_0_0_0_push15_fir_filter(BLACKBOX,349)@1
    -- out out_feedback_out_15@20000000
    -- out out_feedback_valid_out_15@20000000
    thei_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_2_0_0_0_push15_fir_filter : i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_2_0_0_0_push15_fir_filter128
    PORT MAP (
        in_data_in => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_1_0_0_0_pop16_fir_filter_out_data_out,
        in_feedback_stall_in_15 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_2_0_0_0_pop15_fir_filter_out_feedback_stall_out_15,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_15 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_2_0_0_0_push15_fir_filter_out_feedback_out_15,
        out_feedback_valid_out_15 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_2_0_0_0_push15_fir_filter_out_feedback_valid_out_15,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_2_0_0_0_pop15_fir_filter(BLACKBOX,317)@1
    -- out out_feedback_stall_out_15@20000000
    thei_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_2_0_0_0_pop15_fir_filter : i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_2_0_0_0_pop15_fir_filter118
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_15 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_2_0_0_0_push15_fir_filter_out_feedback_out_15,
        in_feedback_valid_in_15 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_2_0_0_0_push15_fir_filter_out_feedback_valid_out_15,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_2_0_0_0_pop15_fir_filter_out_data_out,
        out_feedback_stall_out_15 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_2_0_0_0_pop15_fir_filter_out_feedback_stall_out_15,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_3_0_0_0_push14_fir_filter(BLACKBOX,350)@1
    -- out out_feedback_out_14@20000000
    -- out out_feedback_valid_out_14@20000000
    thei_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_3_0_0_0_push14_fir_filter : i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_3_0_0_0_push14_fir_filter130
    PORT MAP (
        in_data_in => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_2_0_0_0_pop15_fir_filter_out_data_out,
        in_feedback_stall_in_14 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_3_0_0_0_pop14_fir_filter_out_feedback_stall_out_14,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_14 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_3_0_0_0_push14_fir_filter_out_feedback_out_14,
        out_feedback_valid_out_14 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_3_0_0_0_push14_fir_filter_out_feedback_valid_out_14,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_3_0_0_0_pop14_fir_filter(BLACKBOX,318)@1
    -- out out_feedback_stall_out_14@20000000
    thei_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_3_0_0_0_pop14_fir_filter : i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_3_0_0_0_pop14_fir_filter116
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_14 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_3_0_0_0_push14_fir_filter_out_feedback_out_14,
        in_feedback_valid_in_14 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_3_0_0_0_push14_fir_filter_out_feedback_valid_out_14,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_3_0_0_0_pop14_fir_filter_out_data_out,
        out_feedback_stall_out_14 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_3_0_0_0_pop14_fir_filter_out_feedback_stall_out_14,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_4_0_0_0_push13_fir_filter(BLACKBOX,351)@1
    -- out out_feedback_out_13@20000000
    -- out out_feedback_valid_out_13@20000000
    thei_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_4_0_0_0_push13_fir_filter : i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_4_0_0_0_push13_fir_filter132
    PORT MAP (
        in_data_in => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_3_0_0_0_pop14_fir_filter_out_data_out,
        in_feedback_stall_in_13 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_4_0_0_0_pop13_fir_filter_out_feedback_stall_out_13,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_13 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_4_0_0_0_push13_fir_filter_out_feedback_out_13,
        out_feedback_valid_out_13 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_4_0_0_0_push13_fir_filter_out_feedback_valid_out_13,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_4_0_0_0_pop13_fir_filter(BLACKBOX,319)@1
    -- out out_feedback_stall_out_13@20000000
    thei_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_4_0_0_0_pop13_fir_filter : i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_4_0_0_0_pop13_fir_filter114
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_13 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_4_0_0_0_push13_fir_filter_out_feedback_out_13,
        in_feedback_valid_in_13 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_4_0_0_0_push13_fir_filter_out_feedback_valid_out_13,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_4_0_0_0_pop13_fir_filter_out_data_out,
        out_feedback_stall_out_13 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_4_0_0_0_pop13_fir_filter_out_feedback_stall_out_13,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_5_0_0_0_push12_fir_filter(BLACKBOX,352)@1
    -- out out_feedback_out_12@20000000
    -- out out_feedback_valid_out_12@20000000
    thei_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_5_0_0_0_push12_fir_filter : i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_5_0_0_0_push12_fir_filter134
    PORT MAP (
        in_data_in => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_4_0_0_0_pop13_fir_filter_out_data_out,
        in_feedback_stall_in_12 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_5_0_0_0_pop12_fir_filter_out_feedback_stall_out_12,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_12 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_5_0_0_0_push12_fir_filter_out_feedback_out_12,
        out_feedback_valid_out_12 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_5_0_0_0_push12_fir_filter_out_feedback_valid_out_12,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_5_0_0_0_pop12_fir_filter(BLACKBOX,320)@1
    -- out out_feedback_stall_out_12@20000000
    thei_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_5_0_0_0_pop12_fir_filter : i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_5_0_0_0_pop12_fir_filter112
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_12 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_5_0_0_0_push12_fir_filter_out_feedback_out_12,
        in_feedback_valid_in_12 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_5_0_0_0_push12_fir_filter_out_feedback_valid_out_12,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_5_0_0_0_pop12_fir_filter_out_data_out,
        out_feedback_stall_out_12 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_5_0_0_0_pop12_fir_filter_out_feedback_stall_out_12,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_6_0_0_0_push11_fir_filter(BLACKBOX,353)@1
    -- out out_feedback_out_11@20000000
    -- out out_feedback_valid_out_11@20000000
    thei_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_6_0_0_0_push11_fir_filter : i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_6_0_0_0_push11_fir_filter136
    PORT MAP (
        in_data_in => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_5_0_0_0_pop12_fir_filter_out_data_out,
        in_feedback_stall_in_11 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_6_0_0_0_pop11_fir_filter_out_feedback_stall_out_11,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_11 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_6_0_0_0_push11_fir_filter_out_feedback_out_11,
        out_feedback_valid_out_11 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_6_0_0_0_push11_fir_filter_out_feedback_valid_out_11,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_6_0_0_0_pop11_fir_filter(BLACKBOX,321)@1
    -- out out_feedback_stall_out_11@20000000
    thei_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_6_0_0_0_pop11_fir_filter : i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_6_0_0_0_pop11_fir_filter110
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_11 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_6_0_0_0_push11_fir_filter_out_feedback_out_11,
        in_feedback_valid_in_11 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_6_0_0_0_push11_fir_filter_out_feedback_valid_out_11,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_6_0_0_0_pop11_fir_filter_out_data_out,
        out_feedback_stall_out_11 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_6_0_0_0_pop11_fir_filter_out_feedback_stall_out_11,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_7_0_0_0_push10_fir_filter(BLACKBOX,354)@1
    -- out out_feedback_out_10@20000000
    -- out out_feedback_valid_out_10@20000000
    thei_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_7_0_0_0_push10_fir_filter : i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_7_0_0_0_push10_fir_filter138
    PORT MAP (
        in_data_in => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_6_0_0_0_pop11_fir_filter_out_data_out,
        in_feedback_stall_in_10 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_7_0_0_0_pop10_fir_filter_out_feedback_stall_out_10,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_10 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_7_0_0_0_push10_fir_filter_out_feedback_out_10,
        out_feedback_valid_out_10 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_7_0_0_0_push10_fir_filter_out_feedback_valid_out_10,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_7_0_0_0_pop10_fir_filter(BLACKBOX,322)@1
    -- out out_feedback_stall_out_10@20000000
    thei_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_7_0_0_0_pop10_fir_filter : i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_7_0_0_0_pop10_fir_filter108
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_10 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_7_0_0_0_push10_fir_filter_out_feedback_out_10,
        in_feedback_valid_in_10 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_7_0_0_0_push10_fir_filter_out_feedback_valid_out_10,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_7_0_0_0_pop10_fir_filter_out_data_out,
        out_feedback_stall_out_10 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_7_0_0_0_pop10_fir_filter_out_feedback_stall_out_10,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_8_0_0_0_push9_fir_filter(BLACKBOX,355)@1
    -- out out_feedback_out_9@20000000
    -- out out_feedback_valid_out_9@20000000
    thei_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_8_0_0_0_push9_fir_filter : i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_8_0_0_0_push9_fir_filter140
    PORT MAP (
        in_data_in => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_7_0_0_0_pop10_fir_filter_out_data_out,
        in_feedback_stall_in_9 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_8_0_0_0_pop9_fir_filter_out_feedback_stall_out_9,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_9 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_8_0_0_0_push9_fir_filter_out_feedback_out_9,
        out_feedback_valid_out_9 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_8_0_0_0_push9_fir_filter_out_feedback_valid_out_9,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_8_0_0_0_pop9_fir_filter(BLACKBOX,323)@1
    -- out out_feedback_stall_out_9@20000000
    thei_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_8_0_0_0_pop9_fir_filter : i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_8_0_0_0_pop9_fir_filter106
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_9 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_8_0_0_0_push9_fir_filter_out_feedback_out_9,
        in_feedback_valid_in_9 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_8_0_0_0_push9_fir_filter_out_feedback_valid_out_9,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_8_0_0_0_pop9_fir_filter_out_data_out,
        out_feedback_stall_out_9 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_8_0_0_0_pop9_fir_filter_out_feedback_stall_out_9,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_9_0_0_0_push8_fir_filter(BLACKBOX,356)@1
    -- out out_feedback_out_8@20000000
    -- out out_feedback_valid_out_8@20000000
    thei_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_9_0_0_0_push8_fir_filter : i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_9_0_0_0_push8_fir_filter142
    PORT MAP (
        in_data_in => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_8_0_0_0_pop9_fir_filter_out_data_out,
        in_feedback_stall_in_8 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_9_0_0_0_pop8_fir_filter_out_feedback_stall_out_8,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_8 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_9_0_0_0_push8_fir_filter_out_feedback_out_8,
        out_feedback_valid_out_8 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_9_0_0_0_push8_fir_filter_out_feedback_valid_out_8,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_9_0_0_0_pop8_fir_filter(BLACKBOX,324)@1
    -- out out_feedback_stall_out_8@20000000
    thei_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_9_0_0_0_pop8_fir_filter : i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_9_0_0_0_pop8_fir_filter104
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_8 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_9_0_0_0_push8_fir_filter_out_feedback_out_8,
        in_feedback_valid_in_8 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_9_0_0_0_push8_fir_filter_out_feedback_valid_out_8,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_9_0_0_0_pop8_fir_filter_out_data_out,
        out_feedback_stall_out_8 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_9_0_0_0_pop8_fir_filter_out_feedback_stall_out_8,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_10_0_0_0_push7_fir_filter(BLACKBOX,343)@1
    -- out out_feedback_out_7@20000000
    -- out out_feedback_valid_out_7@20000000
    thei_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_10_0_0_0_push7_fir_filter : i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_10_0_0_0_push7_fir_filter144
    PORT MAP (
        in_data_in => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_9_0_0_0_pop8_fir_filter_out_data_out,
        in_feedback_stall_in_7 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_10_0_0_0_pop7_fir_filter_out_feedback_stall_out_7,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_7 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_10_0_0_0_push7_fir_filter_out_feedback_out_7,
        out_feedback_valid_out_7 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_10_0_0_0_push7_fir_filter_out_feedback_valid_out_7,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_10_0_0_0_pop7_fir_filter(BLACKBOX,311)@1
    -- out out_feedback_stall_out_7@20000000
    thei_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_10_0_0_0_pop7_fir_filter : i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_10_0_0_0_pop7_fir_filter102
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_7 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_10_0_0_0_push7_fir_filter_out_feedback_out_7,
        in_feedback_valid_in_7 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_10_0_0_0_push7_fir_filter_out_feedback_valid_out_7,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_10_0_0_0_pop7_fir_filter_out_data_out,
        out_feedback_stall_out_7 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_10_0_0_0_pop7_fir_filter_out_feedback_stall_out_7,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_11_0_0_0_push6_fir_filter(BLACKBOX,344)@1
    -- out out_feedback_out_6@20000000
    -- out out_feedback_valid_out_6@20000000
    thei_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_11_0_0_0_push6_fir_filter : i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_11_0_0_0_push6_fir_filter146
    PORT MAP (
        in_data_in => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_10_0_0_0_pop7_fir_filter_out_data_out,
        in_feedback_stall_in_6 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_11_0_0_0_pop6_fir_filter_out_feedback_stall_out_6,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_6 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_11_0_0_0_push6_fir_filter_out_feedback_out_6,
        out_feedback_valid_out_6 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_11_0_0_0_push6_fir_filter_out_feedback_valid_out_6,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_11_0_0_0_pop6_fir_filter(BLACKBOX,312)@1
    -- out out_feedback_stall_out_6@20000000
    thei_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_11_0_0_0_pop6_fir_filter : i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_11_0_0_0_pop6_fir_filter100
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_6 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_11_0_0_0_push6_fir_filter_out_feedback_out_6,
        in_feedback_valid_in_6 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_11_0_0_0_push6_fir_filter_out_feedback_valid_out_6,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_11_0_0_0_pop6_fir_filter_out_data_out,
        out_feedback_stall_out_6 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_11_0_0_0_pop6_fir_filter_out_feedback_stall_out_6,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_12_0_0_0_push5_fir_filter(BLACKBOX,345)@1
    -- out out_feedback_out_5@20000000
    -- out out_feedback_valid_out_5@20000000
    thei_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_12_0_0_0_push5_fir_filter : i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_12_0_0_0_push5_fir_filter148
    PORT MAP (
        in_data_in => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_11_0_0_0_pop6_fir_filter_out_data_out,
        in_feedback_stall_in_5 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_12_0_0_0_pop5_fir_filter_out_feedback_stall_out_5,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_5 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_12_0_0_0_push5_fir_filter_out_feedback_out_5,
        out_feedback_valid_out_5 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_12_0_0_0_push5_fir_filter_out_feedback_valid_out_5,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_12_0_0_0_pop5_fir_filter(BLACKBOX,313)@1
    -- out out_feedback_stall_out_5@20000000
    thei_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_12_0_0_0_pop5_fir_filter : i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_12_0_0_0_pop5_fir_filter98
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_5 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_12_0_0_0_push5_fir_filter_out_feedback_out_5,
        in_feedback_valid_in_5 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_12_0_0_0_push5_fir_filter_out_feedback_valid_out_5,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_12_0_0_0_pop5_fir_filter_out_data_out,
        out_feedback_stall_out_5 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_12_0_0_0_pop5_fir_filter_out_feedback_stall_out_5,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_13_0_0_0_push4_fir_filter(BLACKBOX,346)@1
    -- out out_feedback_out_4@20000000
    -- out out_feedback_valid_out_4@20000000
    thei_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_13_0_0_0_push4_fir_filter : i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_13_0_0_0_push4_fir_filter150
    PORT MAP (
        in_data_in => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_12_0_0_0_pop5_fir_filter_out_data_out,
        in_feedback_stall_in_4 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_13_0_0_0_pop4_fir_filter_out_feedback_stall_out_4,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_4 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_13_0_0_0_push4_fir_filter_out_feedback_out_4,
        out_feedback_valid_out_4 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_13_0_0_0_push4_fir_filter_out_feedback_valid_out_4,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_13_0_0_0_pop4_fir_filter(BLACKBOX,314)@1
    -- out out_feedback_stall_out_4@20000000
    thei_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_13_0_0_0_pop4_fir_filter : i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_13_0_0_0_pop4_fir_filter96
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_4 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_13_0_0_0_push4_fir_filter_out_feedback_out_4,
        in_feedback_valid_in_4 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_13_0_0_0_push4_fir_filter_out_feedback_valid_out_4,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_13_0_0_0_pop4_fir_filter_out_data_out,
        out_feedback_stall_out_4 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_13_0_0_0_pop4_fir_filter_out_feedback_stall_out_4,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_14_0_0_0_push3_fir_filter(BLACKBOX,347)@1
    -- out out_feedback_out_3@20000000
    -- out out_feedback_valid_out_3@20000000
    thei_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_14_0_0_0_push3_fir_filter : i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_14_0_0_0_push3_fir_filter152
    PORT MAP (
        in_data_in => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_13_0_0_0_pop4_fir_filter_out_data_out,
        in_feedback_stall_in_3 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_14_0_0_0_pop3_fir_filter_out_feedback_stall_out_3,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_3 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_14_0_0_0_push3_fir_filter_out_feedback_out_3,
        out_feedback_valid_out_3 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_14_0_0_0_push3_fir_filter_out_feedback_valid_out_3,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_14_0_0_0_pop3_fir_filter(BLACKBOX,315)@1
    -- out out_feedback_stall_out_3@20000000
    thei_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_14_0_0_0_pop3_fir_filter : i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_14_0_0_0_pop3_fir_filter94
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_3 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_14_0_0_0_push3_fir_filter_out_feedback_out_3,
        in_feedback_valid_in_3 => i_acl_push_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_14_0_0_0_push3_fir_filter_out_feedback_valid_out_3,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_14_0_0_0_pop3_fir_filter_out_data_out,
        out_feedback_stall_out_3 => i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_14_0_0_0_pop3_fir_filter_out_feedback_stall_out_3,
        clock => clock,
        resetn => resetn
    );

    -- i_conv_i_i_fir_filter_sel_x(BITSELECT,127)@1
    i_conv_i_i_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_14_0_0_0_pop3_fir_filter_out_data_out(15 downto 0)), 32));

    -- i_conv_i_i_fir_filter_vt_select_15(BITSELECT,485)@1
    i_conv_i_i_fir_filter_vt_select_15_b <= i_conv_i_i_fir_filter_sel_x_b(15 downto 0);

    -- i_conv_i_i_fir_filter_vt_join(BITJOIN,484)@1
    i_conv_i_i_fir_filter_vt_join_q <= c_i16_0gr_q & i_conv_i_i_fir_filter_vt_select_15_b;

    -- leftShiftStage0_uid843_i_mul_i_i_fir_filter_fir_filter154_shift_x(MUX,842)@1
    leftShiftStage0_uid843_i_mul_i_i_fir_filter_fir_filter154_shift_x_s <= VCC_q;
    leftShiftStage0_uid843_i_mul_i_i_fir_filter_fir_filter154_shift_x_combproc: PROCESS (leftShiftStage0_uid843_i_mul_i_i_fir_filter_fir_filter154_shift_x_s, i_conv_i_i_fir_filter_vt_join_q, leftShiftStage0Idx1_uid841_i_mul_i_i_fir_filter_fir_filter154_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid843_i_mul_i_i_fir_filter_fir_filter154_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid843_i_mul_i_i_fir_filter_fir_filter154_shift_x_q <= i_conv_i_i_fir_filter_vt_join_q;
            WHEN "1" => leftShiftStage0_uid843_i_mul_i_i_fir_filter_fir_filter154_shift_x_q <= leftShiftStage0Idx1_uid841_i_mul_i_i_fir_filter_fir_filter154_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid843_i_mul_i_i_fir_filter_fir_filter154_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul_i_i_fir_filter_vt_select_16(BITSELECT,549)@1
    i_mul_i_i_fir_filter_vt_select_16_b <= leftShiftStage0_uid843_i_mul_i_i_fir_filter_fir_filter154_shift_x_q(16 downto 1);

    -- i_mul_i_i_fir_filter_vt_join(BITJOIN,548)@1
    i_mul_i_i_fir_filter_vt_join_q <= i_mul_i_i_fir_filter_vt_select_16_b & GND_q;

    -- i_shl_i_i_i_i_i_fir_filter(MULT,672)@1 + 2
    i_shl_i_i_i_i_i_fir_filter_a0 <= i_mul_i_i_fir_filter_vt_join_q;
    i_shl_i_i_i_i_i_fir_filter_b0 <= i_conv4_i_i_fir_filter_vt_select_15_b;
    i_shl_i_i_i_i_i_fir_filter_reset <= not (resetn);
    i_shl_i_i_i_i_i_fir_filter_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 16,
        lpm_widthp => 33,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => i_shl_i_i_i_i_i_fir_filter_a0,
        datab => i_shl_i_i_i_i_i_fir_filter_b0,
        clken => VCC_q(0),
        aclr => i_shl_i_i_i_i_i_fir_filter_reset,
        clock => clock,
        result => i_shl_i_i_i_i_i_fir_filter_s1
    );
    i_shl_i_i_i_i_i_fir_filter_q <= i_shl_i_i_i_i_i_fir_filter_s1;

    -- i_shl_i_i_i_i_i_fir_filter_extender_x(BITJOIN,222)@3
    i_shl_i_i_i_i_i_fir_filter_extender_x_q <= i_shl_i_i_i_i_i_10_fir_filter_multconst_x_q & i_shl_i_i_i_i_i_fir_filter_q;

    -- bgTrunc_i_shl_i_i_i_i_i_fir_filter_sel_x(BITSELECT,32)@3
    bgTrunc_i_shl_i_i_i_i_i_fir_filter_sel_x_b <= i_shl_i_i_i_i_i_fir_filter_extender_x_q(31 downto 0);

    -- i_shl_i_i_i_i_i_fir_filter_vt_select_31(BITSELECT,675)@3
    i_shl_i_i_i_i_i_fir_filter_vt_select_31_b <= bgTrunc_i_shl_i_i_i_i_i_fir_filter_sel_x_b(31 downto 1);

    -- i_shl_i_i_i_i_i_fir_filter_vt_join(BITJOIN,674)@3
    i_shl_i_i_i_i_i_fir_filter_vt_join_q <= i_shl_i_i_i_i_i_fir_filter_vt_select_31_b & GND_q;

    -- c_i16_9427(CONSTANT,273)
    c_i16_9427_q <= "0010010011010011";

    -- i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_14_0_0_0_push19_fir_filter(BLACKBOX,331)@1
    -- out out_feedback_out_19@20000000
    -- out out_feedback_valid_out_19@20000000
    thei_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_14_0_0_0_push19_fir_filter : i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_14_0_0_0_push19_fir_filter28
    PORT MAP (
        in_data_in => i_acl_140_fir_filter_q,
        in_feedback_stall_in_19 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_14_0_0_0_pop19_fir_filter_out_feedback_stall_out_19,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_19 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_14_0_0_0_push19_fir_filter_out_feedback_out_19,
        out_feedback_valid_out_19 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_14_0_0_0_push19_fir_filter_out_feedback_valid_out_19,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_14_0_0_0_pop19_fir_filter(BLACKBOX,299)@1
    -- out out_feedback_stall_out_19@20000000
    thei_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_14_0_0_0_pop19_fir_filter : i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_14_0_0_0_pop19_fir_filter26
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_19 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_14_0_0_0_push19_fir_filter_out_feedback_out_19,
        in_feedback_valid_in_19 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_14_0_0_0_push19_fir_filter_out_feedback_valid_out_19,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_14_0_0_0_pop19_fir_filter_out_data_out,
        out_feedback_stall_out_19 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_14_0_0_0_pop19_fir_filter_out_feedback_stall_out_19,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_140_fir_filter(MUX,278)@1
    i_acl_140_fir_filter_s <= i_unnamed_fir_filter19_q;
    i_acl_140_fir_filter_combproc: PROCESS (i_acl_140_fir_filter_s, i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_14_0_0_0_pop19_fir_filter_out_data_out, c_i16_9427_q)
    BEGIN
        CASE (i_acl_140_fir_filter_s) IS
            WHEN "0" => i_acl_140_fir_filter_q <= i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_14_0_0_0_pop19_fir_filter_out_data_out;
            WHEN "1" => i_acl_140_fir_filter_q <= c_i16_9427_q;
            WHEN OTHERS => i_acl_140_fir_filter_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_conv4_i_i_1_fir_filter_sel_x(BITSELECT,102)@1
    i_conv4_i_i_1_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_140_fir_filter_q(15 downto 0)), 32));

    -- i_conv4_i_i_1_fir_filter_vt_select_15(BITSELECT,385)@1
    i_conv4_i_i_1_fir_filter_vt_select_15_b <= i_conv4_i_i_1_fir_filter_sel_x_b(15 downto 0);

    -- leftShiftStage0Idx1Rng1_uid759_i_mul_i_i_1_fir_filter_fir_filter155_shift_x(BITSELECT,758)@1
    leftShiftStage0Idx1Rng1_uid759_i_mul_i_i_1_fir_filter_fir_filter155_shift_x_in <= i_conv_i_i_1_fir_filter_vt_join_q(30 downto 0);
    leftShiftStage0Idx1Rng1_uid759_i_mul_i_i_1_fir_filter_fir_filter155_shift_x_b <= leftShiftStage0Idx1Rng1_uid759_i_mul_i_i_1_fir_filter_fir_filter155_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid760_i_mul_i_i_1_fir_filter_fir_filter155_shift_x(BITJOIN,759)@1
    leftShiftStage0Idx1_uid760_i_mul_i_i_1_fir_filter_fir_filter155_shift_x_q <= leftShiftStage0Idx1Rng1_uid759_i_mul_i_i_1_fir_filter_fir_filter155_shift_x_b & GND_q;

    -- i_conv_i_i_1_fir_filter_sel_x(BITSELECT,118)@1
    i_conv_i_i_1_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_13_0_0_0_pop4_fir_filter_out_data_out(15 downto 0)), 32));

    -- i_conv_i_i_1_fir_filter_vt_select_15(BITSELECT,449)@1
    i_conv_i_i_1_fir_filter_vt_select_15_b <= i_conv_i_i_1_fir_filter_sel_x_b(15 downto 0);

    -- i_conv_i_i_1_fir_filter_vt_join(BITJOIN,448)@1
    i_conv_i_i_1_fir_filter_vt_join_q <= c_i16_0gr_q & i_conv_i_i_1_fir_filter_vt_select_15_b;

    -- leftShiftStage0_uid762_i_mul_i_i_1_fir_filter_fir_filter155_shift_x(MUX,761)@1
    leftShiftStage0_uid762_i_mul_i_i_1_fir_filter_fir_filter155_shift_x_s <= VCC_q;
    leftShiftStage0_uid762_i_mul_i_i_1_fir_filter_fir_filter155_shift_x_combproc: PROCESS (leftShiftStage0_uid762_i_mul_i_i_1_fir_filter_fir_filter155_shift_x_s, i_conv_i_i_1_fir_filter_vt_join_q, leftShiftStage0Idx1_uid760_i_mul_i_i_1_fir_filter_fir_filter155_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid762_i_mul_i_i_1_fir_filter_fir_filter155_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid762_i_mul_i_i_1_fir_filter_fir_filter155_shift_x_q <= i_conv_i_i_1_fir_filter_vt_join_q;
            WHEN "1" => leftShiftStage0_uid762_i_mul_i_i_1_fir_filter_fir_filter155_shift_x_q <= leftShiftStage0Idx1_uid760_i_mul_i_i_1_fir_filter_fir_filter155_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid762_i_mul_i_i_1_fir_filter_fir_filter155_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul_i_i_1_fir_filter_vt_select_16(BITSELECT,513)@1
    i_mul_i_i_1_fir_filter_vt_select_16_b <= leftShiftStage0_uid762_i_mul_i_i_1_fir_filter_fir_filter155_shift_x_q(16 downto 1);

    -- i_mul_i_i_1_fir_filter_vt_join(BITJOIN,512)@1
    i_mul_i_i_1_fir_filter_vt_join_q <= i_mul_i_i_1_fir_filter_vt_select_16_b & GND_q;

    -- i_shl_i_i_i_i_i_1_fir_filter(MULT,636)@1 + 2
    i_shl_i_i_i_i_i_1_fir_filter_a0 <= i_mul_i_i_1_fir_filter_vt_join_q;
    i_shl_i_i_i_i_i_1_fir_filter_b0 <= i_conv4_i_i_1_fir_filter_vt_select_15_b;
    i_shl_i_i_i_i_i_1_fir_filter_reset <= not (resetn);
    i_shl_i_i_i_i_i_1_fir_filter_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 16,
        lpm_widthp => 33,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => i_shl_i_i_i_i_i_1_fir_filter_a0,
        datab => i_shl_i_i_i_i_i_1_fir_filter_b0,
        clken => VCC_q(0),
        aclr => i_shl_i_i_i_i_i_1_fir_filter_reset,
        clock => clock,
        result => i_shl_i_i_i_i_i_1_fir_filter_s1
    );
    i_shl_i_i_i_i_i_1_fir_filter_q <= i_shl_i_i_i_i_i_1_fir_filter_s1;

    -- i_shl_i_i_i_i_i_1_fir_filter_extender_x(BITJOIN,204)@3
    i_shl_i_i_i_i_i_1_fir_filter_extender_x_q <= i_shl_i_i_i_i_i_10_fir_filter_multconst_x_q & i_shl_i_i_i_i_i_1_fir_filter_q;

    -- bgTrunc_i_shl_i_i_i_i_i_1_fir_filter_sel_x(BITSELECT,23)@3
    bgTrunc_i_shl_i_i_i_i_i_1_fir_filter_sel_x_b <= i_shl_i_i_i_i_i_1_fir_filter_extender_x_q(31 downto 0);

    -- i_shl_i_i_i_i_i_1_fir_filter_vt_select_31(BITSELECT,639)@3
    i_shl_i_i_i_i_i_1_fir_filter_vt_select_31_b <= bgTrunc_i_shl_i_i_i_i_i_1_fir_filter_sel_x_b(31 downto 1);

    -- i_shl_i_i_i_i_i_1_fir_filter_vt_join(BITJOIN,638)@3
    i_shl_i_i_i_i_i_1_fir_filter_vt_join_q <= i_shl_i_i_i_i_i_1_fir_filter_vt_select_31_b & GND_q;

    -- i_reduction_fir_filter_7_fir_filter(ADD,598)@3
    i_reduction_fir_filter_7_fir_filter_a <= STD_LOGIC_VECTOR("0" & i_shl_i_i_i_i_i_1_fir_filter_vt_join_q);
    i_reduction_fir_filter_7_fir_filter_b <= STD_LOGIC_VECTOR("0" & i_shl_i_i_i_i_i_fir_filter_vt_join_q);
    i_reduction_fir_filter_7_fir_filter_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_fir_filter_7_fir_filter_a) + UNSIGNED(i_reduction_fir_filter_7_fir_filter_b));
    i_reduction_fir_filter_7_fir_filter_q <= i_reduction_fir_filter_7_fir_filter_o(32 downto 0);

    -- bgTrunc_i_reduction_fir_filter_7_fir_filter_sel_x(BITSELECT,14)@3
    bgTrunc_i_reduction_fir_filter_7_fir_filter_sel_x_b <= i_reduction_fir_filter_7_fir_filter_q(31 downto 0);

    -- i_reduction_fir_filter_7_fir_filter_vt_select_31(BITSELECT,601)@3
    i_reduction_fir_filter_7_fir_filter_vt_select_31_b <= bgTrunc_i_reduction_fir_filter_7_fir_filter_sel_x_b(31 downto 1);

    -- i_reduction_fir_filter_7_fir_filter_vt_join(BITJOIN,600)@3
    i_reduction_fir_filter_7_fir_filter_vt_join_q <= i_reduction_fir_filter_7_fir_filter_vt_select_31_b & GND_q;

    -- c_i16_10113(CONSTANT,258)
    c_i16_10113_q <= "0010011110000001";

    -- i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_13_0_0_0_push20_fir_filter(BLACKBOX,330)@1
    -- out out_feedback_out_20@20000000
    -- out out_feedback_valid_out_20@20000000
    thei_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_13_0_0_0_push20_fir_filter : i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_13_0_0_0_push20_fir_filter32
    PORT MAP (
        in_data_in => i_acl_141_fir_filter_q,
        in_feedback_stall_in_20 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_13_0_0_0_pop20_fir_filter_out_feedback_stall_out_20,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_20 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_13_0_0_0_push20_fir_filter_out_feedback_out_20,
        out_feedback_valid_out_20 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_13_0_0_0_push20_fir_filter_out_feedback_valid_out_20,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_13_0_0_0_pop20_fir_filter(BLACKBOX,298)@1
    -- out out_feedback_stall_out_20@20000000
    thei_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_13_0_0_0_pop20_fir_filter : i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_13_0_0_0_pop20_fir_filter30
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_20 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_13_0_0_0_push20_fir_filter_out_feedback_out_20,
        in_feedback_valid_in_20 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_13_0_0_0_push20_fir_filter_out_feedback_valid_out_20,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_13_0_0_0_pop20_fir_filter_out_data_out,
        out_feedback_stall_out_20 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_13_0_0_0_pop20_fir_filter_out_feedback_stall_out_20,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_141_fir_filter(MUX,279)@1
    i_acl_141_fir_filter_s <= i_unnamed_fir_filter19_q;
    i_acl_141_fir_filter_combproc: PROCESS (i_acl_141_fir_filter_s, i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_13_0_0_0_pop20_fir_filter_out_data_out, c_i16_10113_q)
    BEGIN
        CASE (i_acl_141_fir_filter_s) IS
            WHEN "0" => i_acl_141_fir_filter_q <= i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_13_0_0_0_pop20_fir_filter_out_data_out;
            WHEN "1" => i_acl_141_fir_filter_q <= c_i16_10113_q;
            WHEN OTHERS => i_acl_141_fir_filter_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_conv4_i_i_2_fir_filter_sel_x(BITSELECT,103)@1
    i_conv4_i_i_2_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_141_fir_filter_q(15 downto 0)), 32));

    -- i_conv4_i_i_2_fir_filter_vt_select_15(BITSELECT,389)@1
    i_conv4_i_i_2_fir_filter_vt_select_15_b <= i_conv4_i_i_2_fir_filter_sel_x_b(15 downto 0);

    -- leftShiftStage0Idx1Rng1_uid768_i_mul_i_i_2_fir_filter_fir_filter156_shift_x(BITSELECT,767)@1
    leftShiftStage0Idx1Rng1_uid768_i_mul_i_i_2_fir_filter_fir_filter156_shift_x_in <= i_conv_i_i_2_fir_filter_vt_join_q(30 downto 0);
    leftShiftStage0Idx1Rng1_uid768_i_mul_i_i_2_fir_filter_fir_filter156_shift_x_b <= leftShiftStage0Idx1Rng1_uid768_i_mul_i_i_2_fir_filter_fir_filter156_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid769_i_mul_i_i_2_fir_filter_fir_filter156_shift_x(BITJOIN,768)@1
    leftShiftStage0Idx1_uid769_i_mul_i_i_2_fir_filter_fir_filter156_shift_x_q <= leftShiftStage0Idx1Rng1_uid768_i_mul_i_i_2_fir_filter_fir_filter156_shift_x_b & GND_q;

    -- i_conv_i_i_2_fir_filter_sel_x(BITSELECT,119)@1
    i_conv_i_i_2_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_12_0_0_0_pop5_fir_filter_out_data_out(15 downto 0)), 32));

    -- i_conv_i_i_2_fir_filter_vt_select_15(BITSELECT,453)@1
    i_conv_i_i_2_fir_filter_vt_select_15_b <= i_conv_i_i_2_fir_filter_sel_x_b(15 downto 0);

    -- i_conv_i_i_2_fir_filter_vt_join(BITJOIN,452)@1
    i_conv_i_i_2_fir_filter_vt_join_q <= c_i16_0gr_q & i_conv_i_i_2_fir_filter_vt_select_15_b;

    -- leftShiftStage0_uid771_i_mul_i_i_2_fir_filter_fir_filter156_shift_x(MUX,770)@1
    leftShiftStage0_uid771_i_mul_i_i_2_fir_filter_fir_filter156_shift_x_s <= VCC_q;
    leftShiftStage0_uid771_i_mul_i_i_2_fir_filter_fir_filter156_shift_x_combproc: PROCESS (leftShiftStage0_uid771_i_mul_i_i_2_fir_filter_fir_filter156_shift_x_s, i_conv_i_i_2_fir_filter_vt_join_q, leftShiftStage0Idx1_uid769_i_mul_i_i_2_fir_filter_fir_filter156_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid771_i_mul_i_i_2_fir_filter_fir_filter156_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid771_i_mul_i_i_2_fir_filter_fir_filter156_shift_x_q <= i_conv_i_i_2_fir_filter_vt_join_q;
            WHEN "1" => leftShiftStage0_uid771_i_mul_i_i_2_fir_filter_fir_filter156_shift_x_q <= leftShiftStage0Idx1_uid769_i_mul_i_i_2_fir_filter_fir_filter156_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid771_i_mul_i_i_2_fir_filter_fir_filter156_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul_i_i_2_fir_filter_vt_select_16(BITSELECT,517)@1
    i_mul_i_i_2_fir_filter_vt_select_16_b <= leftShiftStage0_uid771_i_mul_i_i_2_fir_filter_fir_filter156_shift_x_q(16 downto 1);

    -- i_mul_i_i_2_fir_filter_vt_join(BITJOIN,516)@1
    i_mul_i_i_2_fir_filter_vt_join_q <= i_mul_i_i_2_fir_filter_vt_select_16_b & GND_q;

    -- i_shl_i_i_i_i_i_2_fir_filter(MULT,640)@1 + 2
    i_shl_i_i_i_i_i_2_fir_filter_a0 <= i_mul_i_i_2_fir_filter_vt_join_q;
    i_shl_i_i_i_i_i_2_fir_filter_b0 <= i_conv4_i_i_2_fir_filter_vt_select_15_b;
    i_shl_i_i_i_i_i_2_fir_filter_reset <= not (resetn);
    i_shl_i_i_i_i_i_2_fir_filter_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 16,
        lpm_widthp => 33,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => i_shl_i_i_i_i_i_2_fir_filter_a0,
        datab => i_shl_i_i_i_i_i_2_fir_filter_b0,
        clken => VCC_q(0),
        aclr => i_shl_i_i_i_i_i_2_fir_filter_reset,
        clock => clock,
        result => i_shl_i_i_i_i_i_2_fir_filter_s1
    );
    i_shl_i_i_i_i_i_2_fir_filter_q <= i_shl_i_i_i_i_i_2_fir_filter_s1;

    -- i_shl_i_i_i_i_i_2_fir_filter_extender_x(BITJOIN,206)@3
    i_shl_i_i_i_i_i_2_fir_filter_extender_x_q <= i_shl_i_i_i_i_i_10_fir_filter_multconst_x_q & i_shl_i_i_i_i_i_2_fir_filter_q;

    -- bgTrunc_i_shl_i_i_i_i_i_2_fir_filter_sel_x(BITSELECT,24)@3
    bgTrunc_i_shl_i_i_i_i_i_2_fir_filter_sel_x_b <= i_shl_i_i_i_i_i_2_fir_filter_extender_x_q(31 downto 0);

    -- i_shl_i_i_i_i_i_2_fir_filter_vt_select_31(BITSELECT,643)@3
    i_shl_i_i_i_i_i_2_fir_filter_vt_select_31_b <= bgTrunc_i_shl_i_i_i_i_i_2_fir_filter_sel_x_b(31 downto 1);

    -- i_shl_i_i_i_i_i_2_fir_filter_vt_join(BITJOIN,642)@3
    i_shl_i_i_i_i_i_2_fir_filter_vt_join_q <= i_shl_i_i_i_i_i_2_fir_filter_vt_select_31_b & GND_q;

    -- c_i16_6280(CONSTANT,269)
    c_i16_6280_q <= "0001100010001000";

    -- i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_12_0_0_0_push21_fir_filter(BLACKBOX,329)@1
    -- out out_feedback_out_21@20000000
    -- out out_feedback_valid_out_21@20000000
    thei_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_12_0_0_0_push21_fir_filter : i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_12_0_0_0_push21_fir_filter36
    PORT MAP (
        in_data_in => i_acl_142_fir_filter_q,
        in_feedback_stall_in_21 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_12_0_0_0_pop21_fir_filter_out_feedback_stall_out_21,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_21 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_12_0_0_0_push21_fir_filter_out_feedback_out_21,
        out_feedback_valid_out_21 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_12_0_0_0_push21_fir_filter_out_feedback_valid_out_21,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_12_0_0_0_pop21_fir_filter(BLACKBOX,297)@1
    -- out out_feedback_stall_out_21@20000000
    thei_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_12_0_0_0_pop21_fir_filter : i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_12_0_0_0_pop21_fir_filter34
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_21 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_12_0_0_0_push21_fir_filter_out_feedback_out_21,
        in_feedback_valid_in_21 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_12_0_0_0_push21_fir_filter_out_feedback_valid_out_21,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_12_0_0_0_pop21_fir_filter_out_data_out,
        out_feedback_stall_out_21 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_12_0_0_0_pop21_fir_filter_out_feedback_stall_out_21,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_142_fir_filter(MUX,280)@1
    i_acl_142_fir_filter_s <= i_unnamed_fir_filter19_q;
    i_acl_142_fir_filter_combproc: PROCESS (i_acl_142_fir_filter_s, i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_12_0_0_0_pop21_fir_filter_out_data_out, c_i16_6280_q)
    BEGIN
        CASE (i_acl_142_fir_filter_s) IS
            WHEN "0" => i_acl_142_fir_filter_q <= i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_12_0_0_0_pop21_fir_filter_out_data_out;
            WHEN "1" => i_acl_142_fir_filter_q <= c_i16_6280_q;
            WHEN OTHERS => i_acl_142_fir_filter_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_conv4_i_i_3_fir_filter_sel_x(BITSELECT,104)@1
    i_conv4_i_i_3_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_142_fir_filter_q(15 downto 0)), 32));

    -- i_conv4_i_i_3_fir_filter_vt_select_15(BITSELECT,393)@1
    i_conv4_i_i_3_fir_filter_vt_select_15_b <= i_conv4_i_i_3_fir_filter_sel_x_b(15 downto 0);

    -- leftShiftStage0Idx1Rng1_uid777_i_mul_i_i_3_fir_filter_fir_filter157_shift_x(BITSELECT,776)@1
    leftShiftStage0Idx1Rng1_uid777_i_mul_i_i_3_fir_filter_fir_filter157_shift_x_in <= i_conv_i_i_3_fir_filter_vt_join_q(30 downto 0);
    leftShiftStage0Idx1Rng1_uid777_i_mul_i_i_3_fir_filter_fir_filter157_shift_x_b <= leftShiftStage0Idx1Rng1_uid777_i_mul_i_i_3_fir_filter_fir_filter157_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid778_i_mul_i_i_3_fir_filter_fir_filter157_shift_x(BITJOIN,777)@1
    leftShiftStage0Idx1_uid778_i_mul_i_i_3_fir_filter_fir_filter157_shift_x_q <= leftShiftStage0Idx1Rng1_uid777_i_mul_i_i_3_fir_filter_fir_filter157_shift_x_b & GND_q;

    -- i_conv_i_i_3_fir_filter_sel_x(BITSELECT,120)@1
    i_conv_i_i_3_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_11_0_0_0_pop6_fir_filter_out_data_out(15 downto 0)), 32));

    -- i_conv_i_i_3_fir_filter_vt_select_15(BITSELECT,457)@1
    i_conv_i_i_3_fir_filter_vt_select_15_b <= i_conv_i_i_3_fir_filter_sel_x_b(15 downto 0);

    -- i_conv_i_i_3_fir_filter_vt_join(BITJOIN,456)@1
    i_conv_i_i_3_fir_filter_vt_join_q <= c_i16_0gr_q & i_conv_i_i_3_fir_filter_vt_select_15_b;

    -- leftShiftStage0_uid780_i_mul_i_i_3_fir_filter_fir_filter157_shift_x(MUX,779)@1
    leftShiftStage0_uid780_i_mul_i_i_3_fir_filter_fir_filter157_shift_x_s <= VCC_q;
    leftShiftStage0_uid780_i_mul_i_i_3_fir_filter_fir_filter157_shift_x_combproc: PROCESS (leftShiftStage0_uid780_i_mul_i_i_3_fir_filter_fir_filter157_shift_x_s, i_conv_i_i_3_fir_filter_vt_join_q, leftShiftStage0Idx1_uid778_i_mul_i_i_3_fir_filter_fir_filter157_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid780_i_mul_i_i_3_fir_filter_fir_filter157_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid780_i_mul_i_i_3_fir_filter_fir_filter157_shift_x_q <= i_conv_i_i_3_fir_filter_vt_join_q;
            WHEN "1" => leftShiftStage0_uid780_i_mul_i_i_3_fir_filter_fir_filter157_shift_x_q <= leftShiftStage0Idx1_uid778_i_mul_i_i_3_fir_filter_fir_filter157_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid780_i_mul_i_i_3_fir_filter_fir_filter157_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul_i_i_3_fir_filter_vt_select_16(BITSELECT,521)@1
    i_mul_i_i_3_fir_filter_vt_select_16_b <= leftShiftStage0_uid780_i_mul_i_i_3_fir_filter_fir_filter157_shift_x_q(16 downto 1);

    -- i_mul_i_i_3_fir_filter_vt_join(BITJOIN,520)@1
    i_mul_i_i_3_fir_filter_vt_join_q <= i_mul_i_i_3_fir_filter_vt_select_16_b & GND_q;

    -- i_shl_i_i_i_i_i_3_fir_filter(MULT,644)@1 + 2
    i_shl_i_i_i_i_i_3_fir_filter_a0 <= i_mul_i_i_3_fir_filter_vt_join_q;
    i_shl_i_i_i_i_i_3_fir_filter_b0 <= i_conv4_i_i_3_fir_filter_vt_select_15_b;
    i_shl_i_i_i_i_i_3_fir_filter_reset <= not (resetn);
    i_shl_i_i_i_i_i_3_fir_filter_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 16,
        lpm_widthp => 33,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => i_shl_i_i_i_i_i_3_fir_filter_a0,
        datab => i_shl_i_i_i_i_i_3_fir_filter_b0,
        clken => VCC_q(0),
        aclr => i_shl_i_i_i_i_i_3_fir_filter_reset,
        clock => clock,
        result => i_shl_i_i_i_i_i_3_fir_filter_s1
    );
    i_shl_i_i_i_i_i_3_fir_filter_q <= i_shl_i_i_i_i_i_3_fir_filter_s1;

    -- i_shl_i_i_i_i_i_3_fir_filter_extender_x(BITJOIN,208)@3
    i_shl_i_i_i_i_i_3_fir_filter_extender_x_q <= i_shl_i_i_i_i_i_10_fir_filter_multconst_x_q & i_shl_i_i_i_i_i_3_fir_filter_q;

    -- bgTrunc_i_shl_i_i_i_i_i_3_fir_filter_sel_x(BITSELECT,25)@3
    bgTrunc_i_shl_i_i_i_i_i_3_fir_filter_sel_x_b <= i_shl_i_i_i_i_i_3_fir_filter_extender_x_q(31 downto 0);

    -- i_shl_i_i_i_i_i_3_fir_filter_vt_select_31(BITSELECT,647)@3
    i_shl_i_i_i_i_i_3_fir_filter_vt_select_31_b <= bgTrunc_i_shl_i_i_i_i_i_3_fir_filter_sel_x_b(31 downto 1);

    -- i_shl_i_i_i_i_i_3_fir_filter_vt_join(BITJOIN,646)@3
    i_shl_i_i_i_i_i_3_fir_filter_vt_join_q <= i_shl_i_i_i_i_i_3_fir_filter_vt_select_31_b & GND_q;

    -- i_reduction_fir_filter_6_fir_filter(ADD,594)@3
    i_reduction_fir_filter_6_fir_filter_a <= STD_LOGIC_VECTOR("0" & i_shl_i_i_i_i_i_3_fir_filter_vt_join_q);
    i_reduction_fir_filter_6_fir_filter_b <= STD_LOGIC_VECTOR("0" & i_shl_i_i_i_i_i_2_fir_filter_vt_join_q);
    i_reduction_fir_filter_6_fir_filter_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_fir_filter_6_fir_filter_a) + UNSIGNED(i_reduction_fir_filter_6_fir_filter_b));
    i_reduction_fir_filter_6_fir_filter_q <= i_reduction_fir_filter_6_fir_filter_o(32 downto 0);

    -- bgTrunc_i_reduction_fir_filter_6_fir_filter_sel_x(BITSELECT,13)@3
    bgTrunc_i_reduction_fir_filter_6_fir_filter_sel_x_b <= i_reduction_fir_filter_6_fir_filter_q(31 downto 0);

    -- i_reduction_fir_filter_6_fir_filter_vt_select_31(BITSELECT,597)@3
    i_reduction_fir_filter_6_fir_filter_vt_select_31_b <= bgTrunc_i_reduction_fir_filter_6_fir_filter_sel_x_b(31 downto 1);

    -- i_reduction_fir_filter_6_fir_filter_vt_join(BITJOIN,596)@3
    i_reduction_fir_filter_6_fir_filter_vt_join_q <= i_reduction_fir_filter_6_fir_filter_vt_select_31_b & GND_q;

    -- i_reduction_fir_filter_11_fir_filter(ADD,558)@3
    i_reduction_fir_filter_11_fir_filter_a <= STD_LOGIC_VECTOR("0" & i_reduction_fir_filter_6_fir_filter_vt_join_q);
    i_reduction_fir_filter_11_fir_filter_b <= STD_LOGIC_VECTOR("0" & i_reduction_fir_filter_7_fir_filter_vt_join_q);
    i_reduction_fir_filter_11_fir_filter_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_fir_filter_11_fir_filter_a) + UNSIGNED(i_reduction_fir_filter_11_fir_filter_b));
    i_reduction_fir_filter_11_fir_filter_q <= i_reduction_fir_filter_11_fir_filter_o(32 downto 0);

    -- bgTrunc_i_reduction_fir_filter_11_fir_filter_sel_x(BITSELECT,4)@3
    bgTrunc_i_reduction_fir_filter_11_fir_filter_sel_x_b <= i_reduction_fir_filter_11_fir_filter_q(31 downto 0);

    -- i_reduction_fir_filter_11_fir_filter_vt_select_31(BITSELECT,561)@3
    i_reduction_fir_filter_11_fir_filter_vt_select_31_b <= bgTrunc_i_reduction_fir_filter_11_fir_filter_sel_x_b(31 downto 1);

    -- i_reduction_fir_filter_11_fir_filter_vt_join(BITJOIN,560)@3
    i_reduction_fir_filter_11_fir_filter_vt_join_q <= i_reduction_fir_filter_11_fir_filter_vt_select_31_b & GND_q;

    -- c_i16_13321(CONSTANT,264)
    c_i16_13321_q <= "0011010000001001";

    -- i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_11_0_0_0_push22_fir_filter(BLACKBOX,328)@1
    -- out out_feedback_out_22@20000000
    -- out out_feedback_valid_out_22@20000000
    thei_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_11_0_0_0_push22_fir_filter : i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_11_0_0_0_push22_fir_filter40
    PORT MAP (
        in_data_in => i_acl_143_fir_filter_q,
        in_feedback_stall_in_22 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_11_0_0_0_pop22_fir_filter_out_feedback_stall_out_22,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_22 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_11_0_0_0_push22_fir_filter_out_feedback_out_22,
        out_feedback_valid_out_22 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_11_0_0_0_push22_fir_filter_out_feedback_valid_out_22,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_11_0_0_0_pop22_fir_filter(BLACKBOX,296)@1
    -- out out_feedback_stall_out_22@20000000
    thei_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_11_0_0_0_pop22_fir_filter : i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_11_0_0_0_pop22_fir_filter38
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_22 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_11_0_0_0_push22_fir_filter_out_feedback_out_22,
        in_feedback_valid_in_22 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_11_0_0_0_push22_fir_filter_out_feedback_valid_out_22,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_11_0_0_0_pop22_fir_filter_out_data_out,
        out_feedback_stall_out_22 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_11_0_0_0_pop22_fir_filter_out_feedback_stall_out_22,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_143_fir_filter(MUX,281)@1
    i_acl_143_fir_filter_s <= i_unnamed_fir_filter19_q;
    i_acl_143_fir_filter_combproc: PROCESS (i_acl_143_fir_filter_s, i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_11_0_0_0_pop22_fir_filter_out_data_out, c_i16_13321_q)
    BEGIN
        CASE (i_acl_143_fir_filter_s) IS
            WHEN "0" => i_acl_143_fir_filter_q <= i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_11_0_0_0_pop22_fir_filter_out_data_out;
            WHEN "1" => i_acl_143_fir_filter_q <= c_i16_13321_q;
            WHEN OTHERS => i_acl_143_fir_filter_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_conv4_i_i_4_fir_filter_sel_x(BITSELECT,105)@1
    i_conv4_i_i_4_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_143_fir_filter_q(15 downto 0)), 32));

    -- i_conv4_i_i_4_fir_filter_vt_select_15(BITSELECT,397)@1
    i_conv4_i_i_4_fir_filter_vt_select_15_b <= i_conv4_i_i_4_fir_filter_sel_x_b(15 downto 0);

    -- leftShiftStage0Idx1Rng1_uid786_i_mul_i_i_4_fir_filter_fir_filter158_shift_x(BITSELECT,785)@1
    leftShiftStage0Idx1Rng1_uid786_i_mul_i_i_4_fir_filter_fir_filter158_shift_x_in <= i_conv_i_i_4_fir_filter_vt_join_q(30 downto 0);
    leftShiftStage0Idx1Rng1_uid786_i_mul_i_i_4_fir_filter_fir_filter158_shift_x_b <= leftShiftStage0Idx1Rng1_uid786_i_mul_i_i_4_fir_filter_fir_filter158_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid787_i_mul_i_i_4_fir_filter_fir_filter158_shift_x(BITJOIN,786)@1
    leftShiftStage0Idx1_uid787_i_mul_i_i_4_fir_filter_fir_filter158_shift_x_q <= leftShiftStage0Idx1Rng1_uid786_i_mul_i_i_4_fir_filter_fir_filter158_shift_x_b & GND_q;

    -- i_conv_i_i_4_fir_filter_sel_x(BITSELECT,121)@1
    i_conv_i_i_4_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_10_0_0_0_pop7_fir_filter_out_data_out(15 downto 0)), 32));

    -- i_conv_i_i_4_fir_filter_vt_select_15(BITSELECT,461)@1
    i_conv_i_i_4_fir_filter_vt_select_15_b <= i_conv_i_i_4_fir_filter_sel_x_b(15 downto 0);

    -- i_conv_i_i_4_fir_filter_vt_join(BITJOIN,460)@1
    i_conv_i_i_4_fir_filter_vt_join_q <= c_i16_0gr_q & i_conv_i_i_4_fir_filter_vt_select_15_b;

    -- leftShiftStage0_uid789_i_mul_i_i_4_fir_filter_fir_filter158_shift_x(MUX,788)@1
    leftShiftStage0_uid789_i_mul_i_i_4_fir_filter_fir_filter158_shift_x_s <= VCC_q;
    leftShiftStage0_uid789_i_mul_i_i_4_fir_filter_fir_filter158_shift_x_combproc: PROCESS (leftShiftStage0_uid789_i_mul_i_i_4_fir_filter_fir_filter158_shift_x_s, i_conv_i_i_4_fir_filter_vt_join_q, leftShiftStage0Idx1_uid787_i_mul_i_i_4_fir_filter_fir_filter158_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid789_i_mul_i_i_4_fir_filter_fir_filter158_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid789_i_mul_i_i_4_fir_filter_fir_filter158_shift_x_q <= i_conv_i_i_4_fir_filter_vt_join_q;
            WHEN "1" => leftShiftStage0_uid789_i_mul_i_i_4_fir_filter_fir_filter158_shift_x_q <= leftShiftStage0Idx1_uid787_i_mul_i_i_4_fir_filter_fir_filter158_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid789_i_mul_i_i_4_fir_filter_fir_filter158_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul_i_i_4_fir_filter_vt_select_16(BITSELECT,525)@1
    i_mul_i_i_4_fir_filter_vt_select_16_b <= leftShiftStage0_uid789_i_mul_i_i_4_fir_filter_fir_filter158_shift_x_q(16 downto 1);

    -- i_mul_i_i_4_fir_filter_vt_join(BITJOIN,524)@1
    i_mul_i_i_4_fir_filter_vt_join_q <= i_mul_i_i_4_fir_filter_vt_select_16_b & GND_q;

    -- i_shl_i_i_i_i_i_4_fir_filter(MULT,648)@1 + 2
    i_shl_i_i_i_i_i_4_fir_filter_a0 <= i_mul_i_i_4_fir_filter_vt_join_q;
    i_shl_i_i_i_i_i_4_fir_filter_b0 <= i_conv4_i_i_4_fir_filter_vt_select_15_b;
    i_shl_i_i_i_i_i_4_fir_filter_reset <= not (resetn);
    i_shl_i_i_i_i_i_4_fir_filter_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 16,
        lpm_widthp => 33,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => i_shl_i_i_i_i_i_4_fir_filter_a0,
        datab => i_shl_i_i_i_i_i_4_fir_filter_b0,
        clken => VCC_q(0),
        aclr => i_shl_i_i_i_i_i_4_fir_filter_reset,
        clock => clock,
        result => i_shl_i_i_i_i_i_4_fir_filter_s1
    );
    i_shl_i_i_i_i_i_4_fir_filter_q <= i_shl_i_i_i_i_i_4_fir_filter_s1;

    -- i_shl_i_i_i_i_i_4_fir_filter_extender_x(BITJOIN,210)@3
    i_shl_i_i_i_i_i_4_fir_filter_extender_x_q <= i_shl_i_i_i_i_i_10_fir_filter_multconst_x_q & i_shl_i_i_i_i_i_4_fir_filter_q;

    -- bgTrunc_i_shl_i_i_i_i_i_4_fir_filter_sel_x(BITSELECT,26)@3
    bgTrunc_i_shl_i_i_i_i_i_4_fir_filter_sel_x_b <= i_shl_i_i_i_i_i_4_fir_filter_extender_x_q(31 downto 0);

    -- i_shl_i_i_i_i_i_4_fir_filter_vt_select_31(BITSELECT,651)@3
    i_shl_i_i_i_i_i_4_fir_filter_vt_select_31_b <= bgTrunc_i_shl_i_i_i_i_i_4_fir_filter_sel_x_b(31 downto 1);

    -- i_shl_i_i_i_i_i_4_fir_filter_vt_join(BITJOIN,650)@3
    i_shl_i_i_i_i_i_4_fir_filter_vt_join_q <= i_shl_i_i_i_i_i_4_fir_filter_vt_select_31_b & GND_q;

    -- c_i16_12219(CONSTANT,262)
    c_i16_12219_q <= "0010111110111011";

    -- i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_10_0_0_0_push23_fir_filter(BLACKBOX,327)@1
    -- out out_feedback_out_23@20000000
    -- out out_feedback_valid_out_23@20000000
    thei_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_10_0_0_0_push23_fir_filter : i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_10_0_0_0_push23_fir_filter44
    PORT MAP (
        in_data_in => i_acl_144_fir_filter_q,
        in_feedback_stall_in_23 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_10_0_0_0_pop23_fir_filter_out_feedback_stall_out_23,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_23 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_10_0_0_0_push23_fir_filter_out_feedback_out_23,
        out_feedback_valid_out_23 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_10_0_0_0_push23_fir_filter_out_feedback_valid_out_23,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_10_0_0_0_pop23_fir_filter(BLACKBOX,295)@1
    -- out out_feedback_stall_out_23@20000000
    thei_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_10_0_0_0_pop23_fir_filter : i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_10_0_0_0_pop23_fir_filter42
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_23 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_10_0_0_0_push23_fir_filter_out_feedback_out_23,
        in_feedback_valid_in_23 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_10_0_0_0_push23_fir_filter_out_feedback_valid_out_23,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_10_0_0_0_pop23_fir_filter_out_data_out,
        out_feedback_stall_out_23 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_10_0_0_0_pop23_fir_filter_out_feedback_stall_out_23,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_144_fir_filter(MUX,282)@1
    i_acl_144_fir_filter_s <= i_unnamed_fir_filter19_q;
    i_acl_144_fir_filter_combproc: PROCESS (i_acl_144_fir_filter_s, i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_10_0_0_0_pop23_fir_filter_out_data_out, c_i16_12219_q)
    BEGIN
        CASE (i_acl_144_fir_filter_s) IS
            WHEN "0" => i_acl_144_fir_filter_q <= i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_10_0_0_0_pop23_fir_filter_out_data_out;
            WHEN "1" => i_acl_144_fir_filter_q <= c_i16_12219_q;
            WHEN OTHERS => i_acl_144_fir_filter_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_conv4_i_i_5_fir_filter_sel_x(BITSELECT,106)@1
    i_conv4_i_i_5_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_144_fir_filter_q(15 downto 0)), 32));

    -- i_conv4_i_i_5_fir_filter_vt_select_15(BITSELECT,401)@1
    i_conv4_i_i_5_fir_filter_vt_select_15_b <= i_conv4_i_i_5_fir_filter_sel_x_b(15 downto 0);

    -- leftShiftStage0Idx1Rng1_uid795_i_mul_i_i_5_fir_filter_fir_filter159_shift_x(BITSELECT,794)@1
    leftShiftStage0Idx1Rng1_uid795_i_mul_i_i_5_fir_filter_fir_filter159_shift_x_in <= i_conv_i_i_5_fir_filter_vt_join_q(30 downto 0);
    leftShiftStage0Idx1Rng1_uid795_i_mul_i_i_5_fir_filter_fir_filter159_shift_x_b <= leftShiftStage0Idx1Rng1_uid795_i_mul_i_i_5_fir_filter_fir_filter159_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid796_i_mul_i_i_5_fir_filter_fir_filter159_shift_x(BITJOIN,795)@1
    leftShiftStage0Idx1_uid796_i_mul_i_i_5_fir_filter_fir_filter159_shift_x_q <= leftShiftStage0Idx1Rng1_uid795_i_mul_i_i_5_fir_filter_fir_filter159_shift_x_b & GND_q;

    -- i_conv_i_i_5_fir_filter_sel_x(BITSELECT,122)@1
    i_conv_i_i_5_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_9_0_0_0_pop8_fir_filter_out_data_out(15 downto 0)), 32));

    -- i_conv_i_i_5_fir_filter_vt_select_15(BITSELECT,465)@1
    i_conv_i_i_5_fir_filter_vt_select_15_b <= i_conv_i_i_5_fir_filter_sel_x_b(15 downto 0);

    -- i_conv_i_i_5_fir_filter_vt_join(BITJOIN,464)@1
    i_conv_i_i_5_fir_filter_vt_join_q <= c_i16_0gr_q & i_conv_i_i_5_fir_filter_vt_select_15_b;

    -- leftShiftStage0_uid798_i_mul_i_i_5_fir_filter_fir_filter159_shift_x(MUX,797)@1
    leftShiftStage0_uid798_i_mul_i_i_5_fir_filter_fir_filter159_shift_x_s <= VCC_q;
    leftShiftStage0_uid798_i_mul_i_i_5_fir_filter_fir_filter159_shift_x_combproc: PROCESS (leftShiftStage0_uid798_i_mul_i_i_5_fir_filter_fir_filter159_shift_x_s, i_conv_i_i_5_fir_filter_vt_join_q, leftShiftStage0Idx1_uid796_i_mul_i_i_5_fir_filter_fir_filter159_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid798_i_mul_i_i_5_fir_filter_fir_filter159_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid798_i_mul_i_i_5_fir_filter_fir_filter159_shift_x_q <= i_conv_i_i_5_fir_filter_vt_join_q;
            WHEN "1" => leftShiftStage0_uid798_i_mul_i_i_5_fir_filter_fir_filter159_shift_x_q <= leftShiftStage0Idx1_uid796_i_mul_i_i_5_fir_filter_fir_filter159_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid798_i_mul_i_i_5_fir_filter_fir_filter159_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul_i_i_5_fir_filter_vt_select_16(BITSELECT,529)@1
    i_mul_i_i_5_fir_filter_vt_select_16_b <= leftShiftStage0_uid798_i_mul_i_i_5_fir_filter_fir_filter159_shift_x_q(16 downto 1);

    -- i_mul_i_i_5_fir_filter_vt_join(BITJOIN,528)@1
    i_mul_i_i_5_fir_filter_vt_join_q <= i_mul_i_i_5_fir_filter_vt_select_16_b & GND_q;

    -- i_shl_i_i_i_i_i_5_fir_filter(MULT,652)@1 + 2
    i_shl_i_i_i_i_i_5_fir_filter_a0 <= i_mul_i_i_5_fir_filter_vt_join_q;
    i_shl_i_i_i_i_i_5_fir_filter_b0 <= i_conv4_i_i_5_fir_filter_vt_select_15_b;
    i_shl_i_i_i_i_i_5_fir_filter_reset <= not (resetn);
    i_shl_i_i_i_i_i_5_fir_filter_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 16,
        lpm_widthp => 33,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => i_shl_i_i_i_i_i_5_fir_filter_a0,
        datab => i_shl_i_i_i_i_i_5_fir_filter_b0,
        clken => VCC_q(0),
        aclr => i_shl_i_i_i_i_i_5_fir_filter_reset,
        clock => clock,
        result => i_shl_i_i_i_i_i_5_fir_filter_s1
    );
    i_shl_i_i_i_i_i_5_fir_filter_q <= i_shl_i_i_i_i_i_5_fir_filter_s1;

    -- i_shl_i_i_i_i_i_5_fir_filter_extender_x(BITJOIN,212)@3
    i_shl_i_i_i_i_i_5_fir_filter_extender_x_q <= i_shl_i_i_i_i_i_10_fir_filter_multconst_x_q & i_shl_i_i_i_i_i_5_fir_filter_q;

    -- bgTrunc_i_shl_i_i_i_i_i_5_fir_filter_sel_x(BITSELECT,27)@3
    bgTrunc_i_shl_i_i_i_i_i_5_fir_filter_sel_x_b <= i_shl_i_i_i_i_i_5_fir_filter_extender_x_q(31 downto 0);

    -- i_shl_i_i_i_i_i_5_fir_filter_vt_select_31(BITSELECT,655)@3
    i_shl_i_i_i_i_i_5_fir_filter_vt_select_31_b <= bgTrunc_i_shl_i_i_i_i_i_5_fir_filter_sel_x_b(31 downto 1);

    -- i_shl_i_i_i_i_i_5_fir_filter_vt_join(BITJOIN,654)@3
    i_shl_i_i_i_i_i_5_fir_filter_vt_join_q <= i_shl_i_i_i_i_i_5_fir_filter_vt_select_31_b & GND_q;

    -- i_reduction_fir_filter_5_fir_filter(ADD,590)@3
    i_reduction_fir_filter_5_fir_filter_a <= STD_LOGIC_VECTOR("0" & i_shl_i_i_i_i_i_5_fir_filter_vt_join_q);
    i_reduction_fir_filter_5_fir_filter_b <= STD_LOGIC_VECTOR("0" & i_shl_i_i_i_i_i_4_fir_filter_vt_join_q);
    i_reduction_fir_filter_5_fir_filter_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_fir_filter_5_fir_filter_a) + UNSIGNED(i_reduction_fir_filter_5_fir_filter_b));
    i_reduction_fir_filter_5_fir_filter_q <= i_reduction_fir_filter_5_fir_filter_o(32 downto 0);

    -- bgTrunc_i_reduction_fir_filter_5_fir_filter_sel_x(BITSELECT,12)@3
    bgTrunc_i_reduction_fir_filter_5_fir_filter_sel_x_b <= i_reduction_fir_filter_5_fir_filter_q(31 downto 0);

    -- i_reduction_fir_filter_5_fir_filter_vt_select_31(BITSELECT,593)@3
    i_reduction_fir_filter_5_fir_filter_vt_select_31_b <= bgTrunc_i_reduction_fir_filter_5_fir_filter_sel_x_b(31 downto 1);

    -- i_reduction_fir_filter_5_fir_filter_vt_join(BITJOIN,592)@3
    i_reduction_fir_filter_5_fir_filter_vt_join_q <= i_reduction_fir_filter_5_fir_filter_vt_select_31_b & GND_q;

    -- c_i16_13115(CONSTANT,263)
    c_i16_13115_q <= "0011001100111011";

    -- i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_9_0_0_0_push24_fir_filter(BLACKBOX,341)@1
    -- out out_feedback_out_24@20000000
    -- out out_feedback_valid_out_24@20000000
    thei_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_9_0_0_0_push24_fir_filter : i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_9_0_0_0_push24_fir_filter48
    PORT MAP (
        in_data_in => i_acl_145_fir_filter_q,
        in_feedback_stall_in_24 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_9_0_0_0_pop24_fir_filter_out_feedback_stall_out_24,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_24 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_9_0_0_0_push24_fir_filter_out_feedback_out_24,
        out_feedback_valid_out_24 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_9_0_0_0_push24_fir_filter_out_feedback_valid_out_24,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_9_0_0_0_pop24_fir_filter(BLACKBOX,309)@1
    -- out out_feedback_stall_out_24@20000000
    thei_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_9_0_0_0_pop24_fir_filter : i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_9_0_0_0_pop24_fir_filter46
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_24 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_9_0_0_0_push24_fir_filter_out_feedback_out_24,
        in_feedback_valid_in_24 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_9_0_0_0_push24_fir_filter_out_feedback_valid_out_24,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_9_0_0_0_pop24_fir_filter_out_data_out,
        out_feedback_stall_out_24 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_9_0_0_0_pop24_fir_filter_out_feedback_stall_out_24,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_145_fir_filter(MUX,283)@1
    i_acl_145_fir_filter_s <= i_unnamed_fir_filter19_q;
    i_acl_145_fir_filter_combproc: PROCESS (i_acl_145_fir_filter_s, i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_9_0_0_0_pop24_fir_filter_out_data_out, c_i16_13115_q)
    BEGIN
        CASE (i_acl_145_fir_filter_s) IS
            WHEN "0" => i_acl_145_fir_filter_q <= i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_9_0_0_0_pop24_fir_filter_out_data_out;
            WHEN "1" => i_acl_145_fir_filter_q <= c_i16_13115_q;
            WHEN OTHERS => i_acl_145_fir_filter_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_conv4_i_i_6_fir_filter_sel_x(BITSELECT,107)@1
    i_conv4_i_i_6_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_145_fir_filter_q(15 downto 0)), 32));

    -- i_conv4_i_i_6_fir_filter_vt_select_15(BITSELECT,405)@1
    i_conv4_i_i_6_fir_filter_vt_select_15_b <= i_conv4_i_i_6_fir_filter_sel_x_b(15 downto 0);

    -- leftShiftStage0Idx1Rng1_uid804_i_mul_i_i_6_fir_filter_fir_filter160_shift_x(BITSELECT,803)@1
    leftShiftStage0Idx1Rng1_uid804_i_mul_i_i_6_fir_filter_fir_filter160_shift_x_in <= i_conv_i_i_6_fir_filter_vt_join_q(30 downto 0);
    leftShiftStage0Idx1Rng1_uid804_i_mul_i_i_6_fir_filter_fir_filter160_shift_x_b <= leftShiftStage0Idx1Rng1_uid804_i_mul_i_i_6_fir_filter_fir_filter160_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid805_i_mul_i_i_6_fir_filter_fir_filter160_shift_x(BITJOIN,804)@1
    leftShiftStage0Idx1_uid805_i_mul_i_i_6_fir_filter_fir_filter160_shift_x_q <= leftShiftStage0Idx1Rng1_uid804_i_mul_i_i_6_fir_filter_fir_filter160_shift_x_b & GND_q;

    -- i_conv_i_i_6_fir_filter_sel_x(BITSELECT,123)@1
    i_conv_i_i_6_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_8_0_0_0_pop9_fir_filter_out_data_out(15 downto 0)), 32));

    -- i_conv_i_i_6_fir_filter_vt_select_15(BITSELECT,469)@1
    i_conv_i_i_6_fir_filter_vt_select_15_b <= i_conv_i_i_6_fir_filter_sel_x_b(15 downto 0);

    -- i_conv_i_i_6_fir_filter_vt_join(BITJOIN,468)@1
    i_conv_i_i_6_fir_filter_vt_join_q <= c_i16_0gr_q & i_conv_i_i_6_fir_filter_vt_select_15_b;

    -- leftShiftStage0_uid807_i_mul_i_i_6_fir_filter_fir_filter160_shift_x(MUX,806)@1
    leftShiftStage0_uid807_i_mul_i_i_6_fir_filter_fir_filter160_shift_x_s <= VCC_q;
    leftShiftStage0_uid807_i_mul_i_i_6_fir_filter_fir_filter160_shift_x_combproc: PROCESS (leftShiftStage0_uid807_i_mul_i_i_6_fir_filter_fir_filter160_shift_x_s, i_conv_i_i_6_fir_filter_vt_join_q, leftShiftStage0Idx1_uid805_i_mul_i_i_6_fir_filter_fir_filter160_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid807_i_mul_i_i_6_fir_filter_fir_filter160_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid807_i_mul_i_i_6_fir_filter_fir_filter160_shift_x_q <= i_conv_i_i_6_fir_filter_vt_join_q;
            WHEN "1" => leftShiftStage0_uid807_i_mul_i_i_6_fir_filter_fir_filter160_shift_x_q <= leftShiftStage0Idx1_uid805_i_mul_i_i_6_fir_filter_fir_filter160_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid807_i_mul_i_i_6_fir_filter_fir_filter160_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul_i_i_6_fir_filter_vt_select_16(BITSELECT,533)@1
    i_mul_i_i_6_fir_filter_vt_select_16_b <= leftShiftStage0_uid807_i_mul_i_i_6_fir_filter_fir_filter160_shift_x_q(16 downto 1);

    -- i_mul_i_i_6_fir_filter_vt_join(BITJOIN,532)@1
    i_mul_i_i_6_fir_filter_vt_join_q <= i_mul_i_i_6_fir_filter_vt_select_16_b & GND_q;

    -- i_shl_i_i_i_i_i_6_fir_filter(MULT,656)@1 + 2
    i_shl_i_i_i_i_i_6_fir_filter_a0 <= i_mul_i_i_6_fir_filter_vt_join_q;
    i_shl_i_i_i_i_i_6_fir_filter_b0 <= i_conv4_i_i_6_fir_filter_vt_select_15_b;
    i_shl_i_i_i_i_i_6_fir_filter_reset <= not (resetn);
    i_shl_i_i_i_i_i_6_fir_filter_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 16,
        lpm_widthp => 33,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => i_shl_i_i_i_i_i_6_fir_filter_a0,
        datab => i_shl_i_i_i_i_i_6_fir_filter_b0,
        clken => VCC_q(0),
        aclr => i_shl_i_i_i_i_i_6_fir_filter_reset,
        clock => clock,
        result => i_shl_i_i_i_i_i_6_fir_filter_s1
    );
    i_shl_i_i_i_i_i_6_fir_filter_q <= i_shl_i_i_i_i_i_6_fir_filter_s1;

    -- i_shl_i_i_i_i_i_6_fir_filter_extender_x(BITJOIN,214)@3
    i_shl_i_i_i_i_i_6_fir_filter_extender_x_q <= i_shl_i_i_i_i_i_10_fir_filter_multconst_x_q & i_shl_i_i_i_i_i_6_fir_filter_q;

    -- bgTrunc_i_shl_i_i_i_i_i_6_fir_filter_sel_x(BITSELECT,28)@3
    bgTrunc_i_shl_i_i_i_i_i_6_fir_filter_sel_x_b <= i_shl_i_i_i_i_i_6_fir_filter_extender_x_q(31 downto 0);

    -- i_shl_i_i_i_i_i_6_fir_filter_vt_select_31(BITSELECT,659)@3
    i_shl_i_i_i_i_i_6_fir_filter_vt_select_31_b <= bgTrunc_i_shl_i_i_i_i_i_6_fir_filter_sel_x_b(31 downto 1);

    -- i_shl_i_i_i_i_i_6_fir_filter_vt_join(BITJOIN,658)@3
    i_shl_i_i_i_i_i_6_fir_filter_vt_join_q <= i_shl_i_i_i_i_i_6_fir_filter_vt_select_31_b & GND_q;

    -- c_i16_14917(CONSTANT,265)
    c_i16_14917_q <= "0011101001000101";

    -- i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_8_0_0_0_push25_fir_filter(BLACKBOX,340)@1
    -- out out_feedback_out_25@20000000
    -- out out_feedback_valid_out_25@20000000
    thei_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_8_0_0_0_push25_fir_filter : i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_8_0_0_0_push25_fir_filter52
    PORT MAP (
        in_data_in => i_acl_146_fir_filter_q,
        in_feedback_stall_in_25 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_8_0_0_0_pop25_fir_filter_out_feedback_stall_out_25,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_25 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_8_0_0_0_push25_fir_filter_out_feedback_out_25,
        out_feedback_valid_out_25 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_8_0_0_0_push25_fir_filter_out_feedback_valid_out_25,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_8_0_0_0_pop25_fir_filter(BLACKBOX,308)@1
    -- out out_feedback_stall_out_25@20000000
    thei_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_8_0_0_0_pop25_fir_filter : i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_8_0_0_0_pop25_fir_filter50
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_25 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_8_0_0_0_push25_fir_filter_out_feedback_out_25,
        in_feedback_valid_in_25 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_8_0_0_0_push25_fir_filter_out_feedback_valid_out_25,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_8_0_0_0_pop25_fir_filter_out_data_out,
        out_feedback_stall_out_25 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_8_0_0_0_pop25_fir_filter_out_feedback_stall_out_25,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_146_fir_filter(MUX,284)@1
    i_acl_146_fir_filter_s <= i_unnamed_fir_filter19_q;
    i_acl_146_fir_filter_combproc: PROCESS (i_acl_146_fir_filter_s, i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_8_0_0_0_pop25_fir_filter_out_data_out, c_i16_14917_q)
    BEGIN
        CASE (i_acl_146_fir_filter_s) IS
            WHEN "0" => i_acl_146_fir_filter_q <= i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_8_0_0_0_pop25_fir_filter_out_data_out;
            WHEN "1" => i_acl_146_fir_filter_q <= c_i16_14917_q;
            WHEN OTHERS => i_acl_146_fir_filter_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_conv4_i_i_7_fir_filter_sel_x(BITSELECT,108)@1
    i_conv4_i_i_7_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_146_fir_filter_q(15 downto 0)), 32));

    -- i_conv4_i_i_7_fir_filter_vt_select_15(BITSELECT,409)@1
    i_conv4_i_i_7_fir_filter_vt_select_15_b <= i_conv4_i_i_7_fir_filter_sel_x_b(15 downto 0);

    -- leftShiftStage0Idx1Rng1_uid813_i_mul_i_i_7_fir_filter_fir_filter161_shift_x(BITSELECT,812)@1
    leftShiftStage0Idx1Rng1_uid813_i_mul_i_i_7_fir_filter_fir_filter161_shift_x_in <= i_conv_i_i_7_fir_filter_vt_join_q(30 downto 0);
    leftShiftStage0Idx1Rng1_uid813_i_mul_i_i_7_fir_filter_fir_filter161_shift_x_b <= leftShiftStage0Idx1Rng1_uid813_i_mul_i_i_7_fir_filter_fir_filter161_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid814_i_mul_i_i_7_fir_filter_fir_filter161_shift_x(BITJOIN,813)@1
    leftShiftStage0Idx1_uid814_i_mul_i_i_7_fir_filter_fir_filter161_shift_x_q <= leftShiftStage0Idx1Rng1_uid813_i_mul_i_i_7_fir_filter_fir_filter161_shift_x_b & GND_q;

    -- i_conv_i_i_7_fir_filter_sel_x(BITSELECT,124)@1
    i_conv_i_i_7_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_7_0_0_0_pop10_fir_filter_out_data_out(15 downto 0)), 32));

    -- i_conv_i_i_7_fir_filter_vt_select_15(BITSELECT,473)@1
    i_conv_i_i_7_fir_filter_vt_select_15_b <= i_conv_i_i_7_fir_filter_sel_x_b(15 downto 0);

    -- i_conv_i_i_7_fir_filter_vt_join(BITJOIN,472)@1
    i_conv_i_i_7_fir_filter_vt_join_q <= c_i16_0gr_q & i_conv_i_i_7_fir_filter_vt_select_15_b;

    -- leftShiftStage0_uid816_i_mul_i_i_7_fir_filter_fir_filter161_shift_x(MUX,815)@1
    leftShiftStage0_uid816_i_mul_i_i_7_fir_filter_fir_filter161_shift_x_s <= VCC_q;
    leftShiftStage0_uid816_i_mul_i_i_7_fir_filter_fir_filter161_shift_x_combproc: PROCESS (leftShiftStage0_uid816_i_mul_i_i_7_fir_filter_fir_filter161_shift_x_s, i_conv_i_i_7_fir_filter_vt_join_q, leftShiftStage0Idx1_uid814_i_mul_i_i_7_fir_filter_fir_filter161_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid816_i_mul_i_i_7_fir_filter_fir_filter161_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid816_i_mul_i_i_7_fir_filter_fir_filter161_shift_x_q <= i_conv_i_i_7_fir_filter_vt_join_q;
            WHEN "1" => leftShiftStage0_uid816_i_mul_i_i_7_fir_filter_fir_filter161_shift_x_q <= leftShiftStage0Idx1_uid814_i_mul_i_i_7_fir_filter_fir_filter161_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid816_i_mul_i_i_7_fir_filter_fir_filter161_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul_i_i_7_fir_filter_vt_select_16(BITSELECT,537)@1
    i_mul_i_i_7_fir_filter_vt_select_16_b <= leftShiftStage0_uid816_i_mul_i_i_7_fir_filter_fir_filter161_shift_x_q(16 downto 1);

    -- i_mul_i_i_7_fir_filter_vt_join(BITJOIN,536)@1
    i_mul_i_i_7_fir_filter_vt_join_q <= i_mul_i_i_7_fir_filter_vt_select_16_b & GND_q;

    -- i_shl_i_i_i_i_i_7_fir_filter(MULT,660)@1 + 2
    i_shl_i_i_i_i_i_7_fir_filter_a0 <= i_mul_i_i_7_fir_filter_vt_join_q;
    i_shl_i_i_i_i_i_7_fir_filter_b0 <= i_conv4_i_i_7_fir_filter_vt_select_15_b;
    i_shl_i_i_i_i_i_7_fir_filter_reset <= not (resetn);
    i_shl_i_i_i_i_i_7_fir_filter_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 16,
        lpm_widthp => 33,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => i_shl_i_i_i_i_i_7_fir_filter_a0,
        datab => i_shl_i_i_i_i_i_7_fir_filter_b0,
        clken => VCC_q(0),
        aclr => i_shl_i_i_i_i_i_7_fir_filter_reset,
        clock => clock,
        result => i_shl_i_i_i_i_i_7_fir_filter_s1
    );
    i_shl_i_i_i_i_i_7_fir_filter_q <= i_shl_i_i_i_i_i_7_fir_filter_s1;

    -- i_shl_i_i_i_i_i_7_fir_filter_extender_x(BITJOIN,216)@3
    i_shl_i_i_i_i_i_7_fir_filter_extender_x_q <= i_shl_i_i_i_i_i_10_fir_filter_multconst_x_q & i_shl_i_i_i_i_i_7_fir_filter_q;

    -- bgTrunc_i_shl_i_i_i_i_i_7_fir_filter_sel_x(BITSELECT,29)@3
    bgTrunc_i_shl_i_i_i_i_i_7_fir_filter_sel_x_b <= i_shl_i_i_i_i_i_7_fir_filter_extender_x_q(31 downto 0);

    -- i_shl_i_i_i_i_i_7_fir_filter_vt_select_31(BITSELECT,663)@3
    i_shl_i_i_i_i_i_7_fir_filter_vt_select_31_b <= bgTrunc_i_shl_i_i_i_i_i_7_fir_filter_sel_x_b(31 downto 1);

    -- i_shl_i_i_i_i_i_7_fir_filter_vt_join(BITJOIN,662)@3
    i_shl_i_i_i_i_i_7_fir_filter_vt_join_q <= i_shl_i_i_i_i_i_7_fir_filter_vt_select_31_b & GND_q;

    -- i_reduction_fir_filter_4_fir_filter(ADD,586)@3
    i_reduction_fir_filter_4_fir_filter_a <= STD_LOGIC_VECTOR("0" & i_shl_i_i_i_i_i_7_fir_filter_vt_join_q);
    i_reduction_fir_filter_4_fir_filter_b <= STD_LOGIC_VECTOR("0" & i_shl_i_i_i_i_i_6_fir_filter_vt_join_q);
    i_reduction_fir_filter_4_fir_filter_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_fir_filter_4_fir_filter_a) + UNSIGNED(i_reduction_fir_filter_4_fir_filter_b));
    i_reduction_fir_filter_4_fir_filter_q <= i_reduction_fir_filter_4_fir_filter_o(32 downto 0);

    -- bgTrunc_i_reduction_fir_filter_4_fir_filter_sel_x(BITSELECT,11)@3
    bgTrunc_i_reduction_fir_filter_4_fir_filter_sel_x_b <= i_reduction_fir_filter_4_fir_filter_q(31 downto 0);

    -- i_reduction_fir_filter_4_fir_filter_vt_select_31(BITSELECT,589)@3
    i_reduction_fir_filter_4_fir_filter_vt_select_31_b <= bgTrunc_i_reduction_fir_filter_4_fir_filter_sel_x_b(31 downto 1);

    -- i_reduction_fir_filter_4_fir_filter_vt_join(BITJOIN,588)@3
    i_reduction_fir_filter_4_fir_filter_vt_join_q <= i_reduction_fir_filter_4_fir_filter_vt_select_31_b & GND_q;

    -- i_reduction_fir_filter_10_fir_filter(ADD,554)@3
    i_reduction_fir_filter_10_fir_filter_a <= STD_LOGIC_VECTOR("0" & i_reduction_fir_filter_4_fir_filter_vt_join_q);
    i_reduction_fir_filter_10_fir_filter_b <= STD_LOGIC_VECTOR("0" & i_reduction_fir_filter_5_fir_filter_vt_join_q);
    i_reduction_fir_filter_10_fir_filter_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_fir_filter_10_fir_filter_a) + UNSIGNED(i_reduction_fir_filter_10_fir_filter_b));
    i_reduction_fir_filter_10_fir_filter_q <= i_reduction_fir_filter_10_fir_filter_o(32 downto 0);

    -- bgTrunc_i_reduction_fir_filter_10_fir_filter_sel_x(BITSELECT,3)@3
    bgTrunc_i_reduction_fir_filter_10_fir_filter_sel_x_b <= i_reduction_fir_filter_10_fir_filter_q(31 downto 0);

    -- i_reduction_fir_filter_10_fir_filter_vt_select_31(BITSELECT,557)@3
    i_reduction_fir_filter_10_fir_filter_vt_select_31_b <= bgTrunc_i_reduction_fir_filter_10_fir_filter_sel_x_b(31 downto 1);

    -- i_reduction_fir_filter_10_fir_filter_vt_join(BITJOIN,556)@3
    i_reduction_fir_filter_10_fir_filter_vt_join_q <= i_reduction_fir_filter_10_fir_filter_vt_select_31_b & GND_q;

    -- i_reduction_fir_filter_13_fir_filter(ADD,566)@3
    i_reduction_fir_filter_13_fir_filter_a <= STD_LOGIC_VECTOR("0" & i_reduction_fir_filter_10_fir_filter_vt_join_q);
    i_reduction_fir_filter_13_fir_filter_b <= STD_LOGIC_VECTOR("0" & i_reduction_fir_filter_11_fir_filter_vt_join_q);
    i_reduction_fir_filter_13_fir_filter_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_fir_filter_13_fir_filter_a) + UNSIGNED(i_reduction_fir_filter_13_fir_filter_b));
    i_reduction_fir_filter_13_fir_filter_q <= i_reduction_fir_filter_13_fir_filter_o(32 downto 0);

    -- bgTrunc_i_reduction_fir_filter_13_fir_filter_sel_x(BITSELECT,6)@3
    bgTrunc_i_reduction_fir_filter_13_fir_filter_sel_x_b <= i_reduction_fir_filter_13_fir_filter_q(31 downto 0);

    -- i_reduction_fir_filter_13_fir_filter_vt_select_31(BITSELECT,569)@3
    i_reduction_fir_filter_13_fir_filter_vt_select_31_b <= bgTrunc_i_reduction_fir_filter_13_fir_filter_sel_x_b(31 downto 1);

    -- i_reduction_fir_filter_13_fir_filter_vt_join(BITJOIN,568)@3
    i_reduction_fir_filter_13_fir_filter_vt_join_q <= i_reduction_fir_filter_13_fir_filter_vt_select_31_b & GND_q;

    -- c_i16_353(CONSTANT,267)
    c_i16_353_q <= "0000000101100001";

    -- i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_7_0_0_0_push26_fir_filter(BLACKBOX,339)@1
    -- out out_feedback_out_26@20000000
    -- out out_feedback_valid_out_26@20000000
    thei_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_7_0_0_0_push26_fir_filter : i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_7_0_0_0_push26_fir_filter56
    PORT MAP (
        in_data_in => i_acl_147_fir_filter_q,
        in_feedback_stall_in_26 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_7_0_0_0_pop26_fir_filter_out_feedback_stall_out_26,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_26 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_7_0_0_0_push26_fir_filter_out_feedback_out_26,
        out_feedback_valid_out_26 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_7_0_0_0_push26_fir_filter_out_feedback_valid_out_26,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_7_0_0_0_pop26_fir_filter(BLACKBOX,307)@1
    -- out out_feedback_stall_out_26@20000000
    thei_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_7_0_0_0_pop26_fir_filter : i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_7_0_0_0_pop26_fir_filter54
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_26 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_7_0_0_0_push26_fir_filter_out_feedback_out_26,
        in_feedback_valid_in_26 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_7_0_0_0_push26_fir_filter_out_feedback_valid_out_26,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_7_0_0_0_pop26_fir_filter_out_data_out,
        out_feedback_stall_out_26 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_7_0_0_0_pop26_fir_filter_out_feedback_stall_out_26,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_147_fir_filter(MUX,285)@1
    i_acl_147_fir_filter_s <= i_unnamed_fir_filter19_q;
    i_acl_147_fir_filter_combproc: PROCESS (i_acl_147_fir_filter_s, i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_7_0_0_0_pop26_fir_filter_out_data_out, c_i16_353_q)
    BEGIN
        CASE (i_acl_147_fir_filter_s) IS
            WHEN "0" => i_acl_147_fir_filter_q <= i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_7_0_0_0_pop26_fir_filter_out_data_out;
            WHEN "1" => i_acl_147_fir_filter_q <= c_i16_353_q;
            WHEN OTHERS => i_acl_147_fir_filter_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_conv4_i_i_8_fir_filter_sel_x(BITSELECT,109)@1
    i_conv4_i_i_8_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_147_fir_filter_q(15 downto 0)), 32));

    -- i_conv4_i_i_8_fir_filter_vt_select_15(BITSELECT,413)@1
    i_conv4_i_i_8_fir_filter_vt_select_15_b <= i_conv4_i_i_8_fir_filter_sel_x_b(15 downto 0);

    -- leftShiftStage0Idx1Rng1_uid822_i_mul_i_i_8_fir_filter_fir_filter162_shift_x(BITSELECT,821)@1
    leftShiftStage0Idx1Rng1_uid822_i_mul_i_i_8_fir_filter_fir_filter162_shift_x_in <= i_conv_i_i_8_fir_filter_vt_join_q(30 downto 0);
    leftShiftStage0Idx1Rng1_uid822_i_mul_i_i_8_fir_filter_fir_filter162_shift_x_b <= leftShiftStage0Idx1Rng1_uid822_i_mul_i_i_8_fir_filter_fir_filter162_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid823_i_mul_i_i_8_fir_filter_fir_filter162_shift_x(BITJOIN,822)@1
    leftShiftStage0Idx1_uid823_i_mul_i_i_8_fir_filter_fir_filter162_shift_x_q <= leftShiftStage0Idx1Rng1_uid822_i_mul_i_i_8_fir_filter_fir_filter162_shift_x_b & GND_q;

    -- i_conv_i_i_8_fir_filter_sel_x(BITSELECT,125)@1
    i_conv_i_i_8_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_6_0_0_0_pop11_fir_filter_out_data_out(15 downto 0)), 32));

    -- i_conv_i_i_8_fir_filter_vt_select_15(BITSELECT,477)@1
    i_conv_i_i_8_fir_filter_vt_select_15_b <= i_conv_i_i_8_fir_filter_sel_x_b(15 downto 0);

    -- i_conv_i_i_8_fir_filter_vt_join(BITJOIN,476)@1
    i_conv_i_i_8_fir_filter_vt_join_q <= c_i16_0gr_q & i_conv_i_i_8_fir_filter_vt_select_15_b;

    -- leftShiftStage0_uid825_i_mul_i_i_8_fir_filter_fir_filter162_shift_x(MUX,824)@1
    leftShiftStage0_uid825_i_mul_i_i_8_fir_filter_fir_filter162_shift_x_s <= VCC_q;
    leftShiftStage0_uid825_i_mul_i_i_8_fir_filter_fir_filter162_shift_x_combproc: PROCESS (leftShiftStage0_uid825_i_mul_i_i_8_fir_filter_fir_filter162_shift_x_s, i_conv_i_i_8_fir_filter_vt_join_q, leftShiftStage0Idx1_uid823_i_mul_i_i_8_fir_filter_fir_filter162_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid825_i_mul_i_i_8_fir_filter_fir_filter162_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid825_i_mul_i_i_8_fir_filter_fir_filter162_shift_x_q <= i_conv_i_i_8_fir_filter_vt_join_q;
            WHEN "1" => leftShiftStage0_uid825_i_mul_i_i_8_fir_filter_fir_filter162_shift_x_q <= leftShiftStage0Idx1_uid823_i_mul_i_i_8_fir_filter_fir_filter162_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid825_i_mul_i_i_8_fir_filter_fir_filter162_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul_i_i_8_fir_filter_vt_select_16(BITSELECT,541)@1
    i_mul_i_i_8_fir_filter_vt_select_16_b <= leftShiftStage0_uid825_i_mul_i_i_8_fir_filter_fir_filter162_shift_x_q(16 downto 1);

    -- i_mul_i_i_8_fir_filter_vt_join(BITJOIN,540)@1
    i_mul_i_i_8_fir_filter_vt_join_q <= i_mul_i_i_8_fir_filter_vt_select_16_b & GND_q;

    -- i_shl_i_i_i_i_i_8_fir_filter(MULT,664)@1 + 2
    i_shl_i_i_i_i_i_8_fir_filter_a0 <= i_mul_i_i_8_fir_filter_vt_join_q;
    i_shl_i_i_i_i_i_8_fir_filter_b0 <= i_conv4_i_i_8_fir_filter_vt_select_15_b;
    i_shl_i_i_i_i_i_8_fir_filter_reset <= not (resetn);
    i_shl_i_i_i_i_i_8_fir_filter_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 16,
        lpm_widthp => 33,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => i_shl_i_i_i_i_i_8_fir_filter_a0,
        datab => i_shl_i_i_i_i_i_8_fir_filter_b0,
        clken => VCC_q(0),
        aclr => i_shl_i_i_i_i_i_8_fir_filter_reset,
        clock => clock,
        result => i_shl_i_i_i_i_i_8_fir_filter_s1
    );
    i_shl_i_i_i_i_i_8_fir_filter_q <= i_shl_i_i_i_i_i_8_fir_filter_s1;

    -- i_shl_i_i_i_i_i_8_fir_filter_extender_x(BITJOIN,218)@3
    i_shl_i_i_i_i_i_8_fir_filter_extender_x_q <= i_shl_i_i_i_i_i_10_fir_filter_multconst_x_q & i_shl_i_i_i_i_i_8_fir_filter_q;

    -- bgTrunc_i_shl_i_i_i_i_i_8_fir_filter_sel_x(BITSELECT,30)@3
    bgTrunc_i_shl_i_i_i_i_i_8_fir_filter_sel_x_b <= i_shl_i_i_i_i_i_8_fir_filter_extender_x_q(31 downto 0);

    -- i_shl_i_i_i_i_i_8_fir_filter_vt_select_31(BITSELECT,667)@3
    i_shl_i_i_i_i_i_8_fir_filter_vt_select_31_b <= bgTrunc_i_shl_i_i_i_i_i_8_fir_filter_sel_x_b(31 downto 1);

    -- i_shl_i_i_i_i_i_8_fir_filter_vt_join(BITJOIN,666)@3
    i_shl_i_i_i_i_i_8_fir_filter_vt_join_q <= i_shl_i_i_i_i_i_8_fir_filter_vt_select_31_b & GND_q;

    -- c_i16_10277(CONSTANT,259)
    c_i16_10277_q <= "0010100000100101";

    -- i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_6_0_0_0_push27_fir_filter(BLACKBOX,338)@1
    -- out out_feedback_out_27@20000000
    -- out out_feedback_valid_out_27@20000000
    thei_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_6_0_0_0_push27_fir_filter : i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_6_0_0_0_push27_fir_filter60
    PORT MAP (
        in_data_in => i_acl_148_fir_filter_q,
        in_feedback_stall_in_27 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_6_0_0_0_pop27_fir_filter_out_feedback_stall_out_27,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_27 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_6_0_0_0_push27_fir_filter_out_feedback_out_27,
        out_feedback_valid_out_27 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_6_0_0_0_push27_fir_filter_out_feedback_valid_out_27,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_6_0_0_0_pop27_fir_filter(BLACKBOX,306)@1
    -- out out_feedback_stall_out_27@20000000
    thei_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_6_0_0_0_pop27_fir_filter : i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_6_0_0_0_pop27_fir_filter58
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_27 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_6_0_0_0_push27_fir_filter_out_feedback_out_27,
        in_feedback_valid_in_27 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_6_0_0_0_push27_fir_filter_out_feedback_valid_out_27,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_6_0_0_0_pop27_fir_filter_out_data_out,
        out_feedback_stall_out_27 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_6_0_0_0_pop27_fir_filter_out_feedback_stall_out_27,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_148_fir_filter(MUX,286)@1
    i_acl_148_fir_filter_s <= i_unnamed_fir_filter19_q;
    i_acl_148_fir_filter_combproc: PROCESS (i_acl_148_fir_filter_s, i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_6_0_0_0_pop27_fir_filter_out_data_out, c_i16_10277_q)
    BEGIN
        CASE (i_acl_148_fir_filter_s) IS
            WHEN "0" => i_acl_148_fir_filter_q <= i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_6_0_0_0_pop27_fir_filter_out_data_out;
            WHEN "1" => i_acl_148_fir_filter_q <= c_i16_10277_q;
            WHEN OTHERS => i_acl_148_fir_filter_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_conv4_i_i_9_fir_filter_sel_x(BITSELECT,110)@1
    i_conv4_i_i_9_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_148_fir_filter_q(15 downto 0)), 32));

    -- i_conv4_i_i_9_fir_filter_vt_select_15(BITSELECT,417)@1
    i_conv4_i_i_9_fir_filter_vt_select_15_b <= i_conv4_i_i_9_fir_filter_sel_x_b(15 downto 0);

    -- leftShiftStage0Idx1Rng1_uid831_i_mul_i_i_9_fir_filter_fir_filter163_shift_x(BITSELECT,830)@1
    leftShiftStage0Idx1Rng1_uid831_i_mul_i_i_9_fir_filter_fir_filter163_shift_x_in <= i_conv_i_i_9_fir_filter_vt_join_q(30 downto 0);
    leftShiftStage0Idx1Rng1_uid831_i_mul_i_i_9_fir_filter_fir_filter163_shift_x_b <= leftShiftStage0Idx1Rng1_uid831_i_mul_i_i_9_fir_filter_fir_filter163_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid832_i_mul_i_i_9_fir_filter_fir_filter163_shift_x(BITJOIN,831)@1
    leftShiftStage0Idx1_uid832_i_mul_i_i_9_fir_filter_fir_filter163_shift_x_q <= leftShiftStage0Idx1Rng1_uid831_i_mul_i_i_9_fir_filter_fir_filter163_shift_x_b & GND_q;

    -- i_conv_i_i_9_fir_filter_sel_x(BITSELECT,126)@1
    i_conv_i_i_9_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_5_0_0_0_pop12_fir_filter_out_data_out(15 downto 0)), 32));

    -- i_conv_i_i_9_fir_filter_vt_select_15(BITSELECT,481)@1
    i_conv_i_i_9_fir_filter_vt_select_15_b <= i_conv_i_i_9_fir_filter_sel_x_b(15 downto 0);

    -- i_conv_i_i_9_fir_filter_vt_join(BITJOIN,480)@1
    i_conv_i_i_9_fir_filter_vt_join_q <= c_i16_0gr_q & i_conv_i_i_9_fir_filter_vt_select_15_b;

    -- leftShiftStage0_uid834_i_mul_i_i_9_fir_filter_fir_filter163_shift_x(MUX,833)@1
    leftShiftStage0_uid834_i_mul_i_i_9_fir_filter_fir_filter163_shift_x_s <= VCC_q;
    leftShiftStage0_uid834_i_mul_i_i_9_fir_filter_fir_filter163_shift_x_combproc: PROCESS (leftShiftStage0_uid834_i_mul_i_i_9_fir_filter_fir_filter163_shift_x_s, i_conv_i_i_9_fir_filter_vt_join_q, leftShiftStage0Idx1_uid832_i_mul_i_i_9_fir_filter_fir_filter163_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid834_i_mul_i_i_9_fir_filter_fir_filter163_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid834_i_mul_i_i_9_fir_filter_fir_filter163_shift_x_q <= i_conv_i_i_9_fir_filter_vt_join_q;
            WHEN "1" => leftShiftStage0_uid834_i_mul_i_i_9_fir_filter_fir_filter163_shift_x_q <= leftShiftStage0Idx1_uid832_i_mul_i_i_9_fir_filter_fir_filter163_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid834_i_mul_i_i_9_fir_filter_fir_filter163_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul_i_i_9_fir_filter_vt_select_16(BITSELECT,545)@1
    i_mul_i_i_9_fir_filter_vt_select_16_b <= leftShiftStage0_uid834_i_mul_i_i_9_fir_filter_fir_filter163_shift_x_q(16 downto 1);

    -- i_mul_i_i_9_fir_filter_vt_join(BITJOIN,544)@1
    i_mul_i_i_9_fir_filter_vt_join_q <= i_mul_i_i_9_fir_filter_vt_select_16_b & GND_q;

    -- i_shl_i_i_i_i_i_9_fir_filter(MULT,668)@1 + 2
    i_shl_i_i_i_i_i_9_fir_filter_a0 <= i_mul_i_i_9_fir_filter_vt_join_q;
    i_shl_i_i_i_i_i_9_fir_filter_b0 <= i_conv4_i_i_9_fir_filter_vt_select_15_b;
    i_shl_i_i_i_i_i_9_fir_filter_reset <= not (resetn);
    i_shl_i_i_i_i_i_9_fir_filter_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 16,
        lpm_widthp => 33,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => i_shl_i_i_i_i_i_9_fir_filter_a0,
        datab => i_shl_i_i_i_i_i_9_fir_filter_b0,
        clken => VCC_q(0),
        aclr => i_shl_i_i_i_i_i_9_fir_filter_reset,
        clock => clock,
        result => i_shl_i_i_i_i_i_9_fir_filter_s1
    );
    i_shl_i_i_i_i_i_9_fir_filter_q <= i_shl_i_i_i_i_i_9_fir_filter_s1;

    -- i_shl_i_i_i_i_i_9_fir_filter_extender_x(BITJOIN,220)@3
    i_shl_i_i_i_i_i_9_fir_filter_extender_x_q <= i_shl_i_i_i_i_i_10_fir_filter_multconst_x_q & i_shl_i_i_i_i_i_9_fir_filter_q;

    -- bgTrunc_i_shl_i_i_i_i_i_9_fir_filter_sel_x(BITSELECT,31)@3
    bgTrunc_i_shl_i_i_i_i_i_9_fir_filter_sel_x_b <= i_shl_i_i_i_i_i_9_fir_filter_extender_x_q(31 downto 0);

    -- i_shl_i_i_i_i_i_9_fir_filter_vt_select_31(BITSELECT,671)@3
    i_shl_i_i_i_i_i_9_fir_filter_vt_select_31_b <= bgTrunc_i_shl_i_i_i_i_i_9_fir_filter_sel_x_b(31 downto 1);

    -- i_shl_i_i_i_i_i_9_fir_filter_vt_join(BITJOIN,670)@3
    i_shl_i_i_i_i_i_9_fir_filter_vt_join_q <= i_shl_i_i_i_i_i_9_fir_filter_vt_select_31_b & GND_q;

    -- i_reduction_fir_filter_3_fir_filter(ADD,582)@3
    i_reduction_fir_filter_3_fir_filter_a <= STD_LOGIC_VECTOR("0" & i_shl_i_i_i_i_i_9_fir_filter_vt_join_q);
    i_reduction_fir_filter_3_fir_filter_b <= STD_LOGIC_VECTOR("0" & i_shl_i_i_i_i_i_8_fir_filter_vt_join_q);
    i_reduction_fir_filter_3_fir_filter_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_fir_filter_3_fir_filter_a) + UNSIGNED(i_reduction_fir_filter_3_fir_filter_b));
    i_reduction_fir_filter_3_fir_filter_q <= i_reduction_fir_filter_3_fir_filter_o(32 downto 0);

    -- bgTrunc_i_reduction_fir_filter_3_fir_filter_sel_x(BITSELECT,10)@3
    bgTrunc_i_reduction_fir_filter_3_fir_filter_sel_x_b <= i_reduction_fir_filter_3_fir_filter_q(31 downto 0);

    -- i_reduction_fir_filter_3_fir_filter_vt_select_31(BITSELECT,585)@3
    i_reduction_fir_filter_3_fir_filter_vt_select_31_b <= bgTrunc_i_reduction_fir_filter_3_fir_filter_sel_x_b(31 downto 1);

    -- i_reduction_fir_filter_3_fir_filter_vt_join(BITJOIN,584)@3
    i_reduction_fir_filter_3_fir_filter_vt_join_q <= i_reduction_fir_filter_3_fir_filter_vt_select_31_b & GND_q;

    -- c_i16_6288(CONSTANT,270)
    c_i16_6288_q <= "0001100010010000";

    -- i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_5_0_0_0_push28_fir_filter(BLACKBOX,337)@1
    -- out out_feedback_out_28@20000000
    -- out out_feedback_valid_out_28@20000000
    thei_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_5_0_0_0_push28_fir_filter : i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_5_0_0_0_push28_fir_filter64
    PORT MAP (
        in_data_in => i_acl_149_fir_filter_q,
        in_feedback_stall_in_28 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_5_0_0_0_pop28_fir_filter_out_feedback_stall_out_28,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_28 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_5_0_0_0_push28_fir_filter_out_feedback_out_28,
        out_feedback_valid_out_28 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_5_0_0_0_push28_fir_filter_out_feedback_valid_out_28,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_5_0_0_0_pop28_fir_filter(BLACKBOX,305)@1
    -- out out_feedback_stall_out_28@20000000
    thei_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_5_0_0_0_pop28_fir_filter : i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_5_0_0_0_pop28_fir_filter62
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_28 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_5_0_0_0_push28_fir_filter_out_feedback_out_28,
        in_feedback_valid_in_28 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_5_0_0_0_push28_fir_filter_out_feedback_valid_out_28,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_5_0_0_0_pop28_fir_filter_out_data_out,
        out_feedback_stall_out_28 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_5_0_0_0_pop28_fir_filter_out_feedback_stall_out_28,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_149_fir_filter(MUX,287)@1
    i_acl_149_fir_filter_s <= i_unnamed_fir_filter19_q;
    i_acl_149_fir_filter_combproc: PROCESS (i_acl_149_fir_filter_s, i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_5_0_0_0_pop28_fir_filter_out_data_out, c_i16_6288_q)
    BEGIN
        CASE (i_acl_149_fir_filter_s) IS
            WHEN "0" => i_acl_149_fir_filter_q <= i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_5_0_0_0_pop28_fir_filter_out_data_out;
            WHEN "1" => i_acl_149_fir_filter_q <= c_i16_6288_q;
            WHEN OTHERS => i_acl_149_fir_filter_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_conv4_i_i_10_fir_filter_sel_x(BITSELECT,96)@1
    i_conv4_i_i_10_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_149_fir_filter_q(15 downto 0)), 32));

    -- i_conv4_i_i_10_fir_filter_vt_select_15(BITSELECT,361)@1
    i_conv4_i_i_10_fir_filter_vt_select_15_b <= i_conv4_i_i_10_fir_filter_sel_x_b(15 downto 0);

    -- leftShiftStage0Idx1Rng1_uid705_i_mul_i_i_10_fir_filter_fir_filter164_shift_x(BITSELECT,704)@1
    leftShiftStage0Idx1Rng1_uid705_i_mul_i_i_10_fir_filter_fir_filter164_shift_x_in <= i_conv_i_i_10_fir_filter_vt_join_q(30 downto 0);
    leftShiftStage0Idx1Rng1_uid705_i_mul_i_i_10_fir_filter_fir_filter164_shift_x_b <= leftShiftStage0Idx1Rng1_uid705_i_mul_i_i_10_fir_filter_fir_filter164_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid706_i_mul_i_i_10_fir_filter_fir_filter164_shift_x(BITJOIN,705)@1
    leftShiftStage0Idx1_uid706_i_mul_i_i_10_fir_filter_fir_filter164_shift_x_q <= leftShiftStage0Idx1Rng1_uid705_i_mul_i_i_10_fir_filter_fir_filter164_shift_x_b & GND_q;

    -- i_conv_i_i_10_fir_filter_sel_x(BITSELECT,112)@1
    i_conv_i_i_10_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_4_0_0_0_pop13_fir_filter_out_data_out(15 downto 0)), 32));

    -- i_conv_i_i_10_fir_filter_vt_select_15(BITSELECT,425)@1
    i_conv_i_i_10_fir_filter_vt_select_15_b <= i_conv_i_i_10_fir_filter_sel_x_b(15 downto 0);

    -- i_conv_i_i_10_fir_filter_vt_join(BITJOIN,424)@1
    i_conv_i_i_10_fir_filter_vt_join_q <= c_i16_0gr_q & i_conv_i_i_10_fir_filter_vt_select_15_b;

    -- leftShiftStage0_uid708_i_mul_i_i_10_fir_filter_fir_filter164_shift_x(MUX,707)@1
    leftShiftStage0_uid708_i_mul_i_i_10_fir_filter_fir_filter164_shift_x_s <= VCC_q;
    leftShiftStage0_uid708_i_mul_i_i_10_fir_filter_fir_filter164_shift_x_combproc: PROCESS (leftShiftStage0_uid708_i_mul_i_i_10_fir_filter_fir_filter164_shift_x_s, i_conv_i_i_10_fir_filter_vt_join_q, leftShiftStage0Idx1_uid706_i_mul_i_i_10_fir_filter_fir_filter164_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid708_i_mul_i_i_10_fir_filter_fir_filter164_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid708_i_mul_i_i_10_fir_filter_fir_filter164_shift_x_q <= i_conv_i_i_10_fir_filter_vt_join_q;
            WHEN "1" => leftShiftStage0_uid708_i_mul_i_i_10_fir_filter_fir_filter164_shift_x_q <= leftShiftStage0Idx1_uid706_i_mul_i_i_10_fir_filter_fir_filter164_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid708_i_mul_i_i_10_fir_filter_fir_filter164_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul_i_i_10_fir_filter_vt_select_16(BITSELECT,489)@1
    i_mul_i_i_10_fir_filter_vt_select_16_b <= leftShiftStage0_uid708_i_mul_i_i_10_fir_filter_fir_filter164_shift_x_q(16 downto 1);

    -- i_mul_i_i_10_fir_filter_vt_join(BITJOIN,488)@1
    i_mul_i_i_10_fir_filter_vt_join_q <= i_mul_i_i_10_fir_filter_vt_select_16_b & GND_q;

    -- i_shl_i_i_i_i_i_10_fir_filter(MULT,612)@1 + 2
    i_shl_i_i_i_i_i_10_fir_filter_a0 <= i_mul_i_i_10_fir_filter_vt_join_q;
    i_shl_i_i_i_i_i_10_fir_filter_b0 <= i_conv4_i_i_10_fir_filter_vt_select_15_b;
    i_shl_i_i_i_i_i_10_fir_filter_reset <= not (resetn);
    i_shl_i_i_i_i_i_10_fir_filter_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 16,
        lpm_widthp => 33,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => i_shl_i_i_i_i_i_10_fir_filter_a0,
        datab => i_shl_i_i_i_i_i_10_fir_filter_b0,
        clken => VCC_q(0),
        aclr => i_shl_i_i_i_i_i_10_fir_filter_reset,
        clock => clock,
        result => i_shl_i_i_i_i_i_10_fir_filter_s1
    );
    i_shl_i_i_i_i_i_10_fir_filter_q <= i_shl_i_i_i_i_i_10_fir_filter_s1;

    -- i_shl_i_i_i_i_i_10_fir_filter_extender_x(BITJOIN,192)@3
    i_shl_i_i_i_i_i_10_fir_filter_extender_x_q <= i_shl_i_i_i_i_i_10_fir_filter_multconst_x_q & i_shl_i_i_i_i_i_10_fir_filter_q;

    -- bgTrunc_i_shl_i_i_i_i_i_10_fir_filter_sel_x(BITSELECT,17)@3
    bgTrunc_i_shl_i_i_i_i_i_10_fir_filter_sel_x_b <= i_shl_i_i_i_i_i_10_fir_filter_extender_x_q(31 downto 0);

    -- i_shl_i_i_i_i_i_10_fir_filter_vt_select_31(BITSELECT,615)@3
    i_shl_i_i_i_i_i_10_fir_filter_vt_select_31_b <= bgTrunc_i_shl_i_i_i_i_i_10_fir_filter_sel_x_b(31 downto 1);

    -- i_shl_i_i_i_i_i_10_fir_filter_vt_join(BITJOIN,614)@3
    i_shl_i_i_i_i_i_10_fir_filter_vt_join_q <= i_shl_i_i_i_i_i_10_fir_filter_vt_select_31_b & GND_q;

    -- c_i16_10821(CONSTANT,260)
    c_i16_10821_q <= "0010101001000101";

    -- i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_4_0_0_0_push29_fir_filter(BLACKBOX,336)@1
    -- out out_feedback_out_29@20000000
    -- out out_feedback_valid_out_29@20000000
    thei_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_4_0_0_0_push29_fir_filter : i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_4_0_0_0_push29_fir_filter68
    PORT MAP (
        in_data_in => i_acl_150_fir_filter_q,
        in_feedback_stall_in_29 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_4_0_0_0_pop29_fir_filter_out_feedback_stall_out_29,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_29 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_4_0_0_0_push29_fir_filter_out_feedback_out_29,
        out_feedback_valid_out_29 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_4_0_0_0_push29_fir_filter_out_feedback_valid_out_29,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_4_0_0_0_pop29_fir_filter(BLACKBOX,304)@1
    -- out out_feedback_stall_out_29@20000000
    thei_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_4_0_0_0_pop29_fir_filter : i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_4_0_0_0_pop29_fir_filter66
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_29 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_4_0_0_0_push29_fir_filter_out_feedback_out_29,
        in_feedback_valid_in_29 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_4_0_0_0_push29_fir_filter_out_feedback_valid_out_29,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_4_0_0_0_pop29_fir_filter_out_data_out,
        out_feedback_stall_out_29 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_4_0_0_0_pop29_fir_filter_out_feedback_stall_out_29,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_150_fir_filter(MUX,288)@1
    i_acl_150_fir_filter_s <= i_unnamed_fir_filter19_q;
    i_acl_150_fir_filter_combproc: PROCESS (i_acl_150_fir_filter_s, i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_4_0_0_0_pop29_fir_filter_out_data_out, c_i16_10821_q)
    BEGIN
        CASE (i_acl_150_fir_filter_s) IS
            WHEN "0" => i_acl_150_fir_filter_q <= i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_4_0_0_0_pop29_fir_filter_out_data_out;
            WHEN "1" => i_acl_150_fir_filter_q <= c_i16_10821_q;
            WHEN OTHERS => i_acl_150_fir_filter_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_conv4_i_i_11_fir_filter_sel_x(BITSELECT,97)@1
    i_conv4_i_i_11_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_150_fir_filter_q(15 downto 0)), 32));

    -- i_conv4_i_i_11_fir_filter_vt_select_15(BITSELECT,365)@1
    i_conv4_i_i_11_fir_filter_vt_select_15_b <= i_conv4_i_i_11_fir_filter_sel_x_b(15 downto 0);

    -- leftShiftStage0Idx1Rng1_uid714_i_mul_i_i_11_fir_filter_fir_filter165_shift_x(BITSELECT,713)@1
    leftShiftStage0Idx1Rng1_uid714_i_mul_i_i_11_fir_filter_fir_filter165_shift_x_in <= i_conv_i_i_11_fir_filter_vt_join_q(30 downto 0);
    leftShiftStage0Idx1Rng1_uid714_i_mul_i_i_11_fir_filter_fir_filter165_shift_x_b <= leftShiftStage0Idx1Rng1_uid714_i_mul_i_i_11_fir_filter_fir_filter165_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid715_i_mul_i_i_11_fir_filter_fir_filter165_shift_x(BITJOIN,714)@1
    leftShiftStage0Idx1_uid715_i_mul_i_i_11_fir_filter_fir_filter165_shift_x_q <= leftShiftStage0Idx1Rng1_uid714_i_mul_i_i_11_fir_filter_fir_filter165_shift_x_b & GND_q;

    -- i_conv_i_i_11_fir_filter_sel_x(BITSELECT,113)@1
    i_conv_i_i_11_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_3_0_0_0_pop14_fir_filter_out_data_out(15 downto 0)), 32));

    -- i_conv_i_i_11_fir_filter_vt_select_15(BITSELECT,429)@1
    i_conv_i_i_11_fir_filter_vt_select_15_b <= i_conv_i_i_11_fir_filter_sel_x_b(15 downto 0);

    -- i_conv_i_i_11_fir_filter_vt_join(BITJOIN,428)@1
    i_conv_i_i_11_fir_filter_vt_join_q <= c_i16_0gr_q & i_conv_i_i_11_fir_filter_vt_select_15_b;

    -- leftShiftStage0_uid717_i_mul_i_i_11_fir_filter_fir_filter165_shift_x(MUX,716)@1
    leftShiftStage0_uid717_i_mul_i_i_11_fir_filter_fir_filter165_shift_x_s <= VCC_q;
    leftShiftStage0_uid717_i_mul_i_i_11_fir_filter_fir_filter165_shift_x_combproc: PROCESS (leftShiftStage0_uid717_i_mul_i_i_11_fir_filter_fir_filter165_shift_x_s, i_conv_i_i_11_fir_filter_vt_join_q, leftShiftStage0Idx1_uid715_i_mul_i_i_11_fir_filter_fir_filter165_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid717_i_mul_i_i_11_fir_filter_fir_filter165_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid717_i_mul_i_i_11_fir_filter_fir_filter165_shift_x_q <= i_conv_i_i_11_fir_filter_vt_join_q;
            WHEN "1" => leftShiftStage0_uid717_i_mul_i_i_11_fir_filter_fir_filter165_shift_x_q <= leftShiftStage0Idx1_uid715_i_mul_i_i_11_fir_filter_fir_filter165_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid717_i_mul_i_i_11_fir_filter_fir_filter165_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul_i_i_11_fir_filter_vt_select_16(BITSELECT,493)@1
    i_mul_i_i_11_fir_filter_vt_select_16_b <= leftShiftStage0_uid717_i_mul_i_i_11_fir_filter_fir_filter165_shift_x_q(16 downto 1);

    -- i_mul_i_i_11_fir_filter_vt_join(BITJOIN,492)@1
    i_mul_i_i_11_fir_filter_vt_join_q <= i_mul_i_i_11_fir_filter_vt_select_16_b & GND_q;

    -- i_shl_i_i_i_i_i_11_fir_filter(MULT,616)@1 + 2
    i_shl_i_i_i_i_i_11_fir_filter_a0 <= i_mul_i_i_11_fir_filter_vt_join_q;
    i_shl_i_i_i_i_i_11_fir_filter_b0 <= i_conv4_i_i_11_fir_filter_vt_select_15_b;
    i_shl_i_i_i_i_i_11_fir_filter_reset <= not (resetn);
    i_shl_i_i_i_i_i_11_fir_filter_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 16,
        lpm_widthp => 33,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => i_shl_i_i_i_i_i_11_fir_filter_a0,
        datab => i_shl_i_i_i_i_i_11_fir_filter_b0,
        clken => VCC_q(0),
        aclr => i_shl_i_i_i_i_i_11_fir_filter_reset,
        clock => clock,
        result => i_shl_i_i_i_i_i_11_fir_filter_s1
    );
    i_shl_i_i_i_i_i_11_fir_filter_q <= i_shl_i_i_i_i_i_11_fir_filter_s1;

    -- i_shl_i_i_i_i_i_11_fir_filter_extender_x(BITJOIN,194)@3
    i_shl_i_i_i_i_i_11_fir_filter_extender_x_q <= i_shl_i_i_i_i_i_10_fir_filter_multconst_x_q & i_shl_i_i_i_i_i_11_fir_filter_q;

    -- bgTrunc_i_shl_i_i_i_i_i_11_fir_filter_sel_x(BITSELECT,18)@3
    bgTrunc_i_shl_i_i_i_i_i_11_fir_filter_sel_x_b <= i_shl_i_i_i_i_i_11_fir_filter_extender_x_q(31 downto 0);

    -- i_shl_i_i_i_i_i_11_fir_filter_vt_select_31(BITSELECT,619)@3
    i_shl_i_i_i_i_i_11_fir_filter_vt_select_31_b <= bgTrunc_i_shl_i_i_i_i_i_11_fir_filter_sel_x_b(31 downto 1);

    -- i_shl_i_i_i_i_i_11_fir_filter_vt_join(BITJOIN,618)@3
    i_shl_i_i_i_i_i_11_fir_filter_vt_join_q <= i_shl_i_i_i_i_i_11_fir_filter_vt_select_31_b & GND_q;

    -- i_reduction_fir_filter_2_fir_filter(ADD,578)@3
    i_reduction_fir_filter_2_fir_filter_a <= STD_LOGIC_VECTOR("0" & i_shl_i_i_i_i_i_11_fir_filter_vt_join_q);
    i_reduction_fir_filter_2_fir_filter_b <= STD_LOGIC_VECTOR("0" & i_shl_i_i_i_i_i_10_fir_filter_vt_join_q);
    i_reduction_fir_filter_2_fir_filter_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_fir_filter_2_fir_filter_a) + UNSIGNED(i_reduction_fir_filter_2_fir_filter_b));
    i_reduction_fir_filter_2_fir_filter_q <= i_reduction_fir_filter_2_fir_filter_o(32 downto 0);

    -- bgTrunc_i_reduction_fir_filter_2_fir_filter_sel_x(BITSELECT,9)@3
    bgTrunc_i_reduction_fir_filter_2_fir_filter_sel_x_b <= i_reduction_fir_filter_2_fir_filter_q(31 downto 0);

    -- i_reduction_fir_filter_2_fir_filter_vt_select_31(BITSELECT,581)@3
    i_reduction_fir_filter_2_fir_filter_vt_select_31_b <= bgTrunc_i_reduction_fir_filter_2_fir_filter_sel_x_b(31 downto 1);

    -- i_reduction_fir_filter_2_fir_filter_vt_join(BITJOIN,580)@3
    i_reduction_fir_filter_2_fir_filter_vt_join_q <= i_reduction_fir_filter_2_fir_filter_vt_select_31_b & GND_q;

    -- i_reduction_fir_filter_9_fir_filter(ADD,606)@3
    i_reduction_fir_filter_9_fir_filter_a <= STD_LOGIC_VECTOR("0" & i_reduction_fir_filter_2_fir_filter_vt_join_q);
    i_reduction_fir_filter_9_fir_filter_b <= STD_LOGIC_VECTOR("0" & i_reduction_fir_filter_3_fir_filter_vt_join_q);
    i_reduction_fir_filter_9_fir_filter_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_fir_filter_9_fir_filter_a) + UNSIGNED(i_reduction_fir_filter_9_fir_filter_b));
    i_reduction_fir_filter_9_fir_filter_q <= i_reduction_fir_filter_9_fir_filter_o(32 downto 0);

    -- bgTrunc_i_reduction_fir_filter_9_fir_filter_sel_x(BITSELECT,16)@3
    bgTrunc_i_reduction_fir_filter_9_fir_filter_sel_x_b <= i_reduction_fir_filter_9_fir_filter_q(31 downto 0);

    -- i_reduction_fir_filter_9_fir_filter_vt_select_31(BITSELECT,609)@3
    i_reduction_fir_filter_9_fir_filter_vt_select_31_b <= bgTrunc_i_reduction_fir_filter_9_fir_filter_sel_x_b(31 downto 1);

    -- i_reduction_fir_filter_9_fir_filter_vt_join(BITJOIN,608)@3
    i_reduction_fir_filter_9_fir_filter_vt_join_q <= i_reduction_fir_filter_9_fir_filter_vt_select_31_b & GND_q;

    -- c_i16_5691(CONSTANT,268)
    c_i16_5691_q <= "0001011000111011";

    -- i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_3_0_0_0_push30_fir_filter(BLACKBOX,335)@1
    -- out out_feedback_out_30@20000000
    -- out out_feedback_valid_out_30@20000000
    thei_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_3_0_0_0_push30_fir_filter : i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_3_0_0_0_push30_fir_filter72
    PORT MAP (
        in_data_in => i_acl_151_fir_filter_q,
        in_feedback_stall_in_30 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_3_0_0_0_pop30_fir_filter_out_feedback_stall_out_30,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_30 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_3_0_0_0_push30_fir_filter_out_feedback_out_30,
        out_feedback_valid_out_30 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_3_0_0_0_push30_fir_filter_out_feedback_valid_out_30,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_3_0_0_0_pop30_fir_filter(BLACKBOX,303)@1
    -- out out_feedback_stall_out_30@20000000
    thei_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_3_0_0_0_pop30_fir_filter : i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_3_0_0_0_pop30_fir_filter70
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_30 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_3_0_0_0_push30_fir_filter_out_feedback_out_30,
        in_feedback_valid_in_30 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_3_0_0_0_push30_fir_filter_out_feedback_valid_out_30,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_3_0_0_0_pop30_fir_filter_out_data_out,
        out_feedback_stall_out_30 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_3_0_0_0_pop30_fir_filter_out_feedback_stall_out_30,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_151_fir_filter(MUX,289)@1
    i_acl_151_fir_filter_s <= i_unnamed_fir_filter19_q;
    i_acl_151_fir_filter_combproc: PROCESS (i_acl_151_fir_filter_s, i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_3_0_0_0_pop30_fir_filter_out_data_out, c_i16_5691_q)
    BEGIN
        CASE (i_acl_151_fir_filter_s) IS
            WHEN "0" => i_acl_151_fir_filter_q <= i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_3_0_0_0_pop30_fir_filter_out_data_out;
            WHEN "1" => i_acl_151_fir_filter_q <= c_i16_5691_q;
            WHEN OTHERS => i_acl_151_fir_filter_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_conv4_i_i_12_fir_filter_sel_x(BITSELECT,98)@1
    i_conv4_i_i_12_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_151_fir_filter_q(15 downto 0)), 32));

    -- i_conv4_i_i_12_fir_filter_vt_select_15(BITSELECT,369)@1
    i_conv4_i_i_12_fir_filter_vt_select_15_b <= i_conv4_i_i_12_fir_filter_sel_x_b(15 downto 0);

    -- leftShiftStage0Idx1Rng1_uid723_i_mul_i_i_12_fir_filter_fir_filter166_shift_x(BITSELECT,722)@1
    leftShiftStage0Idx1Rng1_uid723_i_mul_i_i_12_fir_filter_fir_filter166_shift_x_in <= i_conv_i_i_12_fir_filter_vt_join_q(30 downto 0);
    leftShiftStage0Idx1Rng1_uid723_i_mul_i_i_12_fir_filter_fir_filter166_shift_x_b <= leftShiftStage0Idx1Rng1_uid723_i_mul_i_i_12_fir_filter_fir_filter166_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid724_i_mul_i_i_12_fir_filter_fir_filter166_shift_x(BITJOIN,723)@1
    leftShiftStage0Idx1_uid724_i_mul_i_i_12_fir_filter_fir_filter166_shift_x_q <= leftShiftStage0Idx1Rng1_uid723_i_mul_i_i_12_fir_filter_fir_filter166_shift_x_b & GND_q;

    -- i_conv_i_i_12_fir_filter_sel_x(BITSELECT,114)@1
    i_conv_i_i_12_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_2_0_0_0_pop15_fir_filter_out_data_out(15 downto 0)), 32));

    -- i_conv_i_i_12_fir_filter_vt_select_15(BITSELECT,433)@1
    i_conv_i_i_12_fir_filter_vt_select_15_b <= i_conv_i_i_12_fir_filter_sel_x_b(15 downto 0);

    -- i_conv_i_i_12_fir_filter_vt_join(BITJOIN,432)@1
    i_conv_i_i_12_fir_filter_vt_join_q <= c_i16_0gr_q & i_conv_i_i_12_fir_filter_vt_select_15_b;

    -- leftShiftStage0_uid726_i_mul_i_i_12_fir_filter_fir_filter166_shift_x(MUX,725)@1
    leftShiftStage0_uid726_i_mul_i_i_12_fir_filter_fir_filter166_shift_x_s <= VCC_q;
    leftShiftStage0_uid726_i_mul_i_i_12_fir_filter_fir_filter166_shift_x_combproc: PROCESS (leftShiftStage0_uid726_i_mul_i_i_12_fir_filter_fir_filter166_shift_x_s, i_conv_i_i_12_fir_filter_vt_join_q, leftShiftStage0Idx1_uid724_i_mul_i_i_12_fir_filter_fir_filter166_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid726_i_mul_i_i_12_fir_filter_fir_filter166_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid726_i_mul_i_i_12_fir_filter_fir_filter166_shift_x_q <= i_conv_i_i_12_fir_filter_vt_join_q;
            WHEN "1" => leftShiftStage0_uid726_i_mul_i_i_12_fir_filter_fir_filter166_shift_x_q <= leftShiftStage0Idx1_uid724_i_mul_i_i_12_fir_filter_fir_filter166_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid726_i_mul_i_i_12_fir_filter_fir_filter166_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul_i_i_12_fir_filter_vt_select_16(BITSELECT,497)@1
    i_mul_i_i_12_fir_filter_vt_select_16_b <= leftShiftStage0_uid726_i_mul_i_i_12_fir_filter_fir_filter166_shift_x_q(16 downto 1);

    -- i_mul_i_i_12_fir_filter_vt_join(BITJOIN,496)@1
    i_mul_i_i_12_fir_filter_vt_join_q <= i_mul_i_i_12_fir_filter_vt_select_16_b & GND_q;

    -- i_shl_i_i_i_i_i_12_fir_filter(MULT,620)@1 + 2
    i_shl_i_i_i_i_i_12_fir_filter_a0 <= i_mul_i_i_12_fir_filter_vt_join_q;
    i_shl_i_i_i_i_i_12_fir_filter_b0 <= i_conv4_i_i_12_fir_filter_vt_select_15_b;
    i_shl_i_i_i_i_i_12_fir_filter_reset <= not (resetn);
    i_shl_i_i_i_i_i_12_fir_filter_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 16,
        lpm_widthp => 33,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => i_shl_i_i_i_i_i_12_fir_filter_a0,
        datab => i_shl_i_i_i_i_i_12_fir_filter_b0,
        clken => VCC_q(0),
        aclr => i_shl_i_i_i_i_i_12_fir_filter_reset,
        clock => clock,
        result => i_shl_i_i_i_i_i_12_fir_filter_s1
    );
    i_shl_i_i_i_i_i_12_fir_filter_q <= i_shl_i_i_i_i_i_12_fir_filter_s1;

    -- i_shl_i_i_i_i_i_12_fir_filter_extender_x(BITJOIN,196)@3
    i_shl_i_i_i_i_i_12_fir_filter_extender_x_q <= i_shl_i_i_i_i_i_10_fir_filter_multconst_x_q & i_shl_i_i_i_i_i_12_fir_filter_q;

    -- bgTrunc_i_shl_i_i_i_i_i_12_fir_filter_sel_x(BITSELECT,19)@3
    bgTrunc_i_shl_i_i_i_i_i_12_fir_filter_sel_x_b <= i_shl_i_i_i_i_i_12_fir_filter_extender_x_q(31 downto 0);

    -- i_shl_i_i_i_i_i_12_fir_filter_vt_select_31(BITSELECT,623)@3
    i_shl_i_i_i_i_i_12_fir_filter_vt_select_31_b <= bgTrunc_i_shl_i_i_i_i_i_12_fir_filter_sel_x_b(31 downto 1);

    -- i_shl_i_i_i_i_i_12_fir_filter_vt_join(BITJOIN,622)@3
    i_shl_i_i_i_i_i_12_fir_filter_vt_join_q <= i_shl_i_i_i_i_i_12_fir_filter_vt_select_31_b & GND_q;

    -- c_i16_11848(CONSTANT,261)
    c_i16_11848_q <= "0010111001001000";

    -- i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_2_0_0_0_push31_fir_filter(BLACKBOX,334)@1
    -- out out_feedback_out_31@20000000
    -- out out_feedback_valid_out_31@20000000
    thei_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_2_0_0_0_push31_fir_filter : i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_2_0_0_0_push31_fir_filter76
    PORT MAP (
        in_data_in => i_acl_152_fir_filter_q,
        in_feedback_stall_in_31 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_2_0_0_0_pop31_fir_filter_out_feedback_stall_out_31,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_31 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_2_0_0_0_push31_fir_filter_out_feedback_out_31,
        out_feedback_valid_out_31 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_2_0_0_0_push31_fir_filter_out_feedback_valid_out_31,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_2_0_0_0_pop31_fir_filter(BLACKBOX,302)@1
    -- out out_feedback_stall_out_31@20000000
    thei_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_2_0_0_0_pop31_fir_filter : i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_2_0_0_0_pop31_fir_filter74
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_31 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_2_0_0_0_push31_fir_filter_out_feedback_out_31,
        in_feedback_valid_in_31 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_2_0_0_0_push31_fir_filter_out_feedback_valid_out_31,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_2_0_0_0_pop31_fir_filter_out_data_out,
        out_feedback_stall_out_31 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_2_0_0_0_pop31_fir_filter_out_feedback_stall_out_31,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_152_fir_filter(MUX,290)@1
    i_acl_152_fir_filter_s <= i_unnamed_fir_filter19_q;
    i_acl_152_fir_filter_combproc: PROCESS (i_acl_152_fir_filter_s, i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_2_0_0_0_pop31_fir_filter_out_data_out, c_i16_11848_q)
    BEGIN
        CASE (i_acl_152_fir_filter_s) IS
            WHEN "0" => i_acl_152_fir_filter_q <= i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_2_0_0_0_pop31_fir_filter_out_data_out;
            WHEN "1" => i_acl_152_fir_filter_q <= c_i16_11848_q;
            WHEN OTHERS => i_acl_152_fir_filter_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_conv4_i_i_13_fir_filter_sel_x(BITSELECT,99)@1
    i_conv4_i_i_13_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_152_fir_filter_q(15 downto 0)), 32));

    -- i_conv4_i_i_13_fir_filter_vt_select_15(BITSELECT,373)@1
    i_conv4_i_i_13_fir_filter_vt_select_15_b <= i_conv4_i_i_13_fir_filter_sel_x_b(15 downto 0);

    -- leftShiftStage0Idx1Rng1_uid732_i_mul_i_i_13_fir_filter_fir_filter167_shift_x(BITSELECT,731)@1
    leftShiftStage0Idx1Rng1_uid732_i_mul_i_i_13_fir_filter_fir_filter167_shift_x_in <= i_conv_i_i_13_fir_filter_vt_join_q(30 downto 0);
    leftShiftStage0Idx1Rng1_uid732_i_mul_i_i_13_fir_filter_fir_filter167_shift_x_b <= leftShiftStage0Idx1Rng1_uid732_i_mul_i_i_13_fir_filter_fir_filter167_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid733_i_mul_i_i_13_fir_filter_fir_filter167_shift_x(BITJOIN,732)@1
    leftShiftStage0Idx1_uid733_i_mul_i_i_13_fir_filter_fir_filter167_shift_x_q <= leftShiftStage0Idx1Rng1_uid732_i_mul_i_i_13_fir_filter_fir_filter167_shift_x_b & GND_q;

    -- i_conv_i_i_13_fir_filter_sel_x(BITSELECT,115)@1
    i_conv_i_i_13_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_1_0_0_0_pop16_fir_filter_out_data_out(15 downto 0)), 32));

    -- i_conv_i_i_13_fir_filter_vt_select_15(BITSELECT,437)@1
    i_conv_i_i_13_fir_filter_vt_select_15_b <= i_conv_i_i_13_fir_filter_sel_x_b(15 downto 0);

    -- i_conv_i_i_13_fir_filter_vt_join(BITJOIN,436)@1
    i_conv_i_i_13_fir_filter_vt_join_q <= c_i16_0gr_q & i_conv_i_i_13_fir_filter_vt_select_15_b;

    -- leftShiftStage0_uid735_i_mul_i_i_13_fir_filter_fir_filter167_shift_x(MUX,734)@1
    leftShiftStage0_uid735_i_mul_i_i_13_fir_filter_fir_filter167_shift_x_s <= VCC_q;
    leftShiftStage0_uid735_i_mul_i_i_13_fir_filter_fir_filter167_shift_x_combproc: PROCESS (leftShiftStage0_uid735_i_mul_i_i_13_fir_filter_fir_filter167_shift_x_s, i_conv_i_i_13_fir_filter_vt_join_q, leftShiftStage0Idx1_uid733_i_mul_i_i_13_fir_filter_fir_filter167_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid735_i_mul_i_i_13_fir_filter_fir_filter167_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid735_i_mul_i_i_13_fir_filter_fir_filter167_shift_x_q <= i_conv_i_i_13_fir_filter_vt_join_q;
            WHEN "1" => leftShiftStage0_uid735_i_mul_i_i_13_fir_filter_fir_filter167_shift_x_q <= leftShiftStage0Idx1_uid733_i_mul_i_i_13_fir_filter_fir_filter167_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid735_i_mul_i_i_13_fir_filter_fir_filter167_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul_i_i_13_fir_filter_vt_select_16(BITSELECT,501)@1
    i_mul_i_i_13_fir_filter_vt_select_16_b <= leftShiftStage0_uid735_i_mul_i_i_13_fir_filter_fir_filter167_shift_x_q(16 downto 1);

    -- i_mul_i_i_13_fir_filter_vt_join(BITJOIN,500)@1
    i_mul_i_i_13_fir_filter_vt_join_q <= i_mul_i_i_13_fir_filter_vt_select_16_b & GND_q;

    -- i_shl_i_i_i_i_i_13_fir_filter(MULT,624)@1 + 2
    i_shl_i_i_i_i_i_13_fir_filter_a0 <= i_mul_i_i_13_fir_filter_vt_join_q;
    i_shl_i_i_i_i_i_13_fir_filter_b0 <= i_conv4_i_i_13_fir_filter_vt_select_15_b;
    i_shl_i_i_i_i_i_13_fir_filter_reset <= not (resetn);
    i_shl_i_i_i_i_i_13_fir_filter_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 16,
        lpm_widthp => 33,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => i_shl_i_i_i_i_i_13_fir_filter_a0,
        datab => i_shl_i_i_i_i_i_13_fir_filter_b0,
        clken => VCC_q(0),
        aclr => i_shl_i_i_i_i_i_13_fir_filter_reset,
        clock => clock,
        result => i_shl_i_i_i_i_i_13_fir_filter_s1
    );
    i_shl_i_i_i_i_i_13_fir_filter_q <= i_shl_i_i_i_i_i_13_fir_filter_s1;

    -- i_shl_i_i_i_i_i_13_fir_filter_extender_x(BITJOIN,198)@3
    i_shl_i_i_i_i_i_13_fir_filter_extender_x_q <= i_shl_i_i_i_i_i_10_fir_filter_multconst_x_q & i_shl_i_i_i_i_i_13_fir_filter_q;

    -- bgTrunc_i_shl_i_i_i_i_i_13_fir_filter_sel_x(BITSELECT,20)@3
    bgTrunc_i_shl_i_i_i_i_i_13_fir_filter_sel_x_b <= i_shl_i_i_i_i_i_13_fir_filter_extender_x_q(31 downto 0);

    -- i_shl_i_i_i_i_i_13_fir_filter_vt_select_31(BITSELECT,627)@3
    i_shl_i_i_i_i_i_13_fir_filter_vt_select_31_b <= bgTrunc_i_shl_i_i_i_i_i_13_fir_filter_sel_x_b(31 downto 1);

    -- i_shl_i_i_i_i_i_13_fir_filter_vt_join(BITJOIN,626)@3
    i_shl_i_i_i_i_i_13_fir_filter_vt_join_q <= i_shl_i_i_i_i_i_13_fir_filter_vt_select_31_b & GND_q;

    -- i_reduction_fir_filter_1_fir_filter(ADD,574)@3
    i_reduction_fir_filter_1_fir_filter_a <= STD_LOGIC_VECTOR("0" & i_shl_i_i_i_i_i_13_fir_filter_vt_join_q);
    i_reduction_fir_filter_1_fir_filter_b <= STD_LOGIC_VECTOR("0" & i_shl_i_i_i_i_i_12_fir_filter_vt_join_q);
    i_reduction_fir_filter_1_fir_filter_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_fir_filter_1_fir_filter_a) + UNSIGNED(i_reduction_fir_filter_1_fir_filter_b));
    i_reduction_fir_filter_1_fir_filter_q <= i_reduction_fir_filter_1_fir_filter_o(32 downto 0);

    -- bgTrunc_i_reduction_fir_filter_1_fir_filter_sel_x(BITSELECT,8)@3
    bgTrunc_i_reduction_fir_filter_1_fir_filter_sel_x_b <= i_reduction_fir_filter_1_fir_filter_q(31 downto 0);

    -- i_reduction_fir_filter_1_fir_filter_vt_select_31(BITSELECT,577)@3
    i_reduction_fir_filter_1_fir_filter_vt_select_31_b <= bgTrunc_i_reduction_fir_filter_1_fir_filter_sel_x_b(31 downto 1);

    -- i_reduction_fir_filter_1_fir_filter_vt_join(BITJOIN,576)@3
    i_reduction_fir_filter_1_fir_filter_vt_join_q <= i_reduction_fir_filter_1_fir_filter_vt_select_31_b & GND_q;

    -- c_i16_738(CONSTANT,271)
    c_i16_738_q <= "0000001011100010";

    -- i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_1_0_0_0_push32_fir_filter(BLACKBOX,333)@1
    -- out out_feedback_out_32@20000000
    -- out out_feedback_valid_out_32@20000000
    thei_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_1_0_0_0_push32_fir_filter : i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_1_0_0_0_push32_fir_filter80
    PORT MAP (
        in_data_in => i_acl_153_fir_filter_q,
        in_feedback_stall_in_32 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_1_0_0_0_pop32_fir_filter_out_feedback_stall_out_32,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_32 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_1_0_0_0_push32_fir_filter_out_feedback_out_32,
        out_feedback_valid_out_32 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_1_0_0_0_push32_fir_filter_out_feedback_valid_out_32,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_1_0_0_0_pop32_fir_filter(BLACKBOX,301)@1
    -- out out_feedback_stall_out_32@20000000
    thei_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_1_0_0_0_pop32_fir_filter : i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_1_0_0_0_pop32_fir_filter78
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_32 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_1_0_0_0_push32_fir_filter_out_feedback_out_32,
        in_feedback_valid_in_32 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_1_0_0_0_push32_fir_filter_out_feedback_valid_out_32,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_1_0_0_0_pop32_fir_filter_out_data_out,
        out_feedback_stall_out_32 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_1_0_0_0_pop32_fir_filter_out_feedback_stall_out_32,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_153_fir_filter(MUX,291)@1
    i_acl_153_fir_filter_s <= i_unnamed_fir_filter19_q;
    i_acl_153_fir_filter_combproc: PROCESS (i_acl_153_fir_filter_s, i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_1_0_0_0_pop32_fir_filter_out_data_out, c_i16_738_q)
    BEGIN
        CASE (i_acl_153_fir_filter_s) IS
            WHEN "0" => i_acl_153_fir_filter_q <= i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_1_0_0_0_pop32_fir_filter_out_data_out;
            WHEN "1" => i_acl_153_fir_filter_q <= c_i16_738_q;
            WHEN OTHERS => i_acl_153_fir_filter_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_conv4_i_i_14_fir_filter_sel_x(BITSELECT,100)@1
    i_conv4_i_i_14_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_153_fir_filter_q(15 downto 0)), 32));

    -- i_conv4_i_i_14_fir_filter_vt_select_15(BITSELECT,377)@1
    i_conv4_i_i_14_fir_filter_vt_select_15_b <= i_conv4_i_i_14_fir_filter_sel_x_b(15 downto 0);

    -- leftShiftStage0Idx1Rng1_uid741_i_mul_i_i_14_fir_filter_fir_filter168_shift_x(BITSELECT,740)@1
    leftShiftStage0Idx1Rng1_uid741_i_mul_i_i_14_fir_filter_fir_filter168_shift_x_in <= i_conv_i_i_14_fir_filter_vt_join_q(30 downto 0);
    leftShiftStage0Idx1Rng1_uid741_i_mul_i_i_14_fir_filter_fir_filter168_shift_x_b <= leftShiftStage0Idx1Rng1_uid741_i_mul_i_i_14_fir_filter_fir_filter168_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid742_i_mul_i_i_14_fir_filter_fir_filter168_shift_x(BITJOIN,741)@1
    leftShiftStage0Idx1_uid742_i_mul_i_i_14_fir_filter_fir_filter168_shift_x_q <= leftShiftStage0Idx1Rng1_uid741_i_mul_i_i_14_fir_filter_fir_filter168_shift_x_b & GND_q;

    -- i_conv_i_i_14_fir_filter_sel_x(BITSELECT,116)@1
    i_conv_i_i_14_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_pop_i16_taps_fir_filter_4pav_ac_fixed_0ba_01_0_0_0_a_addr_0_0_0_0_pop17_fir_filter_out_data_out(15 downto 0)), 32));

    -- i_conv_i_i_14_fir_filter_vt_select_15(BITSELECT,441)@1
    i_conv_i_i_14_fir_filter_vt_select_15_b <= i_conv_i_i_14_fir_filter_sel_x_b(15 downto 0);

    -- i_conv_i_i_14_fir_filter_vt_join(BITJOIN,440)@1
    i_conv_i_i_14_fir_filter_vt_join_q <= c_i16_0gr_q & i_conv_i_i_14_fir_filter_vt_select_15_b;

    -- leftShiftStage0_uid744_i_mul_i_i_14_fir_filter_fir_filter168_shift_x(MUX,743)@1
    leftShiftStage0_uid744_i_mul_i_i_14_fir_filter_fir_filter168_shift_x_s <= VCC_q;
    leftShiftStage0_uid744_i_mul_i_i_14_fir_filter_fir_filter168_shift_x_combproc: PROCESS (leftShiftStage0_uid744_i_mul_i_i_14_fir_filter_fir_filter168_shift_x_s, i_conv_i_i_14_fir_filter_vt_join_q, leftShiftStage0Idx1_uid742_i_mul_i_i_14_fir_filter_fir_filter168_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid744_i_mul_i_i_14_fir_filter_fir_filter168_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid744_i_mul_i_i_14_fir_filter_fir_filter168_shift_x_q <= i_conv_i_i_14_fir_filter_vt_join_q;
            WHEN "1" => leftShiftStage0_uid744_i_mul_i_i_14_fir_filter_fir_filter168_shift_x_q <= leftShiftStage0Idx1_uid742_i_mul_i_i_14_fir_filter_fir_filter168_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid744_i_mul_i_i_14_fir_filter_fir_filter168_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul_i_i_14_fir_filter_vt_select_16(BITSELECT,505)@1
    i_mul_i_i_14_fir_filter_vt_select_16_b <= leftShiftStage0_uid744_i_mul_i_i_14_fir_filter_fir_filter168_shift_x_q(16 downto 1);

    -- i_mul_i_i_14_fir_filter_vt_join(BITJOIN,504)@1
    i_mul_i_i_14_fir_filter_vt_join_q <= i_mul_i_i_14_fir_filter_vt_select_16_b & GND_q;

    -- i_shl_i_i_i_i_i_14_fir_filter(MULT,628)@1 + 2
    i_shl_i_i_i_i_i_14_fir_filter_a0 <= i_mul_i_i_14_fir_filter_vt_join_q;
    i_shl_i_i_i_i_i_14_fir_filter_b0 <= i_conv4_i_i_14_fir_filter_vt_select_15_b;
    i_shl_i_i_i_i_i_14_fir_filter_reset <= not (resetn);
    i_shl_i_i_i_i_i_14_fir_filter_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 16,
        lpm_widthp => 33,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => i_shl_i_i_i_i_i_14_fir_filter_a0,
        datab => i_shl_i_i_i_i_i_14_fir_filter_b0,
        clken => VCC_q(0),
        aclr => i_shl_i_i_i_i_i_14_fir_filter_reset,
        clock => clock,
        result => i_shl_i_i_i_i_i_14_fir_filter_s1
    );
    i_shl_i_i_i_i_i_14_fir_filter_q <= i_shl_i_i_i_i_i_14_fir_filter_s1;

    -- i_shl_i_i_i_i_i_14_fir_filter_extender_x(BITJOIN,200)@3
    i_shl_i_i_i_i_i_14_fir_filter_extender_x_q <= i_shl_i_i_i_i_i_10_fir_filter_multconst_x_q & i_shl_i_i_i_i_i_14_fir_filter_q;

    -- bgTrunc_i_shl_i_i_i_i_i_14_fir_filter_sel_x(BITSELECT,21)@3
    bgTrunc_i_shl_i_i_i_i_i_14_fir_filter_sel_x_b <= i_shl_i_i_i_i_i_14_fir_filter_extender_x_q(31 downto 0);

    -- i_shl_i_i_i_i_i_14_fir_filter_vt_select_31(BITSELECT,631)@3
    i_shl_i_i_i_i_i_14_fir_filter_vt_select_31_b <= bgTrunc_i_shl_i_i_i_i_i_14_fir_filter_sel_x_b(31 downto 1);

    -- i_shl_i_i_i_i_i_14_fir_filter_vt_join(BITJOIN,630)@3
    i_shl_i_i_i_i_i_14_fir_filter_vt_join_q <= i_shl_i_i_i_i_i_14_fir_filter_vt_select_31_b & GND_q;

    -- c_i16_2958(CONSTANT,266)
    c_i16_2958_q <= "0000101110001110";

    -- i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_0_0_0_0_push33_fir_filter(BLACKBOX,326)@1
    -- out out_feedback_out_33@20000000
    -- out out_feedback_valid_out_33@20000000
    thei_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_0_0_0_0_push33_fir_filter : i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_0_0_0_0_push33_fir_filter84
    PORT MAP (
        in_data_in => i_acl_154_fir_filter_q,
        in_feedback_stall_in_33 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_0_0_0_0_pop33_fir_filter_out_feedback_stall_out_33,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_33 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_0_0_0_0_push33_fir_filter_out_feedback_out_33,
        out_feedback_valid_out_33 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_0_0_0_0_push33_fir_filter_out_feedback_valid_out_33,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_0_0_0_0_pop33_fir_filter(BLACKBOX,294)@1
    -- out out_feedback_stall_out_33@20000000
    thei_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_0_0_0_0_pop33_fir_filter : i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_0_0_0_0_pop33_fir_filter82
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_33 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_0_0_0_0_push33_fir_filter_out_feedback_out_33,
        in_feedback_valid_in_33 => i_acl_push_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_0_0_0_0_push33_fir_filter_out_feedback_valid_out_33,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_0_0_0_0_pop33_fir_filter_out_data_out,
        out_feedback_stall_out_33 => i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_0_0_0_0_pop33_fir_filter_out_feedback_stall_out_33,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_154_fir_filter(MUX,292)@1
    i_acl_154_fir_filter_s <= i_unnamed_fir_filter19_q;
    i_acl_154_fir_filter_combproc: PROCESS (i_acl_154_fir_filter_s, i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_0_0_0_0_pop33_fir_filter_out_data_out, c_i16_2958_q)
    BEGIN
        CASE (i_acl_154_fir_filter_s) IS
            WHEN "0" => i_acl_154_fir_filter_q <= i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_fixed_0ba_01_0_0_0_b_addr_0_0_0_0_pop33_fir_filter_out_data_out;
            WHEN "1" => i_acl_154_fir_filter_q <= c_i16_2958_q;
            WHEN OTHERS => i_acl_154_fir_filter_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_conv4_i_i_15_fir_filter_sel_x(BITSELECT,101)@1
    i_conv4_i_i_15_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_154_fir_filter_q(15 downto 0)), 32));

    -- i_conv4_i_i_15_fir_filter_vt_select_15(BITSELECT,381)@1
    i_conv4_i_i_15_fir_filter_vt_select_15_b <= i_conv4_i_i_15_fir_filter_sel_x_b(15 downto 0);

    -- leftShiftStage0Idx1Rng1_uid750_i_mul_i_i_15_fir_filter_fir_filter169_shift_x(BITSELECT,749)@1
    leftShiftStage0Idx1Rng1_uid750_i_mul_i_i_15_fir_filter_fir_filter169_shift_x_in <= i_conv_i_i_15_fir_filter_vt_join_q(30 downto 0);
    leftShiftStage0Idx1Rng1_uid750_i_mul_i_i_15_fir_filter_fir_filter169_shift_x_b <= leftShiftStage0Idx1Rng1_uid750_i_mul_i_i_15_fir_filter_fir_filter169_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid751_i_mul_i_i_15_fir_filter_fir_filter169_shift_x(BITJOIN,750)@1
    leftShiftStage0Idx1_uid751_i_mul_i_i_15_fir_filter_fir_filter169_shift_x_q <= leftShiftStage0Idx1Rng1_uid750_i_mul_i_i_15_fir_filter_fir_filter169_shift_x_b & GND_q;

    -- i_conv_i_i_15_fir_filter_sel_x(BITSELECT,117)@1
    i_conv_i_i_15_fir_filter_sel_x_b <= std_logic_vector(resize(unsigned(in_c1_eni2_2(15 downto 0)), 32));

    -- i_conv_i_i_15_fir_filter_vt_select_15(BITSELECT,445)@1
    i_conv_i_i_15_fir_filter_vt_select_15_b <= i_conv_i_i_15_fir_filter_sel_x_b(15 downto 0);

    -- i_conv_i_i_15_fir_filter_vt_join(BITJOIN,444)@1
    i_conv_i_i_15_fir_filter_vt_join_q <= c_i16_0gr_q & i_conv_i_i_15_fir_filter_vt_select_15_b;

    -- leftShiftStage0_uid753_i_mul_i_i_15_fir_filter_fir_filter169_shift_x(MUX,752)@1
    leftShiftStage0_uid753_i_mul_i_i_15_fir_filter_fir_filter169_shift_x_s <= VCC_q;
    leftShiftStage0_uid753_i_mul_i_i_15_fir_filter_fir_filter169_shift_x_combproc: PROCESS (leftShiftStage0_uid753_i_mul_i_i_15_fir_filter_fir_filter169_shift_x_s, i_conv_i_i_15_fir_filter_vt_join_q, leftShiftStage0Idx1_uid751_i_mul_i_i_15_fir_filter_fir_filter169_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid753_i_mul_i_i_15_fir_filter_fir_filter169_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid753_i_mul_i_i_15_fir_filter_fir_filter169_shift_x_q <= i_conv_i_i_15_fir_filter_vt_join_q;
            WHEN "1" => leftShiftStage0_uid753_i_mul_i_i_15_fir_filter_fir_filter169_shift_x_q <= leftShiftStage0Idx1_uid751_i_mul_i_i_15_fir_filter_fir_filter169_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid753_i_mul_i_i_15_fir_filter_fir_filter169_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul_i_i_15_fir_filter_vt_select_16(BITSELECT,509)@1
    i_mul_i_i_15_fir_filter_vt_select_16_b <= leftShiftStage0_uid753_i_mul_i_i_15_fir_filter_fir_filter169_shift_x_q(16 downto 1);

    -- i_mul_i_i_15_fir_filter_vt_join(BITJOIN,508)@1
    i_mul_i_i_15_fir_filter_vt_join_q <= i_mul_i_i_15_fir_filter_vt_select_16_b & GND_q;

    -- i_shl_i_i_i_i_i_15_fir_filter(MULT,632)@1 + 2
    i_shl_i_i_i_i_i_15_fir_filter_a0 <= i_mul_i_i_15_fir_filter_vt_join_q;
    i_shl_i_i_i_i_i_15_fir_filter_b0 <= i_conv4_i_i_15_fir_filter_vt_select_15_b;
    i_shl_i_i_i_i_i_15_fir_filter_reset <= not (resetn);
    i_shl_i_i_i_i_i_15_fir_filter_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 16,
        lpm_widthp => 33,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => i_shl_i_i_i_i_i_15_fir_filter_a0,
        datab => i_shl_i_i_i_i_i_15_fir_filter_b0,
        clken => VCC_q(0),
        aclr => i_shl_i_i_i_i_i_15_fir_filter_reset,
        clock => clock,
        result => i_shl_i_i_i_i_i_15_fir_filter_s1
    );
    i_shl_i_i_i_i_i_15_fir_filter_q <= i_shl_i_i_i_i_i_15_fir_filter_s1;

    -- i_shl_i_i_i_i_i_15_fir_filter_extender_x(BITJOIN,202)@3
    i_shl_i_i_i_i_i_15_fir_filter_extender_x_q <= i_shl_i_i_i_i_i_10_fir_filter_multconst_x_q & i_shl_i_i_i_i_i_15_fir_filter_q;

    -- bgTrunc_i_shl_i_i_i_i_i_15_fir_filter_sel_x(BITSELECT,22)@3
    bgTrunc_i_shl_i_i_i_i_i_15_fir_filter_sel_x_b <= i_shl_i_i_i_i_i_15_fir_filter_extender_x_q(31 downto 0);

    -- i_shl_i_i_i_i_i_15_fir_filter_vt_select_31(BITSELECT,635)@3
    i_shl_i_i_i_i_i_15_fir_filter_vt_select_31_b <= bgTrunc_i_shl_i_i_i_i_i_15_fir_filter_sel_x_b(31 downto 1);

    -- i_shl_i_i_i_i_i_15_fir_filter_vt_join(BITJOIN,634)@3
    i_shl_i_i_i_i_i_15_fir_filter_vt_join_q <= i_shl_i_i_i_i_i_15_fir_filter_vt_select_31_b & GND_q;

    -- i_reduction_fir_filter_0_fir_filter(ADD,550)@3
    i_reduction_fir_filter_0_fir_filter_a <= STD_LOGIC_VECTOR("0" & i_shl_i_i_i_i_i_15_fir_filter_vt_join_q);
    i_reduction_fir_filter_0_fir_filter_b <= STD_LOGIC_VECTOR("0" & i_shl_i_i_i_i_i_14_fir_filter_vt_join_q);
    i_reduction_fir_filter_0_fir_filter_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_fir_filter_0_fir_filter_a) + UNSIGNED(i_reduction_fir_filter_0_fir_filter_b));
    i_reduction_fir_filter_0_fir_filter_q <= i_reduction_fir_filter_0_fir_filter_o(32 downto 0);

    -- bgTrunc_i_reduction_fir_filter_0_fir_filter_sel_x(BITSELECT,2)@3
    bgTrunc_i_reduction_fir_filter_0_fir_filter_sel_x_b <= i_reduction_fir_filter_0_fir_filter_q(31 downto 0);

    -- i_reduction_fir_filter_0_fir_filter_vt_select_31(BITSELECT,553)@3
    i_reduction_fir_filter_0_fir_filter_vt_select_31_b <= bgTrunc_i_reduction_fir_filter_0_fir_filter_sel_x_b(31 downto 1);

    -- i_reduction_fir_filter_0_fir_filter_vt_join(BITJOIN,552)@3
    i_reduction_fir_filter_0_fir_filter_vt_join_q <= i_reduction_fir_filter_0_fir_filter_vt_select_31_b & GND_q;

    -- i_reduction_fir_filter_8_fir_filter(ADD,602)@3
    i_reduction_fir_filter_8_fir_filter_a <= STD_LOGIC_VECTOR("0" & i_reduction_fir_filter_0_fir_filter_vt_join_q);
    i_reduction_fir_filter_8_fir_filter_b <= STD_LOGIC_VECTOR("0" & i_reduction_fir_filter_1_fir_filter_vt_join_q);
    i_reduction_fir_filter_8_fir_filter_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_fir_filter_8_fir_filter_a) + UNSIGNED(i_reduction_fir_filter_8_fir_filter_b));
    i_reduction_fir_filter_8_fir_filter_q <= i_reduction_fir_filter_8_fir_filter_o(32 downto 0);

    -- bgTrunc_i_reduction_fir_filter_8_fir_filter_sel_x(BITSELECT,15)@3
    bgTrunc_i_reduction_fir_filter_8_fir_filter_sel_x_b <= i_reduction_fir_filter_8_fir_filter_q(31 downto 0);

    -- i_reduction_fir_filter_8_fir_filter_vt_select_31(BITSELECT,605)@3
    i_reduction_fir_filter_8_fir_filter_vt_select_31_b <= bgTrunc_i_reduction_fir_filter_8_fir_filter_sel_x_b(31 downto 1);

    -- i_reduction_fir_filter_8_fir_filter_vt_join(BITJOIN,604)@3
    i_reduction_fir_filter_8_fir_filter_vt_join_q <= i_reduction_fir_filter_8_fir_filter_vt_select_31_b & GND_q;

    -- i_reduction_fir_filter_12_fir_filter(ADD,562)@3
    i_reduction_fir_filter_12_fir_filter_a <= STD_LOGIC_VECTOR("0" & i_reduction_fir_filter_8_fir_filter_vt_join_q);
    i_reduction_fir_filter_12_fir_filter_b <= STD_LOGIC_VECTOR("0" & i_reduction_fir_filter_9_fir_filter_vt_join_q);
    i_reduction_fir_filter_12_fir_filter_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_fir_filter_12_fir_filter_a) + UNSIGNED(i_reduction_fir_filter_12_fir_filter_b));
    i_reduction_fir_filter_12_fir_filter_q <= i_reduction_fir_filter_12_fir_filter_o(32 downto 0);

    -- bgTrunc_i_reduction_fir_filter_12_fir_filter_sel_x(BITSELECT,5)@3
    bgTrunc_i_reduction_fir_filter_12_fir_filter_sel_x_b <= i_reduction_fir_filter_12_fir_filter_q(31 downto 0);

    -- i_reduction_fir_filter_12_fir_filter_vt_select_31(BITSELECT,565)@3
    i_reduction_fir_filter_12_fir_filter_vt_select_31_b <= bgTrunc_i_reduction_fir_filter_12_fir_filter_sel_x_b(31 downto 1);

    -- i_reduction_fir_filter_12_fir_filter_vt_join(BITJOIN,564)@3
    i_reduction_fir_filter_12_fir_filter_vt_join_q <= i_reduction_fir_filter_12_fir_filter_vt_select_31_b & GND_q;

    -- i_reduction_fir_filter_14_fir_filter(ADD,570)@3
    i_reduction_fir_filter_14_fir_filter_a <= STD_LOGIC_VECTOR("0" & i_reduction_fir_filter_12_fir_filter_vt_join_q);
    i_reduction_fir_filter_14_fir_filter_b <= STD_LOGIC_VECTOR("0" & i_reduction_fir_filter_13_fir_filter_vt_join_q);
    i_reduction_fir_filter_14_fir_filter_o <= STD_LOGIC_VECTOR(UNSIGNED(i_reduction_fir_filter_14_fir_filter_a) + UNSIGNED(i_reduction_fir_filter_14_fir_filter_b));
    i_reduction_fir_filter_14_fir_filter_q <= i_reduction_fir_filter_14_fir_filter_o(32 downto 0);

    -- bgTrunc_i_reduction_fir_filter_14_fir_filter_sel_x(BITSELECT,7)@3
    bgTrunc_i_reduction_fir_filter_14_fir_filter_sel_x_b <= i_reduction_fir_filter_14_fir_filter_q(31 downto 0);

    -- i_reduction_fir_filter_14_fir_filter_vt_select_31(BITSELECT,573)@3
    i_reduction_fir_filter_14_fir_filter_vt_select_31_b <= bgTrunc_i_reduction_fir_filter_14_fir_filter_sel_x_b(31 downto 1);

    -- i_reduction_fir_filter_14_fir_filter_vt_join(BITJOIN,572)@3
    i_reduction_fir_filter_14_fir_filter_vt_join_q <= i_reduction_fir_filter_14_fir_filter_vt_select_31_b & GND_q;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,225)@3
    out_c1_exi1_0 <= GND_q;
    out_c1_exi1_1 <= i_reduction_fir_filter_14_fir_filter_vt_join_q;
    out_o_valid <= redist0_sync_in_aunroll_x_in_i_valid_2_q;

END normal;
