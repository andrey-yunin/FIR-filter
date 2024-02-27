	component embedded_computer_system is
		port (
			buffer_1_call_valid         : in    std_logic                     := 'X';             -- valid
			buffer_1_call_stall         : out   std_logic;                                        -- stall
			buffer_1_return_valid       : out   std_logic;                                        -- valid
			buffer_1_return_stall       : in    std_logic                     := 'X';             -- stall
			clk_clk                     : in    std_logic                     := 'X';             -- clk
			filter_0_call_valid         : in    std_logic                     := 'X';             -- valid
			filter_0_call_stall         : out   std_logic;                                        -- stall
			filter_0_return_valid       : out   std_logic;                                        -- valid
			filter_0_return_stall       : in    std_logic                     := 'X';             -- stall
			pll_c1_clk                  : out   std_logic;                                        -- clk
			reset_reset_n               : in    std_logic                     := 'X';             -- reset_n
			sdram_controller_addr       : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_controller_ba         : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_controller_cas_n      : out   std_logic;                                        -- cas_n
			sdram_controller_cke        : out   std_logic;                                        -- cke
			sdram_controller_cs_n       : out   std_logic;                                        -- cs_n
			sdram_controller_dq         : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_controller_dqm        : out   std_logic_vector(1 downto 0);                     -- dqm
			sdram_controller_ras_n      : out   std_logic;                                        -- ras_n
			sdram_controller_we_n       : out   std_logic;                                        -- we_n
			vga_ip_0_conduit_end_vga_b  : out   std_logic_vector(3 downto 0);                     -- vga_b
			vga_ip_0_conduit_end_vga_g  : out   std_logic_vector(3 downto 0);                     -- vga_g
			vga_ip_0_conduit_end_vga_r  : out   std_logic_vector(3 downto 0);                     -- vga_r
			vga_ip_0_conduit_end_vga_vs : out   std_logic;                                        -- vga_vs
			vga_ip_0_conduit_end_vga_hs : out   std_logic                                         -- vga_hs
		);
	end component embedded_computer_system;

	u0 : component embedded_computer_system
		port map (
			buffer_1_call_valid         => CONNECTED_TO_buffer_1_call_valid,         --        buffer_1_call.valid
			buffer_1_call_stall         => CONNECTED_TO_buffer_1_call_stall,         --                     .stall
			buffer_1_return_valid       => CONNECTED_TO_buffer_1_return_valid,       --      buffer_1_return.valid
			buffer_1_return_stall       => CONNECTED_TO_buffer_1_return_stall,       --                     .stall
			clk_clk                     => CONNECTED_TO_clk_clk,                     --                  clk.clk
			filter_0_call_valid         => CONNECTED_TO_filter_0_call_valid,         --        filter_0_call.valid
			filter_0_call_stall         => CONNECTED_TO_filter_0_call_stall,         --                     .stall
			filter_0_return_valid       => CONNECTED_TO_filter_0_return_valid,       --      filter_0_return.valid
			filter_0_return_stall       => CONNECTED_TO_filter_0_return_stall,       --                     .stall
			pll_c1_clk                  => CONNECTED_TO_pll_c1_clk,                  --               pll_c1.clk
			reset_reset_n               => CONNECTED_TO_reset_reset_n,               --                reset.reset_n
			sdram_controller_addr       => CONNECTED_TO_sdram_controller_addr,       --     sdram_controller.addr
			sdram_controller_ba         => CONNECTED_TO_sdram_controller_ba,         --                     .ba
			sdram_controller_cas_n      => CONNECTED_TO_sdram_controller_cas_n,      --                     .cas_n
			sdram_controller_cke        => CONNECTED_TO_sdram_controller_cke,        --                     .cke
			sdram_controller_cs_n       => CONNECTED_TO_sdram_controller_cs_n,       --                     .cs_n
			sdram_controller_dq         => CONNECTED_TO_sdram_controller_dq,         --                     .dq
			sdram_controller_dqm        => CONNECTED_TO_sdram_controller_dqm,        --                     .dqm
			sdram_controller_ras_n      => CONNECTED_TO_sdram_controller_ras_n,      --                     .ras_n
			sdram_controller_we_n       => CONNECTED_TO_sdram_controller_we_n,       --                     .we_n
			vga_ip_0_conduit_end_vga_b  => CONNECTED_TO_vga_ip_0_conduit_end_vga_b,  -- vga_ip_0_conduit_end.vga_b
			vga_ip_0_conduit_end_vga_g  => CONNECTED_TO_vga_ip_0_conduit_end_vga_g,  --                     .vga_g
			vga_ip_0_conduit_end_vga_r  => CONNECTED_TO_vga_ip_0_conduit_end_vga_r,  --                     .vga_r
			vga_ip_0_conduit_end_vga_vs => CONNECTED_TO_vga_ip_0_conduit_end_vga_vs, --                     .vga_vs
			vga_ip_0_conduit_end_vga_hs => CONNECTED_TO_vga_ip_0_conduit_end_vga_hs  --                     .vga_hs
		);

