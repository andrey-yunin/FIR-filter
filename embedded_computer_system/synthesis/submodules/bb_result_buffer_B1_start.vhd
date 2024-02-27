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

-- VHDL created from bb_result_buffer_B1_start
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

entity bb_result_buffer_B1_start is
    port (
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_iord_bl_do_i_fifodata : in std_logic_vector(0 downto 0);  -- ufix1
        in_iord_bl_do_i_fifovalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_iord_bl_result_in_i_fifodata : in std_logic_vector(31 downto 0);  -- ufix32
        in_iord_bl_result_in_i_fifovalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_iowr_bl_return_i_fifoready : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_result_buffer : in std_logic_vector(63 downto 0);  -- ufix64
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_iord_bl_do_o_fifoready : out std_logic_vector(0 downto 0);  -- ufix1
        out_iord_bl_result_in_o_fifoready : out std_logic_vector(0 downto 0);  -- ufix1
        out_iowr_bl_return_o_fifodata : out std_logic_vector(0 downto 0);  -- ufix1
        out_iowr_bl_return_o_fifovalid : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memdep_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_result_buffer_B1_start;

architecture normal of bb_result_buffer_B1_start is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_result_buffer_B1_start_stall_region is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iord_bl_do_i_fifodata : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iord_bl_do_i_fifovalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iord_bl_result_in_i_fifodata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_iord_bl_result_in_i_fifovalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iowr_bl_return_i_fifoready : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memdep_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_result_buffer : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_result_buffer_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_result_buffer_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iord_bl_do_o_fifoready : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iord_bl_result_in_o_fifoready : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_return_o_fifodata : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_return_o_fifovalid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memdep_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component result_buffer_B1_start_branch is
        port (
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component result_buffer_B1_start_merge is
        port (
            in_forked_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_forked : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_result_buffer_B1_start_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_result_buffer_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_result_buffer_B1_start_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_result_buffer_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_result_buffer_B1_start_stall_region_out_iord_bl_do_o_fifoready : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_result_buffer_B1_start_stall_region_out_iord_bl_result_in_o_fifoready : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_result_buffer_B1_start_stall_region_out_iowr_bl_return_o_fifodata : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_result_buffer_B1_start_stall_region_out_iowr_bl_return_o_fifovalid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_result_buffer_B1_start_stall_region_out_memdep_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_result_buffer_B1_start_stall_region_out_memdep_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_result_buffer_B1_start_stall_region_out_memdep_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal bb_result_buffer_B1_start_stall_region_out_memdep_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_result_buffer_B1_start_stall_region_out_memdep_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_result_buffer_B1_start_stall_region_out_memdep_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_result_buffer_B1_start_stall_region_out_memdep_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_result_buffer_B1_start_stall_region_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_result_buffer_B1_start_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_result_buffer_B1_start_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal result_buffer_B1_start_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal result_buffer_B1_start_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal result_buffer_B1_start_merge_out_forked : STD_LOGIC_VECTOR (0 downto 0);
    signal result_buffer_B1_start_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal result_buffer_B1_start_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal result_buffer_B1_start_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- result_buffer_B1_start_branch(BLACKBOX,37)
    theresult_buffer_B1_start_branch : result_buffer_B1_start_branch
    PORT MAP (
        in_stall_in_0 => in_stall_in_0,
        in_valid_in => bb_result_buffer_B1_start_stall_region_out_valid_out,
        out_stall_out => result_buffer_B1_start_branch_out_stall_out,
        out_valid_out_0 => result_buffer_B1_start_branch_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- result_buffer_B1_start_merge(BLACKBOX,38)
    theresult_buffer_B1_start_merge : result_buffer_B1_start_merge
    PORT MAP (
        in_forked_0 => in_forked_0,
        in_forked_1 => in_forked_1,
        in_stall_in => bb_result_buffer_B1_start_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_forked => result_buffer_B1_start_merge_out_forked,
        out_stall_out_0 => result_buffer_B1_start_merge_out_stall_out_0,
        out_stall_out_1 => result_buffer_B1_start_merge_out_stall_out_1,
        out_valid_out => result_buffer_B1_start_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_result_buffer_B1_start_stall_region(BLACKBOX,2)
    thebb_result_buffer_B1_start_stall_region : bb_result_buffer_B1_start_stall_region
    PORT MAP (
        in_flush => in_flush,
        in_forked => result_buffer_B1_start_merge_out_forked,
        in_iord_bl_do_i_fifodata => in_iord_bl_do_i_fifodata,
        in_iord_bl_do_i_fifovalid => in_iord_bl_do_i_fifovalid,
        in_iord_bl_result_in_i_fifodata => in_iord_bl_result_in_i_fifodata,
        in_iord_bl_result_in_i_fifovalid => in_iord_bl_result_in_i_fifovalid,
        in_iowr_bl_return_i_fifoready => in_iowr_bl_return_i_fifoready,
        in_memdep_avm_readdata => in_memdep_avm_readdata,
        in_memdep_avm_readdatavalid => in_memdep_avm_readdatavalid,
        in_memdep_avm_waitrequest => in_memdep_avm_waitrequest,
        in_memdep_avm_writeack => in_memdep_avm_writeack,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_result_buffer => in_result_buffer,
        in_stall_in => result_buffer_B1_start_branch_out_stall_out,
        in_valid_in => result_buffer_B1_start_merge_out_valid_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_result_buffer_exiting_stall_out => bb_result_buffer_B1_start_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_result_buffer_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_result_buffer_exiting_valid_out => bb_result_buffer_B1_start_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_result_buffer_exiting_valid_out,
        out_iord_bl_do_o_fifoready => bb_result_buffer_B1_start_stall_region_out_iord_bl_do_o_fifoready,
        out_iord_bl_result_in_o_fifoready => bb_result_buffer_B1_start_stall_region_out_iord_bl_result_in_o_fifoready,
        out_iowr_bl_return_o_fifodata => bb_result_buffer_B1_start_stall_region_out_iowr_bl_return_o_fifodata,
        out_iowr_bl_return_o_fifovalid => bb_result_buffer_B1_start_stall_region_out_iowr_bl_return_o_fifovalid,
        out_memdep_avm_address => bb_result_buffer_B1_start_stall_region_out_memdep_avm_address,
        out_memdep_avm_burstcount => bb_result_buffer_B1_start_stall_region_out_memdep_avm_burstcount,
        out_memdep_avm_byteenable => bb_result_buffer_B1_start_stall_region_out_memdep_avm_byteenable,
        out_memdep_avm_enable => bb_result_buffer_B1_start_stall_region_out_memdep_avm_enable,
        out_memdep_avm_read => bb_result_buffer_B1_start_stall_region_out_memdep_avm_read,
        out_memdep_avm_write => bb_result_buffer_B1_start_stall_region_out_memdep_avm_write,
        out_memdep_avm_writedata => bb_result_buffer_B1_start_stall_region_out_memdep_avm_writedata,
        out_pipeline_valid_out => bb_result_buffer_B1_start_stall_region_out_pipeline_valid_out,
        out_stall_out => bb_result_buffer_B1_start_stall_region_out_stall_out,
        out_valid_out => bb_result_buffer_B1_start_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- out_exiting_stall_out(GPOUT,19)
    out_exiting_stall_out <= bb_result_buffer_B1_start_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_result_buffer_exiting_stall_out;

    -- out_exiting_valid_out(GPOUT,20)
    out_exiting_valid_out <= bb_result_buffer_B1_start_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_result_buffer_exiting_valid_out;

    -- out_iord_bl_do_o_fifoready(GPOUT,21)
    out_iord_bl_do_o_fifoready <= bb_result_buffer_B1_start_stall_region_out_iord_bl_do_o_fifoready;

    -- out_iord_bl_result_in_o_fifoready(GPOUT,22)
    out_iord_bl_result_in_o_fifoready <= bb_result_buffer_B1_start_stall_region_out_iord_bl_result_in_o_fifoready;

    -- out_iowr_bl_return_o_fifodata(GPOUT,23)
    out_iowr_bl_return_o_fifodata <= bb_result_buffer_B1_start_stall_region_out_iowr_bl_return_o_fifodata;

    -- out_iowr_bl_return_o_fifovalid(GPOUT,24)
    out_iowr_bl_return_o_fifovalid <= bb_result_buffer_B1_start_stall_region_out_iowr_bl_return_o_fifovalid;

    -- out_memdep_avm_address(GPOUT,25)
    out_memdep_avm_address <= bb_result_buffer_B1_start_stall_region_out_memdep_avm_address;

    -- out_memdep_avm_burstcount(GPOUT,26)
    out_memdep_avm_burstcount <= bb_result_buffer_B1_start_stall_region_out_memdep_avm_burstcount;

    -- out_memdep_avm_byteenable(GPOUT,27)
    out_memdep_avm_byteenable <= bb_result_buffer_B1_start_stall_region_out_memdep_avm_byteenable;

    -- out_memdep_avm_enable(GPOUT,28)
    out_memdep_avm_enable <= bb_result_buffer_B1_start_stall_region_out_memdep_avm_enable;

    -- out_memdep_avm_read(GPOUT,29)
    out_memdep_avm_read <= bb_result_buffer_B1_start_stall_region_out_memdep_avm_read;

    -- out_memdep_avm_write(GPOUT,30)
    out_memdep_avm_write <= bb_result_buffer_B1_start_stall_region_out_memdep_avm_write;

    -- out_memdep_avm_writedata(GPOUT,31)
    out_memdep_avm_writedata <= bb_result_buffer_B1_start_stall_region_out_memdep_avm_writedata;

    -- out_stall_out_0(GPOUT,32)
    out_stall_out_0 <= result_buffer_B1_start_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,33)
    out_stall_out_1 <= result_buffer_B1_start_merge_out_stall_out_1;

    -- out_valid_out_0(GPOUT,34)
    out_valid_out_0 <= result_buffer_B1_start_branch_out_valid_out_0;

    -- pipeline_valid_out_sync(GPOUT,36)
    out_pipeline_valid_out <= bb_result_buffer_B1_start_stall_region_out_pipeline_valid_out;

END normal;
