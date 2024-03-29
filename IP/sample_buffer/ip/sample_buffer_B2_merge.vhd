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

-- VHDL created from sample_buffer_B2_merge
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

entity sample_buffer_B2_merge is
    port (
        in_forked5_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked5_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_forked : out std_logic_vector(0 downto 0);  -- ufix1
        out_forked5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end sample_buffer_B2_merge;

architecture normal of sample_buffer_B2_merge is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal forked5_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal forked5_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal forked_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal forked_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stall_out_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stall_out_1_specific_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_or_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- forked_mux(MUX,3)
    forked_mux_s <= in_valid_in_0;
    forked_mux_combproc: PROCESS (forked_mux_s, in_forked_1, in_forked_0)
    BEGIN
        CASE (forked_mux_s) IS
            WHEN "0" => forked_mux_q <= in_forked_1;
            WHEN "1" => forked_mux_q <= in_forked_0;
            WHEN OTHERS => forked_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_forked(GPOUT,11)
    out_forked <= forked_mux_q;

    -- forked5_mux(MUX,2)
    forked5_mux_s <= in_valid_in_0;
    forked5_mux_combproc: PROCESS (forked5_mux_s, in_forked5_1, in_forked5_0)
    BEGIN
        CASE (forked5_mux_s) IS
            WHEN "0" => forked5_mux_q <= in_forked5_1;
            WHEN "1" => forked5_mux_q <= in_forked5_0;
            WHEN OTHERS => forked5_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_forked5(GPOUT,12)
    out_forked5 <= forked5_mux_q;

    -- valid_or(LOGICAL,18)
    valid_or_q <= in_valid_in_0 or in_valid_in_1;

    -- stall_out(LOGICAL,16)
    stall_out_q <= valid_or_q and in_stall_in;

    -- out_stall_out_0(GPOUT,13)
    out_stall_out_0 <= stall_out_q;

    -- stall_out_1_specific(LOGICAL,17)
    stall_out_1_specific_q <= in_valid_in_0 or stall_out_q;

    -- out_stall_out_1(GPOUT,14)
    out_stall_out_1 <= stall_out_1_specific_q;

    -- out_valid_out(GPOUT,15)
    out_valid_out <= valid_or_q;

END normal;
