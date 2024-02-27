	

LIBRARY ieee ;
USE ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-- connects to the registers

ENTITY timer_top IS
   PORT(
      Control_timer: IN std_logic_vector(1 downto 0);
      clk          : IN std_logic;
      reset_n      : IN std_logic;
      timer_data   : INOUT std_logic_vector(31 DOWNTO 0)
		);
END timer_top;

-- HW_function_process handled the function in timer component

ARCHITECTURE rtl OF timer_top IS
   
	BEGIN
	
-- HW_function_process handled the function in timer component
   HW_function_process: PROCESS(clk, reset_n)
      BEGIN
         IF reset_n = '0' THEN
            timer_data <= (OTHERS => '0');
				
         ELSIF rising_edge(clk) THEN

				CASE Control_timer IS
					WHEN "10" => timer_data <= 1 + timer_data;-- timer start
					WHEN "00" => timer_data <= timer_data; -- timer stop
					WHEN "01" => timer_data <= (others => '0'); -- timer reset
					WHEN OTHERS => null;
					
				END CASE;
				
			END IF;         
			
			
   END PROCESS HW_function_process;
	
END rtl;