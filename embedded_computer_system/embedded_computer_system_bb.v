
module embedded_computer_system (
	buffer_1_call_valid,
	buffer_1_call_stall,
	buffer_1_return_valid,
	buffer_1_return_stall,
	clk_clk,
	filter_0_call_valid,
	filter_0_call_stall,
	filter_0_return_valid,
	filter_0_return_stall,
	pll_c1_clk,
	reset_reset_n,
	sdram_controller_addr,
	sdram_controller_ba,
	sdram_controller_cas_n,
	sdram_controller_cke,
	sdram_controller_cs_n,
	sdram_controller_dq,
	sdram_controller_dqm,
	sdram_controller_ras_n,
	sdram_controller_we_n,
	vga_ip_0_conduit_end_vga_b,
	vga_ip_0_conduit_end_vga_g,
	vga_ip_0_conduit_end_vga_r,
	vga_ip_0_conduit_end_vga_vs,
	vga_ip_0_conduit_end_vga_hs);	

	input		buffer_1_call_valid;
	output		buffer_1_call_stall;
	output		buffer_1_return_valid;
	input		buffer_1_return_stall;
	input		clk_clk;
	input		filter_0_call_valid;
	output		filter_0_call_stall;
	output		filter_0_return_valid;
	input		filter_0_return_stall;
	output		pll_c1_clk;
	input		reset_reset_n;
	output	[12:0]	sdram_controller_addr;
	output	[1:0]	sdram_controller_ba;
	output		sdram_controller_cas_n;
	output		sdram_controller_cke;
	output		sdram_controller_cs_n;
	inout	[15:0]	sdram_controller_dq;
	output	[1:0]	sdram_controller_dqm;
	output		sdram_controller_ras_n;
	output		sdram_controller_we_n;
	output	[3:0]	vga_ip_0_conduit_end_vga_b;
	output	[3:0]	vga_ip_0_conduit_end_vga_g;
	output	[3:0]	vga_ip_0_conduit_end_vga_r;
	output		vga_ip_0_conduit_end_vga_vs;
	output		vga_ip_0_conduit_end_vga_hs;
endmodule
