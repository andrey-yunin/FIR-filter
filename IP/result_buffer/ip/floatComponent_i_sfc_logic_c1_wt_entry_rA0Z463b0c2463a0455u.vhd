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

-- VHDL created from floatComponent_i_sfc_logic_c1_wt_entry_result_buffer_c1_enter_result_buffer14_caA0Z54c2463b0c2463a0455u
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

entity floatComponent_i_sfc_logic_c1_wt_entry_result_buffer_c1_enter_result_buffer14_caA0Z54c2463b0c2463a0455u is
    port (
        in_0 : in std_logic_vector(63 downto 0);  -- float64_m52
        out_primWireOut : out std_logic_vector(31 downto 0);  -- float32_m23
        clock : in std_logic;
        resetn : in std_logic
    );
end floatComponent_i_sfc_logic_c1_wt_entry_result_buffer_c1_enter_result_buffer14_caA0Z54c2463b0c2463a0455u;

architecture normal of floatComponent_i_sfc_logic_c1_wt_entry_result_buffer_c1_enter_result_buffer14_caA0Z54c2463b0c2463a0455u is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cstBiasOut_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (11 downto 0);
    signal cstAllOWE_uid7_block_rsrvd_fix_q : STD_LOGIC_VECTOR (10 downto 0);
    signal cstZeroWF_uid8_block_rsrvd_fix_q : STD_LOGIC_VECTOR (51 downto 0);
    signal cstAllZWE_uid9_block_rsrvd_fix_q : STD_LOGIC_VECTOR (10 downto 0);
    signal exp_x_uid10_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal frac_x_uid11_block_rsrvd_fix_b : STD_LOGIC_VECTOR (51 downto 0);
    signal excZ_x_uid12_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid13_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid14_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid15_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_x_uid16_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid17_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid18_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid19_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_x_uid20_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXWOP1_uid23_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal expXFracX_uid24_block_rsrvd_fix_q : STD_LOGIC_VECTOR (34 downto 0);
    signal zeroPaddingInAddition_uid27_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal rndExpUpdate_uid28_block_rsrvd_fix_q : STD_LOGIC_VECTOR (35 downto 0);
    signal expFracR_uid29_block_rsrvd_fix_a : STD_LOGIC_VECTOR (37 downto 0);
    signal expFracR_uid29_block_rsrvd_fix_b : STD_LOGIC_VECTOR (37 downto 0);
    signal expFracR_uid29_block_rsrvd_fix_o : STD_LOGIC_VECTOR (37 downto 0);
    signal expFracR_uid29_block_rsrvd_fix_q : STD_LOGIC_VECTOR (36 downto 0);
    signal fracR_uid30_block_rsrvd_fix_in : STD_LOGIC_VECTOR (23 downto 0);
    signal fracR_uid30_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expR_uid31_block_rsrvd_fix_in : STD_LOGIC_VECTOR (31 downto 0);
    signal expR_uid31_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expRExt_uid32_block_rsrvd_fix_b : STD_LOGIC_VECTOR (12 downto 0);
    signal expUdf_uid33_block_rsrvd_fix_a : STD_LOGIC_VECTOR (14 downto 0);
    signal expUdf_uid33_block_rsrvd_fix_b : STD_LOGIC_VECTOR (14 downto 0);
    signal expUdf_uid33_block_rsrvd_fix_o : STD_LOGIC_VECTOR (14 downto 0);
    signal expUdf_uid33_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal expWEOutAllO_uid34_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal expOvf_uid35_block_rsrvd_fix_a : STD_LOGIC_VECTOR (14 downto 0);
    signal expOvf_uid35_block_rsrvd_fix_b : STD_LOGIC_VECTOR (14 downto 0);
    signal expOvf_uid35_block_rsrvd_fix_o : STD_LOGIC_VECTOR (14 downto 0);
    signal expOvf_uid35_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal inRegAndUdf_uid36_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRZero_uid37_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal inRegAndOvf_uid38_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRInf_uid39_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concExc_uid40_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal excREnc_uid41_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal oneFracRPostExc2_uid42_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRPostExc_uid45_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid45_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal zeroExpRPostExc_uid48_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal expRPostExc_uid49_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid49_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal signX_uid50_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal fpRes_uid51_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- signX_uid50_block_rsrvd_fix(BITSELECT,49)@0
    signX_uid50_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(in_0(63 downto 63));

    -- expWEOutAllO_uid34_block_rsrvd_fix(CONSTANT,33)
    expWEOutAllO_uid34_block_rsrvd_fix_q <= "11111111";

    -- cstBiasOut_uid6_block_rsrvd_fix(CONSTANT,5)
    cstBiasOut_uid6_block_rsrvd_fix_q <= "110010000000";

    -- zeroPaddingInAddition_uid27_block_rsrvd_fix(CONSTANT,26)
    zeroPaddingInAddition_uid27_block_rsrvd_fix_q <= "00000000000000000000000";

    -- rndExpUpdate_uid28_block_rsrvd_fix(BITJOIN,27)@0
    rndExpUpdate_uid28_block_rsrvd_fix_q <= cstBiasOut_uid6_block_rsrvd_fix_q & zeroPaddingInAddition_uid27_block_rsrvd_fix_q & VCC_q;

    -- exp_x_uid10_block_rsrvd_fix(BITSELECT,9)@0
    exp_x_uid10_block_rsrvd_fix_b <= in_0(62 downto 52);

    -- frac_x_uid11_block_rsrvd_fix(BITSELECT,10)@0
    frac_x_uid11_block_rsrvd_fix_b <= in_0(51 downto 0);

    -- fracXWOP1_uid23_block_rsrvd_fix(BITSELECT,22)@0
    fracXWOP1_uid23_block_rsrvd_fix_b <= frac_x_uid11_block_rsrvd_fix_b(51 downto 28);

    -- expXFracX_uid24_block_rsrvd_fix(BITJOIN,23)@0
    expXFracX_uid24_block_rsrvd_fix_q <= exp_x_uid10_block_rsrvd_fix_b & fracXWOP1_uid23_block_rsrvd_fix_b;

    -- expFracR_uid29_block_rsrvd_fix(ADD,28)@0
    expFracR_uid29_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & expXFracX_uid24_block_rsrvd_fix_q));
    expFracR_uid29_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((37 downto 36 => rndExpUpdate_uid28_block_rsrvd_fix_q(35)) & rndExpUpdate_uid28_block_rsrvd_fix_q));
    expFracR_uid29_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expFracR_uid29_block_rsrvd_fix_a) + SIGNED(expFracR_uid29_block_rsrvd_fix_b));
    expFracR_uid29_block_rsrvd_fix_q <= expFracR_uid29_block_rsrvd_fix_o(36 downto 0);

    -- expR_uid31_block_rsrvd_fix(BITSELECT,30)@0
    expR_uid31_block_rsrvd_fix_in <= expFracR_uid29_block_rsrvd_fix_q(31 downto 0);
    expR_uid31_block_rsrvd_fix_b <= expR_uid31_block_rsrvd_fix_in(31 downto 24);

    -- zeroExpRPostExc_uid48_block_rsrvd_fix(CONSTANT,47)
    zeroExpRPostExc_uid48_block_rsrvd_fix_q <= "00000000";

    -- cstZeroWF_uid8_block_rsrvd_fix(CONSTANT,7)
    cstZeroWF_uid8_block_rsrvd_fix_q <= "0000000000000000000000000000000000000000000000000000";

    -- fracXIsZero_uid14_block_rsrvd_fix(LOGICAL,13)@0
    fracXIsZero_uid14_block_rsrvd_fix_q <= "1" WHEN cstZeroWF_uid8_block_rsrvd_fix_q = frac_x_uid11_block_rsrvd_fix_b ELSE "0";

    -- fracXIsNotZero_uid15_block_rsrvd_fix(LOGICAL,14)@0
    fracXIsNotZero_uid15_block_rsrvd_fix_q <= not (fracXIsZero_uid14_block_rsrvd_fix_q);

    -- cstAllOWE_uid7_block_rsrvd_fix(CONSTANT,6)
    cstAllOWE_uid7_block_rsrvd_fix_q <= "11111111111";

    -- expXIsMax_uid13_block_rsrvd_fix(LOGICAL,12)@0
    expXIsMax_uid13_block_rsrvd_fix_q <= "1" WHEN exp_x_uid10_block_rsrvd_fix_b = cstAllOWE_uid7_block_rsrvd_fix_q ELSE "0";

    -- excN_x_uid17_block_rsrvd_fix(LOGICAL,16)@0
    excN_x_uid17_block_rsrvd_fix_q <= expXIsMax_uid13_block_rsrvd_fix_q and fracXIsNotZero_uid15_block_rsrvd_fix_q;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- expRExt_uid32_block_rsrvd_fix(BITSELECT,31)@0
    expRExt_uid32_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(expFracR_uid29_block_rsrvd_fix_q(36 downto 24));

    -- expOvf_uid35_block_rsrvd_fix(COMPARE,34)@0
    expOvf_uid35_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 13 => expRExt_uid32_block_rsrvd_fix_b(12)) & expRExt_uid32_block_rsrvd_fix_b));
    expOvf_uid35_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000000" & expWEOutAllO_uid34_block_rsrvd_fix_q));
    expOvf_uid35_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expOvf_uid35_block_rsrvd_fix_a) - SIGNED(expOvf_uid35_block_rsrvd_fix_b));
    expOvf_uid35_block_rsrvd_fix_n(0) <= not (expOvf_uid35_block_rsrvd_fix_o(14));

    -- invExpXIsMax_uid18_block_rsrvd_fix(LOGICAL,17)@0
    invExpXIsMax_uid18_block_rsrvd_fix_q <= not (expXIsMax_uid13_block_rsrvd_fix_q);

    -- cstAllZWE_uid9_block_rsrvd_fix(CONSTANT,8)
    cstAllZWE_uid9_block_rsrvd_fix_q <= "00000000000";

    -- excZ_x_uid12_block_rsrvd_fix(LOGICAL,11)@0
    excZ_x_uid12_block_rsrvd_fix_q <= "1" WHEN exp_x_uid10_block_rsrvd_fix_b = cstAllZWE_uid9_block_rsrvd_fix_q ELSE "0";

    -- InvExpXIsZero_uid19_block_rsrvd_fix(LOGICAL,18)@0
    InvExpXIsZero_uid19_block_rsrvd_fix_q <= not (excZ_x_uid12_block_rsrvd_fix_q);

    -- excR_x_uid20_block_rsrvd_fix(LOGICAL,19)@0
    excR_x_uid20_block_rsrvd_fix_q <= InvExpXIsZero_uid19_block_rsrvd_fix_q and invExpXIsMax_uid18_block_rsrvd_fix_q;

    -- inRegAndOvf_uid38_block_rsrvd_fix(LOGICAL,37)@0
    inRegAndOvf_uid38_block_rsrvd_fix_q <= excR_x_uid20_block_rsrvd_fix_q and expOvf_uid35_block_rsrvd_fix_n;

    -- excI_x_uid16_block_rsrvd_fix(LOGICAL,15)@0
    excI_x_uid16_block_rsrvd_fix_q <= expXIsMax_uid13_block_rsrvd_fix_q and fracXIsZero_uid14_block_rsrvd_fix_q;

    -- excRInf_uid39_block_rsrvd_fix(LOGICAL,38)@0
    excRInf_uid39_block_rsrvd_fix_q <= excI_x_uid16_block_rsrvd_fix_q or inRegAndOvf_uid38_block_rsrvd_fix_q;

    -- expUdf_uid33_block_rsrvd_fix(COMPARE,32)@0
    expUdf_uid33_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000000000000" & GND_q));
    expUdf_uid33_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 13 => expRExt_uid32_block_rsrvd_fix_b(12)) & expRExt_uid32_block_rsrvd_fix_b));
    expUdf_uid33_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expUdf_uid33_block_rsrvd_fix_a) - SIGNED(expUdf_uid33_block_rsrvd_fix_b));
    expUdf_uid33_block_rsrvd_fix_n(0) <= not (expUdf_uid33_block_rsrvd_fix_o(14));

    -- inRegAndUdf_uid36_block_rsrvd_fix(LOGICAL,35)@0
    inRegAndUdf_uid36_block_rsrvd_fix_q <= excR_x_uid20_block_rsrvd_fix_q and expUdf_uid33_block_rsrvd_fix_n;

    -- excRZero_uid37_block_rsrvd_fix(LOGICAL,36)@0
    excRZero_uid37_block_rsrvd_fix_q <= excZ_x_uid12_block_rsrvd_fix_q or inRegAndUdf_uid36_block_rsrvd_fix_q;

    -- concExc_uid40_block_rsrvd_fix(BITJOIN,39)@0
    concExc_uid40_block_rsrvd_fix_q <= excN_x_uid17_block_rsrvd_fix_q & excRInf_uid39_block_rsrvd_fix_q & excRZero_uid37_block_rsrvd_fix_q;

    -- excREnc_uid41_block_rsrvd_fix(LOOKUP,40)@0
    excREnc_uid41_block_rsrvd_fix_combproc: PROCESS (concExc_uid40_block_rsrvd_fix_q)
    BEGIN
        -- Begin reserved scope level
        CASE (concExc_uid40_block_rsrvd_fix_q) IS
            WHEN "000" => excREnc_uid41_block_rsrvd_fix_q <= "01";
            WHEN "001" => excREnc_uid41_block_rsrvd_fix_q <= "00";
            WHEN "010" => excREnc_uid41_block_rsrvd_fix_q <= "10";
            WHEN "011" => excREnc_uid41_block_rsrvd_fix_q <= "00";
            WHEN "100" => excREnc_uid41_block_rsrvd_fix_q <= "11";
            WHEN "101" => excREnc_uid41_block_rsrvd_fix_q <= "00";
            WHEN "110" => excREnc_uid41_block_rsrvd_fix_q <= "00";
            WHEN "111" => excREnc_uid41_block_rsrvd_fix_q <= "00";
            WHEN OTHERS => -- unreachable
                           excREnc_uid41_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- expRPostExc_uid49_block_rsrvd_fix(MUX,48)@0
    expRPostExc_uid49_block_rsrvd_fix_s <= excREnc_uid41_block_rsrvd_fix_q;
    expRPostExc_uid49_block_rsrvd_fix_combproc: PROCESS (expRPostExc_uid49_block_rsrvd_fix_s, zeroExpRPostExc_uid48_block_rsrvd_fix_q, expR_uid31_block_rsrvd_fix_b, expWEOutAllO_uid34_block_rsrvd_fix_q)
    BEGIN
        CASE (expRPostExc_uid49_block_rsrvd_fix_s) IS
            WHEN "00" => expRPostExc_uid49_block_rsrvd_fix_q <= zeroExpRPostExc_uid48_block_rsrvd_fix_q;
            WHEN "01" => expRPostExc_uid49_block_rsrvd_fix_q <= expR_uid31_block_rsrvd_fix_b;
            WHEN "10" => expRPostExc_uid49_block_rsrvd_fix_q <= expWEOutAllO_uid34_block_rsrvd_fix_q;
            WHEN "11" => expRPostExc_uid49_block_rsrvd_fix_q <= expWEOutAllO_uid34_block_rsrvd_fix_q;
            WHEN OTHERS => expRPostExc_uid49_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- oneFracRPostExc2_uid42_block_rsrvd_fix(CONSTANT,41)
    oneFracRPostExc2_uid42_block_rsrvd_fix_q <= "00000000000000000000001";

    -- fracR_uid30_block_rsrvd_fix(BITSELECT,29)@0
    fracR_uid30_block_rsrvd_fix_in <= expFracR_uid29_block_rsrvd_fix_q(23 downto 0);
    fracR_uid30_block_rsrvd_fix_b <= fracR_uid30_block_rsrvd_fix_in(23 downto 1);

    -- fracRPostExc_uid45_block_rsrvd_fix(MUX,44)@0
    fracRPostExc_uid45_block_rsrvd_fix_s <= excREnc_uid41_block_rsrvd_fix_q;
    fracRPostExc_uid45_block_rsrvd_fix_combproc: PROCESS (fracRPostExc_uid45_block_rsrvd_fix_s, zeroPaddingInAddition_uid27_block_rsrvd_fix_q, fracR_uid30_block_rsrvd_fix_b, oneFracRPostExc2_uid42_block_rsrvd_fix_q)
    BEGIN
        CASE (fracRPostExc_uid45_block_rsrvd_fix_s) IS
            WHEN "00" => fracRPostExc_uid45_block_rsrvd_fix_q <= zeroPaddingInAddition_uid27_block_rsrvd_fix_q;
            WHEN "01" => fracRPostExc_uid45_block_rsrvd_fix_q <= fracR_uid30_block_rsrvd_fix_b;
            WHEN "10" => fracRPostExc_uid45_block_rsrvd_fix_q <= zeroPaddingInAddition_uid27_block_rsrvd_fix_q;
            WHEN "11" => fracRPostExc_uid45_block_rsrvd_fix_q <= oneFracRPostExc2_uid42_block_rsrvd_fix_q;
            WHEN OTHERS => fracRPostExc_uid45_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fpRes_uid51_block_rsrvd_fix(BITJOIN,50)@0
    fpRes_uid51_block_rsrvd_fix_q <= signX_uid50_block_rsrvd_fix_b & expRPostExc_uid49_block_rsrvd_fix_q & fracRPostExc_uid45_block_rsrvd_fix_q;

    -- out_primWireOut(GPOUT,4)@0
    out_primWireOut <= fpRes_uid51_block_rsrvd_fix_q;

END normal;
