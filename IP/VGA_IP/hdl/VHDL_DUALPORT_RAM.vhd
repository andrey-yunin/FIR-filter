-- Quartus Prime VHDL Template
-- Simple Dual-Port RAM with different read/write addresses and
-- different read/write clock

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity VHDL_DUALPORT_RAM is

	generic 
	(
		DATA_WIDTH : natural := 8;
		ADDR_WIDTH : natural := 6
	);

	port 
	(
		rclk	: in std_logic;
		wclk	: in std_logic;
		raddr	: in std_logic_vector (ADDR_WIDTH-1 downto 0);
		waddr	: in std_logic_vector (ADDR_WIDTH-1 downto 0);
		data	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		we		: in std_logic := '1';
		q		: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);

end VHDL_DUALPORT_RAM;

architecture rtl of VHDL_DUALPORT_RAM is

	-- Build a 2-D array type for the RAM
	subtype word_t is std_logic_vector((DATA_WIDTH-1) downto 0);
	type memory_t is array(2**ADDR_WIDTH-1 downto 0) of word_t;

	-- Declare the RAM signal.	
	signal ram : memory_t;

begin

	process(wclk)
	begin
	if(rising_edge(wclk)) then 
		if(we = '1') then
			ram(to_integer(unsigned(waddr))) <= data;
		end if;
	end if;
	end process;

	process(rclk)
	begin
	if(rising_edge(rclk)) then 
		q <= ram(to_integer(unsigned(raddr)));
	end if;
	end process;

end rtl;
