// Example instance of the top level module for: 
//     sample_buffer
// To include this component in your design, include: 
//     sample_buffer.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

sample_buffer sample_buffer_inst (
  // Interface: clock (clock end)
  .clock                       ( ), // 1-bit clk input
  // Interface: reset (reset end)
  .resetn                      ( ), // 1-bit reset_n input
  // Interface: sample_out (avalon_streaming source)
  .sample_out_data             ( ), // 16-bit data output
  .sample_out_ready            ( ), // 1-bit ready input
  .sample_out_valid            ( ), // 1-bit valid output
  // Interface: irq (interrupt end)
  .done_irq                    ( ), // 1-bit irq output
  // Interface: avs_cra (avalon end)
  .avs_cra_read                ( ), // 1-bit read input
  .avs_cra_write               ( ), // 1-bit write input
  .avs_cra_address             ( ), // 3-bit address input
  .avs_cra_writedata           ( ), // 64-bit writedata input
  .avs_cra_byteenable          ( ), // 8-bit byteenable input
  .avs_cra_readdata            ( ), // 64-bit readdata output
  // Interface: avs_sample_buffer (avalon end)
  .avs_sample_buffer_read      ( ), // 1-bit read input
  .avs_sample_buffer_write     ( ), // 1-bit write input
  .avs_sample_buffer_address   ( ), // 9-bit address input
  .avs_sample_buffer_writedata ( ), // 32-bit writedata input
  .avs_sample_buffer_byteenable( ), // 4-bit byteenable input
  .avs_sample_buffer_readdata  ( )  // 32-bit readdata output
);
