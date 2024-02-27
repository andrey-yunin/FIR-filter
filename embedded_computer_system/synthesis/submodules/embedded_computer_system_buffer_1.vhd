-- embedded_computer_system_buffer_1.vhd

-- Generated using ACDS version 18.1 625

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity embedded_computer_system_buffer_1 is
	port (
		avs_result_buffer_read       : in  std_logic                     := '0';             -- avs_result_buffer.read
		avs_result_buffer_write      : in  std_logic                     := '0';             --                  .write
		avs_result_buffer_address    : in  std_logic_vector(8 downto 0)  := (others => '0'); --                  .address
		avs_result_buffer_writedata  : in  std_logic_vector(31 downto 0) := (others => '0'); --                  .writedata
		avs_result_buffer_byteenable : in  std_logic_vector(3 downto 0)  := (others => '0'); --                  .byteenable
		avs_result_buffer_readdata   : out std_logic_vector(31 downto 0);                    --                  .readdata
		start                        : in  std_logic                     := '0';             --              call.valid
		busy                         : out std_logic;                                        --                  .stall
		clock                        : in  std_logic                     := '0';             --             clock.clk
		resetn                       : in  std_logic                     := '0';             --             reset.reset_n
		result_in_data               : in  std_logic_vector(31 downto 0) := (others => '0'); --         result_in.data
		result_in_ready              : out std_logic;                                        --                  .ready
		result_in_valid              : in  std_logic                     := '0';             --                  .valid
		done                         : out std_logic;                                        --            return.valid
		stall                        : in  std_logic                     := '0'              --                  .stall
	);
end entity embedded_computer_system_buffer_1;

architecture rtl of embedded_computer_system_buffer_1 is
	component result_buffer_internal is
		port (
			clock                        : in  std_logic                     := 'X';             -- clk
			resetn                       : in  std_logic                     := 'X';             -- reset_n
			result_in_data               : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			result_in_ready              : out std_logic;                                        -- ready
			result_in_valid              : in  std_logic                     := 'X';             -- valid
			start                        : in  std_logic                     := 'X';             -- valid
			busy                         : out std_logic;                                        -- stall
			done                         : out std_logic;                                        -- valid
			stall                        : in  std_logic                     := 'X';             -- stall
			avs_result_buffer_read       : in  std_logic                     := 'X';             -- read
			avs_result_buffer_write      : in  std_logic                     := 'X';             -- write
			avs_result_buffer_address    : in  std_logic_vector(8 downto 0)  := (others => 'X'); -- address
			avs_result_buffer_writedata  : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			avs_result_buffer_byteenable : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
			avs_result_buffer_readdata   : out std_logic_vector(31 downto 0)                     -- readdata
		);
	end component result_buffer_internal;

begin

	result_buffer_internal_inst : component result_buffer_internal
		port map (
			clock                        => clock,                        --             clock.clk
			resetn                       => resetn,                       --             reset.reset_n
			result_in_data               => result_in_data,               --         result_in.data
			result_in_ready              => result_in_ready,              --                  .ready
			result_in_valid              => result_in_valid,              --                  .valid
			start                        => start,                        --              call.valid
			busy                         => busy,                         --                  .stall
			done                         => done,                         --            return.valid
			stall                        => stall,                        --                  .stall
			avs_result_buffer_read       => avs_result_buffer_read,       -- avs_result_buffer.read
			avs_result_buffer_write      => avs_result_buffer_write,      --                  .write
			avs_result_buffer_address    => avs_result_buffer_address,    --                  .address
			avs_result_buffer_writedata  => avs_result_buffer_writedata,  --                  .writedata
			avs_result_buffer_byteenable => avs_result_buffer_byteenable, --                  .byteenable
			avs_result_buffer_readdata   => avs_result_buffer_readdata    --                  .readdata
		);

end architecture rtl; -- of embedded_computer_system_buffer_1