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

-- VHDL created from floatComponent_i_sfc_logic_c1_wt_entry_fir_filter_c1_enter_fir_filter14_multBlocA0Zu20cp0jo00uq0dp0iuzo
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

entity floatComponent_i_sfc_logic_c1_wt_entry_fir_filter_c1_enter_fir_filter14_multBlocA0Zu20cp0jo00uq0dp0iuzo is
    port (
        in_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        out_primWireOut : out std_logic_vector(31 downto 0);  -- float32_m23
        clock : in std_logic;
        resetn : in std_logic
    );
end floatComponent_i_sfc_logic_c1_wt_entry_fir_filter_c1_enter_fir_filter14_multBlocA0Zu20cp0jo00uq0dp0iuzo;

architecture normal of floatComponent_i_sfc_logic_c1_wt_entry_fir_filter_c1_enter_fir_filter14_multBlocA0Zu20cp0jo00uq0dp0iuzo is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expX_uid7_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expY_uid8_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal signX_uid9_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signY_uid10_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal cstAllOWE_uid11_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstZeroWF_uid12_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal cstAllZWE_uid13_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_x_uid15_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_x_uid16_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_x_uid16_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid17_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid17_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid18_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid18_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid19_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_x_uid20_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid21_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid21_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid22_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid23_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_x_uid24_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal frac_y_uid29_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_y_uid30_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_y_uid30_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid31_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid31_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid32_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid32_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid33_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_y_uid34_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_y_uid35_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_y_uid35_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid36_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid37_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_y_uid38_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal ofracX_uid41_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal ofracY_uid44_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal expSum_uid45_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expSum_uid45_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expSum_uid45_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expSum_uid45_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal biasInc_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (9 downto 0);
    signal expSumMBias_uid47_block_rsrvd_fix_a : STD_LOGIC_VECTOR (11 downto 0);
    signal expSumMBias_uid47_block_rsrvd_fix_b : STD_LOGIC_VECTOR (11 downto 0);
    signal expSumMBias_uid47_block_rsrvd_fix_o : STD_LOGIC_VECTOR (11 downto 0);
    signal expSumMBias_uid47_block_rsrvd_fix_q : STD_LOGIC_VECTOR (10 downto 0);
    signal signR_uid49_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal signR_uid49_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal normalizeBit_uid50_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPostNormHigh_uid52_block_rsrvd_fix_in : STD_LOGIC_VECTOR (46 downto 0);
    signal fracRPostNormHigh_uid52_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPostNormLow_uid53_block_rsrvd_fix_in : STD_LOGIC_VECTOR (45 downto 0);
    signal fracRPostNormLow_uid53_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPostNorm_uid54_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPostNorm_uid54_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal stickyRange_uid55_block_rsrvd_fix_in : STD_LOGIC_VECTOR (21 downto 0);
    signal stickyRange_uid55_block_rsrvd_fix_b : STD_LOGIC_VECTOR (21 downto 0);
    signal extraStickyBitOfProd_uid56_block_rsrvd_fix_in : STD_LOGIC_VECTOR (22 downto 0);
    signal extraStickyBitOfProd_uid56_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal extraStickyBit_uid57_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal extraStickyBit_uid57_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stickyExtendedRange_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal stickyRangeComparator_uid60_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal stickyRangeComparator_uid60_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sticky_uid61_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPostNorm1dto0_uid62_block_rsrvd_fix_in : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostNorm1dto0_uid62_block_rsrvd_fix_b : STD_LOGIC_VECTOR (1 downto 0);
    signal lrs_uid63_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal roundBitDetectionConstant_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal roundBitDetectionPattern_uid65_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal roundBitDetectionPattern_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal roundBit_uid66_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expFracPreRound_uid67_block_rsrvd_fix_q : STD_LOGIC_VECTOR (34 downto 0);
    signal roundBitAndNormalizationOp_uid69_block_rsrvd_fix_q : STD_LOGIC_VECTOR (25 downto 0);
    signal expFracRPostRounding_uid70_block_rsrvd_fix_a : STD_LOGIC_VECTOR (36 downto 0);
    signal expFracRPostRounding_uid70_block_rsrvd_fix_b : STD_LOGIC_VECTOR (36 downto 0);
    signal expFracRPostRounding_uid70_block_rsrvd_fix_o : STD_LOGIC_VECTOR (36 downto 0);
    signal expFracRPostRounding_uid70_block_rsrvd_fix_q : STD_LOGIC_VECTOR (35 downto 0);
    signal fracRPreExc_uid71_block_rsrvd_fix_in : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPreExc_uid71_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPreExcExt_uid72_block_rsrvd_fix_b : STD_LOGIC_VECTOR (11 downto 0);
    signal expRPreExc_uid73_block_rsrvd_fix_in : STD_LOGIC_VECTOR (7 downto 0);
    signal expRPreExc_uid73_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expUdf_uid74_block_rsrvd_fix_a : STD_LOGIC_VECTOR (13 downto 0);
    signal expUdf_uid74_block_rsrvd_fix_b : STD_LOGIC_VECTOR (13 downto 0);
    signal expUdf_uid74_block_rsrvd_fix_o : STD_LOGIC_VECTOR (13 downto 0);
    signal expUdf_uid74_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal expOvf_uid76_block_rsrvd_fix_a : STD_LOGIC_VECTOR (13 downto 0);
    signal expOvf_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (13 downto 0);
    signal expOvf_uid76_block_rsrvd_fix_o : STD_LOGIC_VECTOR (13 downto 0);
    signal expOvf_uid76_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal excXZAndExcYZ_uid77_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excXZAndExcYZ_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXZAndExcYR_uid78_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excXZAndExcYR_uid78_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excYZAndExcXR_uid79_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excYZAndExcXR_uid79_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excZC3_uid80_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZC3_uid80_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRZero_uid81_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXIAndExcYI_uid82_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excXIAndExcYI_uid82_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXRAndExcYI_uid83_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excXRAndExcYI_uid83_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excYRAndExcXI_uid84_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excYRAndExcXI_uid84_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal ExcROvfAndInReg_uid85_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal ExcROvfAndInReg_uid85_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRInf_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excYZAndExcXI_uid87_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXZAndExcYI_uid88_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal ZeroTimesInf_uid89_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal ZeroTimesInf_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid90_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concExc_uid91_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal excREnc_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal oneFracRPostExc2_uid93_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRPostExc_uid96_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid96_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPostExc_uid101_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid101_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal invExcRNaN_uid102_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRPostExc_uid103_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal R_uid104_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal osig_uid107_prod_uid48_block_rsrvd_fix_in : STD_LOGIC_VECTOR (47 downto 0);
    signal osig_uid107_prod_uid48_block_rsrvd_fix_b : STD_LOGIC_VECTOR (47 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_im0_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_im0_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_im0_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_im0_reset : std_logic;
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_im0_q : STD_LOGIC_VECTOR (35 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_im3_b0 : STD_LOGIC_VECTOR (5 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_im3_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_im3_reset : std_logic;
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_im3_q : STD_LOGIC_VECTOR (23 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_im6_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_im6_b0 : STD_LOGIC_VECTOR (5 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_im6_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_im6_reset : std_logic;
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_im6_q : STD_LOGIC_VECTOR (23 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_im9_a0 : STD_LOGIC_VECTOR (5 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_im9_b0 : STD_LOGIC_VECTOR (5 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_im9_s1 : STD_LOGIC_VECTOR (11 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_im9_reset : std_logic;
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_im9_q : STD_LOGIC_VECTOR (11 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_align_13_q : STD_LOGIC_VECTOR (41 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_align_13_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_align_15_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_UpperBits_for_b_q : STD_LOGIC_VECTOR (6 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p1_of_2_a : STD_LOGIC_VECTOR (39 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p1_of_2_b : STD_LOGIC_VECTOR (39 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p1_of_2_o : STD_LOGIC_VECTOR (39 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p1_of_2_c : STD_LOGIC_VECTOR (0 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p1_of_2_q : STD_LOGIC_VECTOR (38 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p2_of_2_a : STD_LOGIC_VECTOR (11 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p2_of_2_b : STD_LOGIC_VECTOR (11 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p2_of_2_o : STD_LOGIC_VECTOR (11 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p2_of_2_cin : STD_LOGIC_VECTOR (0 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p2_of_2_q : STD_LOGIC_VECTOR (9 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p1_of_2_a : STD_LOGIC_VECTOR (39 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p1_of_2_b : STD_LOGIC_VECTOR (39 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p1_of_2_o : STD_LOGIC_VECTOR (39 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p1_of_2_c : STD_LOGIC_VECTOR (0 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p1_of_2_q : STD_LOGIC_VECTOR (38 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p2_of_2_a : STD_LOGIC_VECTOR (12 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p2_of_2_b : STD_LOGIC_VECTOR (12 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p2_of_2_o : STD_LOGIC_VECTOR (12 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p2_of_2_cin : STD_LOGIC_VECTOR (0 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p2_of_2_q : STD_LOGIC_VECTOR (10 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_BitJoin_for_q_q : STD_LOGIC_VECTOR (49 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q : STD_LOGIC_VECTOR (38 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q : STD_LOGIC_VECTOR (9 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q : STD_LOGIC_VECTOR (9 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_BitSelect_for_a_BitJoin_for_c_q : STD_LOGIC_VECTOR (10 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_BitSelect_for_b_BitJoin_for_c_q : STD_LOGIC_VECTOR (10 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (5 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (5 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b : STD_LOGIC_VECTOR (2 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c : STD_LOGIC_VECTOR (8 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_b_tessel0_0_merged_bit_select_b : STD_LOGIC_VECTOR (38 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_b_tessel0_0_merged_bit_select_c : STD_LOGIC_VECTOR (2 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_BitSelect_for_b_tessel0_0_merged_bit_select_b : STD_LOGIC_VECTOR (38 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_BitSelect_for_b_tessel0_0_merged_bit_select_c : STD_LOGIC_VECTOR (2 downto 0);
    signal redist0_prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_BitSelect_for_b_tessel0_0_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist1_prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_b_tessel0_0_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist2_prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist3_prodXY_uid106_prod_uid48_block_rsrvd_fix_bs2_merged_bit_select_b_1_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist4_prodXY_uid106_prod_uid48_block_rsrvd_fix_bs1_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist5_prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p1_of_2_q_1_q : STD_LOGIC_VECTOR (38 downto 0);
    signal redist6_prodXY_uid106_prod_uid48_block_rsrvd_fix_im9_q_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal redist7_prodXY_uid106_prod_uid48_block_rsrvd_fix_im6_q_1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist8_prodXY_uid106_prod_uid48_block_rsrvd_fix_im3_q_1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist9_prodXY_uid106_prod_uid48_block_rsrvd_fix_im0_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist10_expRPreExc_uid73_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist11_expRPreExcExt_uid72_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal redist12_fracRPreExc_uid71_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist13_stickyRange_uid55_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (21 downto 0);
    signal redist14_fracRPostNorm_uid54_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist15_fracRPostNorm_uid54_block_rsrvd_fix_q_3_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist16_normalizeBit_uid50_block_rsrvd_fix_b_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_signR_uid49_block_rsrvd_fix_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_expSum_uid45_block_rsrvd_fix_q_8_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist19_fracXIsZero_uid32_block_rsrvd_fix_q_10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_expXIsMax_uid31_block_rsrvd_fix_q_10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_excZ_y_uid30_block_rsrvd_fix_q_10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_fracXIsZero_uid18_block_rsrvd_fix_q_10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist23_expXIsMax_uid17_block_rsrvd_fix_q_10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_excZ_x_uid16_block_rsrvd_fix_q_10_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- frac_x_uid15_block_rsrvd_fix(BITSELECT,14)@0
    frac_x_uid15_block_rsrvd_fix_b <= in_0(22 downto 0);

    -- cstZeroWF_uid12_block_rsrvd_fix(CONSTANT,11)
    cstZeroWF_uid12_block_rsrvd_fix_q <= "00000000000000000000000";

    -- fracXIsZero_uid18_block_rsrvd_fix(LOGICAL,17)@0 + 1
    fracXIsZero_uid18_block_rsrvd_fix_qi <= "1" WHEN cstZeroWF_uid12_block_rsrvd_fix_q = frac_x_uid15_block_rsrvd_fix_b ELSE "0";
    fracXIsZero_uid18_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => fracXIsZero_uid18_block_rsrvd_fix_qi, xout => fracXIsZero_uid18_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist22_fracXIsZero_uid18_block_rsrvd_fix_q_10(DELAY,193)
    redist22_fracXIsZero_uid18_block_rsrvd_fix_q_10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => fracXIsZero_uid18_block_rsrvd_fix_q, xout => redist22_fracXIsZero_uid18_block_rsrvd_fix_q_10_q, clk => clock, aclr => resetn );

    -- cstAllOWE_uid11_block_rsrvd_fix(CONSTANT,10)
    cstAllOWE_uid11_block_rsrvd_fix_q <= "11111111";

    -- expX_uid7_block_rsrvd_fix(BITSELECT,6)@0
    expX_uid7_block_rsrvd_fix_b <= in_0(30 downto 23);

    -- expXIsMax_uid17_block_rsrvd_fix(LOGICAL,16)@0 + 1
    expXIsMax_uid17_block_rsrvd_fix_qi <= "1" WHEN expX_uid7_block_rsrvd_fix_b = cstAllOWE_uid11_block_rsrvd_fix_q ELSE "0";
    expXIsMax_uid17_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => expXIsMax_uid17_block_rsrvd_fix_qi, xout => expXIsMax_uid17_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist23_expXIsMax_uid17_block_rsrvd_fix_q_10(DELAY,194)
    redist23_expXIsMax_uid17_block_rsrvd_fix_q_10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => expXIsMax_uid17_block_rsrvd_fix_q, xout => redist23_expXIsMax_uid17_block_rsrvd_fix_q_10_q, clk => clock, aclr => resetn );

    -- excI_x_uid20_block_rsrvd_fix(LOGICAL,19)@10
    excI_x_uid20_block_rsrvd_fix_q <= redist23_expXIsMax_uid17_block_rsrvd_fix_q_10_q and redist22_fracXIsZero_uid18_block_rsrvd_fix_q_10_q;

    -- cstAllZWE_uid13_block_rsrvd_fix(CONSTANT,12)
    cstAllZWE_uid13_block_rsrvd_fix_q <= "00000000";

    -- expY_uid8_block_rsrvd_fix(BITSELECT,7)@0
    expY_uid8_block_rsrvd_fix_b <= in_1(30 downto 23);

    -- excZ_y_uid30_block_rsrvd_fix(LOGICAL,29)@0 + 1
    excZ_y_uid30_block_rsrvd_fix_qi <= "1" WHEN expY_uid8_block_rsrvd_fix_b = cstAllZWE_uid13_block_rsrvd_fix_q ELSE "0";
    excZ_y_uid30_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excZ_y_uid30_block_rsrvd_fix_qi, xout => excZ_y_uid30_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist21_excZ_y_uid30_block_rsrvd_fix_q_10(DELAY,192)
    redist21_excZ_y_uid30_block_rsrvd_fix_q_10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excZ_y_uid30_block_rsrvd_fix_q, xout => redist21_excZ_y_uid30_block_rsrvd_fix_q_10_q, clk => clock, aclr => resetn );

    -- excYZAndExcXI_uid87_block_rsrvd_fix(LOGICAL,86)@10
    excYZAndExcXI_uid87_block_rsrvd_fix_q <= redist21_excZ_y_uid30_block_rsrvd_fix_q_10_q and excI_x_uid20_block_rsrvd_fix_q;

    -- frac_y_uid29_block_rsrvd_fix(BITSELECT,28)@0
    frac_y_uid29_block_rsrvd_fix_b <= in_1(22 downto 0);

    -- fracXIsZero_uid32_block_rsrvd_fix(LOGICAL,31)@0 + 1
    fracXIsZero_uid32_block_rsrvd_fix_qi <= "1" WHEN cstZeroWF_uid12_block_rsrvd_fix_q = frac_y_uid29_block_rsrvd_fix_b ELSE "0";
    fracXIsZero_uid32_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => fracXIsZero_uid32_block_rsrvd_fix_qi, xout => fracXIsZero_uid32_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist19_fracXIsZero_uid32_block_rsrvd_fix_q_10(DELAY,190)
    redist19_fracXIsZero_uid32_block_rsrvd_fix_q_10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => fracXIsZero_uid32_block_rsrvd_fix_q, xout => redist19_fracXIsZero_uid32_block_rsrvd_fix_q_10_q, clk => clock, aclr => resetn );

    -- expXIsMax_uid31_block_rsrvd_fix(LOGICAL,30)@0 + 1
    expXIsMax_uid31_block_rsrvd_fix_qi <= "1" WHEN expY_uid8_block_rsrvd_fix_b = cstAllOWE_uid11_block_rsrvd_fix_q ELSE "0";
    expXIsMax_uid31_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => expXIsMax_uid31_block_rsrvd_fix_qi, xout => expXIsMax_uid31_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist20_expXIsMax_uid31_block_rsrvd_fix_q_10(DELAY,191)
    redist20_expXIsMax_uid31_block_rsrvd_fix_q_10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => expXIsMax_uid31_block_rsrvd_fix_q, xout => redist20_expXIsMax_uid31_block_rsrvd_fix_q_10_q, clk => clock, aclr => resetn );

    -- excI_y_uid34_block_rsrvd_fix(LOGICAL,33)@10
    excI_y_uid34_block_rsrvd_fix_q <= redist20_expXIsMax_uid31_block_rsrvd_fix_q_10_q and redist19_fracXIsZero_uid32_block_rsrvd_fix_q_10_q;

    -- excZ_x_uid16_block_rsrvd_fix(LOGICAL,15)@0 + 1
    excZ_x_uid16_block_rsrvd_fix_qi <= "1" WHEN expX_uid7_block_rsrvd_fix_b = cstAllZWE_uid13_block_rsrvd_fix_q ELSE "0";
    excZ_x_uid16_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excZ_x_uid16_block_rsrvd_fix_qi, xout => excZ_x_uid16_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist24_excZ_x_uid16_block_rsrvd_fix_q_10(DELAY,195)
    redist24_excZ_x_uid16_block_rsrvd_fix_q_10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excZ_x_uid16_block_rsrvd_fix_q, xout => redist24_excZ_x_uid16_block_rsrvd_fix_q_10_q, clk => clock, aclr => resetn );

    -- excXZAndExcYI_uid88_block_rsrvd_fix(LOGICAL,87)@10
    excXZAndExcYI_uid88_block_rsrvd_fix_q <= redist24_excZ_x_uid16_block_rsrvd_fix_q_10_q and excI_y_uid34_block_rsrvd_fix_q;

    -- ZeroTimesInf_uid89_block_rsrvd_fix(LOGICAL,88)@10 + 1
    ZeroTimesInf_uid89_block_rsrvd_fix_qi <= excXZAndExcYI_uid88_block_rsrvd_fix_q or excYZAndExcXI_uid87_block_rsrvd_fix_q;
    ZeroTimesInf_uid89_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => ZeroTimesInf_uid89_block_rsrvd_fix_qi, xout => ZeroTimesInf_uid89_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- fracXIsNotZero_uid33_block_rsrvd_fix(LOGICAL,32)@10
    fracXIsNotZero_uid33_block_rsrvd_fix_q <= not (redist19_fracXIsZero_uid32_block_rsrvd_fix_q_10_q);

    -- excN_y_uid35_block_rsrvd_fix(LOGICAL,34)@10 + 1
    excN_y_uid35_block_rsrvd_fix_qi <= redist20_expXIsMax_uid31_block_rsrvd_fix_q_10_q and fracXIsNotZero_uid33_block_rsrvd_fix_q;
    excN_y_uid35_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excN_y_uid35_block_rsrvd_fix_qi, xout => excN_y_uid35_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- fracXIsNotZero_uid19_block_rsrvd_fix(LOGICAL,18)@10
    fracXIsNotZero_uid19_block_rsrvd_fix_q <= not (redist22_fracXIsZero_uid18_block_rsrvd_fix_q_10_q);

    -- excN_x_uid21_block_rsrvd_fix(LOGICAL,20)@10 + 1
    excN_x_uid21_block_rsrvd_fix_qi <= redist23_expXIsMax_uid17_block_rsrvd_fix_q_10_q and fracXIsNotZero_uid19_block_rsrvd_fix_q;
    excN_x_uid21_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excN_x_uid21_block_rsrvd_fix_qi, xout => excN_x_uid21_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- excRNaN_uid90_block_rsrvd_fix(LOGICAL,89)@11
    excRNaN_uid90_block_rsrvd_fix_q <= excN_x_uid21_block_rsrvd_fix_q or excN_y_uid35_block_rsrvd_fix_q or ZeroTimesInf_uid89_block_rsrvd_fix_q;

    -- invExcRNaN_uid102_block_rsrvd_fix(LOGICAL,101)@11
    invExcRNaN_uid102_block_rsrvd_fix_q <= not (excRNaN_uid90_block_rsrvd_fix_q);

    -- signY_uid10_block_rsrvd_fix(BITSELECT,9)@0
    signY_uid10_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(in_1(31 downto 31));

    -- signX_uid9_block_rsrvd_fix(BITSELECT,8)@0
    signX_uid9_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(in_0(31 downto 31));

    -- signR_uid49_block_rsrvd_fix(LOGICAL,48)@0 + 1
    signR_uid49_block_rsrvd_fix_qi <= signX_uid9_block_rsrvd_fix_b xor signY_uid10_block_rsrvd_fix_b;
    signR_uid49_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => signR_uid49_block_rsrvd_fix_qi, xout => signR_uid49_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist17_signR_uid49_block_rsrvd_fix_q_11(DELAY,188)
    redist17_signR_uid49_block_rsrvd_fix_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 10, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => signR_uid49_block_rsrvd_fix_q, xout => redist17_signR_uid49_block_rsrvd_fix_q_11_q, clk => clock, aclr => resetn );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- signRPostExc_uid103_block_rsrvd_fix(LOGICAL,102)@11
    signRPostExc_uid103_block_rsrvd_fix_q <= redist17_signR_uid49_block_rsrvd_fix_q_11_q and invExcRNaN_uid102_block_rsrvd_fix_q;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- ofracX_uid41_block_rsrvd_fix(BITJOIN,40)@0
    ofracX_uid41_block_rsrvd_fix_q <= VCC_q & frac_x_uid15_block_rsrvd_fix_b;

    -- prodXY_uid106_prod_uid48_block_rsrvd_fix_bs1_merged_bit_select(BITSELECT,166)@0
    prodXY_uid106_prod_uid48_block_rsrvd_fix_bs1_merged_bit_select_b <= ofracX_uid41_block_rsrvd_fix_q(17 downto 0);
    prodXY_uid106_prod_uid48_block_rsrvd_fix_bs1_merged_bit_select_c <= ofracX_uid41_block_rsrvd_fix_q(23 downto 18);

    -- redist4_prodXY_uid106_prod_uid48_block_rsrvd_fix_bs1_merged_bit_select_c_1(DELAY,175)
    redist4_prodXY_uid106_prod_uid48_block_rsrvd_fix_bs1_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodXY_uid106_prod_uid48_block_rsrvd_fix_bs1_merged_bit_select_c, xout => redist4_prodXY_uid106_prod_uid48_block_rsrvd_fix_bs1_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- ofracY_uid44_block_rsrvd_fix(BITJOIN,43)@0
    ofracY_uid44_block_rsrvd_fix_q <= VCC_q & frac_y_uid29_block_rsrvd_fix_b;

    -- prodXY_uid106_prod_uid48_block_rsrvd_fix_bs2_merged_bit_select(BITSELECT,167)@0
    prodXY_uid106_prod_uid48_block_rsrvd_fix_bs2_merged_bit_select_b <= ofracY_uid44_block_rsrvd_fix_q(17 downto 0);
    prodXY_uid106_prod_uid48_block_rsrvd_fix_bs2_merged_bit_select_c <= ofracY_uid44_block_rsrvd_fix_q(23 downto 18);

    -- redist3_prodXY_uid106_prod_uid48_block_rsrvd_fix_bs2_merged_bit_select_b_1(DELAY,174)
    redist3_prodXY_uid106_prod_uid48_block_rsrvd_fix_bs2_merged_bit_select_b_1 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodXY_uid106_prod_uid48_block_rsrvd_fix_bs2_merged_bit_select_b, xout => redist3_prodXY_uid106_prod_uid48_block_rsrvd_fix_bs2_merged_bit_select_b_1_q, clk => clock, aclr => resetn );

    -- prodXY_uid106_prod_uid48_block_rsrvd_fix_im6(MULT,114)@1 + 2
    prodXY_uid106_prod_uid48_block_rsrvd_fix_im6_a0 <= redist3_prodXY_uid106_prod_uid48_block_rsrvd_fix_bs2_merged_bit_select_b_1_q;
    prodXY_uid106_prod_uid48_block_rsrvd_fix_im6_b0 <= redist4_prodXY_uid106_prod_uid48_block_rsrvd_fix_bs1_merged_bit_select_c_1_q;
    prodXY_uid106_prod_uid48_block_rsrvd_fix_im6_reset <= not (resetn);
    prodXY_uid106_prod_uid48_block_rsrvd_fix_im6_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 6,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => prodXY_uid106_prod_uid48_block_rsrvd_fix_im6_a0,
        datab => prodXY_uid106_prod_uid48_block_rsrvd_fix_im6_b0,
        clken => VCC_q(0),
        aclr => prodXY_uid106_prod_uid48_block_rsrvd_fix_im6_reset,
        clock => clock,
        result => prodXY_uid106_prod_uid48_block_rsrvd_fix_im6_s1
    );
    prodXY_uid106_prod_uid48_block_rsrvd_fix_im6_q <= prodXY_uid106_prod_uid48_block_rsrvd_fix_im6_s1;

    -- redist7_prodXY_uid106_prod_uid48_block_rsrvd_fix_im6_q_1(DELAY,178)
    redist7_prodXY_uid106_prod_uid48_block_rsrvd_fix_im6_q_1 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodXY_uid106_prod_uid48_block_rsrvd_fix_im6_q, xout => redist7_prodXY_uid106_prod_uid48_block_rsrvd_fix_im6_q_1_q, clk => clock, aclr => resetn );

    -- prodXY_uid106_prod_uid48_block_rsrvd_fix_align_15(BITSHIFT,123)@4
    prodXY_uid106_prod_uid48_block_rsrvd_fix_align_15_qint <= redist7_prodXY_uid106_prod_uid48_block_rsrvd_fix_im6_q_1_q & "000000000000000000";
    prodXY_uid106_prod_uid48_block_rsrvd_fix_align_15_q <= prodXY_uid106_prod_uid48_block_rsrvd_fix_align_15_qint(41 downto 0);

    -- prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_BitSelect_for_b_tessel0_0_merged_bit_select(BITSELECT,170)@4
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_BitSelect_for_b_tessel0_0_merged_bit_select_b <= STD_LOGIC_VECTOR(prodXY_uid106_prod_uid48_block_rsrvd_fix_align_15_q(38 downto 0));
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_BitSelect_for_b_tessel0_0_merged_bit_select_c <= STD_LOGIC_VECTOR(prodXY_uid106_prod_uid48_block_rsrvd_fix_align_15_q(41 downto 39));

    -- prodXY_uid106_prod_uid48_block_rsrvd_fix_im3(MULT,111)@0 + 2
    prodXY_uid106_prod_uid48_block_rsrvd_fix_im3_a0 <= prodXY_uid106_prod_uid48_block_rsrvd_fix_bs1_merged_bit_select_b;
    prodXY_uid106_prod_uid48_block_rsrvd_fix_im3_b0 <= prodXY_uid106_prod_uid48_block_rsrvd_fix_bs2_merged_bit_select_c;
    prodXY_uid106_prod_uid48_block_rsrvd_fix_im3_reset <= not (resetn);
    prodXY_uid106_prod_uid48_block_rsrvd_fix_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 6,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => prodXY_uid106_prod_uid48_block_rsrvd_fix_im3_a0,
        datab => prodXY_uid106_prod_uid48_block_rsrvd_fix_im3_b0,
        clken => VCC_q(0),
        aclr => prodXY_uid106_prod_uid48_block_rsrvd_fix_im3_reset,
        clock => clock,
        result => prodXY_uid106_prod_uid48_block_rsrvd_fix_im3_s1
    );
    prodXY_uid106_prod_uid48_block_rsrvd_fix_im3_q <= prodXY_uid106_prod_uid48_block_rsrvd_fix_im3_s1;

    -- redist8_prodXY_uid106_prod_uid48_block_rsrvd_fix_im3_q_1(DELAY,179)
    redist8_prodXY_uid106_prod_uid48_block_rsrvd_fix_im3_q_1 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodXY_uid106_prod_uid48_block_rsrvd_fix_im3_q, xout => redist8_prodXY_uid106_prod_uid48_block_rsrvd_fix_im3_q_1_q, clk => clock, aclr => resetn );

    -- prodXY_uid106_prod_uid48_block_rsrvd_fix_align_13(BITSHIFT,121)@3
    prodXY_uid106_prod_uid48_block_rsrvd_fix_align_13_qint <= redist8_prodXY_uid106_prod_uid48_block_rsrvd_fix_im3_q_1_q & "000000000000000000";
    prodXY_uid106_prod_uid48_block_rsrvd_fix_align_13_q <= prodXY_uid106_prod_uid48_block_rsrvd_fix_align_13_qint(41 downto 0);

    -- prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_b_tessel0_0_merged_bit_select(BITSELECT,169)@3
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_b_tessel0_0_merged_bit_select_b <= STD_LOGIC_VECTOR(prodXY_uid106_prod_uid48_block_rsrvd_fix_align_13_q(38 downto 0));
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_b_tessel0_0_merged_bit_select_c <= STD_LOGIC_VECTOR(prodXY_uid106_prod_uid48_block_rsrvd_fix_align_13_q(41 downto 39));

    -- prodXY_uid106_prod_uid48_block_rsrvd_fix_im9(MULT,117)@0 + 2
    prodXY_uid106_prod_uid48_block_rsrvd_fix_im9_a0 <= prodXY_uid106_prod_uid48_block_rsrvd_fix_bs1_merged_bit_select_c;
    prodXY_uid106_prod_uid48_block_rsrvd_fix_im9_b0 <= prodXY_uid106_prod_uid48_block_rsrvd_fix_bs2_merged_bit_select_c;
    prodXY_uid106_prod_uid48_block_rsrvd_fix_im9_reset <= not (resetn);
    prodXY_uid106_prod_uid48_block_rsrvd_fix_im9_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 6,
        lpm_widthb => 6,
        lpm_widthp => 12,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => prodXY_uid106_prod_uid48_block_rsrvd_fix_im9_a0,
        datab => prodXY_uid106_prod_uid48_block_rsrvd_fix_im9_b0,
        clken => VCC_q(0),
        aclr => prodXY_uid106_prod_uid48_block_rsrvd_fix_im9_reset,
        clock => clock,
        result => prodXY_uid106_prod_uid48_block_rsrvd_fix_im9_s1
    );
    prodXY_uid106_prod_uid48_block_rsrvd_fix_im9_q <= prodXY_uid106_prod_uid48_block_rsrvd_fix_im9_s1;

    -- redist6_prodXY_uid106_prod_uid48_block_rsrvd_fix_im9_q_1(DELAY,177)
    redist6_prodXY_uid106_prod_uid48_block_rsrvd_fix_im9_q_1 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodXY_uid106_prod_uid48_block_rsrvd_fix_im9_q, xout => redist6_prodXY_uid106_prod_uid48_block_rsrvd_fix_im9_q_1_q, clk => clock, aclr => resetn );

    -- prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select(BITSELECT,168)@3
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b <= STD_LOGIC_VECTOR(redist6_prodXY_uid106_prod_uid48_block_rsrvd_fix_im9_q_1_q(2 downto 0));
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c <= STD_LOGIC_VECTOR(redist6_prodXY_uid106_prod_uid48_block_rsrvd_fix_im9_q_1_q(11 downto 3));

    -- prodXY_uid106_prod_uid48_block_rsrvd_fix_im0(MULT,108)@0 + 2
    prodXY_uid106_prod_uid48_block_rsrvd_fix_im0_a0 <= prodXY_uid106_prod_uid48_block_rsrvd_fix_bs1_merged_bit_select_b;
    prodXY_uid106_prod_uid48_block_rsrvd_fix_im0_b0 <= prodXY_uid106_prod_uid48_block_rsrvd_fix_bs2_merged_bit_select_b;
    prodXY_uid106_prod_uid48_block_rsrvd_fix_im0_reset <= not (resetn);
    prodXY_uid106_prod_uid48_block_rsrvd_fix_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => prodXY_uid106_prod_uid48_block_rsrvd_fix_im0_a0,
        datab => prodXY_uid106_prod_uid48_block_rsrvd_fix_im0_b0,
        clken => VCC_q(0),
        aclr => prodXY_uid106_prod_uid48_block_rsrvd_fix_im0_reset,
        clock => clock,
        result => prodXY_uid106_prod_uid48_block_rsrvd_fix_im0_s1
    );
    prodXY_uid106_prod_uid48_block_rsrvd_fix_im0_q <= prodXY_uid106_prod_uid48_block_rsrvd_fix_im0_s1;

    -- redist9_prodXY_uid106_prod_uid48_block_rsrvd_fix_im0_q_1(DELAY,180)
    redist9_prodXY_uid106_prod_uid48_block_rsrvd_fix_im0_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodXY_uid106_prod_uid48_block_rsrvd_fix_im0_q, xout => redist9_prodXY_uid106_prod_uid48_block_rsrvd_fix_im0_q_1_q, clk => clock, aclr => resetn );

    -- prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,147)@3
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q <= prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b & redist9_prodXY_uid106_prod_uid48_block_rsrvd_fix_im0_q_1_q;

    -- prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p1_of_2(ADD,133)@3 + 1
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p1_of_2_a <= STD_LOGIC_VECTOR("0" & prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q);
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p1_of_2_b <= STD_LOGIC_VECTOR("0" & prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_b_tessel0_0_merged_bit_select_b);
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p1_of_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p1_of_2_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p1_of_2_o <= STD_LOGIC_VECTOR(UNSIGNED(prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p1_of_2_a) + UNSIGNED(prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p1_of_2_b));
        END IF;
    END PROCESS;
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p1_of_2_c(0) <= prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p1_of_2_o(39);
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p1_of_2_q <= prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p1_of_2_o(38 downto 0);

    -- prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p1_of_2(ADD,142)@4 + 1
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p1_of_2_a <= STD_LOGIC_VECTOR("0" & prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p1_of_2_q);
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p1_of_2_b <= STD_LOGIC_VECTOR("0" & prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_BitSelect_for_b_tessel0_0_merged_bit_select_b);
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p1_of_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p1_of_2_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p1_of_2_o <= STD_LOGIC_VECTOR(UNSIGNED(prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p1_of_2_a) + UNSIGNED(prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p1_of_2_b));
        END IF;
    END PROCESS;
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p1_of_2_c(0) <= prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p1_of_2_o(39);
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p1_of_2_q <= prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p1_of_2_o(38 downto 0);

    -- redist0_prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_BitSelect_for_b_tessel0_0_merged_bit_select_c_1(DELAY,171)
    redist0_prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_BitSelect_for_b_tessel0_0_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 3, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_BitSelect_for_b_tessel0_0_merged_bit_select_c, xout => redist0_prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_BitSelect_for_b_tessel0_0_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,165)@5
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_BitSelect_for_b_BitJoin_for_c_q <= cstAllZWE_uid13_block_rsrvd_fix_q & redist0_prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_BitSelect_for_b_tessel0_0_merged_bit_select_c_1_q;

    -- prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_UpperBits_for_b(CONSTANT,130)
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_UpperBits_for_b_q <= "0000000";

    -- redist1_prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_b_tessel0_0_merged_bit_select_c_1(DELAY,172)
    redist1_prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_b_tessel0_0_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 3, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_b_tessel0_0_merged_bit_select_c, xout => redist1_prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_b_tessel0_0_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,155)@4
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q <= prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_UpperBits_for_b_q & redist1_prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_b_tessel0_0_merged_bit_select_c_1_q;

    -- redist2_prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1(DELAY,173)
    redist2_prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 9, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c, xout => redist2_prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,150)@4
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q <= GND_q & redist2_prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q;

    -- prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p2_of_2(ADD,134)@4 + 1
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p2_of_2_cin <= prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p1_of_2_c;
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p2_of_2_a <= STD_LOGIC_VECTOR("0" & prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q) & '1';
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p2_of_2_b <= STD_LOGIC_VECTOR("0" & prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q) & prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p2_of_2_cin(0);
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p2_of_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p2_of_2_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p2_of_2_o <= STD_LOGIC_VECTOR(UNSIGNED(prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p2_of_2_a) + UNSIGNED(prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p2_of_2_b));
        END IF;
    END PROCESS;
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p2_of_2_q <= prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p2_of_2_o(10 downto 1);

    -- prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,160)@5
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_BitSelect_for_a_BitJoin_for_c_q <= GND_q & prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_0_0_p2_of_2_q;

    -- prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p2_of_2(ADD,143)@5 + 1
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p2_of_2_cin <= prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p1_of_2_c;
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p2_of_2_a <= STD_LOGIC_VECTOR("0" & prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_BitSelect_for_a_BitJoin_for_c_q) & '1';
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p2_of_2_b <= STD_LOGIC_VECTOR("0" & prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_BitSelect_for_b_BitJoin_for_c_q) & prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p2_of_2_cin(0);
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p2_of_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p2_of_2_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p2_of_2_o <= STD_LOGIC_VECTOR(UNSIGNED(prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p2_of_2_a) + UNSIGNED(prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p2_of_2_b));
        END IF;
    END PROCESS;
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p2_of_2_q <= prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p2_of_2_o(11 downto 1);

    -- redist5_prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p1_of_2_q_1(DELAY,176)
    redist5_prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p1_of_2_q_1 : dspba_delay
    GENERIC MAP ( width => 39, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p1_of_2_q, xout => redist5_prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p1_of_2_q_1_q, clk => clock, aclr => resetn );

    -- prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_BitJoin_for_q(BITJOIN,144)@6
    prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_BitJoin_for_q_q <= prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p2_of_2_q & redist5_prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_p1_of_2_q_1_q;

    -- osig_uid107_prod_uid48_block_rsrvd_fix(BITSELECT,106)@6
    osig_uid107_prod_uid48_block_rsrvd_fix_in <= prodXY_uid106_prod_uid48_block_rsrvd_fix_result_add_1_0_BitJoin_for_q_q(47 downto 0);
    osig_uid107_prod_uid48_block_rsrvd_fix_b <= osig_uid107_prod_uid48_block_rsrvd_fix_in(47 downto 0);

    -- normalizeBit_uid50_block_rsrvd_fix(BITSELECT,49)@6
    normalizeBit_uid50_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(osig_uid107_prod_uid48_block_rsrvd_fix_b(47 downto 47));

    -- redist16_normalizeBit_uid50_block_rsrvd_fix_b_3(DELAY,187)
    redist16_normalizeBit_uid50_block_rsrvd_fix_b_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => normalizeBit_uid50_block_rsrvd_fix_b, xout => redist16_normalizeBit_uid50_block_rsrvd_fix_b_3_q, clk => clock, aclr => resetn );

    -- roundBitDetectionConstant_uid64_block_rsrvd_fix(CONSTANT,63)
    roundBitDetectionConstant_uid64_block_rsrvd_fix_q <= "010";

    -- fracRPostNormHigh_uid52_block_rsrvd_fix(BITSELECT,51)@6
    fracRPostNormHigh_uid52_block_rsrvd_fix_in <= osig_uid107_prod_uid48_block_rsrvd_fix_b(46 downto 0);
    fracRPostNormHigh_uid52_block_rsrvd_fix_b <= fracRPostNormHigh_uid52_block_rsrvd_fix_in(46 downto 23);

    -- fracRPostNormLow_uid53_block_rsrvd_fix(BITSELECT,52)@6
    fracRPostNormLow_uid53_block_rsrvd_fix_in <= osig_uid107_prod_uid48_block_rsrvd_fix_b(45 downto 0);
    fracRPostNormLow_uid53_block_rsrvd_fix_b <= fracRPostNormLow_uid53_block_rsrvd_fix_in(45 downto 22);

    -- fracRPostNorm_uid54_block_rsrvd_fix(MUX,53)@6 + 1
    fracRPostNorm_uid54_block_rsrvd_fix_s <= normalizeBit_uid50_block_rsrvd_fix_b;
    fracRPostNorm_uid54_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            fracRPostNorm_uid54_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (fracRPostNorm_uid54_block_rsrvd_fix_s) IS
                WHEN "0" => fracRPostNorm_uid54_block_rsrvd_fix_q <= fracRPostNormLow_uid53_block_rsrvd_fix_b;
                WHEN "1" => fracRPostNorm_uid54_block_rsrvd_fix_q <= fracRPostNormHigh_uid52_block_rsrvd_fix_b;
                WHEN OTHERS => fracRPostNorm_uid54_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist14_fracRPostNorm_uid54_block_rsrvd_fix_q_2(DELAY,185)
    redist14_fracRPostNorm_uid54_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => fracRPostNorm_uid54_block_rsrvd_fix_q, xout => redist14_fracRPostNorm_uid54_block_rsrvd_fix_q_2_q, clk => clock, aclr => resetn );

    -- fracRPostNorm1dto0_uid62_block_rsrvd_fix(BITSELECT,61)@8
    fracRPostNorm1dto0_uid62_block_rsrvd_fix_in <= redist14_fracRPostNorm_uid54_block_rsrvd_fix_q_2_q(1 downto 0);
    fracRPostNorm1dto0_uid62_block_rsrvd_fix_b <= fracRPostNorm1dto0_uid62_block_rsrvd_fix_in(1 downto 0);

    -- extraStickyBitOfProd_uid56_block_rsrvd_fix(BITSELECT,55)@6
    extraStickyBitOfProd_uid56_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(osig_uid107_prod_uid48_block_rsrvd_fix_b(22 downto 0));
    extraStickyBitOfProd_uid56_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(extraStickyBitOfProd_uid56_block_rsrvd_fix_in(22 downto 22));

    -- extraStickyBit_uid57_block_rsrvd_fix(MUX,56)@6 + 1
    extraStickyBit_uid57_block_rsrvd_fix_s <= normalizeBit_uid50_block_rsrvd_fix_b;
    extraStickyBit_uid57_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            extraStickyBit_uid57_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (extraStickyBit_uid57_block_rsrvd_fix_s) IS
                WHEN "0" => extraStickyBit_uid57_block_rsrvd_fix_q <= GND_q;
                WHEN "1" => extraStickyBit_uid57_block_rsrvd_fix_q <= extraStickyBitOfProd_uid56_block_rsrvd_fix_b;
                WHEN OTHERS => extraStickyBit_uid57_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- stickyRange_uid55_block_rsrvd_fix(BITSELECT,54)@6
    stickyRange_uid55_block_rsrvd_fix_in <= osig_uid107_prod_uid48_block_rsrvd_fix_b(21 downto 0);
    stickyRange_uid55_block_rsrvd_fix_b <= stickyRange_uid55_block_rsrvd_fix_in(21 downto 0);

    -- redist13_stickyRange_uid55_block_rsrvd_fix_b_1(DELAY,184)
    redist13_stickyRange_uid55_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 22, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => stickyRange_uid55_block_rsrvd_fix_b, xout => redist13_stickyRange_uid55_block_rsrvd_fix_b_1_q, clk => clock, aclr => resetn );

    -- stickyExtendedRange_uid58_block_rsrvd_fix(BITJOIN,57)@7
    stickyExtendedRange_uid58_block_rsrvd_fix_q <= extraStickyBit_uid57_block_rsrvd_fix_q & redist13_stickyRange_uid55_block_rsrvd_fix_b_1_q;

    -- stickyRangeComparator_uid60_block_rsrvd_fix(LOGICAL,59)@7 + 1
    stickyRangeComparator_uid60_block_rsrvd_fix_qi <= "1" WHEN stickyExtendedRange_uid58_block_rsrvd_fix_q = cstZeroWF_uid12_block_rsrvd_fix_q ELSE "0";
    stickyRangeComparator_uid60_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => stickyRangeComparator_uid60_block_rsrvd_fix_qi, xout => stickyRangeComparator_uid60_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- sticky_uid61_block_rsrvd_fix(LOGICAL,60)@8
    sticky_uid61_block_rsrvd_fix_q <= not (stickyRangeComparator_uid60_block_rsrvd_fix_q);

    -- lrs_uid63_block_rsrvd_fix(BITJOIN,62)@8
    lrs_uid63_block_rsrvd_fix_q <= fracRPostNorm1dto0_uid62_block_rsrvd_fix_b & sticky_uid61_block_rsrvd_fix_q;

    -- roundBitDetectionPattern_uid65_block_rsrvd_fix(LOGICAL,64)@8 + 1
    roundBitDetectionPattern_uid65_block_rsrvd_fix_qi <= "1" WHEN lrs_uid63_block_rsrvd_fix_q = roundBitDetectionConstant_uid64_block_rsrvd_fix_q ELSE "0";
    roundBitDetectionPattern_uid65_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => roundBitDetectionPattern_uid65_block_rsrvd_fix_qi, xout => roundBitDetectionPattern_uid65_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- roundBit_uid66_block_rsrvd_fix(LOGICAL,65)@9
    roundBit_uid66_block_rsrvd_fix_q <= not (roundBitDetectionPattern_uid65_block_rsrvd_fix_q);

    -- roundBitAndNormalizationOp_uid69_block_rsrvd_fix(BITJOIN,68)@9
    roundBitAndNormalizationOp_uid69_block_rsrvd_fix_q <= GND_q & redist16_normalizeBit_uid50_block_rsrvd_fix_b_3_q & cstZeroWF_uid12_block_rsrvd_fix_q & roundBit_uid66_block_rsrvd_fix_q;

    -- biasInc_uid46_block_rsrvd_fix(CONSTANT,45)
    biasInc_uid46_block_rsrvd_fix_q <= "0001111111";

    -- expSum_uid45_block_rsrvd_fix(ADD,44)@0 + 1
    expSum_uid45_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & expX_uid7_block_rsrvd_fix_b);
    expSum_uid45_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0" & expY_uid8_block_rsrvd_fix_b);
    expSum_uid45_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            expSum_uid45_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            expSum_uid45_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expSum_uid45_block_rsrvd_fix_a) + UNSIGNED(expSum_uid45_block_rsrvd_fix_b));
        END IF;
    END PROCESS;
    expSum_uid45_block_rsrvd_fix_q <= expSum_uid45_block_rsrvd_fix_o(8 downto 0);

    -- redist18_expSum_uid45_block_rsrvd_fix_q_8(DELAY,189)
    redist18_expSum_uid45_block_rsrvd_fix_q_8 : dspba_delay
    GENERIC MAP ( width => 9, depth => 7, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => expSum_uid45_block_rsrvd_fix_q, xout => redist18_expSum_uid45_block_rsrvd_fix_q_8_q, clk => clock, aclr => resetn );

    -- expSumMBias_uid47_block_rsrvd_fix(SUB,46)@8 + 1
    expSumMBias_uid47_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & redist18_expSum_uid45_block_rsrvd_fix_q_8_q));
    expSumMBias_uid47_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 10 => biasInc_uid46_block_rsrvd_fix_q(9)) & biasInc_uid46_block_rsrvd_fix_q));
    expSumMBias_uid47_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            expSumMBias_uid47_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            expSumMBias_uid47_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expSumMBias_uid47_block_rsrvd_fix_a) - SIGNED(expSumMBias_uid47_block_rsrvd_fix_b));
        END IF;
    END PROCESS;
    expSumMBias_uid47_block_rsrvd_fix_q <= expSumMBias_uid47_block_rsrvd_fix_o(10 downto 0);

    -- redist15_fracRPostNorm_uid54_block_rsrvd_fix_q_3(DELAY,186)
    redist15_fracRPostNorm_uid54_block_rsrvd_fix_q_3 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist14_fracRPostNorm_uid54_block_rsrvd_fix_q_2_q, xout => redist15_fracRPostNorm_uid54_block_rsrvd_fix_q_3_q, clk => clock, aclr => resetn );

    -- expFracPreRound_uid67_block_rsrvd_fix(BITJOIN,66)@9
    expFracPreRound_uid67_block_rsrvd_fix_q <= expSumMBias_uid47_block_rsrvd_fix_q & redist15_fracRPostNorm_uid54_block_rsrvd_fix_q_3_q;

    -- expFracRPostRounding_uid70_block_rsrvd_fix(ADD,69)@9
    expFracRPostRounding_uid70_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 35 => expFracPreRound_uid67_block_rsrvd_fix_q(34)) & expFracPreRound_uid67_block_rsrvd_fix_q));
    expFracRPostRounding_uid70_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000000000" & roundBitAndNormalizationOp_uid69_block_rsrvd_fix_q));
    expFracRPostRounding_uid70_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expFracRPostRounding_uid70_block_rsrvd_fix_a) + SIGNED(expFracRPostRounding_uid70_block_rsrvd_fix_b));
    expFracRPostRounding_uid70_block_rsrvd_fix_q <= expFracRPostRounding_uid70_block_rsrvd_fix_o(35 downto 0);

    -- expRPreExcExt_uid72_block_rsrvd_fix(BITSELECT,71)@9
    expRPreExcExt_uid72_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(expFracRPostRounding_uid70_block_rsrvd_fix_q(35 downto 24));

    -- redist11_expRPreExcExt_uid72_block_rsrvd_fix_b_1(DELAY,182)
    redist11_expRPreExcExt_uid72_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => expRPreExcExt_uid72_block_rsrvd_fix_b, xout => redist11_expRPreExcExt_uid72_block_rsrvd_fix_b_1_q, clk => clock, aclr => resetn );

    -- expRPreExc_uid73_block_rsrvd_fix(BITSELECT,72)@10
    expRPreExc_uid73_block_rsrvd_fix_in <= redist11_expRPreExcExt_uid72_block_rsrvd_fix_b_1_q(7 downto 0);
    expRPreExc_uid73_block_rsrvd_fix_b <= expRPreExc_uid73_block_rsrvd_fix_in(7 downto 0);

    -- redist10_expRPreExc_uid73_block_rsrvd_fix_b_1(DELAY,181)
    redist10_expRPreExc_uid73_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => expRPreExc_uid73_block_rsrvd_fix_b, xout => redist10_expRPreExc_uid73_block_rsrvd_fix_b_1_q, clk => clock, aclr => resetn );

    -- expOvf_uid76_block_rsrvd_fix(COMPARE,75)@10
    expOvf_uid76_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => redist11_expRPreExcExt_uid72_block_rsrvd_fix_b_1_q(11)) & redist11_expRPreExcExt_uid72_block_rsrvd_fix_b_1_q));
    expOvf_uid76_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000000" & cstAllOWE_uid11_block_rsrvd_fix_q));
    expOvf_uid76_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expOvf_uid76_block_rsrvd_fix_a) - SIGNED(expOvf_uid76_block_rsrvd_fix_b));
    expOvf_uid76_block_rsrvd_fix_n(0) <= not (expOvf_uid76_block_rsrvd_fix_o(13));

    -- invExpXIsMax_uid36_block_rsrvd_fix(LOGICAL,35)@10
    invExpXIsMax_uid36_block_rsrvd_fix_q <= not (redist20_expXIsMax_uid31_block_rsrvd_fix_q_10_q);

    -- InvExpXIsZero_uid37_block_rsrvd_fix(LOGICAL,36)@10
    InvExpXIsZero_uid37_block_rsrvd_fix_q <= not (redist21_excZ_y_uid30_block_rsrvd_fix_q_10_q);

    -- excR_y_uid38_block_rsrvd_fix(LOGICAL,37)@10
    excR_y_uid38_block_rsrvd_fix_q <= InvExpXIsZero_uid37_block_rsrvd_fix_q and invExpXIsMax_uid36_block_rsrvd_fix_q;

    -- invExpXIsMax_uid22_block_rsrvd_fix(LOGICAL,21)@10
    invExpXIsMax_uid22_block_rsrvd_fix_q <= not (redist23_expXIsMax_uid17_block_rsrvd_fix_q_10_q);

    -- InvExpXIsZero_uid23_block_rsrvd_fix(LOGICAL,22)@10
    InvExpXIsZero_uid23_block_rsrvd_fix_q <= not (redist24_excZ_x_uid16_block_rsrvd_fix_q_10_q);

    -- excR_x_uid24_block_rsrvd_fix(LOGICAL,23)@10
    excR_x_uid24_block_rsrvd_fix_q <= InvExpXIsZero_uid23_block_rsrvd_fix_q and invExpXIsMax_uid22_block_rsrvd_fix_q;

    -- ExcROvfAndInReg_uid85_block_rsrvd_fix(LOGICAL,84)@10 + 1
    ExcROvfAndInReg_uid85_block_rsrvd_fix_qi <= excR_x_uid24_block_rsrvd_fix_q and excR_y_uid38_block_rsrvd_fix_q and expOvf_uid76_block_rsrvd_fix_n;
    ExcROvfAndInReg_uid85_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => ExcROvfAndInReg_uid85_block_rsrvd_fix_qi, xout => ExcROvfAndInReg_uid85_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- excYRAndExcXI_uid84_block_rsrvd_fix(LOGICAL,83)@10 + 1
    excYRAndExcXI_uid84_block_rsrvd_fix_qi <= excR_y_uid38_block_rsrvd_fix_q and excI_x_uid20_block_rsrvd_fix_q;
    excYRAndExcXI_uid84_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excYRAndExcXI_uid84_block_rsrvd_fix_qi, xout => excYRAndExcXI_uid84_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- excXRAndExcYI_uid83_block_rsrvd_fix(LOGICAL,82)@10 + 1
    excXRAndExcYI_uid83_block_rsrvd_fix_qi <= excR_x_uid24_block_rsrvd_fix_q and excI_y_uid34_block_rsrvd_fix_q;
    excXRAndExcYI_uid83_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excXRAndExcYI_uid83_block_rsrvd_fix_qi, xout => excXRAndExcYI_uid83_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- excXIAndExcYI_uid82_block_rsrvd_fix(LOGICAL,81)@10 + 1
    excXIAndExcYI_uid82_block_rsrvd_fix_qi <= excI_x_uid20_block_rsrvd_fix_q and excI_y_uid34_block_rsrvd_fix_q;
    excXIAndExcYI_uid82_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excXIAndExcYI_uid82_block_rsrvd_fix_qi, xout => excXIAndExcYI_uid82_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- excRInf_uid86_block_rsrvd_fix(LOGICAL,85)@11
    excRInf_uid86_block_rsrvd_fix_q <= excXIAndExcYI_uid82_block_rsrvd_fix_q or excXRAndExcYI_uid83_block_rsrvd_fix_q or excYRAndExcXI_uid84_block_rsrvd_fix_q or ExcROvfAndInReg_uid85_block_rsrvd_fix_q;

    -- expUdf_uid74_block_rsrvd_fix(COMPARE,73)@10
    expUdf_uid74_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000000000000" & GND_q));
    expUdf_uid74_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => redist11_expRPreExcExt_uid72_block_rsrvd_fix_b_1_q(11)) & redist11_expRPreExcExt_uid72_block_rsrvd_fix_b_1_q));
    expUdf_uid74_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expUdf_uid74_block_rsrvd_fix_a) - SIGNED(expUdf_uid74_block_rsrvd_fix_b));
    expUdf_uid74_block_rsrvd_fix_n(0) <= not (expUdf_uid74_block_rsrvd_fix_o(13));

    -- excZC3_uid80_block_rsrvd_fix(LOGICAL,79)@10 + 1
    excZC3_uid80_block_rsrvd_fix_qi <= excR_x_uid24_block_rsrvd_fix_q and excR_y_uid38_block_rsrvd_fix_q and expUdf_uid74_block_rsrvd_fix_n;
    excZC3_uid80_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excZC3_uid80_block_rsrvd_fix_qi, xout => excZC3_uid80_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- excYZAndExcXR_uid79_block_rsrvd_fix(LOGICAL,78)@10 + 1
    excYZAndExcXR_uid79_block_rsrvd_fix_qi <= redist21_excZ_y_uid30_block_rsrvd_fix_q_10_q and excR_x_uid24_block_rsrvd_fix_q;
    excYZAndExcXR_uid79_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excYZAndExcXR_uid79_block_rsrvd_fix_qi, xout => excYZAndExcXR_uid79_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- excXZAndExcYR_uid78_block_rsrvd_fix(LOGICAL,77)@10 + 1
    excXZAndExcYR_uid78_block_rsrvd_fix_qi <= redist24_excZ_x_uid16_block_rsrvd_fix_q_10_q and excR_y_uid38_block_rsrvd_fix_q;
    excXZAndExcYR_uid78_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excXZAndExcYR_uid78_block_rsrvd_fix_qi, xout => excXZAndExcYR_uid78_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- excXZAndExcYZ_uid77_block_rsrvd_fix(LOGICAL,76)@10 + 1
    excXZAndExcYZ_uid77_block_rsrvd_fix_qi <= redist24_excZ_x_uid16_block_rsrvd_fix_q_10_q and redist21_excZ_y_uid30_block_rsrvd_fix_q_10_q;
    excXZAndExcYZ_uid77_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excXZAndExcYZ_uid77_block_rsrvd_fix_qi, xout => excXZAndExcYZ_uid77_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- excRZero_uid81_block_rsrvd_fix(LOGICAL,80)@11
    excRZero_uid81_block_rsrvd_fix_q <= excXZAndExcYZ_uid77_block_rsrvd_fix_q or excXZAndExcYR_uid78_block_rsrvd_fix_q or excYZAndExcXR_uid79_block_rsrvd_fix_q or excZC3_uid80_block_rsrvd_fix_q;

    -- concExc_uid91_block_rsrvd_fix(BITJOIN,90)@11
    concExc_uid91_block_rsrvd_fix_q <= excRNaN_uid90_block_rsrvd_fix_q & excRInf_uid86_block_rsrvd_fix_q & excRZero_uid81_block_rsrvd_fix_q;

    -- excREnc_uid92_block_rsrvd_fix(LOOKUP,91)@11
    excREnc_uid92_block_rsrvd_fix_combproc: PROCESS (concExc_uid91_block_rsrvd_fix_q)
    BEGIN
        -- Begin reserved scope level
        CASE (concExc_uid91_block_rsrvd_fix_q) IS
            WHEN "000" => excREnc_uid92_block_rsrvd_fix_q <= "01";
            WHEN "001" => excREnc_uid92_block_rsrvd_fix_q <= "00";
            WHEN "010" => excREnc_uid92_block_rsrvd_fix_q <= "10";
            WHEN "011" => excREnc_uid92_block_rsrvd_fix_q <= "00";
            WHEN "100" => excREnc_uid92_block_rsrvd_fix_q <= "11";
            WHEN "101" => excREnc_uid92_block_rsrvd_fix_q <= "00";
            WHEN "110" => excREnc_uid92_block_rsrvd_fix_q <= "00";
            WHEN "111" => excREnc_uid92_block_rsrvd_fix_q <= "00";
            WHEN OTHERS => -- unreachable
                           excREnc_uid92_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- expRPostExc_uid101_block_rsrvd_fix(MUX,100)@11
    expRPostExc_uid101_block_rsrvd_fix_s <= excREnc_uid92_block_rsrvd_fix_q;
    expRPostExc_uid101_block_rsrvd_fix_combproc: PROCESS (expRPostExc_uid101_block_rsrvd_fix_s, cstAllZWE_uid13_block_rsrvd_fix_q, redist10_expRPreExc_uid73_block_rsrvd_fix_b_1_q, cstAllOWE_uid11_block_rsrvd_fix_q)
    BEGIN
        CASE (expRPostExc_uid101_block_rsrvd_fix_s) IS
            WHEN "00" => expRPostExc_uid101_block_rsrvd_fix_q <= cstAllZWE_uid13_block_rsrvd_fix_q;
            WHEN "01" => expRPostExc_uid101_block_rsrvd_fix_q <= redist10_expRPreExc_uid73_block_rsrvd_fix_b_1_q;
            WHEN "10" => expRPostExc_uid101_block_rsrvd_fix_q <= cstAllOWE_uid11_block_rsrvd_fix_q;
            WHEN "11" => expRPostExc_uid101_block_rsrvd_fix_q <= cstAllOWE_uid11_block_rsrvd_fix_q;
            WHEN OTHERS => expRPostExc_uid101_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- oneFracRPostExc2_uid93_block_rsrvd_fix(CONSTANT,92)
    oneFracRPostExc2_uid93_block_rsrvd_fix_q <= "00000000000000000000001";

    -- fracRPreExc_uid71_block_rsrvd_fix(BITSELECT,70)@9
    fracRPreExc_uid71_block_rsrvd_fix_in <= expFracRPostRounding_uid70_block_rsrvd_fix_q(23 downto 0);
    fracRPreExc_uid71_block_rsrvd_fix_b <= fracRPreExc_uid71_block_rsrvd_fix_in(23 downto 1);

    -- redist12_fracRPreExc_uid71_block_rsrvd_fix_b_2(DELAY,183)
    redist12_fracRPreExc_uid71_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 23, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => fracRPreExc_uid71_block_rsrvd_fix_b, xout => redist12_fracRPreExc_uid71_block_rsrvd_fix_b_2_q, clk => clock, aclr => resetn );

    -- fracRPostExc_uid96_block_rsrvd_fix(MUX,95)@11
    fracRPostExc_uid96_block_rsrvd_fix_s <= excREnc_uid92_block_rsrvd_fix_q;
    fracRPostExc_uid96_block_rsrvd_fix_combproc: PROCESS (fracRPostExc_uid96_block_rsrvd_fix_s, cstZeroWF_uid12_block_rsrvd_fix_q, redist12_fracRPreExc_uid71_block_rsrvd_fix_b_2_q, oneFracRPostExc2_uid93_block_rsrvd_fix_q)
    BEGIN
        CASE (fracRPostExc_uid96_block_rsrvd_fix_s) IS
            WHEN "00" => fracRPostExc_uid96_block_rsrvd_fix_q <= cstZeroWF_uid12_block_rsrvd_fix_q;
            WHEN "01" => fracRPostExc_uid96_block_rsrvd_fix_q <= redist12_fracRPreExc_uid71_block_rsrvd_fix_b_2_q;
            WHEN "10" => fracRPostExc_uid96_block_rsrvd_fix_q <= cstZeroWF_uid12_block_rsrvd_fix_q;
            WHEN "11" => fracRPostExc_uid96_block_rsrvd_fix_q <= oneFracRPostExc2_uid93_block_rsrvd_fix_q;
            WHEN OTHERS => fracRPostExc_uid96_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- R_uid104_block_rsrvd_fix(BITJOIN,103)@11
    R_uid104_block_rsrvd_fix_q <= signRPostExc_uid103_block_rsrvd_fix_q & expRPostExc_uid101_block_rsrvd_fix_q & fracRPostExc_uid96_block_rsrvd_fix_q;

    -- out_primWireOut(GPOUT,5)@11
    out_primWireOut <= R_uid104_block_rsrvd_fix_q;

END normal;
