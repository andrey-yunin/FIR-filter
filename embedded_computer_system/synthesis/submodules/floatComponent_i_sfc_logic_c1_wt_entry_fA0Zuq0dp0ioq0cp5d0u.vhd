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

-- VHDL created from floatComponent_i_sfc_logic_c1_wt_entry_fir_filter_c1_enter_fir_filter14_addBlockA0Zjo00uq0dp0ioq0cp5d0u
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

entity floatComponent_i_sfc_logic_c1_wt_entry_fir_filter_c1_enter_fir_filter14_addBlockA0Zjo00uq0dp0ioq0cp5d0u is
    port (
        in_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        out_primWireOut : out std_logic_vector(31 downto 0);  -- float32_m23
        clock : in std_logic;
        resetn : in std_logic
    );
end floatComponent_i_sfc_logic_c1_wt_entry_fir_filter_c1_enter_fir_filter14_addBlockA0Zjo00uq0dp0ioq0cp5d0u;

architecture normal of floatComponent_i_sfc_logic_c1_wt_entry_fir_filter_c1_enter_fir_filter14_addBlockA0Zjo00uq0dp0ioq0cp5d0u is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expFracX_uid7_block_rsrvd_fix_b : STD_LOGIC_VECTOR (30 downto 0);
    signal expFracY_uid8_block_rsrvd_fix_b : STD_LOGIC_VECTOR (30 downto 0);
    signal xGTEy_uid9_block_rsrvd_fix_a : STD_LOGIC_VECTOR (32 downto 0);
    signal xGTEy_uid9_block_rsrvd_fix_b : STD_LOGIC_VECTOR (32 downto 0);
    signal xGTEy_uid9_block_rsrvd_fix_o : STD_LOGIC_VECTOR (32 downto 0);
    signal xGTEy_uid9_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal sigY_uid10_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal fracY_uid11_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expY_uid12_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal ypn_uid13_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal aSig_uid17_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aSig_uid17_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bSig_uid18_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal bSig_uid18_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal cstAllOWE_uid19_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstZeroWF_uid20_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal cstAllZWE_uid21_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal exp_aSig_uid22_block_rsrvd_fix_in : STD_LOGIC_VECTOR (30 downto 0);
    signal exp_aSig_uid22_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_aSig_uid23_block_rsrvd_fix_in : STD_LOGIC_VECTOR (22 downto 0);
    signal frac_aSig_uid23_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_aSig_uid17_uid24_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_aSig_uid17_uid24_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid25_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid25_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid26_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid26_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid27_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_aSig_uid28_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_aSig_uid28_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_aSig_uid29_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_aSig_uid29_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid30_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid31_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_aSig_uid32_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_aSig_uid32_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal exp_bSig_uid36_block_rsrvd_fix_in : STD_LOGIC_VECTOR (30 downto 0);
    signal exp_bSig_uid36_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_bSig_uid37_block_rsrvd_fix_in : STD_LOGIC_VECTOR (22 downto 0);
    signal frac_bSig_uid37_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_bSig_uid18_uid38_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_bSig_uid18_uid38_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid39_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid39_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid40_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid40_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid41_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_bSig_uid42_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_bSig_uid42_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_bSig_uid43_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_bSig_uid43_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid44_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid45_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_bSig_uid46_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_bSig_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sigA_uid51_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal sigB_uid52_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal effSub_uid53_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracBz_uid57_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracBz_uid57_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal oFracB_uid60_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal expAmExpB_uid61_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expAmExpB_uid61_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expAmExpB_uid61_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expAmExpB_uid61_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal cWFP2_uid62_block_rsrvd_fix_q : STD_LOGIC_VECTOR (4 downto 0);
    signal shiftedOut_uid64_block_rsrvd_fix_a : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid64_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid64_block_rsrvd_fix_o : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid64_block_rsrvd_fix_c : STD_LOGIC_VECTOR (0 downto 0);
    signal padConst_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal rightPaddedIn_uid66_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal iShiftedOut_uid68_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal alignFracBPostShiftOut_uid69_block_rsrvd_fix_b : STD_LOGIC_VECTOR (48 downto 0);
    signal alignFracBPostShiftOut_uid69_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (48 downto 0);
    signal alignFracBPostShiftOut_uid69_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invCmpEQ_stickyBits_cZwF_uid73_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal effSubInvSticky_uid75_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal effSubInvSticky_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal zocst_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal fracAAddOp_uid78_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal fracBAddOp_uid81_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal fracBAddOpPostXor_uid82_block_rsrvd_fix_b : STD_LOGIC_VECTOR (26 downto 0);
    signal fracBAddOpPostXor_uid82_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (26 downto 0);
    signal fracBAddOpPostXor_uid82_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal fracAddResult_uid83_block_rsrvd_fix_a : STD_LOGIC_VECTOR (27 downto 0);
    signal fracAddResult_uid83_block_rsrvd_fix_b : STD_LOGIC_VECTOR (27 downto 0);
    signal fracAddResult_uid83_block_rsrvd_fix_o : STD_LOGIC_VECTOR (27 downto 0);
    signal fracAddResult_uid83_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_in : STD_LOGIC_VECTOR (26 downto 0);
    signal rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_b : STD_LOGIC_VECTOR (26 downto 0);
    signal fracGRS_uid85_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal cAmA_uid87_block_rsrvd_fix_q : STD_LOGIC_VECTOR (4 downto 0);
    signal aMinusA_uid88_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal aMinusA_uid88_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracPostNorm_uid90_block_rsrvd_fix_b : STD_LOGIC_VECTOR (26 downto 0);
    signal oneCST_uid91_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal expInc_uid92_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expInc_uid92_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expInc_uid92_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expInc_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal expPostNorm_uid93_block_rsrvd_fix_a : STD_LOGIC_VECTOR (9 downto 0);
    signal expPostNorm_uid93_block_rsrvd_fix_b : STD_LOGIC_VECTOR (9 downto 0);
    signal expPostNorm_uid93_block_rsrvd_fix_o : STD_LOGIC_VECTOR (9 downto 0);
    signal expPostNorm_uid93_block_rsrvd_fix_q : STD_LOGIC_VECTOR (9 downto 0);
    signal Sticky0_uid94_block_rsrvd_fix_in : STD_LOGIC_VECTOR (0 downto 0);
    signal Sticky0_uid94_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal Sticky1_uid95_block_rsrvd_fix_in : STD_LOGIC_VECTOR (1 downto 0);
    signal Sticky1_uid95_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal Round_uid96_block_rsrvd_fix_in : STD_LOGIC_VECTOR (2 downto 0);
    signal Round_uid96_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal Guard_uid97_block_rsrvd_fix_in : STD_LOGIC_VECTOR (3 downto 0);
    signal Guard_uid97_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal LSB_uid98_block_rsrvd_fix_in : STD_LOGIC_VECTOR (4 downto 0);
    signal LSB_uid98_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rndBitCond_uid99_block_rsrvd_fix_q : STD_LOGIC_VECTOR (4 downto 0);
    signal cRBit_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (4 downto 0);
    signal rBi_uid101_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal rBi_uid101_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal roundBit_uid102_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracPostNormRndRange_uid103_block_rsrvd_fix_in : STD_LOGIC_VECTOR (25 downto 0);
    signal fracPostNormRndRange_uid103_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal expFracR_uid104_block_rsrvd_fix_q : STD_LOGIC_VECTOR (33 downto 0);
    signal rndExpFrac_uid105_block_rsrvd_fix_a : STD_LOGIC_VECTOR (34 downto 0);
    signal rndExpFrac_uid105_block_rsrvd_fix_b : STD_LOGIC_VECTOR (34 downto 0);
    signal rndExpFrac_uid105_block_rsrvd_fix_o : STD_LOGIC_VECTOR (34 downto 0);
    signal rndExpFrac_uid105_block_rsrvd_fix_q : STD_LOGIC_VECTOR (34 downto 0);
    signal wEP2AllOwE_uid106_block_rsrvd_fix_q : STD_LOGIC_VECTOR (9 downto 0);
    signal rndExp_uid107_block_rsrvd_fix_in : STD_LOGIC_VECTOR (33 downto 0);
    signal rndExp_uid107_block_rsrvd_fix_b : STD_LOGIC_VECTOR (9 downto 0);
    signal rOvfEQMax_uid108_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rndExpFracOvfBits_uid110_block_rsrvd_fix_in : STD_LOGIC_VECTOR (33 downto 0);
    signal rndExpFracOvfBits_uid110_block_rsrvd_fix_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rOvfExtraBits_uid111_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rOvf_uid112_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal rOvf_uid112_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal wEP2AllZ_uid113_block_rsrvd_fix_q : STD_LOGIC_VECTOR (9 downto 0);
    signal rUdfEQMin_uid114_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rUdfExtraBit_uid115_block_rsrvd_fix_in : STD_LOGIC_VECTOR (33 downto 0);
    signal rUdfExtraBit_uid115_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rUdf_uid116_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal rUdf_uid116_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPreExc_uid117_block_rsrvd_fix_in : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPreExc_uid117_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPreExc_uid118_block_rsrvd_fix_in : STD_LOGIC_VECTOR (31 downto 0);
    signal expRPreExc_uid118_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal regInputs_uid119_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal regInputs_uid119_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRZeroVInC_uid120_block_rsrvd_fix_q : STD_LOGIC_VECTOR (4 downto 0);
    signal excRZero_uid121_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rInfOvf_uid122_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal rInfOvf_uid122_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRInfVInC_uid123_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal excRInf_uid124_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN2_uid125_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excAIBISub_uid126_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid127_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid127_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concExc_uid128_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal excREnc_uid129_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal invAMinusA_uid130_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRReg_uid131_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sigBBInf_uid132_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sigAAInf_uid133_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRInf_uid134_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excAZBZSigASigB_uid135_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excBZARSigA_uid136_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRZero_uid137_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRInfRZRReg_uid138_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal signRInfRZRReg_uid138_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExcRNaN_uid139_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRPostExc_uid140_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal oneFracRPostExc2_uid141_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRPostExc_uid144_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid144_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPostExc_uid148_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid148_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal R_uid149_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zs_uid151_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid152_lzCountVal_uid86_block_rsrvd_fix_b : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal mO_uid154_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_in : STD_LOGIC_VECTOR (11 downto 0);
    signal vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b : STD_LOGIC_VECTOR (11 downto 0);
    signal cStage_uid156_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal zs_uid165_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid167_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal zs_uid171_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal vCount_uid173_lzCountVal_uid86_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid173_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid178_lzCountVal_uid86_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid179_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid180_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (4 downto 0);
    signal wIntCst_uid184_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_a : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_o : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx1Rng8_uid186_alignmentShifter_uid65_block_rsrvd_fix_b : STD_LOGIC_VECTOR (40 downto 0);
    signal rightShiftStage0Idx1_uid188_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage0Idx2Rng16_uid189_alignmentShifter_uid65_block_rsrvd_fix_b : STD_LOGIC_VECTOR (32 downto 0);
    signal rightShiftStage0Idx2_uid191_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage0Idx3Rng24_uid192_alignmentShifter_uid65_block_rsrvd_fix_b : STD_LOGIC_VECTOR (24 downto 0);
    signal rightShiftStage0Idx3Pad24_uid193_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage0Idx3_uid194_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage0Idx4Rng32_uid195_alignmentShifter_uid65_block_rsrvd_fix_b : STD_LOGIC_VECTOR (16 downto 0);
    signal rightShiftStage0Idx4Pad32_uid196_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx4_uid197_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage0Idx5Rng40_uid198_alignmentShifter_uid65_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal rightShiftStage0Idx5Pad40_uid199_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (39 downto 0);
    signal rightShiftStage0Idx5_uid200_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage0Idx6Rng48_uid201_alignmentShifter_uid65_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx6Pad48_uid202_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage0Idx6_uid203_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage0Idx7_uid204_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage0_uid206_alignmentShifter_uid65_block_rsrvd_fix_s : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage0_uid206_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage1Idx1Rng1_uid207_alignmentShifter_uid65_block_rsrvd_fix_b : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage1Idx1_uid209_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage1Idx2Rng2_uid210_alignmentShifter_uid65_block_rsrvd_fix_b : STD_LOGIC_VECTOR (46 downto 0);
    signal rightShiftStage1Idx2_uid212_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage1Idx3Rng3_uid213_alignmentShifter_uid65_block_rsrvd_fix_b : STD_LOGIC_VECTOR (45 downto 0);
    signal rightShiftStage1Idx3Pad3_uid214_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage1Idx3_uid215_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage1Idx4Rng4_uid216_alignmentShifter_uid65_block_rsrvd_fix_b : STD_LOGIC_VECTOR (44 downto 0);
    signal rightShiftStage1Idx4_uid218_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage1Idx5Rng5_uid219_alignmentShifter_uid65_block_rsrvd_fix_b : STD_LOGIC_VECTOR (43 downto 0);
    signal rightShiftStage1Idx5Pad5_uid220_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (4 downto 0);
    signal rightShiftStage1Idx5_uid221_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage1Idx6Rng6_uid222_alignmentShifter_uid65_block_rsrvd_fix_b : STD_LOGIC_VECTOR (42 downto 0);
    signal rightShiftStage1Idx6Pad6_uid223_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal rightShiftStage1Idx6_uid224_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage1Idx7Rng7_uid225_alignmentShifter_uid65_block_rsrvd_fix_b : STD_LOGIC_VECTOR (41 downto 0);
    signal rightShiftStage1Idx7Pad7_uid226_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (6 downto 0);
    signal rightShiftStage1Idx7_uid227_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage1_uid229_alignmentShifter_uid65_block_rsrvd_fix_s : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage1_uid229_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal r_uid231_alignmentShifter_uid65_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid231_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal leftShiftStage0Idx1Rng4_uid236_fracPostNormExt_uid89_block_rsrvd_fix_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng4_uid236_fracPostNormExt_uid89_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid237_fracPostNormExt_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx2Rng8_uid239_fracPostNormExt_uid89_block_rsrvd_fix_in : STD_LOGIC_VECTOR (19 downto 0);
    signal leftShiftStage0Idx2Rng8_uid239_fracPostNormExt_uid89_block_rsrvd_fix_b : STD_LOGIC_VECTOR (19 downto 0);
    signal leftShiftStage0Idx2_uid240_fracPostNormExt_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx3Pad12_uid241_fracPostNormExt_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (11 downto 0);
    signal leftShiftStage0Idx3Rng12_uid242_fracPostNormExt_uid89_block_rsrvd_fix_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx3Rng12_uid242_fracPostNormExt_uid89_block_rsrvd_fix_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx3_uid243_fracPostNormExt_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx4_uid246_fracPostNormExt_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx5Pad20_uid247_fracPostNormExt_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (19 downto 0);
    signal leftShiftStage0Idx5Rng20_uid248_fracPostNormExt_uid89_block_rsrvd_fix_in : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage0Idx5Rng20_uid248_fracPostNormExt_uid89_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage0Idx5_uid249_fracPostNormExt_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx6Rng24_uid251_fracPostNormExt_uid89_block_rsrvd_fix_in : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStage0Idx6Rng24_uid251_fracPostNormExt_uid89_block_rsrvd_fix_b : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStage0Idx6_uid252_fracPostNormExt_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx7_uid253_fracPostNormExt_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0_uid255_fracPostNormExt_uid89_block_rsrvd_fix_s : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0_uid255_fracPostNormExt_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng1_uid257_fracPostNormExt_uid89_block_rsrvd_fix_in : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage1Idx1Rng1_uid257_fracPostNormExt_uid89_block_rsrvd_fix_b : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage1Idx1_uid258_fracPostNormExt_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx2Rng2_uid260_fracPostNormExt_uid89_block_rsrvd_fix_in : STD_LOGIC_VECTOR (25 downto 0);
    signal leftShiftStage1Idx2Rng2_uid260_fracPostNormExt_uid89_block_rsrvd_fix_b : STD_LOGIC_VECTOR (25 downto 0);
    signal leftShiftStage1Idx2_uid261_fracPostNormExt_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx3Rng3_uid263_fracPostNormExt_uid89_block_rsrvd_fix_in : STD_LOGIC_VECTOR (24 downto 0);
    signal leftShiftStage1Idx3Rng3_uid263_fracPostNormExt_uid89_block_rsrvd_fix_b : STD_LOGIC_VECTOR (24 downto 0);
    signal leftShiftStage1Idx3_uid264_fracPostNormExt_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1_uid266_fracPostNormExt_uid89_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid266_fracPostNormExt_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStageSel5Dto3_uid205_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_in : STD_LOGIC_VECTOR (5 downto 0);
    signal rightShiftStageSel5Dto3_uid205_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStageSel5Dto3_uid205_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (2 downto 0);
    signal stickyBits_uid70_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (22 downto 0);
    signal stickyBits_uid70_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (25 downto 0);
    signal rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel4Dto2_uid254_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStageSel4Dto2_uid254_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_leftShiftStageSel4Dto2_uid254_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist1_rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_stickyBits_uid70_block_rsrvd_fix_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist4_rightShiftStageSel5Dto3_uid205_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist5_vCount_uid167_lzCountVal_uid86_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_3_q : STD_LOGIC_VECTOR (11 downto 0);
    signal redist8_vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_signRInfRZRReg_uid138_block_rsrvd_fix_q_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_excRZero_uid121_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_regInputs_uid119_block_rsrvd_fix_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_expRPreExc_uid118_block_rsrvd_fix_b_3_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist13_fracRPreExc_uid117_block_rsrvd_fix_b_3_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist14_fracPostNormRndRange_uid103_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist15_expPostNorm_uid93_block_rsrvd_fix_q_3_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist16_aMinusA_uid88_block_rsrvd_fix_q_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_fracGRS_uid85_block_rsrvd_fix_q_3_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist18_rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (26 downto 0);
    signal redist19_cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_shiftedOut_uid64_block_rsrvd_fix_c_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_effSub_uid53_block_rsrvd_fix_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_sigB_uid52_block_rsrvd_fix_b_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist23_sigB_uid52_block_rsrvd_fix_b_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_sigA_uid51_block_rsrvd_fix_b_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_sigA_uid51_block_rsrvd_fix_b_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist26_InvExpXIsZero_uid45_block_rsrvd_fix_q_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist27_excN_bSig_uid43_block_rsrvd_fix_q_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist28_excI_bSig_uid42_block_rsrvd_fix_q_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist29_fracXIsZero_uid40_block_rsrvd_fix_q_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist30_expXIsMax_uid39_block_rsrvd_fix_q_10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist32_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_frac_bSig_uid37_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist34_excN_aSig_uid29_block_rsrvd_fix_q_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_excI_aSig_uid28_block_rsrvd_fix_q_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_fracXIsZero_uid26_block_rsrvd_fix_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist37_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist39_frac_aSig_uid23_block_rsrvd_fix_b_6_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist40_exp_aSig_uid22_block_rsrvd_fix_b_9_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist41_expY_uid12_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist42_fracY_uid11_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist43_sigY_uid10_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist44_in_0_in_0_1_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- cAmA_uid87_block_rsrvd_fix(CONSTANT,86)
    cAmA_uid87_block_rsrvd_fix_q <= "11100";

    -- zs_uid151_lzCountVal_uid86_block_rsrvd_fix(CONSTANT,150)
    zs_uid151_lzCountVal_uid86_block_rsrvd_fix_q <= "0000000000000000";

    -- sigY_uid10_block_rsrvd_fix(BITSELECT,9)@0
    sigY_uid10_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(in_1(31 downto 31));

    -- redist43_sigY_uid10_block_rsrvd_fix_b_1(DELAY,316)
    redist43_sigY_uid10_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => sigY_uid10_block_rsrvd_fix_b, xout => redist43_sigY_uid10_block_rsrvd_fix_b_1_q, clk => clock, aclr => resetn );

    -- expY_uid12_block_rsrvd_fix(BITSELECT,11)@0
    expY_uid12_block_rsrvd_fix_b <= in_1(30 downto 23);

    -- redist41_expY_uid12_block_rsrvd_fix_b_1(DELAY,314)
    redist41_expY_uid12_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => expY_uid12_block_rsrvd_fix_b, xout => redist41_expY_uid12_block_rsrvd_fix_b_1_q, clk => clock, aclr => resetn );

    -- fracY_uid11_block_rsrvd_fix(BITSELECT,10)@0
    fracY_uid11_block_rsrvd_fix_b <= in_1(22 downto 0);

    -- redist42_fracY_uid11_block_rsrvd_fix_b_1(DELAY,315)
    redist42_fracY_uid11_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => fracY_uid11_block_rsrvd_fix_b, xout => redist42_fracY_uid11_block_rsrvd_fix_b_1_q, clk => clock, aclr => resetn );

    -- ypn_uid13_block_rsrvd_fix(BITJOIN,12)@1
    ypn_uid13_block_rsrvd_fix_q <= redist43_sigY_uid10_block_rsrvd_fix_b_1_q & redist41_expY_uid12_block_rsrvd_fix_b_1_q & redist42_fracY_uid11_block_rsrvd_fix_b_1_q;

    -- redist44_in_0_in_0_1(DELAY,317)
    redist44_in_0_in_0_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_0, xout => redist44_in_0_in_0_1_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- expFracY_uid8_block_rsrvd_fix(BITSELECT,7)@0
    expFracY_uid8_block_rsrvd_fix_b <= in_1(30 downto 0);

    -- expFracX_uid7_block_rsrvd_fix(BITSELECT,6)@0
    expFracX_uid7_block_rsrvd_fix_b <= in_0(30 downto 0);

    -- xGTEy_uid9_block_rsrvd_fix(COMPARE,8)@0 + 1
    xGTEy_uid9_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & expFracX_uid7_block_rsrvd_fix_b);
    xGTEy_uid9_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & expFracY_uid8_block_rsrvd_fix_b);
    xGTEy_uid9_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            xGTEy_uid9_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            xGTEy_uid9_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(xGTEy_uid9_block_rsrvd_fix_a) - UNSIGNED(xGTEy_uid9_block_rsrvd_fix_b));
        END IF;
    END PROCESS;
    xGTEy_uid9_block_rsrvd_fix_n(0) <= not (xGTEy_uid9_block_rsrvd_fix_o(32));

    -- bSig_uid18_block_rsrvd_fix(MUX,17)@1
    bSig_uid18_block_rsrvd_fix_s <= xGTEy_uid9_block_rsrvd_fix_n;
    bSig_uid18_block_rsrvd_fix_combproc: PROCESS (bSig_uid18_block_rsrvd_fix_s, redist44_in_0_in_0_1_q, ypn_uid13_block_rsrvd_fix_q)
    BEGIN
        CASE (bSig_uid18_block_rsrvd_fix_s) IS
            WHEN "0" => bSig_uid18_block_rsrvd_fix_q <= redist44_in_0_in_0_1_q;
            WHEN "1" => bSig_uid18_block_rsrvd_fix_q <= ypn_uid13_block_rsrvd_fix_q;
            WHEN OTHERS => bSig_uid18_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- sigB_uid52_block_rsrvd_fix(BITSELECT,51)@1
    sigB_uid52_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(bSig_uid18_block_rsrvd_fix_q(31 downto 31));

    -- redist22_sigB_uid52_block_rsrvd_fix_b_5(DELAY,295)
    redist22_sigB_uid52_block_rsrvd_fix_b_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => sigB_uid52_block_rsrvd_fix_b, xout => redist22_sigB_uid52_block_rsrvd_fix_b_5_q, clk => clock, aclr => resetn );

    -- aSig_uid17_block_rsrvd_fix(MUX,16)@1
    aSig_uid17_block_rsrvd_fix_s <= xGTEy_uid9_block_rsrvd_fix_n;
    aSig_uid17_block_rsrvd_fix_combproc: PROCESS (aSig_uid17_block_rsrvd_fix_s, ypn_uid13_block_rsrvd_fix_q, redist44_in_0_in_0_1_q)
    BEGIN
        CASE (aSig_uid17_block_rsrvd_fix_s) IS
            WHEN "0" => aSig_uid17_block_rsrvd_fix_q <= ypn_uid13_block_rsrvd_fix_q;
            WHEN "1" => aSig_uid17_block_rsrvd_fix_q <= redist44_in_0_in_0_1_q;
            WHEN OTHERS => aSig_uid17_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- sigA_uid51_block_rsrvd_fix(BITSELECT,50)@1
    sigA_uid51_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(aSig_uid17_block_rsrvd_fix_q(31 downto 31));

    -- redist24_sigA_uid51_block_rsrvd_fix_b_5(DELAY,297)
    redist24_sigA_uid51_block_rsrvd_fix_b_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => sigA_uid51_block_rsrvd_fix_b, xout => redist24_sigA_uid51_block_rsrvd_fix_b_5_q, clk => clock, aclr => resetn );

    -- effSub_uid53_block_rsrvd_fix(LOGICAL,52)@6
    effSub_uid53_block_rsrvd_fix_q <= redist24_sigA_uid51_block_rsrvd_fix_b_5_q xor redist22_sigB_uid52_block_rsrvd_fix_b_5_q;

    -- exp_bSig_uid36_block_rsrvd_fix(BITSELECT,35)@1
    exp_bSig_uid36_block_rsrvd_fix_in <= bSig_uid18_block_rsrvd_fix_q(30 downto 0);
    exp_bSig_uid36_block_rsrvd_fix_b <= exp_bSig_uid36_block_rsrvd_fix_in(30 downto 23);

    -- exp_aSig_uid22_block_rsrvd_fix(BITSELECT,21)@1
    exp_aSig_uid22_block_rsrvd_fix_in <= aSig_uid17_block_rsrvd_fix_q(30 downto 0);
    exp_aSig_uid22_block_rsrvd_fix_b <= exp_aSig_uid22_block_rsrvd_fix_in(30 downto 23);

    -- expAmExpB_uid61_block_rsrvd_fix(SUB,60)@1 + 1
    expAmExpB_uid61_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & exp_aSig_uid22_block_rsrvd_fix_b);
    expAmExpB_uid61_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0" & exp_bSig_uid36_block_rsrvd_fix_b);
    expAmExpB_uid61_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            expAmExpB_uid61_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            expAmExpB_uid61_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expAmExpB_uid61_block_rsrvd_fix_a) - UNSIGNED(expAmExpB_uid61_block_rsrvd_fix_b));
        END IF;
    END PROCESS;
    expAmExpB_uid61_block_rsrvd_fix_q <= expAmExpB_uid61_block_rsrvd_fix_o(8 downto 0);

    -- cWFP2_uid62_block_rsrvd_fix(CONSTANT,61)
    cWFP2_uid62_block_rsrvd_fix_q <= "11001";

    -- shiftedOut_uid64_block_rsrvd_fix(COMPARE,63)@2 + 1
    shiftedOut_uid64_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("000000" & cWFP2_uid62_block_rsrvd_fix_q);
    shiftedOut_uid64_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & expAmExpB_uid61_block_rsrvd_fix_q);
    shiftedOut_uid64_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            shiftedOut_uid64_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            shiftedOut_uid64_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(shiftedOut_uid64_block_rsrvd_fix_a) - UNSIGNED(shiftedOut_uid64_block_rsrvd_fix_b));
        END IF;
    END PROCESS;
    shiftedOut_uid64_block_rsrvd_fix_c(0) <= shiftedOut_uid64_block_rsrvd_fix_o(10);

    -- redist20_shiftedOut_uid64_block_rsrvd_fix_c_2(DELAY,293)
    redist20_shiftedOut_uid64_block_rsrvd_fix_c_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => shiftedOut_uid64_block_rsrvd_fix_c, xout => redist20_shiftedOut_uid64_block_rsrvd_fix_c_2_q, clk => clock, aclr => resetn );

    -- iShiftedOut_uid68_block_rsrvd_fix(LOGICAL,67)@4
    iShiftedOut_uid68_block_rsrvd_fix_q <= not (redist20_shiftedOut_uid64_block_rsrvd_fix_c_2_q);

    -- rightShiftStage0Idx7_uid204_alignmentShifter_uid65_block_rsrvd_fix(CONSTANT,203)
    rightShiftStage0Idx7_uid204_alignmentShifter_uid65_block_rsrvd_fix_q <= "0000000000000000000000000000000000000000000000000";

    -- rightShiftStage1Idx7Pad7_uid226_alignmentShifter_uid65_block_rsrvd_fix(CONSTANT,225)
    rightShiftStage1Idx7Pad7_uid226_alignmentShifter_uid65_block_rsrvd_fix_q <= "0000000";

    -- rightShiftStage1Idx7Rng7_uid225_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,224)@3
    rightShiftStage1Idx7Rng7_uid225_alignmentShifter_uid65_block_rsrvd_fix_b <= rightShiftStage0_uid206_alignmentShifter_uid65_block_rsrvd_fix_q(48 downto 7);

    -- rightShiftStage1Idx7_uid227_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,226)@3
    rightShiftStage1Idx7_uid227_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage1Idx7Pad7_uid226_alignmentShifter_uid65_block_rsrvd_fix_q & rightShiftStage1Idx7Rng7_uid225_alignmentShifter_uid65_block_rsrvd_fix_b;

    -- rightShiftStage1Idx6Pad6_uid223_alignmentShifter_uid65_block_rsrvd_fix(CONSTANT,222)
    rightShiftStage1Idx6Pad6_uid223_alignmentShifter_uid65_block_rsrvd_fix_q <= "000000";

    -- rightShiftStage1Idx6Rng6_uid222_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,221)@3
    rightShiftStage1Idx6Rng6_uid222_alignmentShifter_uid65_block_rsrvd_fix_b <= rightShiftStage0_uid206_alignmentShifter_uid65_block_rsrvd_fix_q(48 downto 6);

    -- rightShiftStage1Idx6_uid224_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,223)@3
    rightShiftStage1Idx6_uid224_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage1Idx6Pad6_uid223_alignmentShifter_uid65_block_rsrvd_fix_q & rightShiftStage1Idx6Rng6_uid222_alignmentShifter_uid65_block_rsrvd_fix_b;

    -- rightShiftStage1Idx5Pad5_uid220_alignmentShifter_uid65_block_rsrvd_fix(CONSTANT,219)
    rightShiftStage1Idx5Pad5_uid220_alignmentShifter_uid65_block_rsrvd_fix_q <= "00000";

    -- rightShiftStage1Idx5Rng5_uid219_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,218)@3
    rightShiftStage1Idx5Rng5_uid219_alignmentShifter_uid65_block_rsrvd_fix_b <= rightShiftStage0_uid206_alignmentShifter_uid65_block_rsrvd_fix_q(48 downto 5);

    -- rightShiftStage1Idx5_uid221_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,220)@3
    rightShiftStage1Idx5_uid221_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage1Idx5Pad5_uid220_alignmentShifter_uid65_block_rsrvd_fix_q & rightShiftStage1Idx5Rng5_uid219_alignmentShifter_uid65_block_rsrvd_fix_b;

    -- zs_uid165_lzCountVal_uid86_block_rsrvd_fix(CONSTANT,164)
    zs_uid165_lzCountVal_uid86_block_rsrvd_fix_q <= "0000";

    -- rightShiftStage1Idx4Rng4_uid216_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,215)@3
    rightShiftStage1Idx4Rng4_uid216_alignmentShifter_uid65_block_rsrvd_fix_b <= rightShiftStage0_uid206_alignmentShifter_uid65_block_rsrvd_fix_q(48 downto 4);

    -- rightShiftStage1Idx4_uid218_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,217)@3
    rightShiftStage1Idx4_uid218_alignmentShifter_uid65_block_rsrvd_fix_q <= zs_uid165_lzCountVal_uid86_block_rsrvd_fix_q & rightShiftStage1Idx4Rng4_uid216_alignmentShifter_uid65_block_rsrvd_fix_b;

    -- rightShiftStage1Idx3Pad3_uid214_alignmentShifter_uid65_block_rsrvd_fix(CONSTANT,213)
    rightShiftStage1Idx3Pad3_uid214_alignmentShifter_uid65_block_rsrvd_fix_q <= "000";

    -- rightShiftStage1Idx3Rng3_uid213_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,212)@3
    rightShiftStage1Idx3Rng3_uid213_alignmentShifter_uid65_block_rsrvd_fix_b <= rightShiftStage0_uid206_alignmentShifter_uid65_block_rsrvd_fix_q(48 downto 3);

    -- rightShiftStage1Idx3_uid215_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,214)@3
    rightShiftStage1Idx3_uid215_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage1Idx3Pad3_uid214_alignmentShifter_uid65_block_rsrvd_fix_q & rightShiftStage1Idx3Rng3_uid213_alignmentShifter_uid65_block_rsrvd_fix_b;

    -- zs_uid171_lzCountVal_uid86_block_rsrvd_fix(CONSTANT,170)
    zs_uid171_lzCountVal_uid86_block_rsrvd_fix_q <= "00";

    -- rightShiftStage1Idx2Rng2_uid210_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,209)@3
    rightShiftStage1Idx2Rng2_uid210_alignmentShifter_uid65_block_rsrvd_fix_b <= rightShiftStage0_uid206_alignmentShifter_uid65_block_rsrvd_fix_q(48 downto 2);

    -- rightShiftStage1Idx2_uid212_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,211)@3
    rightShiftStage1Idx2_uid212_alignmentShifter_uid65_block_rsrvd_fix_q <= zs_uid171_lzCountVal_uid86_block_rsrvd_fix_q & rightShiftStage1Idx2Rng2_uid210_alignmentShifter_uid65_block_rsrvd_fix_b;

    -- rightShiftStage1Idx1Rng1_uid207_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,206)@3
    rightShiftStage1Idx1Rng1_uid207_alignmentShifter_uid65_block_rsrvd_fix_b <= rightShiftStage0_uid206_alignmentShifter_uid65_block_rsrvd_fix_q(48 downto 1);

    -- rightShiftStage1Idx1_uid209_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,208)@3
    rightShiftStage1Idx1_uid209_alignmentShifter_uid65_block_rsrvd_fix_q <= GND_q & rightShiftStage1Idx1Rng1_uid207_alignmentShifter_uid65_block_rsrvd_fix_b;

    -- rightShiftStage0Idx6Pad48_uid202_alignmentShifter_uid65_block_rsrvd_fix(CONSTANT,201)
    rightShiftStage0Idx6Pad48_uid202_alignmentShifter_uid65_block_rsrvd_fix_q <= "000000000000000000000000000000000000000000000000";

    -- rightShiftStage0Idx6Rng48_uid201_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,200)@2
    rightShiftStage0Idx6Rng48_uid201_alignmentShifter_uid65_block_rsrvd_fix_b <= rightPaddedIn_uid66_block_rsrvd_fix_q(48 downto 48);

    -- rightShiftStage0Idx6_uid203_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,202)@2
    rightShiftStage0Idx6_uid203_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage0Idx6Pad48_uid202_alignmentShifter_uid65_block_rsrvd_fix_q & rightShiftStage0Idx6Rng48_uid201_alignmentShifter_uid65_block_rsrvd_fix_b;

    -- rightShiftStage0Idx5Pad40_uid199_alignmentShifter_uid65_block_rsrvd_fix(CONSTANT,198)
    rightShiftStage0Idx5Pad40_uid199_alignmentShifter_uid65_block_rsrvd_fix_q <= "0000000000000000000000000000000000000000";

    -- rightShiftStage0Idx5Rng40_uid198_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,197)@2
    rightShiftStage0Idx5Rng40_uid198_alignmentShifter_uid65_block_rsrvd_fix_b <= rightPaddedIn_uid66_block_rsrvd_fix_q(48 downto 40);

    -- rightShiftStage0Idx5_uid200_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,199)@2
    rightShiftStage0Idx5_uid200_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage0Idx5Pad40_uid199_alignmentShifter_uid65_block_rsrvd_fix_q & rightShiftStage0Idx5Rng40_uid198_alignmentShifter_uid65_block_rsrvd_fix_b;

    -- rightShiftStage0Idx4Pad32_uid196_alignmentShifter_uid65_block_rsrvd_fix(CONSTANT,195)
    rightShiftStage0Idx4Pad32_uid196_alignmentShifter_uid65_block_rsrvd_fix_q <= "00000000000000000000000000000000";

    -- rightShiftStage0Idx4Rng32_uid195_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,194)@2
    rightShiftStage0Idx4Rng32_uid195_alignmentShifter_uid65_block_rsrvd_fix_b <= rightPaddedIn_uid66_block_rsrvd_fix_q(48 downto 32);

    -- rightShiftStage0Idx4_uid197_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,196)@2
    rightShiftStage0Idx4_uid197_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage0Idx4Pad32_uid196_alignmentShifter_uid65_block_rsrvd_fix_q & rightShiftStage0Idx4Rng32_uid195_alignmentShifter_uid65_block_rsrvd_fix_b;

    -- rightShiftStage0Idx3Pad24_uid193_alignmentShifter_uid65_block_rsrvd_fix(CONSTANT,192)
    rightShiftStage0Idx3Pad24_uid193_alignmentShifter_uid65_block_rsrvd_fix_q <= "000000000000000000000000";

    -- rightShiftStage0Idx3Rng24_uid192_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,191)@2
    rightShiftStage0Idx3Rng24_uid192_alignmentShifter_uid65_block_rsrvd_fix_b <= rightPaddedIn_uid66_block_rsrvd_fix_q(48 downto 24);

    -- rightShiftStage0Idx3_uid194_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,193)@2
    rightShiftStage0Idx3_uid194_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage0Idx3Pad24_uid193_alignmentShifter_uid65_block_rsrvd_fix_q & rightShiftStage0Idx3Rng24_uid192_alignmentShifter_uid65_block_rsrvd_fix_b;

    -- rightShiftStage0Idx2Rng16_uid189_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,188)@2
    rightShiftStage0Idx2Rng16_uid189_alignmentShifter_uid65_block_rsrvd_fix_b <= rightPaddedIn_uid66_block_rsrvd_fix_q(48 downto 16);

    -- rightShiftStage0Idx2_uid191_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,190)@2
    rightShiftStage0Idx2_uid191_alignmentShifter_uid65_block_rsrvd_fix_q <= zs_uid151_lzCountVal_uid86_block_rsrvd_fix_q & rightShiftStage0Idx2Rng16_uid189_alignmentShifter_uid65_block_rsrvd_fix_b;

    -- cstAllZWE_uid21_block_rsrvd_fix(CONSTANT,20)
    cstAllZWE_uid21_block_rsrvd_fix_q <= "00000000";

    -- rightShiftStage0Idx1Rng8_uid186_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,185)@2
    rightShiftStage0Idx1Rng8_uid186_alignmentShifter_uid65_block_rsrvd_fix_b <= rightPaddedIn_uid66_block_rsrvd_fix_q(48 downto 8);

    -- rightShiftStage0Idx1_uid188_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,187)@2
    rightShiftStage0Idx1_uid188_alignmentShifter_uid65_block_rsrvd_fix_q <= cstAllZWE_uid21_block_rsrvd_fix_q & rightShiftStage0Idx1Rng8_uid186_alignmentShifter_uid65_block_rsrvd_fix_b;

    -- excZ_bSig_uid18_uid38_block_rsrvd_fix(LOGICAL,37)@1 + 1
    excZ_bSig_uid18_uid38_block_rsrvd_fix_qi <= "1" WHEN exp_bSig_uid36_block_rsrvd_fix_b = cstAllZWE_uid21_block_rsrvd_fix_q ELSE "0";
    excZ_bSig_uid18_uid38_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excZ_bSig_uid18_uid38_block_rsrvd_fix_qi, xout => excZ_bSig_uid18_uid38_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- InvExpXIsZero_uid45_block_rsrvd_fix(LOGICAL,44)@2
    InvExpXIsZero_uid45_block_rsrvd_fix_q <= not (excZ_bSig_uid18_uid38_block_rsrvd_fix_q);

    -- cstZeroWF_uid20_block_rsrvd_fix(CONSTANT,19)
    cstZeroWF_uid20_block_rsrvd_fix_q <= "00000000000000000000000";

    -- frac_bSig_uid37_block_rsrvd_fix(BITSELECT,36)@1
    frac_bSig_uid37_block_rsrvd_fix_in <= bSig_uid18_block_rsrvd_fix_q(22 downto 0);
    frac_bSig_uid37_block_rsrvd_fix_b <= frac_bSig_uid37_block_rsrvd_fix_in(22 downto 0);

    -- redist33_frac_bSig_uid37_block_rsrvd_fix_b_1(DELAY,306)
    redist33_frac_bSig_uid37_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => frac_bSig_uid37_block_rsrvd_fix_b, xout => redist33_frac_bSig_uid37_block_rsrvd_fix_b_1_q, clk => clock, aclr => resetn );

    -- fracBz_uid57_block_rsrvd_fix(MUX,56)@2
    fracBz_uid57_block_rsrvd_fix_s <= excZ_bSig_uid18_uid38_block_rsrvd_fix_q;
    fracBz_uid57_block_rsrvd_fix_combproc: PROCESS (fracBz_uid57_block_rsrvd_fix_s, redist33_frac_bSig_uid37_block_rsrvd_fix_b_1_q, cstZeroWF_uid20_block_rsrvd_fix_q)
    BEGIN
        CASE (fracBz_uid57_block_rsrvd_fix_s) IS
            WHEN "0" => fracBz_uid57_block_rsrvd_fix_q <= redist33_frac_bSig_uid37_block_rsrvd_fix_b_1_q;
            WHEN "1" => fracBz_uid57_block_rsrvd_fix_q <= cstZeroWF_uid20_block_rsrvd_fix_q;
            WHEN OTHERS => fracBz_uid57_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- oFracB_uid60_block_rsrvd_fix(BITJOIN,59)@2
    oFracB_uid60_block_rsrvd_fix_q <= InvExpXIsZero_uid45_block_rsrvd_fix_q & fracBz_uid57_block_rsrvd_fix_q;

    -- padConst_uid65_block_rsrvd_fix(CONSTANT,64)
    padConst_uid65_block_rsrvd_fix_q <= "0000000000000000000000000";

    -- rightPaddedIn_uid66_block_rsrvd_fix(BITJOIN,65)@2
    rightPaddedIn_uid66_block_rsrvd_fix_q <= oFracB_uid60_block_rsrvd_fix_q & padConst_uid65_block_rsrvd_fix_q;

    -- rightShiftStageSel5Dto3_uid205_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select(BITSELECT,267)@2
    rightShiftStageSel5Dto3_uid205_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_in <= expAmExpB_uid61_block_rsrvd_fix_q(5 downto 0);
    rightShiftStageSel5Dto3_uid205_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_b <= rightShiftStageSel5Dto3_uid205_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_in(5 downto 3);
    rightShiftStageSel5Dto3_uid205_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_c <= rightShiftStageSel5Dto3_uid205_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_in(2 downto 0);

    -- rightShiftStage0_uid206_alignmentShifter_uid65_block_rsrvd_fix(MUX,205)@2 + 1
    rightShiftStage0_uid206_alignmentShifter_uid65_block_rsrvd_fix_s <= rightShiftStageSel5Dto3_uid205_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_b;
    rightShiftStage0_uid206_alignmentShifter_uid65_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            rightShiftStage0_uid206_alignmentShifter_uid65_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (rightShiftStage0_uid206_alignmentShifter_uid65_block_rsrvd_fix_s) IS
                WHEN "000" => rightShiftStage0_uid206_alignmentShifter_uid65_block_rsrvd_fix_q <= rightPaddedIn_uid66_block_rsrvd_fix_q;
                WHEN "001" => rightShiftStage0_uid206_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage0Idx1_uid188_alignmentShifter_uid65_block_rsrvd_fix_q;
                WHEN "010" => rightShiftStage0_uid206_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage0Idx2_uid191_alignmentShifter_uid65_block_rsrvd_fix_q;
                WHEN "011" => rightShiftStage0_uid206_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage0Idx3_uid194_alignmentShifter_uid65_block_rsrvd_fix_q;
                WHEN "100" => rightShiftStage0_uid206_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage0Idx4_uid197_alignmentShifter_uid65_block_rsrvd_fix_q;
                WHEN "101" => rightShiftStage0_uid206_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage0Idx5_uid200_alignmentShifter_uid65_block_rsrvd_fix_q;
                WHEN "110" => rightShiftStage0_uid206_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage0Idx6_uid203_alignmentShifter_uid65_block_rsrvd_fix_q;
                WHEN "111" => rightShiftStage0_uid206_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage0Idx7_uid204_alignmentShifter_uid65_block_rsrvd_fix_q;
                WHEN OTHERS => rightShiftStage0_uid206_alignmentShifter_uid65_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist4_rightShiftStageSel5Dto3_uid205_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_c_1(DELAY,277)
    redist4_rightShiftStageSel5Dto3_uid205_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 3, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rightShiftStageSel5Dto3_uid205_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_c, xout => redist4_rightShiftStageSel5Dto3_uid205_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- rightShiftStage1_uid229_alignmentShifter_uid65_block_rsrvd_fix(MUX,228)@3
    rightShiftStage1_uid229_alignmentShifter_uid65_block_rsrvd_fix_s <= redist4_rightShiftStageSel5Dto3_uid205_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_c_1_q;
    rightShiftStage1_uid229_alignmentShifter_uid65_block_rsrvd_fix_combproc: PROCESS (rightShiftStage1_uid229_alignmentShifter_uid65_block_rsrvd_fix_s, rightShiftStage0_uid206_alignmentShifter_uid65_block_rsrvd_fix_q, rightShiftStage1Idx1_uid209_alignmentShifter_uid65_block_rsrvd_fix_q, rightShiftStage1Idx2_uid212_alignmentShifter_uid65_block_rsrvd_fix_q, rightShiftStage1Idx3_uid215_alignmentShifter_uid65_block_rsrvd_fix_q, rightShiftStage1Idx4_uid218_alignmentShifter_uid65_block_rsrvd_fix_q, rightShiftStage1Idx5_uid221_alignmentShifter_uid65_block_rsrvd_fix_q, rightShiftStage1Idx6_uid224_alignmentShifter_uid65_block_rsrvd_fix_q, rightShiftStage1Idx7_uid227_alignmentShifter_uid65_block_rsrvd_fix_q)
    BEGIN
        CASE (rightShiftStage1_uid229_alignmentShifter_uid65_block_rsrvd_fix_s) IS
            WHEN "000" => rightShiftStage1_uid229_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage0_uid206_alignmentShifter_uid65_block_rsrvd_fix_q;
            WHEN "001" => rightShiftStage1_uid229_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage1Idx1_uid209_alignmentShifter_uid65_block_rsrvd_fix_q;
            WHEN "010" => rightShiftStage1_uid229_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage1Idx2_uid212_alignmentShifter_uid65_block_rsrvd_fix_q;
            WHEN "011" => rightShiftStage1_uid229_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage1Idx3_uid215_alignmentShifter_uid65_block_rsrvd_fix_q;
            WHEN "100" => rightShiftStage1_uid229_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage1Idx4_uid218_alignmentShifter_uid65_block_rsrvd_fix_q;
            WHEN "101" => rightShiftStage1_uid229_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage1Idx5_uid221_alignmentShifter_uid65_block_rsrvd_fix_q;
            WHEN "110" => rightShiftStage1_uid229_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage1Idx6_uid224_alignmentShifter_uid65_block_rsrvd_fix_q;
            WHEN "111" => rightShiftStage1_uid229_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage1Idx7_uid227_alignmentShifter_uid65_block_rsrvd_fix_q;
            WHEN OTHERS => rightShiftStage1_uid229_alignmentShifter_uid65_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- wIntCst_uid184_alignmentShifter_uid65_block_rsrvd_fix(CONSTANT,183)
    wIntCst_uid184_alignmentShifter_uid65_block_rsrvd_fix_q <= "110001";

    -- shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix(COMPARE,184)@2 + 1
    shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & expAmExpB_uid61_block_rsrvd_fix_q);
    shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00000" & wIntCst_uid184_alignmentShifter_uid65_block_rsrvd_fix_q);
    shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_a) - UNSIGNED(shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_b));
        END IF;
    END PROCESS;
    shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_n(0) <= not (shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_o(10));

    -- r_uid231_alignmentShifter_uid65_block_rsrvd_fix(MUX,230)@3 + 1
    r_uid231_alignmentShifter_uid65_block_rsrvd_fix_s <= shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_n;
    r_uid231_alignmentShifter_uid65_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            r_uid231_alignmentShifter_uid65_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (r_uid231_alignmentShifter_uid65_block_rsrvd_fix_s) IS
                WHEN "0" => r_uid231_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage1_uid229_alignmentShifter_uid65_block_rsrvd_fix_q;
                WHEN "1" => r_uid231_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage0Idx7_uid204_alignmentShifter_uid65_block_rsrvd_fix_q;
                WHEN OTHERS => r_uid231_alignmentShifter_uid65_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- alignFracBPostShiftOut_uid69_block_rsrvd_fix(LOGICAL,68)@4 + 1
    alignFracBPostShiftOut_uid69_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 1 => iShiftedOut_uid68_block_rsrvd_fix_q(0)) & iShiftedOut_uid68_block_rsrvd_fix_q));
    alignFracBPostShiftOut_uid69_block_rsrvd_fix_qi <= r_uid231_alignmentShifter_uid65_block_rsrvd_fix_q and alignFracBPostShiftOut_uid69_block_rsrvd_fix_b;
    alignFracBPostShiftOut_uid69_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 49, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => alignFracBPostShiftOut_uid69_block_rsrvd_fix_qi, xout => alignFracBPostShiftOut_uid69_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- stickyBits_uid70_block_rsrvd_fix_merged_bit_select(BITSELECT,268)@5
    stickyBits_uid70_block_rsrvd_fix_merged_bit_select_b <= alignFracBPostShiftOut_uid69_block_rsrvd_fix_q(22 downto 0);
    stickyBits_uid70_block_rsrvd_fix_merged_bit_select_c <= alignFracBPostShiftOut_uid69_block_rsrvd_fix_q(48 downto 23);

    -- redist3_stickyBits_uid70_block_rsrvd_fix_merged_bit_select_c_1(DELAY,276)
    redist3_stickyBits_uid70_block_rsrvd_fix_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 26, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => stickyBits_uid70_block_rsrvd_fix_merged_bit_select_c, xout => redist3_stickyBits_uid70_block_rsrvd_fix_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- fracBAddOp_uid81_block_rsrvd_fix(BITJOIN,80)@6
    fracBAddOp_uid81_block_rsrvd_fix_q <= GND_q & redist3_stickyBits_uid70_block_rsrvd_fix_merged_bit_select_c_1_q;

    -- fracBAddOpPostXor_uid82_block_rsrvd_fix(LOGICAL,81)@6 + 1
    fracBAddOpPostXor_uid82_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 1 => effSub_uid53_block_rsrvd_fix_q(0)) & effSub_uid53_block_rsrvd_fix_q));
    fracBAddOpPostXor_uid82_block_rsrvd_fix_qi <= fracBAddOp_uid81_block_rsrvd_fix_q xor fracBAddOpPostXor_uid82_block_rsrvd_fix_b;
    fracBAddOpPostXor_uid82_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 27, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => fracBAddOpPostXor_uid82_block_rsrvd_fix_qi, xout => fracBAddOpPostXor_uid82_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- zocst_uid77_block_rsrvd_fix(CONSTANT,76)
    zocst_uid77_block_rsrvd_fix_q <= "01";

    -- frac_aSig_uid23_block_rsrvd_fix(BITSELECT,22)@1
    frac_aSig_uid23_block_rsrvd_fix_in <= aSig_uid17_block_rsrvd_fix_q(22 downto 0);
    frac_aSig_uid23_block_rsrvd_fix_b <= frac_aSig_uid23_block_rsrvd_fix_in(22 downto 0);

    -- redist39_frac_aSig_uid23_block_rsrvd_fix_b_6(DELAY,312)
    redist39_frac_aSig_uid23_block_rsrvd_fix_b_6 : dspba_delay
    GENERIC MAP ( width => 23, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => frac_aSig_uid23_block_rsrvd_fix_b, xout => redist39_frac_aSig_uid23_block_rsrvd_fix_b_6_q, clk => clock, aclr => resetn );

    -- cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix(LOGICAL,71)@5 + 1
    cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_qi <= "1" WHEN stickyBits_uid70_block_rsrvd_fix_merged_bit_select_b = cstZeroWF_uid20_block_rsrvd_fix_q ELSE "0";
    cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_qi, xout => cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- effSubInvSticky_uid75_block_rsrvd_fix(LOGICAL,74)@6 + 1
    effSubInvSticky_uid75_block_rsrvd_fix_qi <= effSub_uid53_block_rsrvd_fix_q and cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_q;
    effSubInvSticky_uid75_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => effSubInvSticky_uid75_block_rsrvd_fix_qi, xout => effSubInvSticky_uid75_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- fracAAddOp_uid78_block_rsrvd_fix(BITJOIN,77)@7
    fracAAddOp_uid78_block_rsrvd_fix_q <= zocst_uid77_block_rsrvd_fix_q & redist39_frac_aSig_uid23_block_rsrvd_fix_b_6_q & GND_q & effSubInvSticky_uid75_block_rsrvd_fix_q;

    -- fracAddResult_uid83_block_rsrvd_fix(ADD,82)@7
    fracAddResult_uid83_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & fracAAddOp_uid78_block_rsrvd_fix_q);
    fracAddResult_uid83_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0" & fracBAddOpPostXor_uid82_block_rsrvd_fix_q);
    fracAddResult_uid83_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(fracAddResult_uid83_block_rsrvd_fix_a) + UNSIGNED(fracAddResult_uid83_block_rsrvd_fix_b));
    fracAddResult_uid83_block_rsrvd_fix_q <= fracAddResult_uid83_block_rsrvd_fix_o(27 downto 0);

    -- rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix(BITSELECT,83)@7
    rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_in <= fracAddResult_uid83_block_rsrvd_fix_q(26 downto 0);
    rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_b <= rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_in(26 downto 0);

    -- redist18_rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_b_1(DELAY,291)
    redist18_rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 27, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_b, xout => redist18_rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_b_1_q, clk => clock, aclr => resetn );

    -- redist19_cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_q_3(DELAY,292)
    redist19_cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_q, xout => redist19_cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_q_3_q, clk => clock, aclr => resetn );

    -- invCmpEQ_stickyBits_cZwF_uid73_block_rsrvd_fix(LOGICAL,72)@8
    invCmpEQ_stickyBits_cZwF_uid73_block_rsrvd_fix_q <= not (redist19_cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_q_3_q);

    -- fracGRS_uid85_block_rsrvd_fix(BITJOIN,84)@8
    fracGRS_uid85_block_rsrvd_fix_q <= redist18_rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_b_1_q & invCmpEQ_stickyBits_cZwF_uid73_block_rsrvd_fix_q;

    -- rVStage_uid152_lzCountVal_uid86_block_rsrvd_fix(BITSELECT,151)@8
    rVStage_uid152_lzCountVal_uid86_block_rsrvd_fix_b <= fracGRS_uid85_block_rsrvd_fix_q(27 downto 12);

    -- vCount_uid153_lzCountVal_uid86_block_rsrvd_fix(LOGICAL,152)@8
    vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q <= "1" WHEN rVStage_uid152_lzCountVal_uid86_block_rsrvd_fix_b = zs_uid151_lzCountVal_uid86_block_rsrvd_fix_q ELSE "0";

    -- redist8_vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q_3(DELAY,281)
    redist8_vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q, xout => redist8_vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q_3_q, clk => clock, aclr => resetn );

    -- vStage_uid155_lzCountVal_uid86_block_rsrvd_fix(BITSELECT,154)@8
    vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_in <= fracGRS_uid85_block_rsrvd_fix_q(11 downto 0);
    vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b <= vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_in(11 downto 0);

    -- mO_uid154_lzCountVal_uid86_block_rsrvd_fix(CONSTANT,153)
    mO_uid154_lzCountVal_uid86_block_rsrvd_fix_q <= "1111";

    -- cStage_uid156_lzCountVal_uid86_block_rsrvd_fix(BITJOIN,155)@8
    cStage_uid156_lzCountVal_uid86_block_rsrvd_fix_q <= vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b & mO_uid154_lzCountVal_uid86_block_rsrvd_fix_q;

    -- vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix(MUX,157)@8 + 1
    vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_s <= vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q;
    vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_s) IS
                WHEN "0" => vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_q <= rVStage_uid152_lzCountVal_uid86_block_rsrvd_fix_b;
                WHEN "1" => vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_q <= cStage_uid156_lzCountVal_uid86_block_rsrvd_fix_q;
                WHEN OTHERS => vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select(BITSELECT,269)@9
    rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_q(15 downto 8);
    rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_q(7 downto 0);

    -- vCount_uid161_lzCountVal_uid86_block_rsrvd_fix(LOGICAL,160)@9
    vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_q <= "1" WHEN rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b = cstAllZWE_uid21_block_rsrvd_fix_q ELSE "0";

    -- redist6_vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_q_2(DELAY,279)
    redist6_vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_q, xout => redist6_vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_q_2_q, clk => clock, aclr => resetn );

    -- vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix(MUX,163)@9 + 1
    vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_s <= vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_q;
    vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_s) IS
                WHEN "0" => vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_q <= rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b;
                WHEN "1" => vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_q <= rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c;
                WHEN OTHERS => vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select(BITSELECT,270)@10
    rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_q(7 downto 4);
    rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_q(3 downto 0);

    -- vCount_uid167_lzCountVal_uid86_block_rsrvd_fix(LOGICAL,166)@10
    vCount_uid167_lzCountVal_uid86_block_rsrvd_fix_q <= "1" WHEN rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b = zs_uid165_lzCountVal_uid86_block_rsrvd_fix_q ELSE "0";

    -- redist5_vCount_uid167_lzCountVal_uid86_block_rsrvd_fix_q_1(DELAY,278)
    redist5_vCount_uid167_lzCountVal_uid86_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid167_lzCountVal_uid86_block_rsrvd_fix_q, xout => redist5_vCount_uid167_lzCountVal_uid86_block_rsrvd_fix_q_1_q, clk => clock, aclr => resetn );

    -- vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix(MUX,169)@10
    vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_s <= vCount_uid167_lzCountVal_uid86_block_rsrvd_fix_q;
    vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_combproc: PROCESS (vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_s, rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b, rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_q <= rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_q <= rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select(BITSELECT,271)@10
    rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_q(3 downto 2);
    rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_q(1 downto 0);

    -- vCount_uid173_lzCountVal_uid86_block_rsrvd_fix(LOGICAL,172)@10 + 1
    vCount_uid173_lzCountVal_uid86_block_rsrvd_fix_qi <= "1" WHEN rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b = zs_uid171_lzCountVal_uid86_block_rsrvd_fix_q ELSE "0";
    vCount_uid173_lzCountVal_uid86_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid173_lzCountVal_uid86_block_rsrvd_fix_qi, xout => vCount_uid173_lzCountVal_uid86_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist2_rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c_1(DELAY,275)
    redist2_rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c, xout => redist2_rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- redist1_rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b_1(DELAY,274)
    redist1_rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b, xout => redist1_rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b_1_q, clk => clock, aclr => resetn );

    -- vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix(MUX,175)@11
    vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_s <= vCount_uid173_lzCountVal_uid86_block_rsrvd_fix_q;
    vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_combproc: PROCESS (vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_s, redist1_rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b_1_q, redist2_rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c_1_q)
    BEGIN
        CASE (vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_q <= redist1_rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b_1_q;
            WHEN "1" => vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_q <= redist2_rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c_1_q;
            WHEN OTHERS => vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid178_lzCountVal_uid86_block_rsrvd_fix(BITSELECT,177)@11
    rVStage_uid178_lzCountVal_uid86_block_rsrvd_fix_b <= vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_q(1 downto 1);

    -- vCount_uid179_lzCountVal_uid86_block_rsrvd_fix(LOGICAL,178)@11
    vCount_uid179_lzCountVal_uid86_block_rsrvd_fix_q <= "1" WHEN rVStage_uid178_lzCountVal_uid86_block_rsrvd_fix_b = GND_q ELSE "0";

    -- r_uid180_lzCountVal_uid86_block_rsrvd_fix(BITJOIN,179)@11
    r_uid180_lzCountVal_uid86_block_rsrvd_fix_q <= redist8_vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q_3_q & redist6_vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_q_2_q & redist5_vCount_uid167_lzCountVal_uid86_block_rsrvd_fix_q_1_q & vCount_uid173_lzCountVal_uid86_block_rsrvd_fix_q & vCount_uid179_lzCountVal_uid86_block_rsrvd_fix_q;

    -- aMinusA_uid88_block_rsrvd_fix(LOGICAL,87)@11 + 1
    aMinusA_uid88_block_rsrvd_fix_qi <= "1" WHEN r_uid180_lzCountVal_uid86_block_rsrvd_fix_q = cAmA_uid87_block_rsrvd_fix_q ELSE "0";
    aMinusA_uid88_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => aMinusA_uid88_block_rsrvd_fix_qi, xout => aMinusA_uid88_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- invAMinusA_uid130_block_rsrvd_fix(LOGICAL,129)@12
    invAMinusA_uid130_block_rsrvd_fix_q <= not (aMinusA_uid88_block_rsrvd_fix_q);

    -- redist25_sigA_uid51_block_rsrvd_fix_b_11(DELAY,298)
    redist25_sigA_uid51_block_rsrvd_fix_b_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist24_sigA_uid51_block_rsrvd_fix_b_5_q, xout => redist25_sigA_uid51_block_rsrvd_fix_b_11_q, clk => clock, aclr => resetn );

    -- cstAllOWE_uid19_block_rsrvd_fix(CONSTANT,18)
    cstAllOWE_uid19_block_rsrvd_fix_q <= "11111111";

    -- expXIsMax_uid39_block_rsrvd_fix(LOGICAL,38)@1 + 1
    expXIsMax_uid39_block_rsrvd_fix_qi <= "1" WHEN exp_bSig_uid36_block_rsrvd_fix_b = cstAllOWE_uid19_block_rsrvd_fix_q ELSE "0";
    expXIsMax_uid39_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => expXIsMax_uid39_block_rsrvd_fix_qi, xout => expXIsMax_uid39_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist30_expXIsMax_uid39_block_rsrvd_fix_q_10(DELAY,303)
    redist30_expXIsMax_uid39_block_rsrvd_fix_q_10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => expXIsMax_uid39_block_rsrvd_fix_q, xout => redist30_expXIsMax_uid39_block_rsrvd_fix_q_10_q, clk => clock, aclr => resetn );

    -- invExpXIsMax_uid44_block_rsrvd_fix(LOGICAL,43)@11
    invExpXIsMax_uid44_block_rsrvd_fix_q <= not (redist30_expXIsMax_uid39_block_rsrvd_fix_q_10_q);

    -- redist26_InvExpXIsZero_uid45_block_rsrvd_fix_q_9(DELAY,299)
    redist26_InvExpXIsZero_uid45_block_rsrvd_fix_q_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => InvExpXIsZero_uid45_block_rsrvd_fix_q, xout => redist26_InvExpXIsZero_uid45_block_rsrvd_fix_q_9_q, clk => clock, aclr => resetn );

    -- excR_bSig_uid46_block_rsrvd_fix(LOGICAL,45)@11 + 1
    excR_bSig_uid46_block_rsrvd_fix_qi <= redist26_InvExpXIsZero_uid45_block_rsrvd_fix_q_9_q and invExpXIsMax_uid44_block_rsrvd_fix_q;
    excR_bSig_uid46_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excR_bSig_uid46_block_rsrvd_fix_qi, xout => excR_bSig_uid46_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist40_exp_aSig_uid22_block_rsrvd_fix_b_9(DELAY,313)
    redist40_exp_aSig_uid22_block_rsrvd_fix_b_9 : dspba_delay
    GENERIC MAP ( width => 8, depth => 9, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => exp_aSig_uid22_block_rsrvd_fix_b, xout => redist40_exp_aSig_uid22_block_rsrvd_fix_b_9_q, clk => clock, aclr => resetn );

    -- expXIsMax_uid25_block_rsrvd_fix(LOGICAL,24)@10 + 1
    expXIsMax_uid25_block_rsrvd_fix_qi <= "1" WHEN redist40_exp_aSig_uid22_block_rsrvd_fix_b_9_q = cstAllOWE_uid19_block_rsrvd_fix_q ELSE "0";
    expXIsMax_uid25_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => expXIsMax_uid25_block_rsrvd_fix_qi, xout => expXIsMax_uid25_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- invExpXIsMax_uid30_block_rsrvd_fix(LOGICAL,29)@11
    invExpXIsMax_uid30_block_rsrvd_fix_q <= not (expXIsMax_uid25_block_rsrvd_fix_q);

    -- excZ_aSig_uid17_uid24_block_rsrvd_fix(LOGICAL,23)@10 + 1
    excZ_aSig_uid17_uid24_block_rsrvd_fix_qi <= "1" WHEN redist40_exp_aSig_uid22_block_rsrvd_fix_b_9_q = cstAllZWE_uid21_block_rsrvd_fix_q ELSE "0";
    excZ_aSig_uid17_uid24_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excZ_aSig_uid17_uid24_block_rsrvd_fix_qi, xout => excZ_aSig_uid17_uid24_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- InvExpXIsZero_uid31_block_rsrvd_fix(LOGICAL,30)@11
    InvExpXIsZero_uid31_block_rsrvd_fix_q <= not (excZ_aSig_uid17_uid24_block_rsrvd_fix_q);

    -- excR_aSig_uid32_block_rsrvd_fix(LOGICAL,31)@11 + 1
    excR_aSig_uid32_block_rsrvd_fix_qi <= InvExpXIsZero_uid31_block_rsrvd_fix_q and invExpXIsMax_uid30_block_rsrvd_fix_q;
    excR_aSig_uid32_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excR_aSig_uid32_block_rsrvd_fix_qi, xout => excR_aSig_uid32_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- signRReg_uid131_block_rsrvd_fix(LOGICAL,130)@12
    signRReg_uid131_block_rsrvd_fix_q <= excR_aSig_uid32_block_rsrvd_fix_q and excR_bSig_uid46_block_rsrvd_fix_q and redist25_sigA_uid51_block_rsrvd_fix_b_11_q and invAMinusA_uid130_block_rsrvd_fix_q;

    -- redist23_sigB_uid52_block_rsrvd_fix_b_11(DELAY,296)
    redist23_sigB_uid52_block_rsrvd_fix_b_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist22_sigB_uid52_block_rsrvd_fix_b_5_q, xout => redist23_sigB_uid52_block_rsrvd_fix_b_11_q, clk => clock, aclr => resetn );

    -- redist31_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_11(DELAY,304)
    redist31_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 10, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excZ_bSig_uid18_uid38_block_rsrvd_fix_q, xout => redist31_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_11_q, clk => clock, aclr => resetn );

    -- redist37_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_2(DELAY,310)
    redist37_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excZ_aSig_uid17_uid24_block_rsrvd_fix_q, xout => redist37_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_2_q, clk => clock, aclr => resetn );

    -- excAZBZSigASigB_uid135_block_rsrvd_fix(LOGICAL,134)@12
    excAZBZSigASigB_uid135_block_rsrvd_fix_q <= redist37_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_2_q and redist31_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_11_q and redist25_sigA_uid51_block_rsrvd_fix_b_11_q and redist23_sigB_uid52_block_rsrvd_fix_b_11_q;

    -- excBZARSigA_uid136_block_rsrvd_fix(LOGICAL,135)@12
    excBZARSigA_uid136_block_rsrvd_fix_q <= redist31_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_11_q and excR_aSig_uid32_block_rsrvd_fix_q and redist25_sigA_uid51_block_rsrvd_fix_b_11_q;

    -- signRZero_uid137_block_rsrvd_fix(LOGICAL,136)@12
    signRZero_uid137_block_rsrvd_fix_q <= excBZARSigA_uid136_block_rsrvd_fix_q or excAZBZSigASigB_uid135_block_rsrvd_fix_q;

    -- fracXIsZero_uid40_block_rsrvd_fix(LOGICAL,39)@2 + 1
    fracXIsZero_uid40_block_rsrvd_fix_qi <= "1" WHEN cstZeroWF_uid20_block_rsrvd_fix_q = redist33_frac_bSig_uid37_block_rsrvd_fix_b_1_q ELSE "0";
    fracXIsZero_uid40_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => fracXIsZero_uid40_block_rsrvd_fix_qi, xout => fracXIsZero_uid40_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist29_fracXIsZero_uid40_block_rsrvd_fix_q_9(DELAY,302)
    redist29_fracXIsZero_uid40_block_rsrvd_fix_q_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => fracXIsZero_uid40_block_rsrvd_fix_q, xout => redist29_fracXIsZero_uid40_block_rsrvd_fix_q_9_q, clk => clock, aclr => resetn );

    -- excI_bSig_uid42_block_rsrvd_fix(LOGICAL,41)@11 + 1
    excI_bSig_uid42_block_rsrvd_fix_qi <= redist30_expXIsMax_uid39_block_rsrvd_fix_q_10_q and redist29_fracXIsZero_uid40_block_rsrvd_fix_q_9_q;
    excI_bSig_uid42_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excI_bSig_uid42_block_rsrvd_fix_qi, xout => excI_bSig_uid42_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- sigBBInf_uid132_block_rsrvd_fix(LOGICAL,131)@12
    sigBBInf_uid132_block_rsrvd_fix_q <= redist23_sigB_uid52_block_rsrvd_fix_b_11_q and excI_bSig_uid42_block_rsrvd_fix_q;

    -- fracXIsZero_uid26_block_rsrvd_fix(LOGICAL,25)@7 + 1
    fracXIsZero_uid26_block_rsrvd_fix_qi <= "1" WHEN cstZeroWF_uid20_block_rsrvd_fix_q = redist39_frac_aSig_uid23_block_rsrvd_fix_b_6_q ELSE "0";
    fracXIsZero_uid26_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => fracXIsZero_uid26_block_rsrvd_fix_qi, xout => fracXIsZero_uid26_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist36_fracXIsZero_uid26_block_rsrvd_fix_q_4(DELAY,309)
    redist36_fracXIsZero_uid26_block_rsrvd_fix_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => fracXIsZero_uid26_block_rsrvd_fix_q, xout => redist36_fracXIsZero_uid26_block_rsrvd_fix_q_4_q, clk => clock, aclr => resetn );

    -- excI_aSig_uid28_block_rsrvd_fix(LOGICAL,27)@11 + 1
    excI_aSig_uid28_block_rsrvd_fix_qi <= expXIsMax_uid25_block_rsrvd_fix_q and redist36_fracXIsZero_uid26_block_rsrvd_fix_q_4_q;
    excI_aSig_uid28_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excI_aSig_uid28_block_rsrvd_fix_qi, xout => excI_aSig_uid28_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- sigAAInf_uid133_block_rsrvd_fix(LOGICAL,132)@12
    sigAAInf_uid133_block_rsrvd_fix_q <= redist25_sigA_uid51_block_rsrvd_fix_b_11_q and excI_aSig_uid28_block_rsrvd_fix_q;

    -- signRInf_uid134_block_rsrvd_fix(LOGICAL,133)@12
    signRInf_uid134_block_rsrvd_fix_q <= sigAAInf_uid133_block_rsrvd_fix_q or sigBBInf_uid132_block_rsrvd_fix_q;

    -- signRInfRZRReg_uid138_block_rsrvd_fix(LOGICAL,137)@12 + 1
    signRInfRZRReg_uid138_block_rsrvd_fix_qi <= signRInf_uid134_block_rsrvd_fix_q or signRZero_uid137_block_rsrvd_fix_q or signRReg_uid131_block_rsrvd_fix_q;
    signRInfRZRReg_uid138_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => signRInfRZRReg_uid138_block_rsrvd_fix_qi, xout => signRInfRZRReg_uid138_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist9_signRInfRZRReg_uid138_block_rsrvd_fix_q_6(DELAY,282)
    redist9_signRInfRZRReg_uid138_block_rsrvd_fix_q_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => signRInfRZRReg_uid138_block_rsrvd_fix_q, xout => redist9_signRInfRZRReg_uid138_block_rsrvd_fix_q_6_q, clk => clock, aclr => resetn );

    -- fracXIsNotZero_uid41_block_rsrvd_fix(LOGICAL,40)@11
    fracXIsNotZero_uid41_block_rsrvd_fix_q <= not (redist29_fracXIsZero_uid40_block_rsrvd_fix_q_9_q);

    -- excN_bSig_uid43_block_rsrvd_fix(LOGICAL,42)@11 + 1
    excN_bSig_uid43_block_rsrvd_fix_qi <= redist30_expXIsMax_uid39_block_rsrvd_fix_q_10_q and fracXIsNotZero_uid41_block_rsrvd_fix_q;
    excN_bSig_uid43_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excN_bSig_uid43_block_rsrvd_fix_qi, xout => excN_bSig_uid43_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist27_excN_bSig_uid43_block_rsrvd_fix_q_6(DELAY,300)
    redist27_excN_bSig_uid43_block_rsrvd_fix_q_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excN_bSig_uid43_block_rsrvd_fix_q, xout => redist27_excN_bSig_uid43_block_rsrvd_fix_q_6_q, clk => clock, aclr => resetn );

    -- fracXIsNotZero_uid27_block_rsrvd_fix(LOGICAL,26)@11
    fracXIsNotZero_uid27_block_rsrvd_fix_q <= not (redist36_fracXIsZero_uid26_block_rsrvd_fix_q_4_q);

    -- excN_aSig_uid29_block_rsrvd_fix(LOGICAL,28)@11 + 1
    excN_aSig_uid29_block_rsrvd_fix_qi <= expXIsMax_uid25_block_rsrvd_fix_q and fracXIsNotZero_uid27_block_rsrvd_fix_q;
    excN_aSig_uid29_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excN_aSig_uid29_block_rsrvd_fix_qi, xout => excN_aSig_uid29_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist34_excN_aSig_uid29_block_rsrvd_fix_q_6(DELAY,307)
    redist34_excN_aSig_uid29_block_rsrvd_fix_q_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excN_aSig_uid29_block_rsrvd_fix_q, xout => redist34_excN_aSig_uid29_block_rsrvd_fix_q_6_q, clk => clock, aclr => resetn );

    -- excRNaN2_uid125_block_rsrvd_fix(LOGICAL,124)@17
    excRNaN2_uid125_block_rsrvd_fix_q <= redist34_excN_aSig_uid29_block_rsrvd_fix_q_6_q or redist27_excN_bSig_uid43_block_rsrvd_fix_q_6_q;

    -- redist21_effSub_uid53_block_rsrvd_fix_q_11(DELAY,294)
    redist21_effSub_uid53_block_rsrvd_fix_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 11, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => effSub_uid53_block_rsrvd_fix_q, xout => redist21_effSub_uid53_block_rsrvd_fix_q_11_q, clk => clock, aclr => resetn );

    -- redist28_excI_bSig_uid42_block_rsrvd_fix_q_6(DELAY,301)
    redist28_excI_bSig_uid42_block_rsrvd_fix_q_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excI_bSig_uid42_block_rsrvd_fix_q, xout => redist28_excI_bSig_uid42_block_rsrvd_fix_q_6_q, clk => clock, aclr => resetn );

    -- redist35_excI_aSig_uid28_block_rsrvd_fix_q_6(DELAY,308)
    redist35_excI_aSig_uid28_block_rsrvd_fix_q_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excI_aSig_uid28_block_rsrvd_fix_q, xout => redist35_excI_aSig_uid28_block_rsrvd_fix_q_6_q, clk => clock, aclr => resetn );

    -- excAIBISub_uid126_block_rsrvd_fix(LOGICAL,125)@17
    excAIBISub_uid126_block_rsrvd_fix_q <= redist35_excI_aSig_uid28_block_rsrvd_fix_q_6_q and redist28_excI_bSig_uid42_block_rsrvd_fix_q_6_q and redist21_effSub_uid53_block_rsrvd_fix_q_11_q;

    -- excRNaN_uid127_block_rsrvd_fix(LOGICAL,126)@17 + 1
    excRNaN_uid127_block_rsrvd_fix_qi <= excAIBISub_uid126_block_rsrvd_fix_q or excRNaN2_uid125_block_rsrvd_fix_q;
    excRNaN_uid127_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excRNaN_uid127_block_rsrvd_fix_qi, xout => excRNaN_uid127_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- invExcRNaN_uid139_block_rsrvd_fix(LOGICAL,138)@18
    invExcRNaN_uid139_block_rsrvd_fix_q <= not (excRNaN_uid127_block_rsrvd_fix_q);

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- signRPostExc_uid140_block_rsrvd_fix(LOGICAL,139)@18
    signRPostExc_uid140_block_rsrvd_fix_q <= invExcRNaN_uid139_block_rsrvd_fix_q and redist9_signRInfRZRReg_uid138_block_rsrvd_fix_q_6_q;

    -- cRBit_uid100_block_rsrvd_fix(CONSTANT,99)
    cRBit_uid100_block_rsrvd_fix_q <= "01000";

    -- leftShiftStage1Idx3Rng3_uid263_fracPostNormExt_uid89_block_rsrvd_fix(BITSELECT,262)@12
    leftShiftStage1Idx3Rng3_uid263_fracPostNormExt_uid89_block_rsrvd_fix_in <= leftShiftStage0_uid255_fracPostNormExt_uid89_block_rsrvd_fix_q(24 downto 0);
    leftShiftStage1Idx3Rng3_uid263_fracPostNormExt_uid89_block_rsrvd_fix_b <= leftShiftStage1Idx3Rng3_uid263_fracPostNormExt_uid89_block_rsrvd_fix_in(24 downto 0);

    -- leftShiftStage1Idx3_uid264_fracPostNormExt_uid89_block_rsrvd_fix(BITJOIN,263)@12
    leftShiftStage1Idx3_uid264_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage1Idx3Rng3_uid263_fracPostNormExt_uid89_block_rsrvd_fix_b & rightShiftStage1Idx3Pad3_uid214_alignmentShifter_uid65_block_rsrvd_fix_q;

    -- leftShiftStage1Idx2Rng2_uid260_fracPostNormExt_uid89_block_rsrvd_fix(BITSELECT,259)@12
    leftShiftStage1Idx2Rng2_uid260_fracPostNormExt_uid89_block_rsrvd_fix_in <= leftShiftStage0_uid255_fracPostNormExt_uid89_block_rsrvd_fix_q(25 downto 0);
    leftShiftStage1Idx2Rng2_uid260_fracPostNormExt_uid89_block_rsrvd_fix_b <= leftShiftStage1Idx2Rng2_uid260_fracPostNormExt_uid89_block_rsrvd_fix_in(25 downto 0);

    -- leftShiftStage1Idx2_uid261_fracPostNormExt_uid89_block_rsrvd_fix(BITJOIN,260)@12
    leftShiftStage1Idx2_uid261_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage1Idx2Rng2_uid260_fracPostNormExt_uid89_block_rsrvd_fix_b & zs_uid171_lzCountVal_uid86_block_rsrvd_fix_q;

    -- leftShiftStage1Idx1Rng1_uid257_fracPostNormExt_uid89_block_rsrvd_fix(BITSELECT,256)@12
    leftShiftStage1Idx1Rng1_uid257_fracPostNormExt_uid89_block_rsrvd_fix_in <= leftShiftStage0_uid255_fracPostNormExt_uid89_block_rsrvd_fix_q(26 downto 0);
    leftShiftStage1Idx1Rng1_uid257_fracPostNormExt_uid89_block_rsrvd_fix_b <= leftShiftStage1Idx1Rng1_uid257_fracPostNormExt_uid89_block_rsrvd_fix_in(26 downto 0);

    -- leftShiftStage1Idx1_uid258_fracPostNormExt_uid89_block_rsrvd_fix(BITJOIN,257)@12
    leftShiftStage1Idx1_uid258_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage1Idx1Rng1_uid257_fracPostNormExt_uid89_block_rsrvd_fix_b & GND_q;

    -- leftShiftStage0Idx7_uid253_fracPostNormExt_uid89_block_rsrvd_fix(CONSTANT,252)
    leftShiftStage0Idx7_uid253_fracPostNormExt_uid89_block_rsrvd_fix_q <= "0000000000000000000000000000";

    -- leftShiftStage0Idx6Rng24_uid251_fracPostNormExt_uid89_block_rsrvd_fix(BITSELECT,250)@11
    leftShiftStage0Idx6Rng24_uid251_fracPostNormExt_uid89_block_rsrvd_fix_in <= redist17_fracGRS_uid85_block_rsrvd_fix_q_3_q(3 downto 0);
    leftShiftStage0Idx6Rng24_uid251_fracPostNormExt_uid89_block_rsrvd_fix_b <= leftShiftStage0Idx6Rng24_uid251_fracPostNormExt_uid89_block_rsrvd_fix_in(3 downto 0);

    -- leftShiftStage0Idx6_uid252_fracPostNormExt_uid89_block_rsrvd_fix(BITJOIN,251)@11
    leftShiftStage0Idx6_uid252_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage0Idx6Rng24_uid251_fracPostNormExt_uid89_block_rsrvd_fix_b & rightShiftStage0Idx3Pad24_uid193_alignmentShifter_uid65_block_rsrvd_fix_q;

    -- leftShiftStage0Idx5Rng20_uid248_fracPostNormExt_uid89_block_rsrvd_fix(BITSELECT,247)@11
    leftShiftStage0Idx5Rng20_uid248_fracPostNormExt_uid89_block_rsrvd_fix_in <= redist17_fracGRS_uid85_block_rsrvd_fix_q_3_q(7 downto 0);
    leftShiftStage0Idx5Rng20_uid248_fracPostNormExt_uid89_block_rsrvd_fix_b <= leftShiftStage0Idx5Rng20_uid248_fracPostNormExt_uid89_block_rsrvd_fix_in(7 downto 0);

    -- leftShiftStage0Idx5Pad20_uid247_fracPostNormExt_uid89_block_rsrvd_fix(CONSTANT,246)
    leftShiftStage0Idx5Pad20_uid247_fracPostNormExt_uid89_block_rsrvd_fix_q <= "00000000000000000000";

    -- leftShiftStage0Idx5_uid249_fracPostNormExt_uid89_block_rsrvd_fix(BITJOIN,248)@11
    leftShiftStage0Idx5_uid249_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage0Idx5Rng20_uid248_fracPostNormExt_uid89_block_rsrvd_fix_b & leftShiftStage0Idx5Pad20_uid247_fracPostNormExt_uid89_block_rsrvd_fix_q;

    -- redist7_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_3(DELAY,280)
    redist7_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_3 : dspba_delay
    GENERIC MAP ( width => 12, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b, xout => redist7_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_3_q, clk => clock, aclr => resetn );

    -- leftShiftStage0Idx4_uid246_fracPostNormExt_uid89_block_rsrvd_fix(BITJOIN,245)@11
    leftShiftStage0Idx4_uid246_fracPostNormExt_uid89_block_rsrvd_fix_q <= redist7_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_3_q & zs_uid151_lzCountVal_uid86_block_rsrvd_fix_q;

    -- leftShiftStage0Idx3Rng12_uid242_fracPostNormExt_uid89_block_rsrvd_fix(BITSELECT,241)@11
    leftShiftStage0Idx3Rng12_uid242_fracPostNormExt_uid89_block_rsrvd_fix_in <= redist17_fracGRS_uid85_block_rsrvd_fix_q_3_q(15 downto 0);
    leftShiftStage0Idx3Rng12_uid242_fracPostNormExt_uid89_block_rsrvd_fix_b <= leftShiftStage0Idx3Rng12_uid242_fracPostNormExt_uid89_block_rsrvd_fix_in(15 downto 0);

    -- leftShiftStage0Idx3Pad12_uid241_fracPostNormExt_uid89_block_rsrvd_fix(CONSTANT,240)
    leftShiftStage0Idx3Pad12_uid241_fracPostNormExt_uid89_block_rsrvd_fix_q <= "000000000000";

    -- leftShiftStage0Idx3_uid243_fracPostNormExt_uid89_block_rsrvd_fix(BITJOIN,242)@11
    leftShiftStage0Idx3_uid243_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage0Idx3Rng12_uid242_fracPostNormExt_uid89_block_rsrvd_fix_b & leftShiftStage0Idx3Pad12_uid241_fracPostNormExt_uid89_block_rsrvd_fix_q;

    -- leftShiftStage0Idx2Rng8_uid239_fracPostNormExt_uid89_block_rsrvd_fix(BITSELECT,238)@11
    leftShiftStage0Idx2Rng8_uid239_fracPostNormExt_uid89_block_rsrvd_fix_in <= redist17_fracGRS_uid85_block_rsrvd_fix_q_3_q(19 downto 0);
    leftShiftStage0Idx2Rng8_uid239_fracPostNormExt_uid89_block_rsrvd_fix_b <= leftShiftStage0Idx2Rng8_uid239_fracPostNormExt_uid89_block_rsrvd_fix_in(19 downto 0);

    -- leftShiftStage0Idx2_uid240_fracPostNormExt_uid89_block_rsrvd_fix(BITJOIN,239)@11
    leftShiftStage0Idx2_uid240_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage0Idx2Rng8_uid239_fracPostNormExt_uid89_block_rsrvd_fix_b & cstAllZWE_uid21_block_rsrvd_fix_q;

    -- leftShiftStage0Idx1Rng4_uid236_fracPostNormExt_uid89_block_rsrvd_fix(BITSELECT,235)@11
    leftShiftStage0Idx1Rng4_uid236_fracPostNormExt_uid89_block_rsrvd_fix_in <= redist17_fracGRS_uid85_block_rsrvd_fix_q_3_q(23 downto 0);
    leftShiftStage0Idx1Rng4_uid236_fracPostNormExt_uid89_block_rsrvd_fix_b <= leftShiftStage0Idx1Rng4_uid236_fracPostNormExt_uid89_block_rsrvd_fix_in(23 downto 0);

    -- leftShiftStage0Idx1_uid237_fracPostNormExt_uid89_block_rsrvd_fix(BITJOIN,236)@11
    leftShiftStage0Idx1_uid237_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage0Idx1Rng4_uid236_fracPostNormExt_uid89_block_rsrvd_fix_b & zs_uid165_lzCountVal_uid86_block_rsrvd_fix_q;

    -- redist17_fracGRS_uid85_block_rsrvd_fix_q_3(DELAY,290)
    redist17_fracGRS_uid85_block_rsrvd_fix_q_3 : dspba_delay
    GENERIC MAP ( width => 28, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => fracGRS_uid85_block_rsrvd_fix_q, xout => redist17_fracGRS_uid85_block_rsrvd_fix_q_3_q, clk => clock, aclr => resetn );

    -- leftShiftStageSel4Dto2_uid254_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select(BITSELECT,272)@11
    leftShiftStageSel4Dto2_uid254_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_b <= r_uid180_lzCountVal_uid86_block_rsrvd_fix_q(4 downto 2);
    leftShiftStageSel4Dto2_uid254_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_c <= r_uid180_lzCountVal_uid86_block_rsrvd_fix_q(1 downto 0);

    -- leftShiftStage0_uid255_fracPostNormExt_uid89_block_rsrvd_fix(MUX,254)@11 + 1
    leftShiftStage0_uid255_fracPostNormExt_uid89_block_rsrvd_fix_s <= leftShiftStageSel4Dto2_uid254_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_b;
    leftShiftStage0_uid255_fracPostNormExt_uid89_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            leftShiftStage0_uid255_fracPostNormExt_uid89_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (leftShiftStage0_uid255_fracPostNormExt_uid89_block_rsrvd_fix_s) IS
                WHEN "000" => leftShiftStage0_uid255_fracPostNormExt_uid89_block_rsrvd_fix_q <= redist17_fracGRS_uid85_block_rsrvd_fix_q_3_q;
                WHEN "001" => leftShiftStage0_uid255_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage0Idx1_uid237_fracPostNormExt_uid89_block_rsrvd_fix_q;
                WHEN "010" => leftShiftStage0_uid255_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage0Idx2_uid240_fracPostNormExt_uid89_block_rsrvd_fix_q;
                WHEN "011" => leftShiftStage0_uid255_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage0Idx3_uid243_fracPostNormExt_uid89_block_rsrvd_fix_q;
                WHEN "100" => leftShiftStage0_uid255_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage0Idx4_uid246_fracPostNormExt_uid89_block_rsrvd_fix_q;
                WHEN "101" => leftShiftStage0_uid255_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage0Idx5_uid249_fracPostNormExt_uid89_block_rsrvd_fix_q;
                WHEN "110" => leftShiftStage0_uid255_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage0Idx6_uid252_fracPostNormExt_uid89_block_rsrvd_fix_q;
                WHEN "111" => leftShiftStage0_uid255_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage0Idx7_uid253_fracPostNormExt_uid89_block_rsrvd_fix_q;
                WHEN OTHERS => leftShiftStage0_uid255_fracPostNormExt_uid89_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist0_leftShiftStageSel4Dto2_uid254_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_c_1(DELAY,273)
    redist0_leftShiftStageSel4Dto2_uid254_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => leftShiftStageSel4Dto2_uid254_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_c, xout => redist0_leftShiftStageSel4Dto2_uid254_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- leftShiftStage1_uid266_fracPostNormExt_uid89_block_rsrvd_fix(MUX,265)@12 + 1
    leftShiftStage1_uid266_fracPostNormExt_uid89_block_rsrvd_fix_s <= redist0_leftShiftStageSel4Dto2_uid254_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_c_1_q;
    leftShiftStage1_uid266_fracPostNormExt_uid89_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            leftShiftStage1_uid266_fracPostNormExt_uid89_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (leftShiftStage1_uid266_fracPostNormExt_uid89_block_rsrvd_fix_s) IS
                WHEN "00" => leftShiftStage1_uid266_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage0_uid255_fracPostNormExt_uid89_block_rsrvd_fix_q;
                WHEN "01" => leftShiftStage1_uid266_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage1Idx1_uid258_fracPostNormExt_uid89_block_rsrvd_fix_q;
                WHEN "10" => leftShiftStage1_uid266_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage1Idx2_uid261_fracPostNormExt_uid89_block_rsrvd_fix_q;
                WHEN "11" => leftShiftStage1_uid266_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage1Idx3_uid264_fracPostNormExt_uid89_block_rsrvd_fix_q;
                WHEN OTHERS => leftShiftStage1_uid266_fracPostNormExt_uid89_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- LSB_uid98_block_rsrvd_fix(BITSELECT,97)@13
    LSB_uid98_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(leftShiftStage1_uid266_fracPostNormExt_uid89_block_rsrvd_fix_q(4 downto 0));
    LSB_uid98_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(LSB_uid98_block_rsrvd_fix_in(4 downto 4));

    -- Guard_uid97_block_rsrvd_fix(BITSELECT,96)@13
    Guard_uid97_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(leftShiftStage1_uid266_fracPostNormExt_uid89_block_rsrvd_fix_q(3 downto 0));
    Guard_uid97_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(Guard_uid97_block_rsrvd_fix_in(3 downto 3));

    -- Round_uid96_block_rsrvd_fix(BITSELECT,95)@13
    Round_uid96_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(leftShiftStage1_uid266_fracPostNormExt_uid89_block_rsrvd_fix_q(2 downto 0));
    Round_uid96_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(Round_uid96_block_rsrvd_fix_in(2 downto 2));

    -- Sticky1_uid95_block_rsrvd_fix(BITSELECT,94)@13
    Sticky1_uid95_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(leftShiftStage1_uid266_fracPostNormExt_uid89_block_rsrvd_fix_q(1 downto 0));
    Sticky1_uid95_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(Sticky1_uid95_block_rsrvd_fix_in(1 downto 1));

    -- Sticky0_uid94_block_rsrvd_fix(BITSELECT,93)@13
    Sticky0_uid94_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(leftShiftStage1_uid266_fracPostNormExt_uid89_block_rsrvd_fix_q(0 downto 0));
    Sticky0_uid94_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(Sticky0_uid94_block_rsrvd_fix_in(0 downto 0));

    -- rndBitCond_uid99_block_rsrvd_fix(BITJOIN,98)@13
    rndBitCond_uid99_block_rsrvd_fix_q <= LSB_uid98_block_rsrvd_fix_b & Guard_uid97_block_rsrvd_fix_b & Round_uid96_block_rsrvd_fix_b & Sticky1_uid95_block_rsrvd_fix_b & Sticky0_uid94_block_rsrvd_fix_b;

    -- rBi_uid101_block_rsrvd_fix(LOGICAL,100)@13 + 1
    rBi_uid101_block_rsrvd_fix_qi <= "1" WHEN rndBitCond_uid99_block_rsrvd_fix_q = cRBit_uid100_block_rsrvd_fix_q ELSE "0";
    rBi_uid101_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rBi_uid101_block_rsrvd_fix_qi, xout => rBi_uid101_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- roundBit_uid102_block_rsrvd_fix(LOGICAL,101)@14
    roundBit_uid102_block_rsrvd_fix_q <= not (rBi_uid101_block_rsrvd_fix_q);

    -- oneCST_uid91_block_rsrvd_fix(CONSTANT,90)
    oneCST_uid91_block_rsrvd_fix_q <= "00000001";

    -- expInc_uid92_block_rsrvd_fix(ADD,91)@10 + 1
    expInc_uid92_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & redist40_exp_aSig_uid22_block_rsrvd_fix_b_9_q);
    expInc_uid92_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0" & oneCST_uid91_block_rsrvd_fix_q);
    expInc_uid92_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            expInc_uid92_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            expInc_uid92_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expInc_uid92_block_rsrvd_fix_a) + UNSIGNED(expInc_uid92_block_rsrvd_fix_b));
        END IF;
    END PROCESS;
    expInc_uid92_block_rsrvd_fix_q <= expInc_uid92_block_rsrvd_fix_o(8 downto 0);

    -- expPostNorm_uid93_block_rsrvd_fix(SUB,92)@11 + 1
    expPostNorm_uid93_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & expInc_uid92_block_rsrvd_fix_q);
    expPostNorm_uid93_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00000" & r_uid180_lzCountVal_uid86_block_rsrvd_fix_q);
    expPostNorm_uid93_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            expPostNorm_uid93_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            expPostNorm_uid93_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expPostNorm_uid93_block_rsrvd_fix_a) - UNSIGNED(expPostNorm_uid93_block_rsrvd_fix_b));
        END IF;
    END PROCESS;
    expPostNorm_uid93_block_rsrvd_fix_q <= expPostNorm_uid93_block_rsrvd_fix_o(9 downto 0);

    -- redist15_expPostNorm_uid93_block_rsrvd_fix_q_3(DELAY,288)
    redist15_expPostNorm_uid93_block_rsrvd_fix_q_3 : dspba_delay
    GENERIC MAP ( width => 10, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => expPostNorm_uid93_block_rsrvd_fix_q, xout => redist15_expPostNorm_uid93_block_rsrvd_fix_q_3_q, clk => clock, aclr => resetn );

    -- fracPostNorm_uid90_block_rsrvd_fix(BITSELECT,89)@13
    fracPostNorm_uid90_block_rsrvd_fix_b <= leftShiftStage1_uid266_fracPostNormExt_uid89_block_rsrvd_fix_q(27 downto 1);

    -- fracPostNormRndRange_uid103_block_rsrvd_fix(BITSELECT,102)@13
    fracPostNormRndRange_uid103_block_rsrvd_fix_in <= fracPostNorm_uid90_block_rsrvd_fix_b(25 downto 0);
    fracPostNormRndRange_uid103_block_rsrvd_fix_b <= fracPostNormRndRange_uid103_block_rsrvd_fix_in(25 downto 2);

    -- redist14_fracPostNormRndRange_uid103_block_rsrvd_fix_b_1(DELAY,287)
    redist14_fracPostNormRndRange_uid103_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => fracPostNormRndRange_uid103_block_rsrvd_fix_b, xout => redist14_fracPostNormRndRange_uid103_block_rsrvd_fix_b_1_q, clk => clock, aclr => resetn );

    -- expFracR_uid104_block_rsrvd_fix(BITJOIN,103)@14
    expFracR_uid104_block_rsrvd_fix_q <= redist15_expPostNorm_uid93_block_rsrvd_fix_q_3_q & redist14_fracPostNormRndRange_uid103_block_rsrvd_fix_b_1_q;

    -- rndExpFrac_uid105_block_rsrvd_fix(ADD,104)@14 + 1
    rndExpFrac_uid105_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & expFracR_uid104_block_rsrvd_fix_q);
    rndExpFrac_uid105_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0000000000000000000000000000000000" & roundBit_uid102_block_rsrvd_fix_q);
    rndExpFrac_uid105_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            rndExpFrac_uid105_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            rndExpFrac_uid105_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(rndExpFrac_uid105_block_rsrvd_fix_a) + UNSIGNED(rndExpFrac_uid105_block_rsrvd_fix_b));
        END IF;
    END PROCESS;
    rndExpFrac_uid105_block_rsrvd_fix_q <= rndExpFrac_uid105_block_rsrvd_fix_o(34 downto 0);

    -- expRPreExc_uid118_block_rsrvd_fix(BITSELECT,117)@15
    expRPreExc_uid118_block_rsrvd_fix_in <= rndExpFrac_uid105_block_rsrvd_fix_q(31 downto 0);
    expRPreExc_uid118_block_rsrvd_fix_b <= expRPreExc_uid118_block_rsrvd_fix_in(31 downto 24);

    -- redist12_expRPreExc_uid118_block_rsrvd_fix_b_3(DELAY,285)
    redist12_expRPreExc_uid118_block_rsrvd_fix_b_3 : dspba_delay
    GENERIC MAP ( width => 8, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => expRPreExc_uid118_block_rsrvd_fix_b, xout => redist12_expRPreExc_uid118_block_rsrvd_fix_b_3_q, clk => clock, aclr => resetn );

    -- rndExpFracOvfBits_uid110_block_rsrvd_fix(BITSELECT,109)@15
    rndExpFracOvfBits_uid110_block_rsrvd_fix_in <= rndExpFrac_uid105_block_rsrvd_fix_q(33 downto 0);
    rndExpFracOvfBits_uid110_block_rsrvd_fix_b <= rndExpFracOvfBits_uid110_block_rsrvd_fix_in(33 downto 32);

    -- rOvfExtraBits_uid111_block_rsrvd_fix(LOGICAL,110)@15
    rOvfExtraBits_uid111_block_rsrvd_fix_q <= "1" WHEN rndExpFracOvfBits_uid110_block_rsrvd_fix_b = zocst_uid77_block_rsrvd_fix_q ELSE "0";

    -- wEP2AllOwE_uid106_block_rsrvd_fix(CONSTANT,105)
    wEP2AllOwE_uid106_block_rsrvd_fix_q <= "0011111111";

    -- rndExp_uid107_block_rsrvd_fix(BITSELECT,106)@15
    rndExp_uid107_block_rsrvd_fix_in <= rndExpFrac_uid105_block_rsrvd_fix_q(33 downto 0);
    rndExp_uid107_block_rsrvd_fix_b <= rndExp_uid107_block_rsrvd_fix_in(33 downto 24);

    -- rOvfEQMax_uid108_block_rsrvd_fix(LOGICAL,107)@15
    rOvfEQMax_uid108_block_rsrvd_fix_q <= "1" WHEN rndExp_uid107_block_rsrvd_fix_b = wEP2AllOwE_uid106_block_rsrvd_fix_q ELSE "0";

    -- rOvf_uid112_block_rsrvd_fix(LOGICAL,111)@15 + 1
    rOvf_uid112_block_rsrvd_fix_qi <= rOvfEQMax_uid108_block_rsrvd_fix_q or rOvfExtraBits_uid111_block_rsrvd_fix_q;
    rOvf_uid112_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rOvf_uid112_block_rsrvd_fix_qi, xout => rOvf_uid112_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- regInputs_uid119_block_rsrvd_fix(LOGICAL,118)@12 + 1
    regInputs_uid119_block_rsrvd_fix_qi <= excR_aSig_uid32_block_rsrvd_fix_q and excR_bSig_uid46_block_rsrvd_fix_q;
    regInputs_uid119_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => regInputs_uid119_block_rsrvd_fix_qi, xout => regInputs_uid119_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist11_regInputs_uid119_block_rsrvd_fix_q_4(DELAY,284)
    redist11_regInputs_uid119_block_rsrvd_fix_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => regInputs_uid119_block_rsrvd_fix_q, xout => redist11_regInputs_uid119_block_rsrvd_fix_q_4_q, clk => clock, aclr => resetn );

    -- rInfOvf_uid122_block_rsrvd_fix(LOGICAL,121)@16 + 1
    rInfOvf_uid122_block_rsrvd_fix_qi <= redist11_regInputs_uid119_block_rsrvd_fix_q_4_q and rOvf_uid112_block_rsrvd_fix_q;
    rInfOvf_uid122_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rInfOvf_uid122_block_rsrvd_fix_qi, xout => rInfOvf_uid122_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- excRInfVInC_uid123_block_rsrvd_fix(BITJOIN,122)@17
    excRInfVInC_uid123_block_rsrvd_fix_q <= rInfOvf_uid122_block_rsrvd_fix_q & redist27_excN_bSig_uid43_block_rsrvd_fix_q_6_q & redist34_excN_aSig_uid29_block_rsrvd_fix_q_6_q & redist28_excI_bSig_uid42_block_rsrvd_fix_q_6_q & redist35_excI_aSig_uid28_block_rsrvd_fix_q_6_q & redist21_effSub_uid53_block_rsrvd_fix_q_11_q;

    -- excRInf_uid124_block_rsrvd_fix(LOOKUP,123)@17 + 1
    excRInf_uid124_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            excRInf_uid124_block_rsrvd_fix_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (excRInfVInC_uid123_block_rsrvd_fix_q) IS
                WHEN "000000" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "000001" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "000010" => excRInf_uid124_block_rsrvd_fix_q <= "1";
                WHEN "000011" => excRInf_uid124_block_rsrvd_fix_q <= "1";
                WHEN "000100" => excRInf_uid124_block_rsrvd_fix_q <= "1";
                WHEN "000101" => excRInf_uid124_block_rsrvd_fix_q <= "1";
                WHEN "000110" => excRInf_uid124_block_rsrvd_fix_q <= "1";
                WHEN "000111" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "001000" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "001001" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "001010" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "001011" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "001100" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "001101" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "001110" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "001111" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "010000" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "010001" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "010010" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "010011" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "010100" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "010101" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "010110" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "010111" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "011000" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "011001" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "011010" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "011011" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "011100" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "011101" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "011110" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "011111" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "100000" => excRInf_uid124_block_rsrvd_fix_q <= "1";
                WHEN "100001" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "100010" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "100011" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "100100" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "100101" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "100110" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "100111" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "101000" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "101001" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "101010" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "101011" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "101100" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "101101" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "101110" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "101111" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "110000" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "110001" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "110010" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "110011" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "110100" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "110101" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "110110" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "110111" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "111000" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "111001" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "111010" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "111011" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "111100" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "111101" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "111110" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN "111111" => excRInf_uid124_block_rsrvd_fix_q <= "0";
                WHEN OTHERS => -- unreachable
                               excRInf_uid124_block_rsrvd_fix_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- redist16_aMinusA_uid88_block_rsrvd_fix_q_5(DELAY,289)
    redist16_aMinusA_uid88_block_rsrvd_fix_q_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => aMinusA_uid88_block_rsrvd_fix_q, xout => redist16_aMinusA_uid88_block_rsrvd_fix_q_5_q, clk => clock, aclr => resetn );

    -- rUdfExtraBit_uid115_block_rsrvd_fix(BITSELECT,114)@15
    rUdfExtraBit_uid115_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(rndExpFrac_uid105_block_rsrvd_fix_q(33 downto 0));
    rUdfExtraBit_uid115_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(rUdfExtraBit_uid115_block_rsrvd_fix_in(33 downto 33));

    -- wEP2AllZ_uid113_block_rsrvd_fix(CONSTANT,112)
    wEP2AllZ_uid113_block_rsrvd_fix_q <= "0000000000";

    -- rUdfEQMin_uid114_block_rsrvd_fix(LOGICAL,113)@15
    rUdfEQMin_uid114_block_rsrvd_fix_q <= "1" WHEN rndExp_uid107_block_rsrvd_fix_b = wEP2AllZ_uid113_block_rsrvd_fix_q ELSE "0";

    -- rUdf_uid116_block_rsrvd_fix(LOGICAL,115)@15 + 1
    rUdf_uid116_block_rsrvd_fix_qi <= rUdfEQMin_uid114_block_rsrvd_fix_q or rUdfExtraBit_uid115_block_rsrvd_fix_b;
    rUdf_uid116_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rUdf_uid116_block_rsrvd_fix_qi, xout => rUdf_uid116_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist32_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_15(DELAY,305)
    redist32_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist31_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_11_q, xout => redist32_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_15_q, clk => clock, aclr => resetn );

    -- redist38_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_6(DELAY,311)
    redist38_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist37_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_2_q, xout => redist38_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_6_q, clk => clock, aclr => resetn );

    -- excRZeroVInC_uid120_block_rsrvd_fix(BITJOIN,119)@16
    excRZeroVInC_uid120_block_rsrvd_fix_q <= redist16_aMinusA_uid88_block_rsrvd_fix_q_5_q & rUdf_uid116_block_rsrvd_fix_q & redist11_regInputs_uid119_block_rsrvd_fix_q_4_q & redist32_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_15_q & redist38_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_6_q;

    -- excRZero_uid121_block_rsrvd_fix(LOOKUP,120)@16 + 1
    excRZero_uid121_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            excRZero_uid121_block_rsrvd_fix_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (excRZeroVInC_uid120_block_rsrvd_fix_q) IS
                WHEN "00000" => excRZero_uid121_block_rsrvd_fix_q <= "0";
                WHEN "00001" => excRZero_uid121_block_rsrvd_fix_q <= "0";
                WHEN "00010" => excRZero_uid121_block_rsrvd_fix_q <= "0";
                WHEN "00011" => excRZero_uid121_block_rsrvd_fix_q <= "1";
                WHEN "00100" => excRZero_uid121_block_rsrvd_fix_q <= "0";
                WHEN "00101" => excRZero_uid121_block_rsrvd_fix_q <= "0";
                WHEN "00110" => excRZero_uid121_block_rsrvd_fix_q <= "0";
                WHEN "00111" => excRZero_uid121_block_rsrvd_fix_q <= "0";
                WHEN "01000" => excRZero_uid121_block_rsrvd_fix_q <= "0";
                WHEN "01001" => excRZero_uid121_block_rsrvd_fix_q <= "0";
                WHEN "01010" => excRZero_uid121_block_rsrvd_fix_q <= "0";
                WHEN "01011" => excRZero_uid121_block_rsrvd_fix_q <= "1";
                WHEN "01100" => excRZero_uid121_block_rsrvd_fix_q <= "1";
                WHEN "01101" => excRZero_uid121_block_rsrvd_fix_q <= "0";
                WHEN "01110" => excRZero_uid121_block_rsrvd_fix_q <= "0";
                WHEN "01111" => excRZero_uid121_block_rsrvd_fix_q <= "0";
                WHEN "10000" => excRZero_uid121_block_rsrvd_fix_q <= "0";
                WHEN "10001" => excRZero_uid121_block_rsrvd_fix_q <= "0";
                WHEN "10010" => excRZero_uid121_block_rsrvd_fix_q <= "0";
                WHEN "10011" => excRZero_uid121_block_rsrvd_fix_q <= "1";
                WHEN "10100" => excRZero_uid121_block_rsrvd_fix_q <= "1";
                WHEN "10101" => excRZero_uid121_block_rsrvd_fix_q <= "0";
                WHEN "10110" => excRZero_uid121_block_rsrvd_fix_q <= "0";
                WHEN "10111" => excRZero_uid121_block_rsrvd_fix_q <= "0";
                WHEN "11000" => excRZero_uid121_block_rsrvd_fix_q <= "0";
                WHEN "11001" => excRZero_uid121_block_rsrvd_fix_q <= "0";
                WHEN "11010" => excRZero_uid121_block_rsrvd_fix_q <= "0";
                WHEN "11011" => excRZero_uid121_block_rsrvd_fix_q <= "1";
                WHEN "11100" => excRZero_uid121_block_rsrvd_fix_q <= "1";
                WHEN "11101" => excRZero_uid121_block_rsrvd_fix_q <= "0";
                WHEN "11110" => excRZero_uid121_block_rsrvd_fix_q <= "0";
                WHEN "11111" => excRZero_uid121_block_rsrvd_fix_q <= "0";
                WHEN OTHERS => -- unreachable
                               excRZero_uid121_block_rsrvd_fix_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- redist10_excRZero_uid121_block_rsrvd_fix_q_2(DELAY,283)
    redist10_excRZero_uid121_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excRZero_uid121_block_rsrvd_fix_q, xout => redist10_excRZero_uid121_block_rsrvd_fix_q_2_q, clk => clock, aclr => resetn );

    -- concExc_uid128_block_rsrvd_fix(BITJOIN,127)@18
    concExc_uid128_block_rsrvd_fix_q <= excRNaN_uid127_block_rsrvd_fix_q & excRInf_uid124_block_rsrvd_fix_q & redist10_excRZero_uid121_block_rsrvd_fix_q_2_q;

    -- excREnc_uid129_block_rsrvd_fix(LOOKUP,128)@18
    excREnc_uid129_block_rsrvd_fix_combproc: PROCESS (concExc_uid128_block_rsrvd_fix_q)
    BEGIN
        -- Begin reserved scope level
        CASE (concExc_uid128_block_rsrvd_fix_q) IS
            WHEN "000" => excREnc_uid129_block_rsrvd_fix_q <= "01";
            WHEN "001" => excREnc_uid129_block_rsrvd_fix_q <= "00";
            WHEN "010" => excREnc_uid129_block_rsrvd_fix_q <= "10";
            WHEN "011" => excREnc_uid129_block_rsrvd_fix_q <= "10";
            WHEN "100" => excREnc_uid129_block_rsrvd_fix_q <= "11";
            WHEN "101" => excREnc_uid129_block_rsrvd_fix_q <= "11";
            WHEN "110" => excREnc_uid129_block_rsrvd_fix_q <= "11";
            WHEN "111" => excREnc_uid129_block_rsrvd_fix_q <= "11";
            WHEN OTHERS => -- unreachable
                           excREnc_uid129_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- expRPostExc_uid148_block_rsrvd_fix(MUX,147)@18
    expRPostExc_uid148_block_rsrvd_fix_s <= excREnc_uid129_block_rsrvd_fix_q;
    expRPostExc_uid148_block_rsrvd_fix_combproc: PROCESS (expRPostExc_uid148_block_rsrvd_fix_s, cstAllZWE_uid21_block_rsrvd_fix_q, redist12_expRPreExc_uid118_block_rsrvd_fix_b_3_q, cstAllOWE_uid19_block_rsrvd_fix_q)
    BEGIN
        CASE (expRPostExc_uid148_block_rsrvd_fix_s) IS
            WHEN "00" => expRPostExc_uid148_block_rsrvd_fix_q <= cstAllZWE_uid21_block_rsrvd_fix_q;
            WHEN "01" => expRPostExc_uid148_block_rsrvd_fix_q <= redist12_expRPreExc_uid118_block_rsrvd_fix_b_3_q;
            WHEN "10" => expRPostExc_uid148_block_rsrvd_fix_q <= cstAllOWE_uid19_block_rsrvd_fix_q;
            WHEN "11" => expRPostExc_uid148_block_rsrvd_fix_q <= cstAllOWE_uid19_block_rsrvd_fix_q;
            WHEN OTHERS => expRPostExc_uid148_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- oneFracRPostExc2_uid141_block_rsrvd_fix(CONSTANT,140)
    oneFracRPostExc2_uid141_block_rsrvd_fix_q <= "00000000000000000000001";

    -- fracRPreExc_uid117_block_rsrvd_fix(BITSELECT,116)@15
    fracRPreExc_uid117_block_rsrvd_fix_in <= rndExpFrac_uid105_block_rsrvd_fix_q(23 downto 0);
    fracRPreExc_uid117_block_rsrvd_fix_b <= fracRPreExc_uid117_block_rsrvd_fix_in(23 downto 1);

    -- redist13_fracRPreExc_uid117_block_rsrvd_fix_b_3(DELAY,286)
    redist13_fracRPreExc_uid117_block_rsrvd_fix_b_3 : dspba_delay
    GENERIC MAP ( width => 23, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => fracRPreExc_uid117_block_rsrvd_fix_b, xout => redist13_fracRPreExc_uid117_block_rsrvd_fix_b_3_q, clk => clock, aclr => resetn );

    -- fracRPostExc_uid144_block_rsrvd_fix(MUX,143)@18
    fracRPostExc_uid144_block_rsrvd_fix_s <= excREnc_uid129_block_rsrvd_fix_q;
    fracRPostExc_uid144_block_rsrvd_fix_combproc: PROCESS (fracRPostExc_uid144_block_rsrvd_fix_s, cstZeroWF_uid20_block_rsrvd_fix_q, redist13_fracRPreExc_uid117_block_rsrvd_fix_b_3_q, oneFracRPostExc2_uid141_block_rsrvd_fix_q)
    BEGIN
        CASE (fracRPostExc_uid144_block_rsrvd_fix_s) IS
            WHEN "00" => fracRPostExc_uid144_block_rsrvd_fix_q <= cstZeroWF_uid20_block_rsrvd_fix_q;
            WHEN "01" => fracRPostExc_uid144_block_rsrvd_fix_q <= redist13_fracRPreExc_uid117_block_rsrvd_fix_b_3_q;
            WHEN "10" => fracRPostExc_uid144_block_rsrvd_fix_q <= cstZeroWF_uid20_block_rsrvd_fix_q;
            WHEN "11" => fracRPostExc_uid144_block_rsrvd_fix_q <= oneFracRPostExc2_uid141_block_rsrvd_fix_q;
            WHEN OTHERS => fracRPostExc_uid144_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- R_uid149_block_rsrvd_fix(BITJOIN,148)@18
    R_uid149_block_rsrvd_fix_q <= signRPostExc_uid140_block_rsrvd_fix_q & expRPostExc_uid148_block_rsrvd_fix_q & fracRPostExc_uid144_block_rsrvd_fix_q;

    -- out_primWireOut(GPOUT,5)@18
    out_primWireOut <= R_uid149_block_rsrvd_fix_q;

END normal;
