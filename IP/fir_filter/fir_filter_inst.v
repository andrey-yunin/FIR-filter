// Example instance of the top level module for: 
//     fir_filter
// To include this component in your design, include: 
//     fir_filter.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

fir_filter fir_filter_inst (
  // Interface: clock (clock end)
  .clock        ( ), // 1-bit clk input
  // Interface: reset (reset end)
  .resetn       ( ), // 1-bit reset_n input
  // Interface: fir_in (avalon_streaming sink)
  .fir_in_data  ( ), // 16-bit data input
  .fir_in_ready ( ), // 1-bit ready output
  .fir_in_valid ( ), // 1-bit valid input
  // Interface: fir_out (avalon_streaming source)
  .fir_out_data ( ), // 32-bit data output
  .fir_out_ready( ), // 1-bit ready input
  .fir_out_valid( ), // 1-bit valid output
  // Interface: call (conduit sink)
  .start        ( ), // 1-bit valid input
  .busy         ( ), // 1-bit stall output
  // Interface: return (conduit source)
  .done         ( ), // 1-bit valid output
  .stall        ( )  // 1-bit stall input
);
