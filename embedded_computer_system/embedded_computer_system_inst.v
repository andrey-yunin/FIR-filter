	embedded_computer_system u0 (
		.buffer_1_call_valid         (<connected-to-buffer_1_call_valid>),         //        buffer_1_call.valid
		.buffer_1_call_stall         (<connected-to-buffer_1_call_stall>),         //                     .stall
		.buffer_1_return_valid       (<connected-to-buffer_1_return_valid>),       //      buffer_1_return.valid
		.buffer_1_return_stall       (<connected-to-buffer_1_return_stall>),       //                     .stall
		.clk_clk                     (<connected-to-clk_clk>),                     //                  clk.clk
		.filter_0_call_valid         (<connected-to-filter_0_call_valid>),         //        filter_0_call.valid
		.filter_0_call_stall         (<connected-to-filter_0_call_stall>),         //                     .stall
		.filter_0_return_valid       (<connected-to-filter_0_return_valid>),       //      filter_0_return.valid
		.filter_0_return_stall       (<connected-to-filter_0_return_stall>),       //                     .stall
		.pll_c1_clk                  (<connected-to-pll_c1_clk>),                  //               pll_c1.clk
		.reset_reset_n               (<connected-to-reset_reset_n>),               //                reset.reset_n
		.sdram_controller_addr       (<connected-to-sdram_controller_addr>),       //     sdram_controller.addr
		.sdram_controller_ba         (<connected-to-sdram_controller_ba>),         //                     .ba
		.sdram_controller_cas_n      (<connected-to-sdram_controller_cas_n>),      //                     .cas_n
		.sdram_controller_cke        (<connected-to-sdram_controller_cke>),        //                     .cke
		.sdram_controller_cs_n       (<connected-to-sdram_controller_cs_n>),       //                     .cs_n
		.sdram_controller_dq         (<connected-to-sdram_controller_dq>),         //                     .dq
		.sdram_controller_dqm        (<connected-to-sdram_controller_dqm>),        //                     .dqm
		.sdram_controller_ras_n      (<connected-to-sdram_controller_ras_n>),      //                     .ras_n
		.sdram_controller_we_n       (<connected-to-sdram_controller_we_n>),       //                     .we_n
		.vga_ip_0_conduit_end_vga_b  (<connected-to-vga_ip_0_conduit_end_vga_b>),  // vga_ip_0_conduit_end.vga_b
		.vga_ip_0_conduit_end_vga_g  (<connected-to-vga_ip_0_conduit_end_vga_g>),  //                     .vga_g
		.vga_ip_0_conduit_end_vga_r  (<connected-to-vga_ip_0_conduit_end_vga_r>),  //                     .vga_r
		.vga_ip_0_conduit_end_vga_vs (<connected-to-vga_ip_0_conduit_end_vga_vs>), //                     .vga_vs
		.vga_ip_0_conduit_end_vga_hs (<connected-to-vga_ip_0_conduit_end_vga_hs>)  //                     .vga_hs
	);

