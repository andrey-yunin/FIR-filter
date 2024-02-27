
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY vga_sync IS 
   PORT (
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
END ENTITY;


ARCHITECTURE rtl OF vga_sync IS 
SIGNAL x_counter : integer range 0 to 800;
SIGNAL y_counter : integer range 0 to 700;


BEGIN

------------------ Counters process ------------------
   PROCESS(CLOCK_sync_25, reset_sync)
      BEGIN
         IF reset_sync = '0' then
   -- clear counter signals
            x_counter <= 0;
            y_counter <= 0;
            
            
         ELSIF rising_edge(CLOCK_sync_25) then 
      
			  IF x_counter >= 799 then
              x_counter <= 0;              
              IF y_counter >= 524 then 
                 y_counter <= 0;
              ELSE
                 y_counter <= y_counter + 1; 
              END IF;
           ELSE
              x_counter <= x_counter + 1;
           END IF; 
      END IF;
		
   END PROCESS;

------------------ Concurrent asynchronous statements ------------------

------- Sync pulses -------
   VGA_sync_HS <= '0' WHEN x_counter > 659 and x_counter < 756 ELSE '1';
   VGA_sync_VS <= '0' WHEN y_counter > 493 and y_counter < 495 ELSE '1';
------- Sync pulses -------
 
   addr_sync <= std_logic_vector(to_unsigned((y_counter/2)*320 + x_counter/2,addr_sync'length)); --320x240
	
	

   VGA_sync_R <= (others => '1') WHEN q_sync_in(0) = '1' and x_counter >= 0 and x_counter < 640 and y_counter >= 0 and y_counter < 480 ELSE (others => '0'); 
   VGA_sync_G <= (others => '1') WHEN q_sync_in(1) = '1' and x_counter >= 0 and x_counter < 640 and y_counter >= 0 and y_counter < 480 ELSE (others => '0');
   VGA_sync_B <= (others => '1') WHEN q_sync_in(2) = '1' and x_counter >= 0 and x_counter < 640 and y_counter >= 0 and y_counter < 480 ELSE (others => '0');
      


END ARCHITECTURE;