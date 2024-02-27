

LIBRARY ieee ;
USE ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY  TIMER_HW_IP IS
   PORT(        
		 reset_n : IN std_logic;
       clk     : IN std_logic;
       cs_n    : IN std_logic; -- IP component address
		 
       addr    : IN std_logic_vector(1 downto 0); -- offset address
-- need one address, two be sure we add one extra bit (4 addresses a 4 bytes)
       write_n : IN std_logic;
       read_n  : IN std_logic;
       din     : IN std_logic_vector(31 DOWNTO 0);
-- need only two bits, but the wrapper require same number of bits for din and dout
       dout    : OUT std_logic_vector(31 DOWNTO 0)		
		 );

END TIMER_HW_IP;


ARCHITECTURE rtl OF TIMER_HW_IP IS

SIGNAL data_reg    : std_logic_vector (31 DOWNTO 0);
SIGNAL control_reg : std_logic_vector (1 DOWNTO 0);

COMPONENT timer_top IS
	PORT(
      Control_timer: IN std_logic_vector(1 downto 0);
      clk          : IN std_logic;
      reset_n      : IN std_logic;
      timer_data   : INOUT std_logic_vector(31 DOWNTO 0)
		);
	END COMPONENT;

BEGIN	

   Bus_register_write_process: PROCESS(clk, reset_n)
	
	BEGIN
      IF reset_n = '0' THEN
         control_reg <= (OTHERS => '0');
      ELSIF rising_edge(clk) THEN
         IF (cs_n = '0' and write_n = '0' and addr = "01") THEN
            control_reg(1 DOWNTO 0) <= din(31 DOWNTO 30);
         ELSE
            NULL;
         END IF;
      ELSE
         NULL;
      END IF;
   END PROCESS bus_register_write_process;
	
	
	Bus_register_read_process: PROCESS(cs_n, read_n, addr)
      
		BEGIN
         IF (cs_n = '0' and read_n = '0' and addr = "00") THEN
            dout <= data_reg; -- timer read 
		   
			ELSE
			--NULL;
         dout <= (OTHERS => '0');
         END IF;
			
   END PROCESS Bus_register_read_process;
	
	
	
	
	timer_function: timer_top
	
   PORT MAP(
            Control_timer => control_reg(1 DOWNTO 0),
				clk           => clk,
				reset_n       => reset_n,
				timer_data    => data_reg);
				
				
		
	
END rtl;
	
	