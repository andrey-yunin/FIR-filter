// Example instance of the top level module for: 
//     result_buffer
// To include this component in your design, include: 
//     result_buffer.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

result_buffer result_buffer_inst (
  // Interface: clock (clock end)
  .clock                       ( ), // 1-bit clk input
  // Interface: reset (reset end)
  .resetn                      ( ), // 1-bit reset_n input
  // Interface: result_in (avalon_streaming sink)
  .result_in_data              ( ), // 32-bit data input
  .result_in_ready             ( ), // 1-bit ready output
  .result_in_valid             ( ), // 1-bit valid input
  // Interface: call (conduit sink)
  .start                       ( ), // 1-bit valid input
  .busy                        ( ), // 1-bit stall output
  // Interface: return (conduit source)
  .done                        ( ), // 1-bit valid output
  .stall                       ( ), // 1-bit stall input
  // Interface: avs_result_buffer (avalon end)
  .avs_result_buffer_read      ( ), // 1-bit read input
  .avs_result_buffer_write     ( ), // 1-bit write input
  .avs_result_buffer_address   ( ), // 9-bit address input
  .avs_result_buffer_writedata ( ), // 32-bit writedata input
  .avs_result_buffer_byteenable( ), // 4-bit byteenable input
  .avs_result_buffer_readdata  ( )  // 32-bit readdata output
);
