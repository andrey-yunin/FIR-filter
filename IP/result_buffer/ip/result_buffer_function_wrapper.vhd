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

-- VHDL created from result_buffer_function_wrapper
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

entity result_buffer_function_wrapper is
    port (
        avm_memdep_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        avm_memdep_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_result_buffer_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        avm_result_buffer_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_result_buffer_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_result_buffer_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avs_result_buffer_address : in std_logic_vector(8 downto 0);  -- ufix9
        avs_result_buffer_byteenable : in std_logic_vector(3 downto 0);  -- ufix4
        avs_result_buffer_enable : in std_logic_vector(0 downto 0);  -- ufix1
        avs_result_buffer_read : in std_logic_vector(0 downto 0);  -- ufix1
        avs_result_buffer_write : in std_logic_vector(0 downto 0);  -- ufix1
        avs_result_buffer_writedata : in std_logic_vector(31 downto 0);  -- ufix32
        avst_iord_bl_do_data : in std_logic_vector(0 downto 0);  -- ufix1
        avst_iord_bl_do_valid : in std_logic_vector(0 downto 0);  -- ufix1
        avst_iord_bl_result_in_data : in std_logic_vector(31 downto 0);  -- ufix32
        avst_iord_bl_result_in_valid : in std_logic_vector(0 downto 0);  -- ufix1
        avst_iowr_bl_return_almostfull : in std_logic_vector(0 downto 0);  -- ufix1
        avst_iowr_bl_return_ready : in std_logic_vector(0 downto 0);  -- ufix1
        stall : in std_logic_vector(0 downto 0);  -- ufix1
        stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        start : in std_logic_vector(0 downto 0);  -- ufix1
        valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_address : out std_logic_vector(31 downto 0);  -- ufix32
        avm_memdep_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        avm_memdep_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        avm_result_buffer_address : out std_logic_vector(31 downto 0);  -- ufix32
        avm_result_buffer_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_result_buffer_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        avm_result_buffer_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_result_buffer_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_result_buffer_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_result_buffer_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        avs_result_buffer_readdata : out std_logic_vector(31 downto 0);  -- ufix32
        avs_result_buffer_readdatavalid : out std_logic_vector(0 downto 0);  -- ufix1
        avst_iord_bl_do_ready : out std_logic_vector(0 downto 0);  -- ufix1
        avst_iord_bl_result_in_ready : out std_logic_vector(0 downto 0);  -- ufix1
        avst_iowr_bl_return_data : out std_logic_vector(0 downto 0);  -- ufix1
        avst_iowr_bl_return_valid : out std_logic_vector(0 downto 0);  -- ufix1
        busy : out std_logic_vector(0 downto 0);  -- ufix1
        done : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end result_buffer_function_wrapper;

architecture normal of result_buffer_function_wrapper is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component acl_reset_wire is
        port (
            o_resetn : out std_logic;
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component result_buffer_function is
        port (
            in_arg_do : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_arg_result_buffer : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_arg_result_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_arg_return : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_iord_bl_do_i_fifodata : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iord_bl_do_i_fifovalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iord_bl_result_in_i_fifodata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_iord_bl_result_in_i_fifovalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iowr_bl_return_i_fifoready : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memdep_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_start : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component lsu_permute_address is
        generic (
            AWIDTH : INTEGER := 32;
            BITS_IN_BYTE_SELECT : INTEGER := 2;
            ENABLE_BANKED_MEMORY : INTEGER := 0;
            NUMBER_BANKS : INTEGER := 1;
            WORD_SELECT_BITS : INTEGER := -2
        );
        port (
            i_addr : in std_logic_vector(31 downto 0);
            o_addr : out std_logic_vector(31 downto 0)
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal busy_and_q : STD_LOGIC_VECTOR (0 downto 0);
    signal busy_or_q : STD_LOGIC_VECTOR (0 downto 0);
    signal const_slave_mem_addr_lower_bits_q : STD_LOGIC_VECTOR (1 downto 0);
    signal const_slave_mem_addr_upper_bits_q : STD_LOGIC_VECTOR (20 downto 0);
    signal const_slave_mem_base_addr_q : STD_LOGIC_VECTOR (63 downto 0);
    signal not_ready_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_stall_q : STD_LOGIC_VECTOR (0 downto 0);
    signal pos_reset_q : STD_LOGIC_VECTOR (0 downto 0);
    signal reset_wire_inst_o_resetn : STD_LOGIC_VECTOR (0 downto 0);
    signal reset_wire_inst_o_resetn_bitsignaltemp : std_logic;
    signal result_buffer_function_out_iord_bl_do_o_fifoready : STD_LOGIC_VECTOR (0 downto 0);
    signal result_buffer_function_out_iord_bl_result_in_o_fifoready : STD_LOGIC_VECTOR (0 downto 0);
    signal result_buffer_function_out_iowr_bl_return_o_fifodata : STD_LOGIC_VECTOR (0 downto 0);
    signal result_buffer_function_out_iowr_bl_return_o_fifovalid : STD_LOGIC_VECTOR (0 downto 0);
    signal result_buffer_function_out_memdep_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal result_buffer_function_out_memdep_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal result_buffer_function_out_memdep_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal result_buffer_function_out_memdep_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal result_buffer_function_out_memdep_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal result_buffer_function_out_memdep_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal result_buffer_function_out_memdep_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal result_buffer_permute_address_i_addr : STD_LOGIC_VECTOR (31 downto 0);
    signal result_buffer_permute_address_o_addr : STD_LOGIC_VECTOR (31 downto 0);
    signal slave_addr_join_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- not_stall(LOGICAL,35)
    not_stall_q <= not (stall);

    -- const_slave_mem_base_addr(CONSTANT,8)
    const_slave_mem_base_addr_q <= "0000000000000000000000000000000000000000000000000000000000000000";

    -- result_buffer_function(BLACKBOX,60)
    theresult_buffer_function : result_buffer_function
    PORT MAP (
        in_arg_do => const_slave_mem_base_addr_q,
        in_arg_result_buffer => const_slave_mem_base_addr_q,
        in_arg_result_in => const_slave_mem_base_addr_q,
        in_arg_return => const_slave_mem_base_addr_q,
        in_iord_bl_do_i_fifodata => avst_iord_bl_do_data,
        in_iord_bl_do_i_fifovalid => start,
        in_iord_bl_result_in_i_fifodata => avst_iord_bl_result_in_data,
        in_iord_bl_result_in_i_fifovalid => avst_iord_bl_result_in_valid,
        in_iowr_bl_return_i_fifoready => not_stall_q,
        in_memdep_avm_readdata => avm_memdep_readdata,
        in_memdep_avm_readdatavalid => avm_memdep_readdatavalid,
        in_memdep_avm_waitrequest => avm_memdep_waitrequest,
        in_memdep_avm_writeack => avm_memdep_writeack,
        in_stall_in => GND_q,
        in_start => GND_q,
        in_valid_in => VCC_q,
        out_iord_bl_do_o_fifoready => result_buffer_function_out_iord_bl_do_o_fifoready,
        out_iord_bl_result_in_o_fifoready => result_buffer_function_out_iord_bl_result_in_o_fifoready,
        out_iowr_bl_return_o_fifodata => result_buffer_function_out_iowr_bl_return_o_fifodata,
        out_iowr_bl_return_o_fifovalid => result_buffer_function_out_iowr_bl_return_o_fifovalid,
        out_memdep_avm_address => result_buffer_function_out_memdep_avm_address,
        out_memdep_avm_burstcount => result_buffer_function_out_memdep_avm_burstcount,
        out_memdep_avm_byteenable => result_buffer_function_out_memdep_avm_byteenable,
        out_memdep_avm_enable => result_buffer_function_out_memdep_avm_enable,
        out_memdep_avm_read => result_buffer_function_out_memdep_avm_read,
        out_memdep_avm_write => result_buffer_function_out_memdep_avm_write,
        out_memdep_avm_writedata => result_buffer_function_out_memdep_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- avm_memdep_address(GPOUT,36)
    avm_memdep_address <= result_buffer_function_out_memdep_avm_address;

    -- avm_memdep_burstcount(GPOUT,37)
    avm_memdep_burstcount <= result_buffer_function_out_memdep_avm_burstcount;

    -- avm_memdep_byteenable(GPOUT,38)
    avm_memdep_byteenable <= result_buffer_function_out_memdep_avm_byteenable;

    -- avm_memdep_enable(GPOUT,39)
    avm_memdep_enable <= result_buffer_function_out_memdep_avm_enable;

    -- avm_memdep_read(GPOUT,40)
    avm_memdep_read <= result_buffer_function_out_memdep_avm_read;

    -- avm_memdep_write(GPOUT,41)
    avm_memdep_write <= result_buffer_function_out_memdep_avm_write;

    -- avm_memdep_writedata(GPOUT,42)
    avm_memdep_writedata <= result_buffer_function_out_memdep_avm_writedata;

    -- const_slave_mem_addr_upper_bits(CONSTANT,7)
    const_slave_mem_addr_upper_bits_q <= "000000000000000000000";

    -- const_slave_mem_addr_lower_bits(CONSTANT,6)
    const_slave_mem_addr_lower_bits_q <= "00";

    -- slave_addr_join(BITJOIN,64)
    slave_addr_join_q <= const_slave_mem_addr_upper_bits_q & avs_result_buffer_address & const_slave_mem_addr_lower_bits_q;

    -- result_buffer_permute_address(EXTIFACE,61)
    result_buffer_permute_address_i_addr <= slave_addr_join_q;
    theresult_buffer_permute_address : lsu_permute_address
    GENERIC MAP (
        AWIDTH => 32,
        BITS_IN_BYTE_SELECT => 2,
        ENABLE_BANKED_MEMORY => 0,
        NUMBER_BANKS => 1,
        WORD_SELECT_BITS => -2
    )
    PORT MAP (
        i_addr => slave_addr_join_q,
        o_addr => result_buffer_permute_address_o_addr
    );

    -- avm_result_buffer_address(GPOUT,43)
    avm_result_buffer_address <= result_buffer_permute_address_o_addr;

    -- avm_result_buffer_burstcount(GPOUT,44)
    avm_result_buffer_burstcount <= VCC_q;

    -- avm_result_buffer_byteenable(GPOUT,45)
    avm_result_buffer_byteenable <= avs_result_buffer_byteenable;

    -- avm_result_buffer_enable(GPOUT,46)
    avm_result_buffer_enable <= VCC_q;

    -- avm_result_buffer_read(GPOUT,47)
    avm_result_buffer_read <= avs_result_buffer_read;

    -- avm_result_buffer_write(GPOUT,48)
    avm_result_buffer_write <= avs_result_buffer_write;

    -- avm_result_buffer_writedata(GPOUT,49)
    avm_result_buffer_writedata <= avs_result_buffer_writedata;

    -- avs_result_buffer_readdata(GPOUT,50)
    avs_result_buffer_readdata <= avm_result_buffer_readdata;

    -- avs_result_buffer_readdatavalid(GPOUT,51)
    avs_result_buffer_readdatavalid <= avm_result_buffer_readdatavalid;

    -- avst_iord_bl_do_ready(GPOUT,52)
    avst_iord_bl_do_ready <= result_buffer_function_out_iord_bl_do_o_fifoready;

    -- avst_iord_bl_result_in_ready(GPOUT,53)
    avst_iord_bl_result_in_ready <= result_buffer_function_out_iord_bl_result_in_o_fifoready;

    -- avst_iowr_bl_return_data(GPOUT,54)
    avst_iowr_bl_return_data <= result_buffer_function_out_iowr_bl_return_o_fifodata;

    -- avst_iowr_bl_return_valid(GPOUT,55)
    avst_iowr_bl_return_valid <= result_buffer_function_out_iowr_bl_return_o_fifovalid;

    -- not_ready(LOGICAL,34)
    not_ready_q <= not (result_buffer_function_out_iord_bl_do_o_fifoready);

    -- busy_and(LOGICAL,2)
    busy_and_q <= not_ready_q and start;

    -- reset_wire_inst(EXTIFACE,59)
    reset_wire_inst_o_resetn(0) <= reset_wire_inst_o_resetn_bitsignaltemp;
    thereset_wire_inst : acl_reset_wire
    PORT MAP (
        o_resetn => reset_wire_inst_o_resetn_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- pos_reset(LOGICAL,58)
    pos_reset_q <= not (reset_wire_inst_o_resetn);

    -- busy_or(LOGICAL,3)
    busy_or_q <= pos_reset_q or busy_and_q;

    -- busy(GPOUT,56)
    busy <= busy_or_q;

    -- done(GPOUT,57)
    done <= result_buffer_function_out_iowr_bl_return_o_fifovalid;

END normal;
