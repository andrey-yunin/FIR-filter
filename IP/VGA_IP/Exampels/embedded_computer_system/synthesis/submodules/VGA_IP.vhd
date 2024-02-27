

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY VGA_IP IS 
   PORT
   (
      CLOCK_controller_50    : in std_logic;
      address_controller_in  : in std_logic_vector(16 downto 0);
      reset_controller       : in std_logic;
      data_controller_in     : in std_logic_vector (31 downto 0);		
      wren_controller        : in std_logic;
		cs_n                   : in std_logic;
	   VGA_controller_VS      : out std_logic;
      VGA_controller_HS      : out std_logic;
      VGA_controller_R       : out std_logic_vector(3 downto 0);
      VGA_controller_G       : out std_logic_vector(3 downto 0);
      VGA_controller_B       : out std_logic_vector(3 downto 0)    
    );
END ENTITY;


ARCHITECTURE rtl OF VGA_IP IS
SIGNAL CLOCK_controller_25   : std_logic;
SIGNAL address_controller    : std_logic_vector(16 downto 0);
SIGNAL q_controller          : std_logic_vector (2 downto 0);
SIGNAL s_wren                : std_logic;
SIGNAL data_controller       : std_logic_vector (2 downto 0);


   COMPONENT DPRAM
   PORT
	(
		data		   : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		rdaddress	: IN STD_LOGIC_VECTOR (16 DOWNTO 0);
		rdclock		: IN STD_LOGIC ;
		wraddress	: IN STD_LOGIC_VECTOR (16 DOWNTO 0);
		wrclock		: IN STD_LOGIC  := '1';
		wren		   : IN STD_LOGIC  := '0';
		q		      : OUT STD_LOGIC_VECTOR (2 DOWNTO 0)
	);
   END COMPONENT;

   
   COMPONENT vga_sync
   PORT 
   (
      CLOCK_sync_25 : in std_logic;
      reset_sync    : in std_logic;
      q_sync_in     : in std_logic_vector (2 downto 0);      
      VGA_sync_VS   : out std_logic;
      VGA_sync_HS   : out std_logic;
      VGA_sync_R    : out std_logic_vector(3 downto 0);
      VGA_sync_G    : out std_logic_vector(3 downto 0);
      VGA_sync_B    : out std_logic_vector(3 downto 0);
      addr_sync     : out std_logic_vector(16 downto 0)       
   );
   END COMPONENT;
   
   
   
   COMPONENT clock_divider
   PORT
   (
     inclk0 : IN STD_LOGIC  := '0';
     c0		: OUT STD_LOGIC 
   );
   END COMPONENT;
   
   
BEGIN

--  Bus_register_read_process: PROCESS(cs_n, read_n)--, addr)
--      
--		BEGIN
--         IF (cs_n = '0' and read_n = '0') THEN --  and addr = "00")
--            data_controller_out (2 DOWNTO 0) <= q_controller_a; -- timer read 
--		   
--			ELSE
--            data_controller_out <= (OTHERS => '0');
--         END IF;
--			
--   END PROCESS Bus_register_read_process;
	
	
	Bus_register_wren_process: PROCESS (CLOCK_controller_50, reset_controller)
	BEGIN 
	   IF reset_controller = '0' THEN 
		   data_controller <= (OTHERS => '0');
		ELSIF rising_edge (CLOCK_controller_50) THEN
		   IF (cs_n = '0' and wren_controller = '1') THEN
			data_controller <= data_controller_in (2 DOWNTO 0);
			s_wren <= wren_controller;		
					
			 
			ELSE
				data_controller  <= (OTHERS => '0');
			   s_wren <= '0';--set inactive, 1 or 0 depends on the memory
			END IF;
		ELSE
		   NULL;
		END IF;	
		
		
	END PROCESS;
			   
		   
		   


   inst_dpram : DPRAM
   PORT MAP
   (
	
	   data		 =>  data_controller (2 DOWNTO 0), 
		rdaddress =>  address_controller,  	
		rdclock	 =>  CLOCK_controller_25,
		wraddress =>  address_controller_in,
		wrclock   =>  CLOCK_controller_50,		
		wren	    =>  s_wren,	   
		q		    =>  q_controller   
		
		
	);
   
  
   
   U2 : vga_sync
   PORT MAP 
   (
      CLOCK_sync_25 => CLOCK_controller_25,
      reset_sync    => reset_controller,
      q_sync_in     => q_controller,
      VGA_sync_VS   => VGA_controller_VS,
      VGA_sync_HS   => VGA_controller_HS,
      VGA_sync_R    => VGA_controller_R,
      VGA_sync_G    => VGA_controller_G,
      VGA_sync_B    => VGA_controller_B,
      addr_sync     => address_controller
   );
         


   inst_clock_divider: clock_divider
   PORT MAP
   (
      inclk0 => CLOCK_controller_50,
      c0     => CLOCK_controller_25
   );

	
   
     
END ARCHITECTURE;