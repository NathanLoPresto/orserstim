
T
Command: %s
53*	vivadotcl2#
phys_opt_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a75t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a75t2default:defaultZ17-349h px� 
�
CPhysical synthesis in post route mode ( %s%% nets are fully routed)99*	vivadotcl2
100.02default:defaultZ4-241h px� 
�
^PhysOpt_Tcl_Interface Runtime Before Starting Physical Synthesis Task | CPU: %ss |  WALL: %ss
566*	vivadotcl2
31.002default:default2
17.052default:defaultZ4-1435h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2 
00:00:00.0252default:default2
2981.6482default:default2
0.0002default:defaultZ17-268h px� 
a

Starting %s Task
103*constraints2&
Physical Synthesis2default:defaultZ18-103h px� 
�

Phase %s%s
101*constraints2
1 2default:default25
!Physical Synthesis Initialization2default:defaultZ18-101h px� 
�
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
22default:defaultZ32-721h px� 
�
:%s %s Timing Summary | WNS=%s | TNS=%s | WHS=%s | THS=%s |342*physynth2
Current2default:default2
 2default:default2
-10.5132default:default2

-56457.3642default:default2
0.0502default:default2
0.0002default:defaultZ32-668h px� 
U
@Phase 1 Physical Synthesis Initialization | Checksum: 25eb9a5e6
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:35 ; elapsed = 00:00:18 . Memory (MB): peak = 2981.648 ; gain = 0.0002default:defaulth px� 
�
�WARNING: Physical Optimization has determined that the magnitude of the negative slack is too large and it is highly unlikely that slack will be improved. Post-Route Physical Optimization is most effective when WNS is above -0.5ns400*physynthZ32-745h px� 
{

Phase %s%s
101*constraints2
2 2default:default2.
Critical Path Optimization2default:defaultZ18-101h px� 
�
:%s %s Timing Summary | WNS=%s | TNS=%s | WHS=%s | THS=%s |342*physynth2
Current2default:default2
 2default:default2
-10.5132default:default2

-56457.3642default:default2
0.0502default:default2
0.0002default:defaultZ32-668h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2

mmcm0_clk02default:default28
wo03/wirehold[0]wo03/wirehold[0]2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2

mmcm0_clk02default:default2�
?u_ddr3_256_32/u_ddr3_256_32_mig/u_ddr3_infrastructure/clk_pll_i?u_ddr3_256_32/u_ddr3_256_32_mig/u_ddr3_infrastructure/clk_pll_i2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2

mmcm0_clk02default:default2X
 ddr3_ui_0/adc_data_count[0]_repN ddr3_ui_0/adc_data_count[0]_repN2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2&
clk_out1_clk_wiz_02default:default2�
6ad7961_gen[2].adc7961/serial_present_state_reg[1]_0[0]6ad7961_gen[2].adc7961/serial_present_state_reg[1]_0[0]2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2&
clk_out1_clk_wiz_02default:default26
okHI/mmcm0_clk0okHI/mmcm0_clk02default:default8Z32-953h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-5.6952default:default2&
clk_out1_clk_wiz_02default:default2`
$ad7961_sync_reset/ep_trigger_reg[19]$ad7961_sync_reset/ep_trigger_reg[19]2default:default8Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2&
clk_out1_clk_wiz_02default:default2r
-ad7961_gen[2].adc7961/serial_present_state[0]-ad7961_gen[2].adc7961/serial_present_state[0]2default:default8Z32-953h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-5.6832default:default2&
clk_out1_clk_wiz_02default:default2`
$ad7961_sync_reset/ep_trigger_reg[19]$ad7961_sync_reset/ep_trigger_reg[19]2default:default8Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2&
clk_out1_clk_wiz_02default:default2t
.ad7961_gen[2].adc7961/serial_read_done_s_reg_0.ad7961_gen[2].adc7961/serial_read_done_s_reg_02default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2&
clk_out1_clk_wiz_02default:default2`
$ad7961_sync_reset/ep_trigger_reg[19]$ad7961_sync_reset/ep_trigger_reg[19]2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2&
clk_out1_clk_wiz_02default:default2~
3ad7961_gen[2].adc7961/serial_read_done_s_i_1__0_n_03ad7961_gen[2].adc7961/serial_read_done_s_i_1__0_n_02default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2&
clk_out1_clk_wiz_02default:default2<
wi1/ep_dataout[24]wi1/ep_dataout[24]2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
sys_clk2default:default2�
Mdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b2_section1_reg_reg_n_0_[0]Mdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b2_section1_reg_reg_n_0_[0]2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
sys_clk2default:default2V
adc_pll/inst/clk_out1_clk_wiz_0adc_pll/inst/clk_out1_clk_wiz_02default:default8Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
Adac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b2_section1_regAdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b2_section1_reg2default:default2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b2_section1_reg[31]_i_1_comp	Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b2_section1_reg[31]_i_1_comp2default:default8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-5.4792default:default2
sys_clk2default:default2�
Ddac_ad5453_gen[0].spi_fifo0/coeff_rd_0/FSM_sequential_state_reg[1]_0Ddac_ad5453_gen[0].spi_fifo0/coeff_rd_0/FSM_sequential_state_reg[1]_02default:default8Z32-952h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Mdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[0]Mdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[0]2default:default2�
Hdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[0]	Hdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[0]2default:default8Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-5.4792default:default2
sys_clk2default:default2�
Mdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[0]Mdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[0]2default:default8Z32-952h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[11]Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[11]2default:default2�
Idac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[11]	Idac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[11]2default:default8Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-5.4792default:default2
sys_clk2default:default2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[11]Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[11]2default:default8Z32-952h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[13]Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[13]2default:default2�
Idac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[13]	Idac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[13]2default:default8Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-5.4792default:default2
sys_clk2default:default2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[13]Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[13]2default:default8Z32-952h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[14]Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[14]2default:default2�
Idac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[14]	Idac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[14]2default:default8Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-5.4792default:default2
sys_clk2default:default2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[14]Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[14]2default:default8Z32-952h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[16]Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[16]2default:default2�
Idac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[16]	Idac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[16]2default:default8Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-5.4792default:default2
sys_clk2default:default2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[16]Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[16]2default:default8Z32-952h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[17]Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[17]2default:default2�
Idac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[17]	Idac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[17]2default:default8Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-5.4792default:default2
sys_clk2default:default2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[17]Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[17]2default:default8Z32-952h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[25]Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[25]2default:default2�
Idac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[25]	Idac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[25]2default:default8Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-5.4792default:default2
sys_clk2default:default2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[25]Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[25]2default:default8Z32-952h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Mdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[9]Mdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[9]2default:default2�
Hdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[9]	Hdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[9]2default:default8Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-5.4422default:default2
sys_clk2default:default2�
Mdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[9]Mdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[9]2default:default8Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
sys_clk2default:default2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[10]Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[10]2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
sys_clk2default:default2�
Ddac_ad5453_gen[0].spi_fifo0/coeff_rd_0/FSM_sequential_state_reg[1]_0Ddac_ad5453_gen[0].spi_fifo0/coeff_rd_0/FSM_sequential_state_reg[1]_02default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
sys_clk2default:default2�
Ddac_ad5453_gen[0].filter_spi_mux_bus_fast_dac/filter_spi_data[0][16]Ddac_ad5453_gen[0].filter_spi_mux_bus_fast_dac/filter_spi_data[0][16]2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
sys_clk2default:default2�
Hdac_ad5453_gen[0].filter_spi_mux_bus_fast_dac/input_register[15]_i_7_n_0Hdac_ad5453_gen[0].filter_spi_mux_bus_fast_dac/input_register[15]_i_7_n_02default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
sys_clk2default:default2F
Timing/write_en_adc_o_1Timing/write_en_adc_o_12default:default8Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
Timing/write_en_adc_o_1Timing/write_en_adc_o_12default:default2^
#Timing/cmd_data_in_reg[13]_i_9_comp	#Timing/cmd_data_in_reg[13]_i_9_comp2default:default8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-4.9692default:default2
sys_clk2default:default2^
#Timing/cmd_data_in_reg[13]_i_12_n_0#Timing/cmd_data_in_reg[13]_i_12_n_02default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-4.9582default:default2
sys_clk2default:default2F
Timing/write_en_adc_o_3Timing/write_en_adc_o_32default:default8Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
sys_clk2default:default2F
Timing/write_en_adc_o_3Timing/write_en_adc_o_32default:default8Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
Timing/write_en_adc_o_3Timing/write_en_adc_o_32default:default2^
#Timing/cmd_data_in_reg[13]_i_7_comp	#Timing/cmd_data_in_reg[13]_i_7_comp2default:default8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-4.8272default:default2
sys_clk2default:default2^
#Timing/cmd_data_in_reg[13]_i_10_n_0#Timing/cmd_data_in_reg[13]_i_10_n_02default:default8Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
sys_clk2default:default2F
Timing/write_en_adc_o_2Timing/write_en_adc_o_22default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
sys_clk2default:default2^
#Timing/cmd_data_in_reg[13]_i_11_n_0#Timing/cmd_data_in_reg[13]_i_11_n_02default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
sys_clk2default:default2�
Adac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_regAdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2%
**async_default**2default:default2l
*ad7961_gen[0].adc7961/sclk_echo_cnt_reg[0]*ad7961_gen[0].adc7961/sclk_echo_cnt_reg[0]2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2%
**async_default**2default:default2D
Timing/adc_tcyc_cnt[8]Timing/adc_tcyc_cnt[8]2default:default8Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth20
Timing/AR[0]Timing/AR[0]2default:default2^
#Timing/Clock_Out_OBUFDS_i_2__1_comp	#Timing/Clock_Out_OBUFDS_i_2__1_comp2default:default8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-3.6802default:default2%
**async_default**2default:default2`
$Timing/adc_tcyc_cnt_reg[21]_0_repN_1$Timing/adc_tcyc_cnt_reg[21]_0_repN_12default:default8Z32-952h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2l
*ad7961_gen[2].adc7961/sclk_echo_cnt_reg[0]*ad7961_gen[2].adc7961/sclk_echo_cnt_reg[0]2default:default2l
*ad7961_gen[2].adc7961/sclk_echo_cnt_reg[0]	*ad7961_gen[2].adc7961/sclk_echo_cnt_reg[0]2default:default8Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-3.6802default:default2%
**async_default**2default:default2l
*ad7961_gen[2].adc7961/sclk_echo_cnt_reg[0]*ad7961_gen[2].adc7961/sclk_echo_cnt_reg[0]2default:default8Z32-952h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2l
*ad7961_gen[2].adc7961/sclk_echo_cnt_reg[1]*ad7961_gen[2].adc7961/sclk_echo_cnt_reg[1]2default:default2l
*ad7961_gen[2].adc7961/sclk_echo_cnt_reg[1]	*ad7961_gen[2].adc7961/sclk_echo_cnt_reg[1]2default:default8Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-3.6802default:default2%
**async_default**2default:default2l
*ad7961_gen[2].adc7961/sclk_echo_cnt_reg[1]*ad7961_gen[2].adc7961/sclk_echo_cnt_reg[1]2default:default8Z32-952h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2l
*ad7961_gen[2].adc7961/sclk_echo_cnt_reg[2]*ad7961_gen[2].adc7961/sclk_echo_cnt_reg[2]2default:default2l
*ad7961_gen[2].adc7961/sclk_echo_cnt_reg[2]	*ad7961_gen[2].adc7961/sclk_echo_cnt_reg[2]2default:default8Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-3.6802default:default2%
**async_default**2default:default2l
*ad7961_gen[2].adc7961/sclk_echo_cnt_reg[2]*ad7961_gen[2].adc7961/sclk_echo_cnt_reg[2]2default:default8Z32-952h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2l
*ad7961_gen[2].adc7961/sclk_echo_cnt_reg[3]*ad7961_gen[2].adc7961/sclk_echo_cnt_reg[3]2default:default2l
*ad7961_gen[2].adc7961/sclk_echo_cnt_reg[3]	*ad7961_gen[2].adc7961/sclk_echo_cnt_reg[3]2default:default8Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-3.6802default:default2%
**async_default**2default:default2l
*ad7961_gen[2].adc7961/sclk_echo_cnt_reg[3]*ad7961_gen[2].adc7961/sclk_echo_cnt_reg[3]2default:default8Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2%
**async_default**2default:default2L
ad7961_gen[2].adc7961/Q[6]ad7961_gen[2].adc7961/Q[6]2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2%
**async_default**2default:default2`
$Timing/adc_tcyc_cnt_reg[21]_0_repN_9$Timing/adc_tcyc_cnt_reg[21]_0_repN_92default:default8Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2`
$Timing/adc_tcyc_cnt_reg[21]_0_repN_9$Timing/adc_tcyc_cnt_reg[21]_0_repN_92default:default2T
Timing/Cnv_Out_OBUFDS_i_2_comp	Timing/Cnv_Out_OBUFDS_i_2_comp2default:default8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-3.6072default:default2%
**async_default**2default:default2R
Timing/Cnv_Out_OBUFDS_i_8_n_0Timing/Cnv_Out_OBUFDS_i_8_n_02default:default8Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2%
**async_default**2default:default2P
Timing/adc_tcyc_cnt[17]_repNTiming/adc_tcyc_cnt[17]_repN2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2%
**async_default**2default:default2R
Timing/Cnv_Out_OBUFDS_i_7_n_0Timing/Cnv_Out_OBUFDS_i_7_n_02default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2%
**async_default**2default:default20
Timing/AR[0]Timing/AR[0]2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2%
**async_default**2default:default2&
clk_sysclk_sys2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2%
**async_default**2default:default2(
sys_clkpsys_clkp2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2

mmcm0_clk02default:default28
wo03/wirehold[0]wo03/wirehold[0]2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2

mmcm0_clk02default:default2�
?u_ddr3_256_32/u_ddr3_256_32_mig/u_ddr3_infrastructure/clk_pll_i?u_ddr3_256_32/u_ddr3_256_32_mig/u_ddr3_infrastructure/clk_pll_i2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2

mmcm0_clk02default:default2X
 ddr3_ui_0/adc_data_count[0]_repN ddr3_ui_0/adc_data_count[0]_repN2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2&
clk_out1_clk_wiz_02default:default2t
.ad7961_gen[2].adc7961/serial_read_done_s_reg_0.ad7961_gen[2].adc7961/serial_read_done_s_reg_02default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2&
clk_out1_clk_wiz_02default:default26
okHI/mmcm0_clk0okHI/mmcm0_clk02default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2&
clk_out1_clk_wiz_02default:default2`
$ad7961_sync_reset/ep_trigger_reg[19]$ad7961_sync_reset/ep_trigger_reg[19]2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2&
clk_out1_clk_wiz_02default:default2~
3ad7961_gen[2].adc7961/serial_read_done_s_i_1__0_n_03ad7961_gen[2].adc7961/serial_read_done_s_i_1__0_n_02default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2&
clk_out1_clk_wiz_02default:default2<
wi1/ep_dataout[24]wi1/ep_dataout[24]2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
sys_clk2default:default2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[10]Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[10]2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
sys_clk2default:default2V
adc_pll/inst/clk_out1_clk_wiz_0adc_pll/inst/clk_out1_clk_wiz_02default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
sys_clk2default:default2�
Ddac_ad5453_gen[0].spi_fifo0/coeff_rd_0/FSM_sequential_state_reg[1]_0Ddac_ad5453_gen[0].spi_fifo0/coeff_rd_0/FSM_sequential_state_reg[1]_02default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
sys_clk2default:default2�
Ddac_ad5453_gen[0].filter_spi_mux_bus_fast_dac/filter_spi_data[0][16]Ddac_ad5453_gen[0].filter_spi_mux_bus_fast_dac/filter_spi_data[0][16]2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
sys_clk2default:default2�
Hdac_ad5453_gen[0].filter_spi_mux_bus_fast_dac/input_register[15]_i_7_n_0Hdac_ad5453_gen[0].filter_spi_mux_bus_fast_dac/input_register[15]_i_7_n_02default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
sys_clk2default:default2F
Timing/write_en_adc_o_2Timing/write_en_adc_o_22default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
sys_clk2default:default2^
#Timing/cmd_data_in_reg[13]_i_11_n_0#Timing/cmd_data_in_reg[13]_i_11_n_02default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
sys_clk2default:default2�
Adac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_regAdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2%
**async_default**2default:default2l
*ad7961_gen[0].adc7961/sclk_echo_cnt_reg[0]*ad7961_gen[0].adc7961/sclk_echo_cnt_reg[0]2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2%
**async_default**2default:default2P
Timing/adc_tcyc_cnt[17]_repNTiming/adc_tcyc_cnt[17]_repN2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2%
**async_default**2default:default2R
Timing/Cnv_Out_OBUFDS_i_7_n_0Timing/Cnv_Out_OBUFDS_i_7_n_02default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2%
**async_default**2default:default20
Timing/AR[0]Timing/AR[0]2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2%
**async_default**2default:default2&
clk_sysclk_sys2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2%
**async_default**2default:default2(
sys_clkpsys_clkp2default:default8Z32-953h px� 
�
:%s %s Timing Summary | WNS=%s | TNS=%s | WHS=%s | THS=%s |342*physynth2
Current2default:default2
 2default:default2
-10.5132default:default2

-55196.7932default:default2
0.0322default:default2
0.0002default:defaultZ32-668h px� 
N
9Phase 2 Critical Path Optimization | Checksum: 25eb9a5e6
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:07:58 ; elapsed = 00:05:24 . Memory (MB): peak = 2981.648 ; gain = 0.0002default:defaulth px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2 
00:00:00.0182default:default2
2981.6482default:default2
0.0002default:defaultZ17-268h px� 
�
OPost Physical Optimization Timing Summary | WNS=%s | TNS=%s | WHS=%s | THS=%s |343*physynth2
-10.5132default:default2

-55196.7932default:default2
0.0322default:default2
0.0002default:defaultZ32-669h px� 
B
-
Summary of Physical Synthesis Optimizations
*commonh px� 
B
-============================================
*commonh px� 


*commonh px� 


*commonh px� 
�
�-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Optimization   |  WNS Gain (ns)  |  TNS Gain (ns)  |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Critical Path  |          0.000  |       1260.571  |            0  |              0  |                    20  |           0  |           1  |  00:05:05  |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0172default:default2
2981.6482default:default2
0.0002default:defaultZ17-268h px� 
J
5Ending Physical Synthesis Task | Checksum: 1684a5e1b
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:08:00 ; elapsed = 00:05:26 . Memory (MB): peak = 2981.648 ; gain = 0.0002default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1042default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
phys_opt_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
phys_opt_design: 2default:default2
00:08:592default:default2
00:05:582default:default2
2981.6482default:default2
0.0002default:defaultZ17-268h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:162default:default2
00:00:062default:default2
2981.6482default:default2
0.0002default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2,
report_design_analysis: 2default:default2
00:00:062default:default2
00:00:052default:default2
2981.6482default:default2
0.0002default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2|
hC:/Users/lopr5624/orserstim/fpga_XEM7310/fpga_XEM7310.runs/impl_1/top_level_module_postroute_physopt.dcp2default:defaultZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:242default:default2
00:00:152default:default2
2981.6482default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2�
�Executing : report_timing_summary -max_paths 10 -warn_on_violation -file top_level_module_timing_summary_postroute_physopted.rpt -pb top_level_module_timing_summary_postroute_physopted.pb -rpx top_level_module_timing_summary_postroute_physopted.rpx
2default:defaulth px� 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px� 
�
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px� 
�
}There are set_bus_skew constraint(s) in this design. Please run report_bus_skew to ensure that bus skew requirements are met.223*timingZ38-436h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2+
report_timing_summary: 2default:default2
00:00:312default:default2
00:00:172default:default2
2981.6482default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2�
�Executing : report_bus_skew -warn_on_violation -file top_level_module_bus_skew_postroute_physopted.rpt -pb top_level_module_bus_skew_postroute_physopted.pb -rpx top_level_module_bus_skew_postroute_physopted.rpx
2default:defaulth px� 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px� 


End Record