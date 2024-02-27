package require -exact qsys 15.0
set_module_property NAME fir_filter_internal
set_module_property VERSION 1.0
set_module_property INTERNAL true
set_module_property GROUP HLS
set_module_property DISPLAY_NAME fir_filter_internal
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_assignment hls.cosim.name {fir_filter}

#### Synthesis fileset
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL fir_filter_internal
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file dspba_library_package.vhd VHDL PATH windows64/lib/dspba/Libraries/vhdl/base/dspba_library_package.vhd
add_fileset_file dspba_library.vhd VHDL PATH windows64/lib/dspba/Libraries/vhdl/base/dspba_library.vhd
add_fileset_file acl_data_fifo.v SYSTEM_VERILOG PATH ip/acl_data_fifo.v
add_fileset_file acl_fifo.v SYSTEM_VERILOG PATH ip/acl_fifo.v
add_fileset_file acl_ll_fifo.v SYSTEM_VERILOG PATH ip/acl_ll_fifo.v
add_fileset_file acl_ll_ram_fifo.v SYSTEM_VERILOG PATH ip/acl_ll_ram_fifo.v
add_fileset_file acl_valid_fifo_counter.v SYSTEM_VERILOG PATH ip/acl_valid_fifo_counter.v
add_fileset_file acl_dspba_valid_fifo_counter.v SYSTEM_VERILOG PATH ip/acl_dspba_valid_fifo_counter.v
add_fileset_file acl_staging_reg.v SYSTEM_VERILOG PATH ip/acl_staging_reg.v
add_fileset_file hld_fifo.sv SYSTEM_VERILOG PATH ip/hld_fifo.sv
add_fileset_file hld_fifo_zero_width.sv SYSTEM_VERILOG PATH ip/hld_fifo_zero_width.sv
add_fileset_file acl_high_speed_fifo.sv SYSTEM_VERILOG PATH ip/acl_high_speed_fifo.sv
add_fileset_file acl_low_latency_fifo.sv SYSTEM_VERILOG PATH ip/acl_low_latency_fifo.sv
add_fileset_file acl_zero_latency_fifo.sv SYSTEM_VERILOG PATH ip/acl_zero_latency_fifo.sv
add_fileset_file acl_fanout_pipeline.sv SYSTEM_VERILOG PATH ip/acl_fanout_pipeline.sv
add_fileset_file acl_std_synchronizer_nocut.v SYSTEM_VERILOG PATH ip/acl_std_synchronizer_nocut.v
add_fileset_file acl_tessellated_incr_decr_threshold.sv SYSTEM_VERILOG PATH ip/acl_tessellated_incr_decr_threshold.sv
add_fileset_file acl_tessellated_incr_lookahead.sv SYSTEM_VERILOG PATH ip/acl_tessellated_incr_lookahead.sv
add_fileset_file acl_reset_handler.sv SYSTEM_VERILOG PATH ip/acl_reset_handler.sv
add_fileset_file acl_lfsr.sv SYSTEM_VERILOG PATH ip/acl_lfsr.sv
add_fileset_file acl_pop.v SYSTEM_VERILOG PATH ip/acl_pop.v
add_fileset_file acl_push.v SYSTEM_VERILOG PATH ip/acl_push.v
add_fileset_file acl_token_fifo_counter.v SYSTEM_VERILOG PATH ip/acl_token_fifo_counter.v
add_fileset_file acl_pipeline.v SYSTEM_VERILOG PATH ip/acl_pipeline.v
add_fileset_file acl_dspba_buffer.v SYSTEM_VERILOG PATH ip/acl_dspba_buffer.v
add_fileset_file acl_enable_sink.v SYSTEM_VERILOG PATH ip/acl_enable_sink.v
add_fileset_file st_top.v SYSTEM_VERILOG PATH ip/st_top.v
add_fileset_file acl_full_detector.v SYSTEM_VERILOG PATH ip/acl_full_detector.v
add_fileset_file acl_reset_wire.v SYSTEM_VERILOG PATH ip/acl_reset_wire.v
add_fileset_file fir_filter_function_wrapper.vhd VHDL PATH ip/fir_filter_function_wrapper.vhd
add_fileset_file fir_filter_function.vhd VHDL PATH ip/fir_filter_function.vhd
add_fileset_file bb_fir_filter_B0_runOnce.vhd VHDL PATH ip/bb_fir_filter_B0_runOnce.vhd
add_fileset_file bb_fir_filter_B0_runOnce_stall_region.vhd VHDL PATH ip/bb_fir_filter_B0_runOnce_stall_region.vhd
add_fileset_file fir_filter_B0_runOnce_merge_reg.vhd VHDL PATH ip/fir_filter_B0_runOnce_merge_reg.vhd
add_fileset_file i_acl_pop_i1_wt_limpop_fir_filter0.vhd VHDL PATH ip/i_acl_pop_i1_wt_limpop_fir_filter0.vhd
add_fileset_file i_acl_pop_i1_wt_limpop_fir_filter_reg.vhd VHDL PATH ip/i_acl_pop_i1_wt_limpop_fir_filter_reg.vhd
add_fileset_file i_acl_push_i1_wt_limpush_fir_filter2.vhd VHDL PATH ip/i_acl_push_i1_wt_limpush_fir_filter2.vhd
add_fileset_file i_acl_push_i1_wt_limpush_fir_filter_reg.vhd VHDL PATH ip/i_acl_push_i1_wt_limpush_fir_filter_reg.vhd
add_fileset_file fir_filter_B0_runOnce_branch.vhd VHDL PATH ip/fir_filter_B0_runOnce_branch.vhd
add_fileset_file fir_filter_B0_runOnce_merge.vhd VHDL PATH ip/fir_filter_B0_runOnce_merge.vhd
add_fileset_file bb_fir_filter_B1_start.vhd VHDL PATH ip/bb_fir_filter_B1_start.vhd
add_fileset_file bb_fir_filter_B1_start_stall_region.vhd VHDL PATH ip/bb_fir_filter_B1_start_stall_region.vhd
add_fileset_file fir_filter_B1_start_merge_reg.vhd VHDL PATH ip/fir_filter_B1_start_merge_reg.vhd
add_fileset_file i_iord_bl_fir_in_unnamed_fir_filter2_fir_filter13.vhd VHDL PATH ip/i_iord_bl_fir_in_unnamed_fir_filter2_fir_filter13.vhd
add_fileset_file i_iowr_bl_fir_out_unnamed_fir_filter3_fir_filter171.vhd VHDL PATH ip/i_iowr_bl_fir_out_unnamed_fir_filter3_fir_filter171.vhd
add_fileset_file i_sfc_c0_wt_entry_fir_filter_c0_enter_fir_filter.vhd VHDL PATH ip/i_sfc_c0_wt_entry_fir_filter_c0_enter_fir_filter.vhd
add_fileset_file i_acl_sfc_exit_c0_wt_entry_fir_filter_c0A0Zxit_fir_filter10.vhd VHDL PATH ip/i_acl_sfc_exit_c0_wt_entry_fir_filter_c0A0Zxit_fir_filter10.vhd
add_fileset_file i_sfc_logic_c0_wt_entry_fir_filter_c0_enter_fir_filter4.vhd VHDL PATH ip/i_sfc_logic_c0_wt_entry_fir_filter_c0_enter_fir_filter4.vhd
add_fileset_file i_acl_pipeline_keep_going_fir_filter6.vhd VHDL PATH ip/i_acl_pipeline_keep_going_fir_filter6.vhd
add_fileset_file i_acl_push_i1_notexitcond_fir_filter8.vhd VHDL PATH ip/i_acl_push_i1_notexitcond_fir_filter8.vhd
add_fileset_file i_sfc_c1_wt_entry_fir_filter_c1_enter_fir_filter.vhd VHDL PATH ip/i_sfc_c1_wt_entry_fir_filter_c1_enter_fir_filter.vhd
add_fileset_file i_acl_sfc_exit_c1_wt_entry_fir_filter_c1A0Zit_fir_filter170.vhd VHDL PATH ip/i_acl_sfc_exit_c1_wt_entry_fir_filter_c1A0Zit_fir_filter170.vhd
add_fileset_file i_acl_sfc_exit_c1_wt_entry_fir_filter_c1A0Zter173_data_fifo.vhd VHDL PATH ip/i_acl_sfc_exit_c1_wt_entry_fir_filter_c1A0Zter173_data_fifo.vhd
add_fileset_file i_acl_sfc_exit_c1_wt_entry_fir_filter_c1A0Zer_full_detector.vhd VHDL PATH ip/i_acl_sfc_exit_c1_wt_entry_fir_filter_c1A0Zer_full_detector.vhd
add_fileset_file i_sfc_logic_c1_wt_entry_fir_filter_c1_enA0Zter_fir_filter14.vhd VHDL PATH ip/i_sfc_logic_c1_wt_entry_fir_filter_c1_enA0Zter_fir_filter14.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp33_fir_filter82.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp33_fir_filter82.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp23_fir_filter42.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp23_fir_filter42.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp22_fir_filter38.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp22_fir_filter38.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp21_fir_filter34.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp21_fir_filter34.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp20_fir_filter30.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp20_fir_filter30.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp19_fir_filter26.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp19_fir_filter26.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp18_fir_filter22.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp18_fir_filter22.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp32_fir_filter78.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp32_fir_filter78.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp31_fir_filter74.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp31_fir_filter74.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp30_fir_filter70.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp30_fir_filter70.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp29_fir_filter66.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp29_fir_filter66.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp28_fir_filter62.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp28_fir_filter62.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp27_fir_filter58.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp27_fir_filter58.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp26_fir_filter54.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp26_fir_filter54.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp25_fir_filter50.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp25_fir_filter50.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp24_fir_filter46.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp24_fir_filter46.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z17_fir_filter122.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z17_fir_filter122.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zp7_fir_filter102.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zp7_fir_filter102.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zp6_fir_filter100.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zp6_fir_filter100.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zop5_fir_filter98.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zop5_fir_filter98.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zop4_fir_filter96.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zop4_fir_filter96.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zop3_fir_filter94.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zop3_fir_filter94.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z16_fir_filter120.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z16_fir_filter120.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z15_fir_filter118.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z15_fir_filter118.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z14_fir_filter116.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z14_fir_filter116.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z13_fir_filter114.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z13_fir_filter114.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z12_fir_filter112.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z12_fir_filter112.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z11_fir_filter110.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z11_fir_filter110.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z10_fir_filter108.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z10_fir_filter108.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zp9_fir_filter106.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zp9_fir_filter106.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zp8_fir_filter104.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zp8_fir_filter104.vhd
add_fileset_file i_acl_pop_i32_s1_fir_filter_4ia_addr_0_pA0Zp34_fir_filter16.vhd VHDL PATH ip/i_acl_pop_i32_s1_fir_filter_4ia_addr_0_pA0Zp34_fir_filter16.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh33_fir_filter84.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh33_fir_filter84.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh23_fir_filter44.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh23_fir_filter44.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh22_fir_filter40.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh22_fir_filter40.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh21_fir_filter36.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh21_fir_filter36.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh20_fir_filter32.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh20_fir_filter32.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh19_fir_filter28.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh19_fir_filter28.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh18_fir_filter24.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh18_fir_filter24.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh32_fir_filter80.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh32_fir_filter80.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh31_fir_filter76.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh31_fir_filter76.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh30_fir_filter72.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh30_fir_filter72.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh29_fir_filter68.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh29_fir_filter68.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh28_fir_filter64.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh28_fir_filter64.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh27_fir_filter60.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh27_fir_filter60.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh26_fir_filter56.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh26_fir_filter56.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh25_fir_filter52.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh25_fir_filter52.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh24_fir_filter48.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh24_fir_filter48.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z17_fir_filter124.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z17_fir_filter124.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh7_fir_filter144.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh7_fir_filter144.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh6_fir_filter146.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh6_fir_filter146.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh5_fir_filter148.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh5_fir_filter148.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh4_fir_filter150.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh4_fir_filter150.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh3_fir_filter152.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh3_fir_filter152.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z16_fir_filter126.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z16_fir_filter126.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z15_fir_filter128.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z15_fir_filter128.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z14_fir_filter130.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z14_fir_filter130.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z13_fir_filter132.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z13_fir_filter132.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z12_fir_filter134.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z12_fir_filter134.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z11_fir_filter136.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z11_fir_filter136.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z10_fir_filter138.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z10_fir_filter138.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh9_fir_filter140.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh9_fir_filter140.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh8_fir_filter142.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh8_fir_filter142.vhd
add_fileset_file i_acl_push_i32_s1_fir_filter_4ia_addr_0_A0Zh34_fir_filter90.vhd VHDL PATH ip/i_acl_push_i32_s1_fir_filter_4ia_addr_0_A0Zh34_fir_filter90.vhd
add_fileset_file i_iord_bl_do_unnamed_fir_filter1_fir_filter12.vhd VHDL PATH ip/i_iord_bl_do_unnamed_fir_filter1_fir_filter12.vhd
add_fileset_file i_iowr_bl_return_unnamed_fir_filter4_fir_filter172.vhd VHDL PATH ip/i_iowr_bl_return_unnamed_fir_filter4_fir_filter172.vhd
add_fileset_file fir_filter_B1_start_branch.vhd VHDL PATH ip/fir_filter_B1_start_branch.vhd
add_fileset_file fir_filter_B1_start_merge.vhd VHDL PATH ip/fir_filter_B1_start_merge.vhd
add_fileset_file i_acl_pipeline_keep_going_fir_filter_sr.vhd VHDL PATH ip/i_acl_pipeline_keep_going_fir_filter_sr.vhd
add_fileset_file i_acl_pipeline_keep_going_fir_filter_valid_fifo.vhd VHDL PATH ip/i_acl_pipeline_keep_going_fir_filter_valid_fifo.vhd
add_fileset_file fir_filter_internal.v SYSTEM_VERILOG PATH fir_filter_internal.v

#### Simulation fileset
add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL fir_filter_internal
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file dspba_library_package.vhd VHDL PATH windows64/lib/dspba/Libraries/vhdl/base/dspba_library_package.vhd
add_fileset_file dspba_library.vhd VHDL PATH windows64/lib/dspba/Libraries/vhdl/base/dspba_library.vhd
add_fileset_file acl_data_fifo.v SYSTEM_VERILOG PATH ip/acl_data_fifo.v
add_fileset_file acl_fifo.v SYSTEM_VERILOG PATH ip/acl_fifo.v
add_fileset_file acl_ll_fifo.v SYSTEM_VERILOG PATH ip/acl_ll_fifo.v
add_fileset_file acl_ll_ram_fifo.v SYSTEM_VERILOG PATH ip/acl_ll_ram_fifo.v
add_fileset_file acl_valid_fifo_counter.v SYSTEM_VERILOG PATH ip/acl_valid_fifo_counter.v
add_fileset_file acl_dspba_valid_fifo_counter.v SYSTEM_VERILOG PATH ip/acl_dspba_valid_fifo_counter.v
add_fileset_file acl_staging_reg.v SYSTEM_VERILOG PATH ip/acl_staging_reg.v
add_fileset_file hld_fifo.sv SYSTEM_VERILOG PATH ip/hld_fifo.sv
add_fileset_file hld_fifo_zero_width.sv SYSTEM_VERILOG PATH ip/hld_fifo_zero_width.sv
add_fileset_file acl_high_speed_fifo.sv SYSTEM_VERILOG PATH ip/acl_high_speed_fifo.sv
add_fileset_file acl_low_latency_fifo.sv SYSTEM_VERILOG PATH ip/acl_low_latency_fifo.sv
add_fileset_file acl_zero_latency_fifo.sv SYSTEM_VERILOG PATH ip/acl_zero_latency_fifo.sv
add_fileset_file acl_fanout_pipeline.sv SYSTEM_VERILOG PATH ip/acl_fanout_pipeline.sv
add_fileset_file acl_std_synchronizer_nocut.v SYSTEM_VERILOG PATH ip/acl_std_synchronizer_nocut.v
add_fileset_file acl_tessellated_incr_decr_threshold.sv SYSTEM_VERILOG PATH ip/acl_tessellated_incr_decr_threshold.sv
add_fileset_file acl_tessellated_incr_lookahead.sv SYSTEM_VERILOG PATH ip/acl_tessellated_incr_lookahead.sv
add_fileset_file acl_reset_handler.sv SYSTEM_VERILOG PATH ip/acl_reset_handler.sv
add_fileset_file acl_lfsr.sv SYSTEM_VERILOG PATH ip/acl_lfsr.sv
add_fileset_file acl_pop.v SYSTEM_VERILOG PATH ip/acl_pop.v
add_fileset_file acl_push.v SYSTEM_VERILOG PATH ip/acl_push.v
add_fileset_file acl_token_fifo_counter.v SYSTEM_VERILOG PATH ip/acl_token_fifo_counter.v
add_fileset_file acl_pipeline.v SYSTEM_VERILOG PATH ip/acl_pipeline.v
add_fileset_file acl_dspba_buffer.v SYSTEM_VERILOG PATH ip/acl_dspba_buffer.v
add_fileset_file acl_enable_sink.v SYSTEM_VERILOG PATH ip/acl_enable_sink.v
add_fileset_file st_top.v SYSTEM_VERILOG PATH ip/st_top.v
add_fileset_file acl_full_detector.v SYSTEM_VERILOG PATH ip/acl_full_detector.v
add_fileset_file acl_reset_wire.v SYSTEM_VERILOG PATH ip/acl_reset_wire.v
add_fileset_file fir_filter_function_wrapper.vhd VHDL PATH ip/fir_filter_function_wrapper.vhd
add_fileset_file fir_filter_function.vhd VHDL PATH ip/fir_filter_function.vhd
add_fileset_file bb_fir_filter_B0_runOnce.vhd VHDL PATH ip/bb_fir_filter_B0_runOnce.vhd
add_fileset_file bb_fir_filter_B0_runOnce_stall_region.vhd VHDL PATH ip/bb_fir_filter_B0_runOnce_stall_region.vhd
add_fileset_file fir_filter_B0_runOnce_merge_reg.vhd VHDL PATH ip/fir_filter_B0_runOnce_merge_reg.vhd
add_fileset_file i_acl_pop_i1_wt_limpop_fir_filter0.vhd VHDL PATH ip/i_acl_pop_i1_wt_limpop_fir_filter0.vhd
add_fileset_file i_acl_pop_i1_wt_limpop_fir_filter_reg.vhd VHDL PATH ip/i_acl_pop_i1_wt_limpop_fir_filter_reg.vhd
add_fileset_file i_acl_push_i1_wt_limpush_fir_filter2.vhd VHDL PATH ip/i_acl_push_i1_wt_limpush_fir_filter2.vhd
add_fileset_file i_acl_push_i1_wt_limpush_fir_filter_reg.vhd VHDL PATH ip/i_acl_push_i1_wt_limpush_fir_filter_reg.vhd
add_fileset_file fir_filter_B0_runOnce_branch.vhd VHDL PATH ip/fir_filter_B0_runOnce_branch.vhd
add_fileset_file fir_filter_B0_runOnce_merge.vhd VHDL PATH ip/fir_filter_B0_runOnce_merge.vhd
add_fileset_file bb_fir_filter_B1_start.vhd VHDL PATH ip/bb_fir_filter_B1_start.vhd
add_fileset_file bb_fir_filter_B1_start_stall_region.vhd VHDL PATH ip/bb_fir_filter_B1_start_stall_region.vhd
add_fileset_file fir_filter_B1_start_merge_reg.vhd VHDL PATH ip/fir_filter_B1_start_merge_reg.vhd
add_fileset_file i_iord_bl_fir_in_unnamed_fir_filter2_fir_filter13.vhd VHDL PATH ip/i_iord_bl_fir_in_unnamed_fir_filter2_fir_filter13.vhd
add_fileset_file i_iowr_bl_fir_out_unnamed_fir_filter3_fir_filter171.vhd VHDL PATH ip/i_iowr_bl_fir_out_unnamed_fir_filter3_fir_filter171.vhd
add_fileset_file i_sfc_c0_wt_entry_fir_filter_c0_enter_fir_filter.vhd VHDL PATH ip/i_sfc_c0_wt_entry_fir_filter_c0_enter_fir_filter.vhd
add_fileset_file i_acl_sfc_exit_c0_wt_entry_fir_filter_c0A0Zxit_fir_filter10.vhd VHDL PATH ip/i_acl_sfc_exit_c0_wt_entry_fir_filter_c0A0Zxit_fir_filter10.vhd
add_fileset_file i_sfc_logic_c0_wt_entry_fir_filter_c0_enter_fir_filter4.vhd VHDL PATH ip/i_sfc_logic_c0_wt_entry_fir_filter_c0_enter_fir_filter4.vhd
add_fileset_file i_acl_pipeline_keep_going_fir_filter6.vhd VHDL PATH ip/i_acl_pipeline_keep_going_fir_filter6.vhd
add_fileset_file i_acl_push_i1_notexitcond_fir_filter8.vhd VHDL PATH ip/i_acl_push_i1_notexitcond_fir_filter8.vhd
add_fileset_file i_sfc_c1_wt_entry_fir_filter_c1_enter_fir_filter.vhd VHDL PATH ip/i_sfc_c1_wt_entry_fir_filter_c1_enter_fir_filter.vhd
add_fileset_file i_acl_sfc_exit_c1_wt_entry_fir_filter_c1A0Zit_fir_filter170.vhd VHDL PATH ip/i_acl_sfc_exit_c1_wt_entry_fir_filter_c1A0Zit_fir_filter170.vhd
add_fileset_file i_acl_sfc_exit_c1_wt_entry_fir_filter_c1A0Zter173_data_fifo.vhd VHDL PATH ip/i_acl_sfc_exit_c1_wt_entry_fir_filter_c1A0Zter173_data_fifo.vhd
add_fileset_file i_acl_sfc_exit_c1_wt_entry_fir_filter_c1A0Zer_full_detector.vhd VHDL PATH ip/i_acl_sfc_exit_c1_wt_entry_fir_filter_c1A0Zer_full_detector.vhd
add_fileset_file i_sfc_logic_c1_wt_entry_fir_filter_c1_enA0Zter_fir_filter14.vhd VHDL PATH ip/i_sfc_logic_c1_wt_entry_fir_filter_c1_enA0Zter_fir_filter14.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp33_fir_filter82.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp33_fir_filter82.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp23_fir_filter42.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp23_fir_filter42.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp22_fir_filter38.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp22_fir_filter38.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp21_fir_filter34.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp21_fir_filter34.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp20_fir_filter30.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp20_fir_filter30.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp19_fir_filter26.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp19_fir_filter26.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp18_fir_filter22.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp18_fir_filter22.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp32_fir_filter78.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp32_fir_filter78.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp31_fir_filter74.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp31_fir_filter74.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp30_fir_filter70.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp30_fir_filter70.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp29_fir_filter66.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp29_fir_filter66.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp28_fir_filter62.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp28_fir_filter62.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp27_fir_filter58.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp27_fir_filter58.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp26_fir_filter54.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp26_fir_filter54.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp25_fir_filter50.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp25_fir_filter50.vhd
add_fileset_file i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp24_fir_filter46.vhd VHDL PATH ip/i_acl_pop_i16_coeffs_fir_filter_4qbv_ac_A0Zp24_fir_filter46.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z17_fir_filter122.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z17_fir_filter122.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zp7_fir_filter102.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zp7_fir_filter102.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zp6_fir_filter100.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zp6_fir_filter100.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zop5_fir_filter98.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zop5_fir_filter98.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zop4_fir_filter96.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zop4_fir_filter96.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zop3_fir_filter94.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zop3_fir_filter94.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z16_fir_filter120.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z16_fir_filter120.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z15_fir_filter118.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z15_fir_filter118.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z14_fir_filter116.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z14_fir_filter116.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z13_fir_filter114.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z13_fir_filter114.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z12_fir_filter112.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z12_fir_filter112.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z11_fir_filter110.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z11_fir_filter110.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z10_fir_filter108.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Z10_fir_filter108.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zp9_fir_filter106.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zp9_fir_filter106.vhd
add_fileset_file i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zp8_fir_filter104.vhd VHDL PATH ip/i_acl_pop_i16_taps_fir_filter_4pav_ac_fiA0Zp8_fir_filter104.vhd
add_fileset_file i_acl_pop_i32_s1_fir_filter_4ia_addr_0_pA0Zp34_fir_filter16.vhd VHDL PATH ip/i_acl_pop_i32_s1_fir_filter_4ia_addr_0_pA0Zp34_fir_filter16.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh33_fir_filter84.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh33_fir_filter84.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh23_fir_filter44.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh23_fir_filter44.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh22_fir_filter40.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh22_fir_filter40.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh21_fir_filter36.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh21_fir_filter36.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh20_fir_filter32.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh20_fir_filter32.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh19_fir_filter28.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh19_fir_filter28.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh18_fir_filter24.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh18_fir_filter24.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh32_fir_filter80.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh32_fir_filter80.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh31_fir_filter76.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh31_fir_filter76.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh30_fir_filter72.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh30_fir_filter72.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh29_fir_filter68.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh29_fir_filter68.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh28_fir_filter64.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh28_fir_filter64.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh27_fir_filter60.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh27_fir_filter60.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh26_fir_filter56.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh26_fir_filter56.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh25_fir_filter52.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh25_fir_filter52.vhd
add_fileset_file i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh24_fir_filter48.vhd VHDL PATH ip/i_acl_push_i16_coeffs_fir_filter_4qbv_acA0Zh24_fir_filter48.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z17_fir_filter124.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z17_fir_filter124.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh7_fir_filter144.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh7_fir_filter144.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh6_fir_filter146.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh6_fir_filter146.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh5_fir_filter148.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh5_fir_filter148.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh4_fir_filter150.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh4_fir_filter150.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh3_fir_filter152.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh3_fir_filter152.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z16_fir_filter126.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z16_fir_filter126.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z15_fir_filter128.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z15_fir_filter128.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z14_fir_filter130.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z14_fir_filter130.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z13_fir_filter132.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z13_fir_filter132.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z12_fir_filter134.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z12_fir_filter134.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z11_fir_filter136.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z11_fir_filter136.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z10_fir_filter138.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Z10_fir_filter138.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh9_fir_filter140.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh9_fir_filter140.vhd
add_fileset_file i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh8_fir_filter142.vhd VHDL PATH ip/i_acl_push_i16_taps_fir_filter_4pav_ac_fA0Zh8_fir_filter142.vhd
add_fileset_file i_acl_push_i32_s1_fir_filter_4ia_addr_0_A0Zh34_fir_filter90.vhd VHDL PATH ip/i_acl_push_i32_s1_fir_filter_4ia_addr_0_A0Zh34_fir_filter90.vhd
add_fileset_file i_iord_bl_do_unnamed_fir_filter1_fir_filter12.vhd VHDL PATH ip/i_iord_bl_do_unnamed_fir_filter1_fir_filter12.vhd
add_fileset_file i_iowr_bl_return_unnamed_fir_filter4_fir_filter172.vhd VHDL PATH ip/i_iowr_bl_return_unnamed_fir_filter4_fir_filter172.vhd
add_fileset_file fir_filter_B1_start_branch.vhd VHDL PATH ip/fir_filter_B1_start_branch.vhd
add_fileset_file fir_filter_B1_start_merge.vhd VHDL PATH ip/fir_filter_B1_start_merge.vhd
add_fileset_file i_acl_pipeline_keep_going_fir_filter_sr.vhd VHDL PATH ip/i_acl_pipeline_keep_going_fir_filter_sr.vhd
add_fileset_file i_acl_pipeline_keep_going_fir_filter_valid_fifo.vhd VHDL PATH ip/i_acl_pipeline_keep_going_fir_filter_valid_fifo.vhd
add_fileset_file fir_filter_internal.v SYSTEM_VERILOG PATH fir_filter_internal.v

#### Primary clock for the component
add_interface clock clock end
set_interface_property clock ENABLED true
set_interface_assignment clock hls.cosim.name {$clock}
add_interface_port clock clock clk input 1

#### Primary reset for the component
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_assignment reset hls.cosim.name {$reset}
add_interface_port reset resetn reset_n input 1

#### Streaming interface for fir_in
add_interface fir_in avalon_streaming sink
set_interface_property fir_in associatedClock clock
set_interface_property fir_in associatedReset reset
set_interface_property fir_in maxChannel 0
set_interface_property fir_in readyLatency 0
set_interface_property fir_in dataBitsPerSymbol 16
set_interface_property fir_in firstSymbolInHighOrderBits false
set_interface_assignment fir_in hls.cosim.name {fir_in}
add_interface_port fir_in fir_in_data data input 16
add_interface_port fir_in fir_in_ready ready output 1
add_interface_port fir_in fir_in_valid valid input 1

#### Streaming interface for fir_out
add_interface fir_out avalon_streaming source
set_interface_property fir_out associatedClock clock
set_interface_property fir_out associatedReset reset
set_interface_property fir_out maxChannel 0
set_interface_property fir_out readyLatency 0
set_interface_property fir_out dataBitsPerSymbol 32
set_interface_property fir_out firstSymbolInHighOrderBits false
set_interface_assignment fir_out hls.cosim.name {fir_out}
add_interface_port fir_out fir_out_data data output 32
add_interface_port fir_out fir_out_ready ready input 1
add_interface_port fir_out fir_out_valid valid output 1

#### The component invocation protocol interface (call)
add_interface call conduit sink
set_interface_property call associatedClock clock
set_interface_property call associatedReset reset
set_interface_assignment call hls.cosim.name {$call}
add_interface_port call start valid input 1
add_interface_port call busy stall output 1

#### The component return protocol interface (return)
add_interface return conduit source
set_interface_property return associatedClock clock
set_interface_property return associatedReset reset
set_interface_assignment return hls.cosim.name {$return}
add_interface_port return done valid output 1
add_interface_port return stall stall input 1

#### Quartus settings (QIP strings)
set_qip_strings { "set_instance_assignment -entity \"%entityName%\" -library \"%libraryName%\" -name AUTO_SHIFT_REGISTER_RECOGNITION OFF -to *_NO_SHIFT_REG*"  }