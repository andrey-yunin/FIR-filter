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

-- VHDL created from i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_A0Ze_buffer78_data_fifo
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

entity i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_A0Ze_buffer78_data_fifo is
    port (
        in_data_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_2 : in std_logic_vector(15 downto 0);  -- ufix16
        in_data_in_3 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_4 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_2 : out std_logic_vector(15 downto 0);  -- ufix16
        out_data_out_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_A0Ze_buffer78_data_fifo;

architecture normal of i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_A0Ze_buffer78_data_fifo is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component acl_data_fifo is
        generic (
            DEPTH : INTEGER;
            ALLOW_FULL_WRITE : INTEGER := 1;
            DATA_WIDTH : INTEGER := 48;
            IMPL : STRING := "ram"
        );
        port (
            data_in : in std_logic_vector(47 downto 0);
            stall_in : in std_logic;
            valid_in : in std_logic;
            data_out : out std_logic_vector(47 downto 0);
            stall_out : out std_logic;
            valid_out : out std_logic;
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal dupName_0_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_agg_adapt_to_ufixed_cast_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal dupName_0_c_i7_0gr_x_q : STD_LOGIC_VECTOR (6 downto 0);
    signal dupName_0_dsdk_ip_adapt_bitjoin_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal dupName_0_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_0_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_1_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_1_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_1_dsdk_ip_adapt_bitjoin_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal dupName_1_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_1_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal dupName_2_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_2_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_2_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_2_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal dupName_3_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal dupName_4_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_5_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal adapt_scalar_trunc_in : STD_LOGIC_VECTOR (0 downto 0);
    signal adapt_scalar_trunc_q : STD_LOGIC_VECTOR (0 downto 0);
    signal agg_adapt_to_ufixed_cast_b : STD_LOGIC_VECTOR (15 downto 0);
    signal dsdk_ip_adapt_bitjoin_q : STD_LOGIC_VECTOR (47 downto 0);
    signal element_extension_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_data_in : STD_LOGIC_VECTOR (47 downto 0);
    signal i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_stall_in_bitsignaltemp : std_logic;
    signal i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_valid_in_bitsignaltemp : std_logic;
    signal i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_data_out : STD_LOGIC_VECTOR (47 downto 0);
    signal i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_stall_out_bitsignaltemp : std_logic;
    signal i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_valid_out_bitsignaltemp : std_logic;
    signal ip_dsdk_adapt_bitselect_b : STD_LOGIC_VECTOR (0 downto 0);
    signal ip_dsdk_adapt_cast_b : STD_LOGIC_VECTOR (15 downto 0);

begin


    -- dupName_0_c_i7_0gr_x(CONSTANT,6)
    dupName_0_c_i7_0gr_x_q <= "0000000";

    -- dupName_2_element_extension_x(BITJOIN,17)
    dupName_2_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_4;

    -- dupName_1_element_extension_x(BITJOIN,13)
    dupName_1_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_3;

    -- dupName_1_dsdk_ip_adapt_bitjoin_x(BITJOIN,12)
    dupName_1_dsdk_ip_adapt_bitjoin_x_q <= in_data_in_2;

    -- agg_adapt_to_ufixed_cast(BITSELECT,23)
    agg_adapt_to_ufixed_cast_b <= dupName_1_dsdk_ip_adapt_bitjoin_x_q(15 downto 0);

    -- dupName_0_dsdk_ip_adapt_bitjoin_x(BITJOIN,7)
    dupName_0_dsdk_ip_adapt_bitjoin_x_q <= agg_adapt_to_ufixed_cast_b;

    -- dupName_0_agg_adapt_to_ufixed_cast_x(BITSELECT,5)
    dupName_0_agg_adapt_to_ufixed_cast_x_b <= dupName_0_dsdk_ip_adapt_bitjoin_x_q(15 downto 0);

    -- dupName_0_element_extension_x(BITJOIN,8)
    dupName_0_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_1;

    -- element_extension(BITJOIN,26)
    element_extension_q <= dupName_0_c_i7_0gr_x_q & in_data_in_0;

    -- dsdk_ip_adapt_bitjoin(BITJOIN,25)
    dsdk_ip_adapt_bitjoin_q <= dupName_2_element_extension_x_q & dupName_1_element_extension_x_q & dupName_0_agg_adapt_to_ufixed_cast_x_b & dupName_0_element_extension_x_q & element_extension_q;

    -- i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79(EXTIFACE,27)
    i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_data_in <= dsdk_ip_adapt_bitjoin_q;
    i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_stall_in <= in_stall_in;
    i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_valid_in <= in_valid_in;
    i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_stall_in_bitsignaltemp <= i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_stall_in(0);
    i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_valid_in_bitsignaltemp <= i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_valid_in(0);
    i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_stall_out(0) <= i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_stall_out_bitsignaltemp;
    i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_valid_out(0) <= i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_valid_out_bitsignaltemp;
    thei_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79 : acl_data_fifo
    GENERIC MAP (
        DEPTH => 16,
        ALLOW_FULL_WRITE => 1,
        DATA_WIDTH => 48,
        IMPL => "ram"
    )
    PORT MAP (
        data_in => dsdk_ip_adapt_bitjoin_q,
        stall_in => i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_stall_in_bitsignaltemp,
        valid_in => i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_valid_in_bitsignaltemp,
        data_out => i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_data_out,
        stall_out => i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_stall_out_bitsignaltemp,
        valid_out => i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_valid_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- dupName_5_ip_dsdk_adapt_bitselect_x(BITSELECT,21)
    dupName_5_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_data_out(40 downto 40);

    -- dupName_2_adapt_scalar_trunc_x(ROUND,15)
    dupName_2_adapt_scalar_trunc_x_in <= dupName_5_ip_dsdk_adapt_bitselect_x_b;
    dupName_2_adapt_scalar_trunc_x_q <= dupName_2_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_4_ip_dsdk_adapt_bitselect_x(BITSELECT,20)
    dupName_4_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_data_out(32 downto 32);

    -- dupName_1_adapt_scalar_trunc_x(ROUND,10)
    dupName_1_adapt_scalar_trunc_x_in <= dupName_4_ip_dsdk_adapt_bitselect_x_b;
    dupName_1_adapt_scalar_trunc_x_q <= dupName_1_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_1_ip_dsdk_adapt_bitselect_x(BITSELECT,14)
    dupName_1_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_data_out(31 downto 16);

    -- dupName_2_ip_dsdk_adapt_bitselect_x(BITSELECT,18)
    dupName_2_ip_dsdk_adapt_bitselect_x_b <= dupName_1_ip_dsdk_adapt_bitselect_x_b(15 downto 0);

    -- dupName_3_ip_dsdk_adapt_bitselect_x(BITSELECT,19)
    dupName_3_ip_dsdk_adapt_bitselect_x_b <= dupName_2_ip_dsdk_adapt_bitselect_x_b(15 downto 0);

    -- ip_dsdk_adapt_cast(BITSELECT,29)
    ip_dsdk_adapt_cast_b <= dupName_3_ip_dsdk_adapt_bitselect_x_b(15 downto 0);

    -- dupName_0_ip_dsdk_adapt_bitselect_x(BITSELECT,9)
    dupName_0_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_data_out(8 downto 8);

    -- dupName_0_adapt_scalar_trunc_x(ROUND,4)
    dupName_0_adapt_scalar_trunc_x_in <= dupName_0_ip_dsdk_adapt_bitselect_x_b;
    dupName_0_adapt_scalar_trunc_x_q <= dupName_0_adapt_scalar_trunc_x_in(0 downto 0);

    -- ip_dsdk_adapt_bitselect(BITSELECT,28)
    ip_dsdk_adapt_bitselect_b <= i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_data_out(0 downto 0);

    -- adapt_scalar_trunc(ROUND,22)
    adapt_scalar_trunc_in <= ip_dsdk_adapt_bitselect_b;
    adapt_scalar_trunc_q <= adapt_scalar_trunc_in(0 downto 0);

    -- dupName_0_sync_out_aunroll_x(GPOUT,3)@20000003
    out_data_out_0 <= adapt_scalar_trunc_q;
    out_data_out_1 <= dupName_0_adapt_scalar_trunc_x_q;
    out_data_out_2 <= ip_dsdk_adapt_cast_b;
    out_data_out_3 <= dupName_1_adapt_scalar_trunc_x_q;
    out_data_out_4 <= dupName_2_adapt_scalar_trunc_x_q;
    out_valid_out <= i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_valid_out;

    -- sync_out(GPOUT,31)@20000000
    out_stall_out <= i_acl_sfc_exit_c0_0_ac_fixed_0ba_01_0_0_0_qeaa_m_z_exit_sample_buffer_c0_exit13_sample_buffer79_stall_out;

END normal;
