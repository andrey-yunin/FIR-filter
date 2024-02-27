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

-- VHDL created from bb_sample_buffer_B2
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

entity bb_sample_buffer_B2 is
    port (
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked5_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked5_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_0_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_1_0 : in std_logic_vector(32 downto 0);  -- ufix33
        in_iowr_bl_sample_out_i_fifoready : in std_logic_vector(0 downto 0);  -- ufix1
        in_sample_buffer : in std_logic_vector(63 downto 0);  -- ufix64
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_sample_buffer5_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_sample_buffer5_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_sample_buffer5_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_sample_buffer5_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_iowr_bl_sample_out_o_fifodata : out std_logic_vector(15 downto 0);  -- ufix16
        out_iowr_bl_sample_out_o_fifovalid : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_sample_buffer5_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_sample_buffer5_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_sample_buffer5_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_unnamed_sample_buffer5_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_sample_buffer5_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_sample_buffer5_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_sample_buffer5_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_sample_buffer_B2;

architecture normal of bb_sample_buffer_B2 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_sample_buffer_B2_stall_region is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_0_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_1_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_iowr_bl_sample_out_i_fifoready : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_sample_buffer : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_sample_buffer5_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_sample_buffer5_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_sample_buffer5_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_sample_buffer5_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_sample_out_o_fifodata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_iowr_bl_sample_out_o_fifovalid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_sample_buffer5_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_sample_buffer5_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_sample_buffer5_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_unnamed_sample_buffer5_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_sample_buffer5_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_sample_buffer5_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_sample_buffer5_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component sample_buffer_B2_branch is
        port (
            in_c0_exe4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component sample_buffer_B2_merge is
        port (
            in_forked5_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked5_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_forked : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_forked5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_sample_buffer_B2_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_sample_buffer_B2_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_sample_buffer_B2_stall_region_out_c0_exe4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_sample_buffer_B2_stall_region_out_iowr_bl_sample_out_o_fifodata : STD_LOGIC_VECTOR (15 downto 0);
    signal bb_sample_buffer_B2_stall_region_out_iowr_bl_sample_out_o_fifovalid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_sample_buffer_B2_stall_region_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_sample_buffer_B2_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_sample_buffer_B2_stall_region_out_unnamed_sample_buffer5_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_sample_buffer_B2_stall_region_out_unnamed_sample_buffer5_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_sample_buffer_B2_stall_region_out_unnamed_sample_buffer5_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal bb_sample_buffer_B2_stall_region_out_unnamed_sample_buffer5_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_sample_buffer_B2_stall_region_out_unnamed_sample_buffer5_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_sample_buffer_B2_stall_region_out_unnamed_sample_buffer5_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_sample_buffer_B2_stall_region_out_unnamed_sample_buffer5_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_sample_buffer_B2_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal sample_buffer_B2_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal sample_buffer_B2_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal sample_buffer_B2_branch_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal sample_buffer_B2_merge_out_forked : STD_LOGIC_VECTOR (0 downto 0);
    signal sample_buffer_B2_merge_out_forked5 : STD_LOGIC_VECTOR (0 downto 0);
    signal sample_buffer_B2_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal sample_buffer_B2_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal sample_buffer_B2_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- sample_buffer_B2_branch(BLACKBOX,37)
    thesample_buffer_B2_branch : sample_buffer_B2_branch
    PORT MAP (
        in_c0_exe4 => bb_sample_buffer_B2_stall_region_out_c0_exe4,
        in_stall_in_0 => in_stall_in_0,
        in_stall_in_1 => in_stall_in_1,
        in_valid_in => bb_sample_buffer_B2_stall_region_out_valid_out,
        out_stall_out => sample_buffer_B2_branch_out_stall_out,
        out_valid_out_0 => sample_buffer_B2_branch_out_valid_out_0,
        out_valid_out_1 => sample_buffer_B2_branch_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- sample_buffer_B2_merge(BLACKBOX,38)
    thesample_buffer_B2_merge : sample_buffer_B2_merge
    PORT MAP (
        in_forked5_0 => in_forked5_0,
        in_forked5_1 => in_forked5_1,
        in_forked_0 => in_forked_0,
        in_forked_1 => in_forked_1,
        in_stall_in => bb_sample_buffer_B2_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_forked => sample_buffer_B2_merge_out_forked,
        out_forked5 => sample_buffer_B2_merge_out_forked5,
        out_stall_out_0 => sample_buffer_B2_merge_out_stall_out_0,
        out_stall_out_1 => sample_buffer_B2_merge_out_stall_out_1,
        out_valid_out => sample_buffer_B2_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_sample_buffer_B2_stall_region(BLACKBOX,2)
    thebb_sample_buffer_B2_stall_region : bb_sample_buffer_B2_stall_region
    PORT MAP (
        in_flush => in_flush,
        in_forked => sample_buffer_B2_merge_out_forked,
        in_forked5 => sample_buffer_B2_merge_out_forked5,
        in_intel_reserved_ffwd_0_0 => in_intel_reserved_ffwd_0_0,
        in_intel_reserved_ffwd_1_0 => in_intel_reserved_ffwd_1_0,
        in_iowr_bl_sample_out_i_fifoready => in_iowr_bl_sample_out_i_fifoready,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_sample_buffer => in_sample_buffer,
        in_stall_in => sample_buffer_B2_branch_out_stall_out,
        in_unnamed_sample_buffer5_avm_readdata => in_unnamed_sample_buffer5_avm_readdata,
        in_unnamed_sample_buffer5_avm_readdatavalid => in_unnamed_sample_buffer5_avm_readdatavalid,
        in_unnamed_sample_buffer5_avm_waitrequest => in_unnamed_sample_buffer5_avm_waitrequest,
        in_unnamed_sample_buffer5_avm_writeack => in_unnamed_sample_buffer5_avm_writeack,
        in_valid_in => sample_buffer_B2_merge_out_valid_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_stall_out => bb_sample_buffer_B2_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_valid_out => bb_sample_buffer_B2_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_valid_out,
        out_c0_exe4 => bb_sample_buffer_B2_stall_region_out_c0_exe4,
        out_iowr_bl_sample_out_o_fifodata => bb_sample_buffer_B2_stall_region_out_iowr_bl_sample_out_o_fifodata,
        out_iowr_bl_sample_out_o_fifovalid => bb_sample_buffer_B2_stall_region_out_iowr_bl_sample_out_o_fifovalid,
        out_pipeline_valid_out => bb_sample_buffer_B2_stall_region_out_pipeline_valid_out,
        out_stall_out => bb_sample_buffer_B2_stall_region_out_stall_out,
        out_unnamed_sample_buffer5_avm_address => bb_sample_buffer_B2_stall_region_out_unnamed_sample_buffer5_avm_address,
        out_unnamed_sample_buffer5_avm_burstcount => bb_sample_buffer_B2_stall_region_out_unnamed_sample_buffer5_avm_burstcount,
        out_unnamed_sample_buffer5_avm_byteenable => bb_sample_buffer_B2_stall_region_out_unnamed_sample_buffer5_avm_byteenable,
        out_unnamed_sample_buffer5_avm_enable => bb_sample_buffer_B2_stall_region_out_unnamed_sample_buffer5_avm_enable,
        out_unnamed_sample_buffer5_avm_read => bb_sample_buffer_B2_stall_region_out_unnamed_sample_buffer5_avm_read,
        out_unnamed_sample_buffer5_avm_write => bb_sample_buffer_B2_stall_region_out_unnamed_sample_buffer5_avm_write,
        out_unnamed_sample_buffer5_avm_writedata => bb_sample_buffer_B2_stall_region_out_unnamed_sample_buffer5_avm_writedata,
        out_valid_out => bb_sample_buffer_B2_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- out_exiting_stall_out(GPOUT,20)
    out_exiting_stall_out <= bb_sample_buffer_B2_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_stall_out;

    -- out_exiting_valid_out(GPOUT,21)
    out_exiting_valid_out <= bb_sample_buffer_B2_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_sample_buffer_exiting_valid_out;

    -- out_iowr_bl_sample_out_o_fifodata(GPOUT,22)
    out_iowr_bl_sample_out_o_fifodata <= bb_sample_buffer_B2_stall_region_out_iowr_bl_sample_out_o_fifodata;

    -- out_iowr_bl_sample_out_o_fifovalid(GPOUT,23)
    out_iowr_bl_sample_out_o_fifovalid <= bb_sample_buffer_B2_stall_region_out_iowr_bl_sample_out_o_fifovalid;

    -- out_stall_out_0(GPOUT,24)
    out_stall_out_0 <= sample_buffer_B2_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,25)
    out_stall_out_1 <= sample_buffer_B2_merge_out_stall_out_1;

    -- out_unnamed_sample_buffer5_avm_address(GPOUT,26)
    out_unnamed_sample_buffer5_avm_address <= bb_sample_buffer_B2_stall_region_out_unnamed_sample_buffer5_avm_address;

    -- out_unnamed_sample_buffer5_avm_burstcount(GPOUT,27)
    out_unnamed_sample_buffer5_avm_burstcount <= bb_sample_buffer_B2_stall_region_out_unnamed_sample_buffer5_avm_burstcount;

    -- out_unnamed_sample_buffer5_avm_byteenable(GPOUT,28)
    out_unnamed_sample_buffer5_avm_byteenable <= bb_sample_buffer_B2_stall_region_out_unnamed_sample_buffer5_avm_byteenable;

    -- out_unnamed_sample_buffer5_avm_enable(GPOUT,29)
    out_unnamed_sample_buffer5_avm_enable <= bb_sample_buffer_B2_stall_region_out_unnamed_sample_buffer5_avm_enable;

    -- out_unnamed_sample_buffer5_avm_read(GPOUT,30)
    out_unnamed_sample_buffer5_avm_read <= bb_sample_buffer_B2_stall_region_out_unnamed_sample_buffer5_avm_read;

    -- out_unnamed_sample_buffer5_avm_write(GPOUT,31)
    out_unnamed_sample_buffer5_avm_write <= bb_sample_buffer_B2_stall_region_out_unnamed_sample_buffer5_avm_write;

    -- out_unnamed_sample_buffer5_avm_writedata(GPOUT,32)
    out_unnamed_sample_buffer5_avm_writedata <= bb_sample_buffer_B2_stall_region_out_unnamed_sample_buffer5_avm_writedata;

    -- out_valid_out_0(GPOUT,33)
    out_valid_out_0 <= sample_buffer_B2_branch_out_valid_out_0;

    -- out_valid_out_1(GPOUT,34)
    out_valid_out_1 <= sample_buffer_B2_branch_out_valid_out_1;

    -- pipeline_valid_out_sync(GPOUT,36)
    out_pipeline_valid_out <= bb_sample_buffer_B2_stall_region_out_pipeline_valid_out;

END normal;
