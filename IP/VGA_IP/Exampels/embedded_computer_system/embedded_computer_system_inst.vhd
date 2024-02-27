	component embedded_computer_system is
		port (
			clk_clk         : in  std_logic                    := 'X'; -- clk
			reset_reset_n   : in  std_logic                    := 'X'; -- reset_n
			vga_ip_0_vga_b  : out std_logic_vector(3 downto 0);        -- vga_b
			vga_ip_0_vga_g  : out std_logic_vector(3 downto 0);        -- vga_g
			vga_ip_0_vga_r  : out std_logic_vector(3 downto 0);        -- vga_r
			vga_ip_0_vga_vs : out std_logic;                           -- vga_vs
			vga_ip_0_vga_hs : out std_logic                            -- vga_hs
		);
	end component embedded_computer_system;

	u0 : component embedded_computer_system
		port map (
			clk_clk         => CONNECTED_TO_clk_clk,         --      clk.clk
			reset_reset_n   => CONNECTED_TO_reset_reset_n,   --    reset.reset_n
			vga_ip_0_vga_b  => CONNECTED_TO_vga_ip_0_vga_b,  -- vga_ip_0.vga_b
			vga_ip_0_vga_g  => CONNECTED_TO_vga_ip_0_vga_g,  --         .vga_g
			vga_ip_0_vga_r  => CONNECTED_TO_vga_ip_0_vga_r,  --         .vga_r
			vga_ip_0_vga_vs => CONNECTED_TO_vga_ip_0_vga_vs, --         .vga_vs
			vga_ip_0_vga_hs => CONNECTED_TO_vga_ip_0_vga_hs  --         .vga_hs
		);

