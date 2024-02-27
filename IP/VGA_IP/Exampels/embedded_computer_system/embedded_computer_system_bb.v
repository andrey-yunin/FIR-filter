
module embedded_computer_system (
	clk_clk,
	reset_reset_n,
	vga_ip_0_vga_b,
	vga_ip_0_vga_g,
	vga_ip_0_vga_r,
	vga_ip_0_vga_vs,
	vga_ip_0_vga_hs);	

	input		clk_clk;
	input		reset_reset_n;
	output	[3:0]	vga_ip_0_vga_b;
	output	[3:0]	vga_ip_0_vga_g;
	output	[3:0]	vga_ip_0_vga_r;
	output		vga_ip_0_vga_vs;
	output		vga_ip_0_vga_hs;
endmodule
