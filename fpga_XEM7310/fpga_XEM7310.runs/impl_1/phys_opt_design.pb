
q
Command: %s
53*	vivadotcl2@
,phys_opt_design -directive AggressiveExplore2default:defaultZ4-113h px� 
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
s
)Directive used for phys_opt_design is: %s68*	vivadotcl2%
AggressiveExplore2default:defaultZ4-137h px� 
�
^PhysOpt_Tcl_Interface Runtime Before Starting Physical Synthesis Task | CPU: %ss |  WALL: %ss
566*	vivadotcl2
22.002default:default2
11.902default:defaultZ4-1435h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0252default:default2
2541.6052default:default2
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
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.7252default:default2

-26244.6062default:defaultZ32-619h px� 
U
@Phase 1 Physical Synthesis Initialization | Checksum: 17e77bebe
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:11 ; elapsed = 00:00:05 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
z

Phase %s%s
101*constraints2
2 2default:default2-
SLR Crossing Optimization2default:defaultZ18-101h px� 
M
8Phase 2 SLR Crossing Optimization | Checksum: 17e77bebe
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:12 ; elapsed = 00:00:05 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.7252default:default2

-26244.6062default:defaultZ32-619h px� 
t

Phase %s%s
101*constraints2
3 2default:default2'
Fanout Optimization2default:defaultZ18-101h px� 
I
'No nets found for fanout-optimization.
64*physynthZ32-64h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
G
2Phase 3 Fanout Optimization | Checksum: 17e77bebe
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:13 ; elapsed = 00:00:06 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
�

Phase %s%s
101*constraints2
4 2default:default26
"Single Cell Placement Optimization2default:defaultZ18-101h px� 
�
=Identified %s candidate %s for placement-based optimization.
334*physynth2
752default:default2
nets2default:defaultZ32-660h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2P
ddr3_ui_0/adc_data_count[25]ddr3_ui_0/adc_data_count[25]2default:default2X
 ddr3_ui_0/adc_data_count_reg[25]	 ddr3_ui_0/adc_data_count_reg[25]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[25]wo03/wirehold[25]2default:default2B
wo03/wirehold_reg[25]	wo03/wirehold_reg[25]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2N
ddr3_ui_0/adc_data_count[9]ddr3_ui_0/adc_data_count[9]2default:default2V
ddr3_ui_0/adc_data_count_reg[9]	ddr3_ui_0/adc_data_count_reg[9]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[9]wo03/wirehold[9]2default:default2@
wo03/wirehold_reg[9]	wo03/wirehold_reg[9]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2P
ddr3_ui_0/adc_data_count[15]ddr3_ui_0/adc_data_count[15]2default:default2X
 ddr3_ui_0/adc_data_count_reg[15]	 ddr3_ui_0/adc_data_count_reg[15]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[15]wo03/wirehold[15]2default:default2B
wo03/wirehold_reg[15]	wo03/wirehold_reg[15]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2P
ddr3_ui_0/adc_data_count[17]ddr3_ui_0/adc_data_count[17]2default:default2X
 ddr3_ui_0/adc_data_count_reg[17]	 ddr3_ui_0/adc_data_count_reg[17]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2:
wo03/wirehold[17]wo03/wirehold[17]2default:default2B
wo03/wirehold_reg[17]	wo03/wirehold_reg[17]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2P
ddr3_ui_0/adc_data_count[12]ddr3_ui_0/adc_data_count[12]2default:default2X
 ddr3_ui_0/adc_data_count_reg[12]	 ddr3_ui_0/adc_data_count_reg[12]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2N
ddr3_ui_0/adc_data_count[2]ddr3_ui_0/adc_data_count[2]2default:default2V
ddr3_ui_0/adc_data_count_reg[2]	ddr3_ui_0/adc_data_count_reg[2]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[12]wo03/wirehold[12]2default:default2B
wo03/wirehold_reg[12]	wo03/wirehold_reg[12]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[2]wo03/wirehold[2]2default:default2@
wo03/wirehold_reg[2]	wo03/wirehold_reg[2]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2P
ddr3_ui_0/adc_data_count[22]ddr3_ui_0/adc_data_count[22]2default:default2X
 ddr3_ui_0/adc_data_count_reg[22]	 ddr3_ui_0/adc_data_count_reg[22]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2:
wo03/wirehold[22]wo03/wirehold[22]2default:default2B
wo03/wirehold_reg[22]	wo03/wirehold_reg[22]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ddr3_ui_0/adc_data_count[14]ddr3_ui_0/adc_data_count[14]2default:default2X
 ddr3_ui_0/adc_data_count_reg[14]	 ddr3_ui_0/adc_data_count_reg[14]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2:
wo03/wirehold[14]wo03/wirehold[14]2default:default2B
wo03/wirehold_reg[14]	wo03/wirehold_reg[14]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
fu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/phy_dout[21]fu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/phy_dout[21]2default:default2�
qu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/init_calib_complete_reg	qu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/init_calib_complete_reg2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[0]wo20/wirehold[0]2default:default2@
wo20/wirehold_reg[0]	wo20/wirehold_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2N
ddr3_ui_0/adc_data_count[0]ddr3_ui_0/adc_data_count[0]2default:default2V
ddr3_ui_0/adc_data_count_reg[0]	ddr3_ui_0/adc_data_count_reg[0]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth28
wo20/wirehold[9]wo20/wirehold[9]2default:default2@
wo20/wirehold_reg[9]	wo20/wirehold_reg[9]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ddr3_ui_0/adc_data_count[23]ddr3_ui_0/adc_data_count[23]2default:default2X
 ddr3_ui_0/adc_data_count_reg[23]	 ddr3_ui_0/adc_data_count_reg[23]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2:
wo03/wirehold[23]wo03/wirehold[23]2default:default2B
wo03/wirehold_reg[23]	wo03/wirehold_reg[23]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ddr3_ui_0/adc_data_count[11]ddr3_ui_0/adc_data_count[11]2default:default2X
 ddr3_ui_0/adc_data_count_reg[11]	 ddr3_ui_0/adc_data_count_reg[11]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2N
ddr3_ui_0/adc_data_count[6]ddr3_ui_0/adc_data_count[6]2default:default2V
ddr3_ui_0/adc_data_count_reg[6]	ddr3_ui_0/adc_data_count_reg[6]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2:
wo03/wirehold[11]wo03/wirehold[11]2default:default2B
wo03/wirehold_reg[11]	wo03/wirehold_reg[11]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth28
wo03/wirehold[6]wo03/wirehold[6]2default:default2@
wo03/wirehold_reg[6]	wo03/wirehold_reg[6]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2P
ddr3_ui_0/adc_data_count[24]ddr3_ui_0/adc_data_count[24]2default:default2X
 ddr3_ui_0/adc_data_count_reg[24]	 ddr3_ui_0/adc_data_count_reg[24]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[24]wo03/wirehold[24]2default:default2B
wo03/wirehold_reg[24]	wo03/wirehold_reg[24]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2P
ddr3_ui_0/adc_data_count[26]ddr3_ui_0/adc_data_count[26]2default:default2X
 ddr3_ui_0/adc_data_count_reg[26]	 ddr3_ui_0/adc_data_count_reg[26]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2N
ddr3_ui_0/adc_data_count[4]ddr3_ui_0/adc_data_count[4]2default:default2V
ddr3_ui_0/adc_data_count_reg[4]	ddr3_ui_0/adc_data_count_reg[4]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2:
wo03/wirehold[26]wo03/wirehold[26]2default:default2B
wo03/wirehold_reg[26]	wo03/wirehold_reg[26]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[4]wo03/wirehold[4]2default:default2@
wo03/wirehold_reg[4]	wo03/wirehold_reg[4]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ddr3_ui_0/adc_data_count[19]ddr3_ui_0/adc_data_count[19]2default:default2X
 ddr3_ui_0/adc_data_count_reg[19]	 ddr3_ui_0/adc_data_count_reg[19]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2P
ddr3_ui_0/adc_data_count[28]ddr3_ui_0/adc_data_count[28]2default:default2X
 ddr3_ui_0/adc_data_count_reg[28]	 ddr3_ui_0/adc_data_count_reg[28]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2N
ddr3_ui_0/adc_data_count[5]ddr3_ui_0/adc_data_count[5]2default:default2V
ddr3_ui_0/adc_data_count_reg[5]	ddr3_ui_0/adc_data_count_reg[5]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
cadc_to_ddr_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_icadc_to_ddr_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i2default:default2�
gadc_to_ddr_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i_reg	gadc_to_ddr_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i_reg2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2:
wo03/wirehold[19]wo03/wirehold[19]2default:default2B
wo03/wirehold_reg[19]	wo03/wirehold_reg[19]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2:
wo03/wirehold[28]wo03/wirehold[28]2default:default2B
wo03/wirehold_reg[28]	wo03/wirehold_reg[28]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth28
wo03/wirehold[5]wo03/wirehold[5]2default:default2@
wo03/wirehold_reg[5]	wo03/wirehold_reg[5]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth28
wo20/wirehold[4]wo20/wirehold[4]2default:default2@
wo20/wirehold_reg[4]	wo20/wirehold_reg[4]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2N
ddr3_ui_0/adc_data_count[7]ddr3_ui_0/adc_data_count[7]2default:default2V
ddr3_ui_0/adc_data_count_reg[7]	ddr3_ui_0/adc_data_count_reg[7]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth28
wo03/wirehold[7]wo03/wirehold[7]2default:default2@
wo03/wirehold_reg[7]	wo03/wirehold_reg[7]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[0]wo03/wirehold[0]2default:default2@
wo03/wirehold_reg[0]	wo03/wirehold_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ddr3_ui_0/adc_data_count[10]ddr3_ui_0/adc_data_count[10]2default:default2X
 ddr3_ui_0/adc_data_count_reg[10]	 ddr3_ui_0/adc_data_count_reg[10]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ddr3_ui_0/adc_data_count[30]ddr3_ui_0/adc_data_count[30]2default:default2X
 ddr3_ui_0/adc_data_count_reg[30]	 ddr3_ui_0/adc_data_count_reg[30]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2:
wo03/wirehold[10]wo03/wirehold[10]2default:default2B
wo03/wirehold_reg[10]	wo03/wirehold_reg[10]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[30]wo03/wirehold[30]2default:default2B
wo03/wirehold_reg[30]	wo03/wirehold_reg[30]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2P
ddr3_ui_0/adc_data_count[21]ddr3_ui_0/adc_data_count[21]2default:default2X
 ddr3_ui_0/adc_data_count_reg[21]	 ddr3_ui_0/adc_data_count_reg[21]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[21]wo03/wirehold[21]2default:default2B
wo03/wirehold_reg[21]	wo03/wirehold_reg[21]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2N
ddr3_ui_0/adc_data_count[1]ddr3_ui_0/adc_data_count[1]2default:default2V
ddr3_ui_0/adc_data_count_reg[1]	ddr3_ui_0/adc_data_count_reg[1]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2P
ddr3_ui_0/adc_data_count[20]ddr3_ui_0/adc_data_count[20]2default:default2X
 ddr3_ui_0/adc_data_count_reg[20]	 ddr3_ui_0/adc_data_count_reg[20]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ddr3_ui_0/adc_data_count[27]ddr3_ui_0/adc_data_count[27]2default:default2X
 ddr3_ui_0/adc_data_count_reg[27]	 ddr3_ui_0/adc_data_count_reg[27]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[1]wo03/wirehold[1]2default:default2@
wo03/wirehold_reg[1]	wo03/wirehold_reg[1]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[20]wo03/wirehold[20]2default:default2B
wo03/wirehold_reg[20]	wo03/wirehold_reg[20]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[27]wo03/wirehold[27]2default:default2B
wo03/wirehold_reg[27]	wo03/wirehold_reg[27]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ddr3_ui_0/adc_data_count[16]ddr3_ui_0/adc_data_count[16]2default:default2X
 ddr3_ui_0/adc_data_count_reg[16]	 ddr3_ui_0/adc_data_count_reg[16]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2N
ddr3_ui_0/adc_data_count[3]ddr3_ui_0/adc_data_count[3]2default:default2V
ddr3_ui_0/adc_data_count_reg[3]	ddr3_ui_0/adc_data_count_reg[3]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[16]wo03/wirehold[16]2default:default2B
wo03/wirehold_reg[16]	wo03/wirehold_reg[16]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth28
wo03/wirehold[3]wo03/wirehold[3]2default:default2@
wo03/wirehold_reg[3]	wo03/wirehold_reg[3]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ddr3_ui_0/adc_data_count[13]ddr3_ui_0/adc_data_count[13]2default:default2X
 ddr3_ui_0/adc_data_count_reg[13]	 ddr3_ui_0/adc_data_count_reg[13]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[13]wo03/wirehold[13]2default:default2B
wo03/wirehold_reg[13]	wo03/wirehold_reg[13]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
bfg_pipein_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_ibfg_pipein_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i2default:default2�
ffg_pipein_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i_reg	ffg_pipein_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i_reg2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[2]wo20/wirehold[2]2default:default2@
wo20/wirehold_reg[2]	wo20/wirehold_reg[2]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
fddr_to_dac_fifo_ddr/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_ifddr_to_dac_fifo_ddr/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i2default:default2�
jddr_to_dac_fifo_ddr/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg	jddr_to_dac_fifo_ddr/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth28
wo20/wirehold[5]wo20/wirehold[5]2default:default2@
wo20/wirehold_reg[5]	wo20/wirehold_reg[5]2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
fokPipeOut_fifo_ddr2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_ifokPipeOut_fifo_ddr2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i2default:default2�
jokPipeOut_fifo_ddr2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg	jokPipeOut_fifo_ddr2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[7]wo20/wirehold[7]2default:default2@
wo20/wirehold_reg[7]	wo20/wirehold_reg[7]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2P
ddr3_ui_0/adc_data_count[18]ddr3_ui_0/adc_data_count[18]2default:default2X
 ddr3_ui_0/adc_data_count_reg[18]	 ddr3_ui_0/adc_data_count_reg[18]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[18]wo03/wirehold[18]2default:default2B
wo03/wirehold_reg[18]	wo03/wirehold_reg[18]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ddr3_ui_0/adc_data_count[31]ddr3_ui_0/adc_data_count[31]2default:default2X
 ddr3_ui_0/adc_data_count_reg[31]	 ddr3_ui_0/adc_data_count_reg[31]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[31]wo03/wirehold[31]2default:default2B
wo03/wirehold_reg[31]	wo03/wirehold_reg[31]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ddr3_ui_0/adc_data_count[29]ddr3_ui_0/adc_data_count[29]2default:default2X
 ddr3_ui_0/adc_data_count_reg[29]	 ddr3_ui_0/adc_data_count_reg[29]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[29]wo03/wirehold[29]2default:default2B
wo03/wirehold_reg[29]	wo03/wirehold_reg[29]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2N
ddr3_ui_0/adc_data_count[8]ddr3_ui_0/adc_data_count[8]2default:default2V
ddr3_ui_0/adc_data_count_reg[8]	ddr3_ui_0/adc_data_count_reg[8]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[8]wo03/wirehold[8]2default:default2@
wo03/wirehold_reg[8]	wo03/wirehold_reg[8]2default:default8Z32-662h px� 
�
#Optimized %s %s.  Re-placed %s %s.
335*physynth2
302default:default2
nets2default:default2
302default:default2
	instances2default:defaultZ32-661h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
302default:default2!
nets or cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
302default:default2
cells2default:defaultZ32-775h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6782default:default2

-26243.5882default:defaultZ32-619h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0212default:default2
2541.6052default:default2
0.0002default:defaultZ17-268h px� 
V
APhase 4 Single Cell Placement Optimization | Checksum: 18a20649f
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:21 ; elapsed = 00:00:11 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
�

Phase %s%s
101*constraints2
5 2default:default25
!Multi Cell Placement Optimization2default:defaultZ18-101h px� 
�
=Identified %s candidate %s for placement-based optimization.
334*physynth2
752default:default2
nets2default:defaultZ32-660h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[0]wo20/wirehold[0]2default:default2D
wo20/wirehold_reg[0]/Q	wo20/wirehold_reg[0]/Q2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2:
wo03/wirehold[25]wo03/wirehold[25]2default:default2F
wo03/wirehold_reg[25]/Q	wo03/wirehold_reg[25]/Q2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[4]wo03/wirehold[4]2default:default2D
wo03/wirehold_reg[4]/Q	wo03/wirehold_reg[4]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[2]wo03/wirehold[2]2default:default2D
wo03/wirehold_reg[2]/Q	wo03/wirehold_reg[2]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[0]wo03/wirehold[0]2default:default2D
wo03/wirehold_reg[0]/Q	wo03/wirehold_reg[0]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[14]wo03/wirehold[14]2default:default2F
wo03/wirehold_reg[14]/Q	wo03/wirehold_reg[14]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[24]wo03/wirehold[24]2default:default2F
wo03/wirehold_reg[24]/Q	wo03/wirehold_reg[24]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[30]wo03/wirehold[30]2default:default2F
wo03/wirehold_reg[30]/Q	wo03/wirehold_reg[30]/Q2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth28
wo20/wirehold[9]wo20/wirehold[9]2default:default2D
wo20/wirehold_reg[9]/Q	wo20/wirehold_reg[9]/Q2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[23]wo03/wirehold[23]2default:default2F
wo03/wirehold_reg[23]/Q	wo03/wirehold_reg[23]/Q2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth28
wo03/wirehold[9]wo03/wirehold[9]2default:default2D
wo03/wirehold_reg[9]/Q	wo03/wirehold_reg[9]/Q2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[1]wo03/wirehold[1]2default:default2D
wo03/wirehold_reg[1]/Q	wo03/wirehold_reg[1]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[27]wo03/wirehold[27]2default:default2F
wo03/wirehold_reg[27]/Q	wo03/wirehold_reg[27]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[16]wo03/wirehold[16]2default:default2F
wo03/wirehold_reg[16]/Q	wo03/wirehold_reg[16]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[13]wo03/wirehold[13]2default:default2F
wo03/wirehold_reg[13]/Q	wo03/wirehold_reg[13]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[20]wo03/wirehold[20]2default:default2F
wo03/wirehold_reg[20]/Q	wo03/wirehold_reg[20]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[21]wo03/wirehold[21]2default:default2F
wo03/wirehold_reg[21]/Q	wo03/wirehold_reg[21]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[2]wo20/wirehold[2]2default:default2D
wo20/wirehold_reg[2]/Q	wo20/wirehold_reg[2]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[5]wo20/wirehold[5]2default:default2D
wo20/wirehold_reg[5]/Q	wo20/wirehold_reg[5]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[10]wo03/wirehold[10]2default:default2F
wo03/wirehold_reg[10]/Q	wo03/wirehold_reg[10]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[15]wo03/wirehold[15]2default:default2F
wo03/wirehold_reg[15]/Q	wo03/wirehold_reg[15]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[3]wo03/wirehold[3]2default:default2D
wo03/wirehold_reg[3]/Q	wo03/wirehold_reg[3]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[7]wo20/wirehold[7]2default:default2D
wo20/wirehold_reg[7]/Q	wo20/wirehold_reg[7]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[12]wo03/wirehold[12]2default:default2F
wo03/wirehold_reg[12]/Q	wo03/wirehold_reg[12]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[4]wo20/wirehold[4]2default:default2D
wo20/wirehold_reg[4]/Q	wo20/wirehold_reg[4]/Q2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2:
wo03/wirehold[17]wo03/wirehold[17]2default:default2F
wo03/wirehold_reg[17]/Q	wo03/wirehold_reg[17]/Q2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[26]wo03/wirehold[26]2default:default2F
wo03/wirehold_reg[26]/Q	wo03/wirehold_reg[26]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[6]wo03/wirehold[6]2default:default2D
wo03/wirehold_reg[6]/Q	wo03/wirehold_reg[6]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[19]wo03/wirehold[19]2default:default2F
wo03/wirehold_reg[19]/Q	wo03/wirehold_reg[19]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[11]wo03/wirehold[11]2default:default2F
wo03/wirehold_reg[11]/Q	wo03/wirehold_reg[11]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[7]wo03/wirehold[7]2default:default2D
wo03/wirehold_reg[7]/Q	wo03/wirehold_reg[7]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[22]wo03/wirehold[22]2default:default2F
wo03/wirehold_reg[22]/Q	wo03/wirehold_reg[22]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[18]wo03/wirehold[18]2default:default2F
wo03/wirehold_reg[18]/Q	wo03/wirehold_reg[18]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[28]wo03/wirehold[28]2default:default2F
wo03/wirehold_reg[28]/Q	wo03/wirehold_reg[28]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[31]wo03/wirehold[31]2default:default2F
wo03/wirehold_reg[31]/Q	wo03/wirehold_reg[31]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[29]wo03/wirehold[29]2default:default2F
wo03/wirehold_reg[29]/Q	wo03/wirehold_reg[29]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[8]wo03/wirehold[8]2default:default2D
wo03/wirehold_reg[8]/Q	wo03/wirehold_reg[8]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[5]wo03/wirehold[5]2default:default2D
wo03/wirehold_reg[5]/Q	wo03/wirehold_reg[5]/Q2default:default8Z32-662h px� 
�
#Optimized %s %s.  Re-placed %s %s.
335*physynth2
42default:default2
nets2default:default2
82default:default2
	instances2default:defaultZ32-661h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
42default:default2!
nets or cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
82default:default2
cells2default:defaultZ32-775h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6782default:default2

-26243.3842default:defaultZ32-619h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0262default:default2
2541.6052default:default2
0.0002default:defaultZ17-268h px� 
U
@Phase 5 Multi Cell Placement Optimization | Checksum: 1638452bf
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:26 ; elapsed = 00:00:15 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
g

Phase %s%s
101*constraints2
6 2default:default2
Rewire2default:defaultZ18-101h px� 
a
Starting %s optimization...
227*physynth2
Signal Push2default:defaultZ32-246h px� 
h
.No nets found for rewiring (%s) optimization.
222*physynth2
 2default:defaultZ32-241h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0252default:default2
2541.6052default:default2
0.0002default:defaultZ17-268h px� 
:
%Phase 6 Rewire | Checksum: 1638452bf
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:26 ; elapsed = 00:00:15 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
{

Phase %s%s
101*constraints2
7 2default:default2.
Critical Cell Optimization2default:defaultZ18-101h px� 
�
;Identified %s candidate %s for critical-cell optimization.
46*physynth2
302default:default2
nets2default:defaultZ32-46h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
fu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/phy_dout[21]fu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/phy_dout[21]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2N
ddr3_ui_0/adc_data_count[4]ddr3_ui_0/adc_data_count[4]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2N
ddr3_ui_0/adc_data_count[2]ddr3_ui_0/adc_data_count[2]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2N
ddr3_ui_0/adc_data_count[0]ddr3_ui_0/adc_data_count[0]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2P
ddr3_ui_0/adc_data_count[14]ddr3_ui_0/adc_data_count[14]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2P
ddr3_ui_0/adc_data_count[24]ddr3_ui_0/adc_data_count[24]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2P
ddr3_ui_0/adc_data_count[30]ddr3_ui_0/adc_data_count[30]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2P
ddr3_ui_0/adc_data_count[23]ddr3_ui_0/adc_data_count[23]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2N
ddr3_ui_0/adc_data_count[1]ddr3_ui_0/adc_data_count[1]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2P
ddr3_ui_0/adc_data_count[27]ddr3_ui_0/adc_data_count[27]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2P
ddr3_ui_0/adc_data_count[16]ddr3_ui_0/adc_data_count[16]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2P
ddr3_ui_0/adc_data_count[13]ddr3_ui_0/adc_data_count[13]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2P
ddr3_ui_0/adc_data_count[20]ddr3_ui_0/adc_data_count[20]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2P
ddr3_ui_0/adc_data_count[21]ddr3_ui_0/adc_data_count[21]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2P
ddr3_ui_0/adc_data_count[25]ddr3_ui_0/adc_data_count[25]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2P
ddr3_ui_0/adc_data_count[10]ddr3_ui_0/adc_data_count[10]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2P
ddr3_ui_0/adc_data_count[15]ddr3_ui_0/adc_data_count[15]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2N
ddr3_ui_0/adc_data_count[3]ddr3_ui_0/adc_data_count[3]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2P
ddr3_ui_0/adc_data_count[12]ddr3_ui_0/adc_data_count[12]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2P
ddr3_ui_0/adc_data_count[26]ddr3_ui_0/adc_data_count[26]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2N
ddr3_ui_0/adc_data_count[6]ddr3_ui_0/adc_data_count[6]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2P
ddr3_ui_0/adc_data_count[19]ddr3_ui_0/adc_data_count[19]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2P
ddr3_ui_0/adc_data_count[11]ddr3_ui_0/adc_data_count[11]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2N
ddr3_ui_0/adc_data_count[7]ddr3_ui_0/adc_data_count[7]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2P
ddr3_ui_0/adc_data_count[22]ddr3_ui_0/adc_data_count[22]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2N
ddr3_ui_0/adc_data_count[9]ddr3_ui_0/adc_data_count[9]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2P
ddr3_ui_0/adc_data_count[18]ddr3_ui_0/adc_data_count[18]2default:default2
12default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2P
ddr3_ui_0/adc_data_count[28]ddr3_ui_0/adc_data_count[28]2default:default2
12default:default8Z32-81h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2P
ddr3_ui_0/adc_data_count[31]ddr3_ui_0/adc_data_count[31]2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2P
ddr3_ui_0/adc_data_count[29]ddr3_ui_0/adc_data_count[29]2default:default8Z32-572h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
282default:default2
nets2default:default2
282default:default2
	instances2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
282default:default2!
nets or cells2default:default2
282default:default2
cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-26242.7262default:defaultZ32-619h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.1842default:default2
2541.6052default:default2
0.0002default:defaultZ17-268h px� 
N
9Phase 7 Critical Cell Optimization | Checksum: 1074a7f75
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:36 ; elapsed = 00:00:21 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
t

Phase %s%s
101*constraints2
8 2default:default2'
Fanout Optimization2default:defaultZ18-101h px� 
I
'No nets found for fanout-optimization.
64*physynthZ32-64h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
G
2Phase 8 Fanout Optimization | Checksum: 1074a7f75
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:37 ; elapsed = 00:00:22 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
�

Phase %s%s
101*constraints2
9 2default:default26
"Single Cell Placement Optimization2default:defaultZ18-101h px� 
�
=Identified %s candidate %s for placement-based optimization.
334*physynth2
752default:default2
nets2default:defaultZ32-660h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 ddr3_ui_0/adc_data_count[0]_repN ddr3_ui_0/adc_data_count[0]_repN2default:default2f
'ddr3_ui_0/adc_data_count_reg[0]_replica	'ddr3_ui_0/adc_data_count_reg[0]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
bfg_pipein_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_ibfg_pipein_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i2default:default2�
ffg_pipein_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i_reg	ffg_pipein_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i_reg2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[0]wo03/wirehold[0]2default:default2@
wo03/wirehold_reg[0]	wo03/wirehold_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[2]wo20/wirehold[2]2default:default2@
wo20/wirehold_reg[2]	wo20/wirehold_reg[2]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
fddr_to_dac_fifo_ddr/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_ifddr_to_dac_fifo_ddr/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i2default:default2�
jddr_to_dac_fifo_ddr/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg	jddr_to_dac_fifo_ddr/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg2default:default8Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth28
wo20/wirehold[5]wo20/wirehold[5]2default:default2@
wo20/wirehold_reg[5]	wo20/wirehold_reg[5]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 ddr3_ui_0/adc_data_count[4]_repN ddr3_ui_0/adc_data_count[4]_repN2default:default2f
'ddr3_ui_0/adc_data_count_reg[4]_replica	'ddr3_ui_0/adc_data_count_reg[4]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[4]wo03/wirehold[4]2default:default2@
wo03/wirehold_reg[4]	wo03/wirehold_reg[4]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[27]_repN!ddr3_ui_0/adc_data_count[27]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[27]_replica	(ddr3_ui_0/adc_data_count_reg[27]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[30]_repN!ddr3_ui_0/adc_data_count[30]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[30]_replica	(ddr3_ui_0/adc_data_count_reg[30]_replica2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2:
wo03/wirehold[27]wo03/wirehold[27]2default:default2B
wo03/wirehold_reg[27]	wo03/wirehold_reg[27]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[30]wo03/wirehold[30]2default:default2B
wo03/wirehold_reg[30]	wo03/wirehold_reg[30]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[13]_repN!ddr3_ui_0/adc_data_count[13]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[13]_replica	(ddr3_ui_0/adc_data_count_reg[13]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 ddr3_ui_0/adc_data_count[2]_repN ddr3_ui_0/adc_data_count[2]_repN2default:default2f
'ddr3_ui_0/adc_data_count_reg[2]_replica	'ddr3_ui_0/adc_data_count_reg[2]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[13]wo03/wirehold[13]2default:default2B
wo03/wirehold_reg[13]	wo03/wirehold_reg[13]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth28
wo03/wirehold[2]wo03/wirehold[2]2default:default2@
wo03/wirehold_reg[2]	wo03/wirehold_reg[2]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[9]wo20/wirehold[9]2default:default2@
wo20/wirehold_reg[9]	wo20/wirehold_reg[9]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 ddr3_ui_0/adc_data_count[1]_repN ddr3_ui_0/adc_data_count[1]_repN2default:default2f
'ddr3_ui_0/adc_data_count_reg[1]_replica	'ddr3_ui_0/adc_data_count_reg[1]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
ku_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/phy_dout[21]_repNku_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/phy_dout[21]_repN2default:default2�
yu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/init_calib_complete_reg_replica	yu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/init_calib_complete_reg_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[1]wo03/wirehold[1]2default:default2@
wo03/wirehold_reg[1]	wo03/wirehold_reg[1]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth28
wo20/wirehold[0]wo20/wirehold[0]2default:default2@
wo20/wirehold_reg[0]	wo20/wirehold_reg[0]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[24]_repN!ddr3_ui_0/adc_data_count[24]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[24]_replica	(ddr3_ui_0/adc_data_count_reg[24]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[24]wo03/wirehold[24]2default:default2B
wo03/wirehold_reg[24]	wo03/wirehold_reg[24]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
fokPipeOut_fifo_ddr2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_ifokPipeOut_fifo_ddr2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i2default:default2�
jokPipeOut_fifo_ddr2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg	jokPipeOut_fifo_ddr2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[7]wo20/wirehold[7]2default:default2@
wo20/wirehold_reg[7]	wo20/wirehold_reg[7]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[14]_repN!ddr3_ui_0/adc_data_count[14]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[14]_replica	(ddr3_ui_0/adc_data_count_reg[14]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[16]_repN!ddr3_ui_0/adc_data_count[16]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[16]_replica	(ddr3_ui_0/adc_data_count_reg[16]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[14]wo03/wirehold[14]2default:default2B
wo03/wirehold_reg[14]	wo03/wirehold_reg[14]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[16]wo03/wirehold[16]2default:default2B
wo03/wirehold_reg[16]	wo03/wirehold_reg[16]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
cadc_to_ddr_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_icadc_to_ddr_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i2default:default2�
gadc_to_ddr_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i_reg	gadc_to_ddr_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i_reg2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[4]wo20/wirehold[4]2default:default2@
wo20/wirehold_reg[4]	wo20/wirehold_reg[4]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[20]_repN!ddr3_ui_0/adc_data_count[20]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[20]_replica	(ddr3_ui_0/adc_data_count_reg[20]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[21]_repN!ddr3_ui_0/adc_data_count[21]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[21]_replica	(ddr3_ui_0/adc_data_count_reg[21]_replica2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2:
wo03/wirehold[20]wo03/wirehold[20]2default:default2B
wo03/wirehold_reg[20]	wo03/wirehold_reg[20]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[21]wo03/wirehold[21]2default:default2B
wo03/wirehold_reg[21]	wo03/wirehold_reg[21]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[12]_repN!ddr3_ui_0/adc_data_count[12]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[12]_replica	(ddr3_ui_0/adc_data_count_reg[12]_replica2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2:
wo03/wirehold[12]wo03/wirehold[12]2default:default2B
wo03/wirehold_reg[12]	wo03/wirehold_reg[12]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[15]_repN!ddr3_ui_0/adc_data_count[15]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[15]_replica	(ddr3_ui_0/adc_data_count_reg[15]_replica2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2:
wo03/wirehold[15]wo03/wirehold[15]2default:default2B
wo03/wirehold_reg[15]	wo03/wirehold_reg[15]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[25]_repN!ddr3_ui_0/adc_data_count[25]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[25]_replica	(ddr3_ui_0/adc_data_count_reg[25]_replica2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2:
wo03/wirehold[25]wo03/wirehold[25]2default:default2B
wo03/wirehold_reg[25]	wo03/wirehold_reg[25]2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[23]_repN!ddr3_ui_0/adc_data_count[23]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[23]_replica	(ddr3_ui_0/adc_data_count_reg[23]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[23]wo03/wirehold[23]2default:default2B
wo03/wirehold_reg[23]	wo03/wirehold_reg[23]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[22]_repN!ddr3_ui_0/adc_data_count[22]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[22]_replica	(ddr3_ui_0/adc_data_count_reg[22]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[22]wo03/wirehold[22]2default:default2B
wo03/wirehold_reg[22]	wo03/wirehold_reg[22]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 ddr3_ui_0/adc_data_count[6]_repN ddr3_ui_0/adc_data_count[6]_repN2default:default2f
'ddr3_ui_0/adc_data_count_reg[6]_replica	'ddr3_ui_0/adc_data_count_reg[6]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[6]wo03/wirehold[6]2default:default2@
wo03/wirehold_reg[6]	wo03/wirehold_reg[6]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 ddr3_ui_0/adc_data_count[3]_repN ddr3_ui_0/adc_data_count[3]_repN2default:default2f
'ddr3_ui_0/adc_data_count_reg[3]_replica	'ddr3_ui_0/adc_data_count_reg[3]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[3]wo03/wirehold[3]2default:default2@
wo03/wirehold_reg[3]	wo03/wirehold_reg[3]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[18]_repN!ddr3_ui_0/adc_data_count[18]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[18]_replica	(ddr3_ui_0/adc_data_count_reg[18]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[26]_repN!ddr3_ui_0/adc_data_count[26]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[26]_replica	(ddr3_ui_0/adc_data_count_reg[26]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[18]wo03/wirehold[18]2default:default2B
wo03/wirehold_reg[18]	wo03/wirehold_reg[18]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[26]wo03/wirehold[26]2default:default2B
wo03/wirehold_reg[26]	wo03/wirehold_reg[26]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[10]_repN!ddr3_ui_0/adc_data_count[10]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[10]_replica	(ddr3_ui_0/adc_data_count_reg[10]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[10]wo03/wirehold[10]2default:default2B
wo03/wirehold_reg[10]	wo03/wirehold_reg[10]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[19]_repN!ddr3_ui_0/adc_data_count[19]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[19]_replica	(ddr3_ui_0/adc_data_count_reg[19]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 ddr3_ui_0/adc_data_count[9]_repN ddr3_ui_0/adc_data_count[9]_repN2default:default2f
'ddr3_ui_0/adc_data_count_reg[9]_replica	'ddr3_ui_0/adc_data_count_reg[9]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[19]wo03/wirehold[19]2default:default2B
wo03/wirehold_reg[19]	wo03/wirehold_reg[19]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[9]wo03/wirehold[9]2default:default2@
wo03/wirehold_reg[9]	wo03/wirehold_reg[9]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[28]_repN!ddr3_ui_0/adc_data_count[28]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[28]_replica	(ddr3_ui_0/adc_data_count_reg[28]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[28]wo03/wirehold[28]2default:default2B
wo03/wirehold_reg[28]	wo03/wirehold_reg[28]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 ddr3_ui_0/adc_data_count[7]_repN ddr3_ui_0/adc_data_count[7]_repN2default:default2f
'ddr3_ui_0/adc_data_count_reg[7]_replica	'ddr3_ui_0/adc_data_count_reg[7]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[7]wo03/wirehold[7]2default:default2@
wo03/wirehold_reg[7]	wo03/wirehold_reg[7]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ddr3_ui_0/adc_data_count[31]ddr3_ui_0/adc_data_count[31]2default:default2X
 ddr3_ui_0/adc_data_count_reg[31]	 ddr3_ui_0/adc_data_count_reg[31]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[31]wo03/wirehold[31]2default:default2B
wo03/wirehold_reg[31]	wo03/wirehold_reg[31]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ddr3_ui_0/adc_data_count[29]ddr3_ui_0/adc_data_count[29]2default:default2X
 ddr3_ui_0/adc_data_count_reg[29]	 ddr3_ui_0/adc_data_count_reg[29]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[29]wo03/wirehold[29]2default:default2B
wo03/wirehold_reg[29]	wo03/wirehold_reg[29]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2N
ddr3_ui_0/adc_data_count[8]ddr3_ui_0/adc_data_count[8]2default:default2V
ddr3_ui_0/adc_data_count_reg[8]	ddr3_ui_0/adc_data_count_reg[8]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[8]wo03/wirehold[8]2default:default2@
wo03/wirehold_reg[8]	wo03/wirehold_reg[8]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[11]_repN!ddr3_ui_0/adc_data_count[11]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[11]_replica	(ddr3_ui_0/adc_data_count_reg[11]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[11]wo03/wirehold[11]2default:default2B
wo03/wirehold_reg[11]	wo03/wirehold_reg[11]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ddr3_ui_0/adc_data_count[17]ddr3_ui_0/adc_data_count[17]2default:default2X
 ddr3_ui_0/adc_data_count_reg[17]	 ddr3_ui_0/adc_data_count_reg[17]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[17]wo03/wirehold[17]2default:default2B
wo03/wirehold_reg[17]	wo03/wirehold_reg[17]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2N
ddr3_ui_0/adc_data_count[5]ddr3_ui_0/adc_data_count[5]2default:default2V
ddr3_ui_0/adc_data_count_reg[5]	ddr3_ui_0/adc_data_count_reg[5]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[5]wo03/wirehold[5]2default:default2@
wo03/wirehold_reg[5]	wo03/wirehold_reg[5]2default:default8Z32-662h px� 
�
#Optimized %s %s.  Re-placed %s %s.
335*physynth2
92default:default2
nets2default:default2
92default:default2
	instances2default:defaultZ32-661h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
92default:default2!
nets or cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
92default:default2
cells2default:defaultZ32-775h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-26242.5802default:defaultZ32-619h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0252default:default2
2541.6052default:default2
0.0002default:defaultZ17-268h px� 
V
APhase 9 Single Cell Placement Optimization | Checksum: 1ad26b497
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:45 ; elapsed = 00:00:27 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
�

Phase %s%s
101*constraints2
10 2default:default25
!Multi Cell Placement Optimization2default:defaultZ18-101h px� 
�
=Identified %s candidate %s for placement-based optimization.
334*physynth2
752default:default2
nets2default:defaultZ32-660h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[0]wo03/wirehold[0]2default:default2D
wo03/wirehold_reg[0]/Q	wo03/wirehold_reg[0]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[2]wo20/wirehold[2]2default:default2D
wo20/wirehold_reg[2]/Q	wo20/wirehold_reg[2]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[4]wo03/wirehold[4]2default:default2D
wo03/wirehold_reg[4]/Q	wo03/wirehold_reg[4]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[30]wo03/wirehold[30]2default:default2F
wo03/wirehold_reg[30]/Q	wo03/wirehold_reg[30]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[13]wo03/wirehold[13]2default:default2F
wo03/wirehold_reg[13]/Q	wo03/wirehold_reg[13]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[9]wo20/wirehold[9]2default:default2D
wo20/wirehold_reg[9]/Q	wo20/wirehold_reg[9]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[1]wo03/wirehold[1]2default:default2D
wo03/wirehold_reg[1]/Q	wo03/wirehold_reg[1]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[24]wo03/wirehold[24]2default:default2F
wo03/wirehold_reg[24]/Q	wo03/wirehold_reg[24]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[7]wo20/wirehold[7]2default:default2D
wo20/wirehold_reg[7]/Q	wo20/wirehold_reg[7]/Q2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2:
wo03/wirehold[14]wo03/wirehold[14]2default:default2F
wo03/wirehold_reg[14]/Q	wo03/wirehold_reg[14]/Q2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[16]wo03/wirehold[16]2default:default2F
wo03/wirehold_reg[16]/Q	wo03/wirehold_reg[16]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[2]wo03/wirehold[2]2default:default2D
wo03/wirehold_reg[2]/Q	wo03/wirehold_reg[2]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[27]wo03/wirehold[27]2default:default2F
wo03/wirehold_reg[27]/Q	wo03/wirehold_reg[27]/Q2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth28
wo20/wirehold[4]wo20/wirehold[4]2default:default2D
wo20/wirehold_reg[4]/Q	wo20/wirehold_reg[4]/Q2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[21]wo03/wirehold[21]2default:default2F
wo03/wirehold_reg[21]/Q	wo03/wirehold_reg[21]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[12]wo03/wirehold[12]2default:default2F
wo03/wirehold_reg[12]/Q	wo03/wirehold_reg[12]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[23]wo03/wirehold[23]2default:default2F
wo03/wirehold_reg[23]/Q	wo03/wirehold_reg[23]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[22]wo03/wirehold[22]2default:default2F
wo03/wirehold_reg[22]/Q	wo03/wirehold_reg[22]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[0]wo20/wirehold[0]2default:default2D
wo20/wirehold_reg[0]/Q	wo20/wirehold_reg[0]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[6]wo03/wirehold[6]2default:default2D
wo03/wirehold_reg[6]/Q	wo03/wirehold_reg[6]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[3]wo03/wirehold[3]2default:default2D
wo03/wirehold_reg[3]/Q	wo03/wirehold_reg[3]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[18]wo03/wirehold[18]2default:default2F
wo03/wirehold_reg[18]/Q	wo03/wirehold_reg[18]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[25]wo03/wirehold[25]2default:default2F
wo03/wirehold_reg[25]/Q	wo03/wirehold_reg[25]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[26]wo03/wirehold[26]2default:default2F
wo03/wirehold_reg[26]/Q	wo03/wirehold_reg[26]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[10]wo03/wirehold[10]2default:default2F
wo03/wirehold_reg[10]/Q	wo03/wirehold_reg[10]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[5]wo20/wirehold[5]2default:default2D
wo20/wirehold_reg[5]/Q	wo20/wirehold_reg[5]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[20]wo03/wirehold[20]2default:default2F
wo03/wirehold_reg[20]/Q	wo03/wirehold_reg[20]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[19]wo03/wirehold[19]2default:default2F
wo03/wirehold_reg[19]/Q	wo03/wirehold_reg[19]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[9]wo03/wirehold[9]2default:default2D
wo03/wirehold_reg[9]/Q	wo03/wirehold_reg[9]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[15]wo03/wirehold[15]2default:default2F
wo03/wirehold_reg[15]/Q	wo03/wirehold_reg[15]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[28]wo03/wirehold[28]2default:default2F
wo03/wirehold_reg[28]/Q	wo03/wirehold_reg[28]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[7]wo03/wirehold[7]2default:default2D
wo03/wirehold_reg[7]/Q	wo03/wirehold_reg[7]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[31]wo03/wirehold[31]2default:default2F
wo03/wirehold_reg[31]/Q	wo03/wirehold_reg[31]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[29]wo03/wirehold[29]2default:default2F
wo03/wirehold_reg[29]/Q	wo03/wirehold_reg[29]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[8]wo03/wirehold[8]2default:default2D
wo03/wirehold_reg[8]/Q	wo03/wirehold_reg[8]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[11]wo03/wirehold[11]2default:default2F
wo03/wirehold_reg[11]/Q	wo03/wirehold_reg[11]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[17]wo03/wirehold[17]2default:default2F
wo03/wirehold_reg[17]/Q	wo03/wirehold_reg[17]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[5]wo03/wirehold[5]2default:default2D
wo03/wirehold_reg[5]/Q	wo03/wirehold_reg[5]/Q2default:default8Z32-662h px� 
�
#Optimized %s %s.  Re-placed %s %s.
335*physynth2
22default:default2
nets2default:default2
42default:default2
	instances2default:defaultZ32-661h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
22default:default2!
nets or cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
42default:default2
cells2default:defaultZ32-775h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-26242.5402default:defaultZ32-619h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0332default:default2
2541.6052default:default2
0.0002default:defaultZ17-268h px� 
V
APhase 10 Multi Cell Placement Optimization | Checksum: 1642c0ac8
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:50 ; elapsed = 00:00:30 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
h

Phase %s%s
101*constraints2
11 2default:default2
Rewire2default:defaultZ18-101h px� 
a
Starting %s optimization...
227*physynth2
Signal Push2default:defaultZ32-246h px� 
h
.No nets found for rewiring (%s) optimization.
222*physynth2
 2default:defaultZ32-241h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0402default:default2
2541.6052default:default2
0.0002default:defaultZ17-268h px� 
;
&Phase 11 Rewire | Checksum: 1642c0ac8
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:50 ; elapsed = 00:00:30 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
|

Phase %s%s
101*constraints2
12 2default:default2.
Critical Cell Optimization2default:defaultZ18-101h px� 
�
;Identified %s candidate %s for critical-cell optimization.
46*physynth2
42default:default2
nets2default:defaultZ32-46h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2X
 ddr3_ui_0/adc_data_count[0]_repN ddr3_ui_0/adc_data_count[0]_repN2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2N
ddr3_ui_0/adc_data_count[8]ddr3_ui_0/adc_data_count[8]2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2P
ddr3_ui_0/adc_data_count[17]ddr3_ui_0/adc_data_count[17]2default:default8Z32-572h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2N
ddr3_ui_0/adc_data_count[5]ddr3_ui_0/adc_data_count[5]2default:default8Z32-572h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0362default:default2
2541.6052default:default2
0.0002default:defaultZ17-268h px� 
O
:Phase 12 Critical Cell Optimization | Checksum: 1c895173a
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:52 ; elapsed = 00:00:31 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
{

Phase %s%s
101*constraints2
13 2default:default2-
SLR Crossing Optimization2default:defaultZ18-101h px� 
N
9Phase 13 SLR Crossing Optimization | Checksum: 1c895173a
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:52 ; elapsed = 00:00:31 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
u

Phase %s%s
101*constraints2
14 2default:default2'
Fanout Optimization2default:defaultZ18-101h px� 
I
'No nets found for fanout-optimization.
64*physynthZ32-64h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
H
3Phase 14 Fanout Optimization | Checksum: 1c895173a
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:52 ; elapsed = 00:00:32 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
�

Phase %s%s
101*constraints2
15 2default:default26
"Single Cell Placement Optimization2default:defaultZ18-101h px� 
�
=Identified %s candidate %s for placement-based optimization.
334*physynth2
752default:default2
nets2default:defaultZ32-660h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 ddr3_ui_0/adc_data_count[0]_repN ddr3_ui_0/adc_data_count[0]_repN2default:default2f
'ddr3_ui_0/adc_data_count_reg[0]_replica	'ddr3_ui_0/adc_data_count_reg[0]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
bfg_pipein_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_ibfg_pipein_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i2default:default2�
ffg_pipein_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i_reg	ffg_pipein_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i_reg2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[0]wo03/wirehold[0]2default:default2@
wo03/wirehold_reg[0]	wo03/wirehold_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[2]wo20/wirehold[2]2default:default2@
wo20/wirehold_reg[2]	wo20/wirehold_reg[2]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 ddr3_ui_0/adc_data_count[4]_repN ddr3_ui_0/adc_data_count[4]_repN2default:default2f
'ddr3_ui_0/adc_data_count_reg[4]_replica	'ddr3_ui_0/adc_data_count_reg[4]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[4]wo03/wirehold[4]2default:default2@
wo03/wirehold_reg[4]	wo03/wirehold_reg[4]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[30]_repN!ddr3_ui_0/adc_data_count[30]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[30]_replica	(ddr3_ui_0/adc_data_count_reg[30]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[30]wo03/wirehold[30]2default:default2B
wo03/wirehold_reg[30]	wo03/wirehold_reg[30]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[13]_repN!ddr3_ui_0/adc_data_count[13]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[13]_replica	(ddr3_ui_0/adc_data_count_reg[13]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[13]wo03/wirehold[13]2default:default2B
wo03/wirehold_reg[13]	wo03/wirehold_reg[13]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[9]wo20/wirehold[9]2default:default2@
wo20/wirehold_reg[9]	wo20/wirehold_reg[9]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 ddr3_ui_0/adc_data_count[1]_repN ddr3_ui_0/adc_data_count[1]_repN2default:default2f
'ddr3_ui_0/adc_data_count_reg[1]_replica	'ddr3_ui_0/adc_data_count_reg[1]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[1]wo03/wirehold[1]2default:default2@
wo03/wirehold_reg[1]	wo03/wirehold_reg[1]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[24]_repN!ddr3_ui_0/adc_data_count[24]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[24]_replica	(ddr3_ui_0/adc_data_count_reg[24]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[24]wo03/wirehold[24]2default:default2B
wo03/wirehold_reg[24]	wo03/wirehold_reg[24]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
fokPipeOut_fifo_ddr2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_ifokPipeOut_fifo_ddr2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i2default:default2�
jokPipeOut_fifo_ddr2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg	jokPipeOut_fifo_ddr2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[7]wo20/wirehold[7]2default:default2@
wo20/wirehold_reg[7]	wo20/wirehold_reg[7]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[16]_repN!ddr3_ui_0/adc_data_count[16]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[16]_replica	(ddr3_ui_0/adc_data_count_reg[16]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 ddr3_ui_0/adc_data_count[2]_repN ddr3_ui_0/adc_data_count[2]_repN2default:default2f
'ddr3_ui_0/adc_data_count_reg[2]_replica	'ddr3_ui_0/adc_data_count_reg[2]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[16]wo03/wirehold[16]2default:default2B
wo03/wirehold_reg[16]	wo03/wirehold_reg[16]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[2]wo03/wirehold[2]2default:default2@
wo03/wirehold_reg[2]	wo03/wirehold_reg[2]2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2Z
!ddr3_ui_0/adc_data_count[27]_repN!ddr3_ui_0/adc_data_count[27]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[27]_replica	(ddr3_ui_0/adc_data_count_reg[27]_replica2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[27]wo03/wirehold[27]2default:default2B
wo03/wirehold_reg[27]	wo03/wirehold_reg[27]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
cadc_to_ddr_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_icadc_to_ddr_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i2default:default2�
gadc_to_ddr_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i_reg	gadc_to_ddr_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i_reg2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[4]wo20/wirehold[4]2default:default2@
wo20/wirehold_reg[4]	wo20/wirehold_reg[4]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[21]_repN!ddr3_ui_0/adc_data_count[21]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[21]_replica	(ddr3_ui_0/adc_data_count_reg[21]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[21]wo03/wirehold[21]2default:default2B
wo03/wirehold_reg[21]	wo03/wirehold_reg[21]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[12]_repN!ddr3_ui_0/adc_data_count[12]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[12]_replica	(ddr3_ui_0/adc_data_count_reg[12]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[12]wo03/wirehold[12]2default:default2B
wo03/wirehold_reg[12]	wo03/wirehold_reg[12]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[23]_repN!ddr3_ui_0/adc_data_count[23]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[23]_replica	(ddr3_ui_0/adc_data_count_reg[23]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[23]wo03/wirehold[23]2default:default2B
wo03/wirehold_reg[23]	wo03/wirehold_reg[23]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[22]_repN!ddr3_ui_0/adc_data_count[22]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[22]_replica	(ddr3_ui_0/adc_data_count_reg[22]_replica2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
ku_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/phy_dout[21]_repNku_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/phy_dout[21]_repN2default:default2�
yu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/init_calib_complete_reg_replica	yu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/init_calib_complete_reg_replica2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[22]wo03/wirehold[22]2default:default2B
wo03/wirehold_reg[22]	wo03/wirehold_reg[22]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[0]wo20/wirehold[0]2default:default2@
wo20/wirehold_reg[0]	wo20/wirehold_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 ddr3_ui_0/adc_data_count[6]_repN ddr3_ui_0/adc_data_count[6]_repN2default:default2f
'ddr3_ui_0/adc_data_count_reg[6]_replica	'ddr3_ui_0/adc_data_count_reg[6]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[6]wo03/wirehold[6]2default:default2@
wo03/wirehold_reg[6]	wo03/wirehold_reg[6]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 ddr3_ui_0/adc_data_count[3]_repN ddr3_ui_0/adc_data_count[3]_repN2default:default2f
'ddr3_ui_0/adc_data_count_reg[3]_replica	'ddr3_ui_0/adc_data_count_reg[3]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[3]wo03/wirehold[3]2default:default2@
wo03/wirehold_reg[3]	wo03/wirehold_reg[3]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[18]_repN!ddr3_ui_0/adc_data_count[18]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[18]_replica	(ddr3_ui_0/adc_data_count_reg[18]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[25]_repN!ddr3_ui_0/adc_data_count[25]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[25]_replica	(ddr3_ui_0/adc_data_count_reg[25]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[26]_repN!ddr3_ui_0/adc_data_count[26]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[26]_replica	(ddr3_ui_0/adc_data_count_reg[26]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[18]wo03/wirehold[18]2default:default2B
wo03/wirehold_reg[18]	wo03/wirehold_reg[18]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[25]wo03/wirehold[25]2default:default2B
wo03/wirehold_reg[25]	wo03/wirehold_reg[25]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[26]wo03/wirehold[26]2default:default2B
wo03/wirehold_reg[26]	wo03/wirehold_reg[26]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[10]_repN!ddr3_ui_0/adc_data_count[10]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[10]_replica	(ddr3_ui_0/adc_data_count_reg[10]_replica2default:default8Z32-662h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
fddr_to_dac_fifo_ddr/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_ifddr_to_dac_fifo_ddr/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i2default:default2�
jddr_to_dac_fifo_ddr/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg	jddr_to_dac_fifo_ddr/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg2default:default8Z32-663h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[10]wo03/wirehold[10]2default:default2B
wo03/wirehold_reg[10]	wo03/wirehold_reg[10]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[5]wo20/wirehold[5]2default:default2@
wo20/wirehold_reg[5]	wo20/wirehold_reg[5]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[20]_repN!ddr3_ui_0/adc_data_count[20]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[20]_replica	(ddr3_ui_0/adc_data_count_reg[20]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[20]wo03/wirehold[20]2default:default2B
wo03/wirehold_reg[20]	wo03/wirehold_reg[20]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[19]_repN!ddr3_ui_0/adc_data_count[19]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[19]_replica	(ddr3_ui_0/adc_data_count_reg[19]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 ddr3_ui_0/adc_data_count[9]_repN ddr3_ui_0/adc_data_count[9]_repN2default:default2f
'ddr3_ui_0/adc_data_count_reg[9]_replica	'ddr3_ui_0/adc_data_count_reg[9]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[19]wo03/wirehold[19]2default:default2B
wo03/wirehold_reg[19]	wo03/wirehold_reg[19]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[9]wo03/wirehold[9]2default:default2@
wo03/wirehold_reg[9]	wo03/wirehold_reg[9]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[15]_repN!ddr3_ui_0/adc_data_count[15]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[15]_replica	(ddr3_ui_0/adc_data_count_reg[15]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[28]_repN!ddr3_ui_0/adc_data_count[28]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[28]_replica	(ddr3_ui_0/adc_data_count_reg[28]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[15]wo03/wirehold[15]2default:default2B
wo03/wirehold_reg[15]	wo03/wirehold_reg[15]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[28]wo03/wirehold[28]2default:default2B
wo03/wirehold_reg[28]	wo03/wirehold_reg[28]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[14]_repN!ddr3_ui_0/adc_data_count[14]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[14]_replica	(ddr3_ui_0/adc_data_count_reg[14]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 ddr3_ui_0/adc_data_count[7]_repN ddr3_ui_0/adc_data_count[7]_repN2default:default2f
'ddr3_ui_0/adc_data_count_reg[7]_replica	'ddr3_ui_0/adc_data_count_reg[7]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[14]wo03/wirehold[14]2default:default2B
wo03/wirehold_reg[14]	wo03/wirehold_reg[14]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[7]wo03/wirehold[7]2default:default2@
wo03/wirehold_reg[7]	wo03/wirehold_reg[7]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ddr3_ui_0/adc_data_count[31]ddr3_ui_0/adc_data_count[31]2default:default2X
 ddr3_ui_0/adc_data_count_reg[31]	 ddr3_ui_0/adc_data_count_reg[31]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[31]wo03/wirehold[31]2default:default2B
wo03/wirehold_reg[31]	wo03/wirehold_reg[31]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ddr3_ui_0/adc_data_count[29]ddr3_ui_0/adc_data_count[29]2default:default2X
 ddr3_ui_0/adc_data_count_reg[29]	 ddr3_ui_0/adc_data_count_reg[29]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[29]wo03/wirehold[29]2default:default2B
wo03/wirehold_reg[29]	wo03/wirehold_reg[29]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2N
ddr3_ui_0/adc_data_count[8]ddr3_ui_0/adc_data_count[8]2default:default2V
ddr3_ui_0/adc_data_count_reg[8]	ddr3_ui_0/adc_data_count_reg[8]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[8]wo03/wirehold[8]2default:default2@
wo03/wirehold_reg[8]	wo03/wirehold_reg[8]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[11]_repN!ddr3_ui_0/adc_data_count[11]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[11]_replica	(ddr3_ui_0/adc_data_count_reg[11]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[11]wo03/wirehold[11]2default:default2B
wo03/wirehold_reg[11]	wo03/wirehold_reg[11]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ddr3_ui_0/adc_data_count[17]ddr3_ui_0/adc_data_count[17]2default:default2X
 ddr3_ui_0/adc_data_count_reg[17]	 ddr3_ui_0/adc_data_count_reg[17]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[17]wo03/wirehold[17]2default:default2B
wo03/wirehold_reg[17]	wo03/wirehold_reg[17]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2N
ddr3_ui_0/adc_data_count[5]ddr3_ui_0/adc_data_count[5]2default:default2V
ddr3_ui_0/adc_data_count_reg[5]	ddr3_ui_0/adc_data_count_reg[5]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[5]wo03/wirehold[5]2default:default2@
wo03/wirehold_reg[5]	wo03/wirehold_reg[5]2default:default8Z32-662h px� 
�
#Optimized %s %s.  Re-placed %s %s.
335*physynth2
32default:default2
nets2default:default2
32default:default2
	instances2default:defaultZ32-661h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
32default:default2!
nets or cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
32default:default2
cells2default:defaultZ32-775h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-26242.5132default:defaultZ32-619h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0292default:default2
2541.6052default:default2
0.0002default:defaultZ17-268h px� 
W
BPhase 15 Single Cell Placement Optimization | Checksum: 1439b3d1b
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:00 ; elapsed = 00:00:37 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
�

Phase %s%s
101*constraints2
16 2default:default25
!Multi Cell Placement Optimization2default:defaultZ18-101h px� 
�
=Identified %s candidate %s for placement-based optimization.
334*physynth2
752default:default2
nets2default:defaultZ32-660h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[0]wo03/wirehold[0]2default:default2D
wo03/wirehold_reg[0]/Q	wo03/wirehold_reg[0]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[2]wo20/wirehold[2]2default:default2D
wo20/wirehold_reg[2]/Q	wo20/wirehold_reg[2]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[4]wo03/wirehold[4]2default:default2D
wo03/wirehold_reg[4]/Q	wo03/wirehold_reg[4]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[30]wo03/wirehold[30]2default:default2F
wo03/wirehold_reg[30]/Q	wo03/wirehold_reg[30]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[13]wo03/wirehold[13]2default:default2F
wo03/wirehold_reg[13]/Q	wo03/wirehold_reg[13]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[9]wo20/wirehold[9]2default:default2D
wo20/wirehold_reg[9]/Q	wo20/wirehold_reg[9]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[1]wo03/wirehold[1]2default:default2D
wo03/wirehold_reg[1]/Q	wo03/wirehold_reg[1]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[24]wo03/wirehold[24]2default:default2F
wo03/wirehold_reg[24]/Q	wo03/wirehold_reg[24]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[7]wo20/wirehold[7]2default:default2D
wo20/wirehold_reg[7]/Q	wo20/wirehold_reg[7]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[16]wo03/wirehold[16]2default:default2F
wo03/wirehold_reg[16]/Q	wo03/wirehold_reg[16]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[2]wo03/wirehold[2]2default:default2D
wo03/wirehold_reg[2]/Q	wo03/wirehold_reg[2]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[4]wo20/wirehold[4]2default:default2D
wo20/wirehold_reg[4]/Q	wo20/wirehold_reg[4]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[21]wo03/wirehold[21]2default:default2F
wo03/wirehold_reg[21]/Q	wo03/wirehold_reg[21]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[27]wo03/wirehold[27]2default:default2F
wo03/wirehold_reg[27]/Q	wo03/wirehold_reg[27]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[12]wo03/wirehold[12]2default:default2F
wo03/wirehold_reg[12]/Q	wo03/wirehold_reg[12]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[23]wo03/wirehold[23]2default:default2F
wo03/wirehold_reg[23]/Q	wo03/wirehold_reg[23]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[22]wo03/wirehold[22]2default:default2F
wo03/wirehold_reg[22]/Q	wo03/wirehold_reg[22]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[6]wo03/wirehold[6]2default:default2D
wo03/wirehold_reg[6]/Q	wo03/wirehold_reg[6]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[3]wo03/wirehold[3]2default:default2D
wo03/wirehold_reg[3]/Q	wo03/wirehold_reg[3]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[18]wo03/wirehold[18]2default:default2F
wo03/wirehold_reg[18]/Q	wo03/wirehold_reg[18]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[25]wo03/wirehold[25]2default:default2F
wo03/wirehold_reg[25]/Q	wo03/wirehold_reg[25]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[26]wo03/wirehold[26]2default:default2F
wo03/wirehold_reg[26]/Q	wo03/wirehold_reg[26]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[10]wo03/wirehold[10]2default:default2F
wo03/wirehold_reg[10]/Q	wo03/wirehold_reg[10]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[5]wo20/wirehold[5]2default:default2D
wo20/wirehold_reg[5]/Q	wo20/wirehold_reg[5]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[20]wo03/wirehold[20]2default:default2F
wo03/wirehold_reg[20]/Q	wo03/wirehold_reg[20]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[19]wo03/wirehold[19]2default:default2F
wo03/wirehold_reg[19]/Q	wo03/wirehold_reg[19]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[9]wo03/wirehold[9]2default:default2D
wo03/wirehold_reg[9]/Q	wo03/wirehold_reg[9]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[0]wo20/wirehold[0]2default:default2D
wo20/wirehold_reg[0]/Q	wo20/wirehold_reg[0]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[15]wo03/wirehold[15]2default:default2F
wo03/wirehold_reg[15]/Q	wo03/wirehold_reg[15]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[28]wo03/wirehold[28]2default:default2F
wo03/wirehold_reg[28]/Q	wo03/wirehold_reg[28]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[14]wo03/wirehold[14]2default:default2F
wo03/wirehold_reg[14]/Q	wo03/wirehold_reg[14]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[7]wo03/wirehold[7]2default:default2D
wo03/wirehold_reg[7]/Q	wo03/wirehold_reg[7]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[31]wo03/wirehold[31]2default:default2F
wo03/wirehold_reg[31]/Q	wo03/wirehold_reg[31]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[29]wo03/wirehold[29]2default:default2F
wo03/wirehold_reg[29]/Q	wo03/wirehold_reg[29]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[8]wo03/wirehold[8]2default:default2D
wo03/wirehold_reg[8]/Q	wo03/wirehold_reg[8]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[11]wo03/wirehold[11]2default:default2F
wo03/wirehold_reg[11]/Q	wo03/wirehold_reg[11]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[17]wo03/wirehold[17]2default:default2F
wo03/wirehold_reg[17]/Q	wo03/wirehold_reg[17]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[5]wo03/wirehold[5]2default:default2D
wo03/wirehold_reg[5]/Q	wo03/wirehold_reg[5]/Q2default:default8Z32-662h px� 
�
#Optimized %s %s.  Re-placed %s %s.
335*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-661h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0302default:default2
2541.6052default:default2
0.0002default:defaultZ17-268h px� 
V
APhase 16 Multi Cell Placement Optimization | Checksum: 13548bef8
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:05 ; elapsed = 00:00:40 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
h

Phase %s%s
101*constraints2
17 2default:default2
Rewire2default:defaultZ18-101h px� 
a
Starting %s optimization...
227*physynth2
Signal Push2default:defaultZ32-246h px� 
h
.No nets found for rewiring (%s) optimization.
222*physynth2
 2default:defaultZ32-241h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2 
00:00:00.0242default:default2
2541.6052default:default2
0.0002default:defaultZ17-268h px� 
;
&Phase 17 Rewire | Checksum: 13548bef8
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:06 ; elapsed = 00:00:40 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
|

Phase %s%s
101*constraints2
18 2default:default2.
Critical Cell Optimization2default:defaultZ18-101h px� 
P
.No nets found for critical-cell optimization.
68*physynthZ32-68h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
O
:Phase 18 Critical Cell Optimization | Checksum: 13548bef8
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:06 ; elapsed = 00:00:41 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
{

Phase %s%s
101*constraints2
19 2default:default2-
DSP Register Optimization2default:defaultZ18-101h px� 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
N
9Phase 19 DSP Register Optimization | Checksum: 13548bef8
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:06 ; elapsed = 00:00:41 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
|

Phase %s%s
101*constraints2
20 2default:default2.
BRAM Register Optimization2default:defaultZ18-101h px� 
i
ENo candidate cells for BRAM register optimization found in the design297*physynthZ32-526h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
O
:Phase 20 BRAM Register Optimization | Checksum: 13548bef8
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:06 ; elapsed = 00:00:41 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
|

Phase %s%s
101*constraints2
21 2default:default2.
URAM Register Optimization2default:defaultZ18-101h px� 
j
FNo candidate cells for URAM register optimization found in the design
437*physynthZ32-846h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
O
:Phase 21 URAM Register Optimization | Checksum: 13548bef8
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:06 ; elapsed = 00:00:41 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
}

Phase %s%s
101*constraints2
22 2default:default2/
Shift Register Optimization2default:defaultZ18-101h px� 
h
DNo candidate cells for SRL register optimization found in the design349*physynthZ32-677h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
P
;Phase 22 Shift Register Optimization | Checksum: 13548bef8
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:06 ; elapsed = 00:00:41 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
{

Phase %s%s
101*constraints2
23 2default:default2-
DSP Register Optimization2default:defaultZ18-101h px� 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
N
9Phase 23 DSP Register Optimization | Checksum: 13548bef8
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:06 ; elapsed = 00:00:41 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
|

Phase %s%s
101*constraints2
24 2default:default2.
BRAM Register Optimization2default:defaultZ18-101h px� 
i
ENo candidate cells for BRAM register optimization found in the design297*physynthZ32-526h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
O
:Phase 24 BRAM Register Optimization | Checksum: 13548bef8
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:06 ; elapsed = 00:00:41 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
|

Phase %s%s
101*constraints2
25 2default:default2.
URAM Register Optimization2default:defaultZ18-101h px� 
j
FNo candidate cells for URAM register optimization found in the design
437*physynthZ32-846h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
O
:Phase 25 URAM Register Optimization | Checksum: 13548bef8
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:06 ; elapsed = 00:00:41 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
}

Phase %s%s
101*constraints2
26 2default:default2/
Shift Register Optimization2default:defaultZ18-101h px� 
h
DNo candidate cells for SRL register optimization found in the design349*physynthZ32-677h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
P
;Phase 26 Shift Register Optimization | Checksum: 13548bef8
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:06 ; elapsed = 00:00:41 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
{

Phase %s%s
101*constraints2
27 2default:default2-
Critical Pin Optimization2default:defaultZ18-101h px� 
[
7No candidate nets found for critical-pin optimization.
321*physynthZ32-607h px� 
�
!Optimized %s %s.  Swapped %s %s.
322*physynth2
02default:default2
net2default:default2
02default:default2
pin2default:defaultZ32-608h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
N
9Phase 27 Critical Pin Optimization | Checksum: 13548bef8
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:06 ; elapsed = 00:00:41 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 


Phase %s%s
101*constraints2
28 2default:default21
Very High Fanout Optimization2default:defaultZ18-101h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. Its physical fanout number is changed from %s to %s. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth2�
�u_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/read_fifo.fifo_out_data_r_reg[6]�u_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/u_ddr_phy_init/read_fifo.fifo_out_data_r_reg[6]2default:default2
3452default:default2
452default:default2
452default:default8Z32-1132h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. Its physical fanout number is changed from %s to %s. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth2�
Pu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/mc0/wr_data_addr[0]Pu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/mc0/wr_data_addr[0]2default:default2
2892default:default2
1462default:default2
1462default:default8Z32-1132h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. Its physical fanout number is changed from %s to %s. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth2�
Pu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/mc0/wr_data_addr[1]Pu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/mc0/wr_data_addr[1]2default:default2
2892default:default2
1462default:default2
1462default:default8Z32-1132h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. Its physical fanout number is changed from %s to %s. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth2�
Pu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/mc0/wr_data_addr[2]Pu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/mc0/wr_data_addr[2]2default:default2
2892default:default2
1462default:default2
1462default:default8Z32-1132h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. Its physical fanout number is changed from %s to %s. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth2�
Pu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/mc0/wr_data_addr[3]Pu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/mc0/wr_data_addr[3]2default:default2
2892default:default2
1462default:default2
1462default:default8Z32-1132h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. Its physical fanout number is changed from %s to %s. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth2�
pu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/mc0/col_mach0/read_fifo.fifo_out_data_r_reg[7]_0[1]pu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/mc0/col_mach0/read_fifo.fifo_out_data_r_reg[7]_0[1]2default:default2
3462default:default2
462default:default2
462default:default8Z32-1132h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. Its physical fanout number is changed from %s to %s. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth2�
pu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/mc0/col_mach0/read_fifo.fifo_out_data_r_reg[7]_0[2]pu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/mc0/col_mach0/read_fifo.fifo_out_data_r_reg[7]_0[2]2default:default2
3462default:default2
462default:default2
462default:default8Z32-1132h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. Its physical fanout number is changed from %s to %s. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth2�
pu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/mc0/col_mach0/read_fifo.fifo_out_data_r_reg[7]_0[3]pu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/mc0/col_mach0/read_fifo.fifo_out_data_r_reg[7]_0[3]2default:default2
3462default:default2
462default:default2
462default:default8Z32-1132h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. Its physical fanout number is changed from %s to %s. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth2�
pu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/mc0/col_mach0/read_fifo.fifo_out_data_r_reg[7]_0[4]pu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/mc0/col_mach0/read_fifo.fifo_out_data_r_reg[7]_0[4]2default:default2
3462default:default2
462default:default2
462default:default8Z32-1132h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. Its physical fanout number is changed from %s to %s. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth2�
pu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/mc0/col_mach0/read_fifo.fifo_out_data_r_reg[7]_0[5]pu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/mc0/col_mach0/read_fifo.fifo_out_data_r_reg[7]_0[5]2default:default2
3462default:default2
462default:default2
462default:default8Z32-1132h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. Its physical fanout number is changed from %s to %s. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth2�
su_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/u_ui_top/ui_rd_data0/not_strict_mode.rd_buf.rd_buf_indx_copy_r[0]su_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/u_ui_top/ui_rd_data0/not_strict_mode.rd_buf.rd_buf_indx_copy_r[0]2default:default2
2582default:default2
1302default:default2
1302default:default8Z32-1132h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. Its physical fanout number is changed from %s to %s. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth2�
su_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/u_ui_top/ui_rd_data0/not_strict_mode.rd_buf.rd_buf_indx_copy_r[1]su_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/u_ui_top/ui_rd_data0/not_strict_mode.rd_buf.rd_buf_indx_copy_r[1]2default:default2
2582default:default2
1302default:default2
1302default:default8Z32-1132h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. Its physical fanout number is changed from %s to %s. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth2�
su_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/u_ui_top/ui_rd_data0/not_strict_mode.rd_buf.rd_buf_indx_copy_r[2]su_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/u_ui_top/ui_rd_data0/not_strict_mode.rd_buf.rd_buf_indx_copy_r[2]2default:default2
2582default:default2
1302default:default2
1302default:default8Z32-1132h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. Its physical fanout number is changed from %s to %s. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth2�
su_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/u_ui_top/ui_rd_data0/not_strict_mode.rd_buf.rd_buf_indx_copy_r[3]su_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/u_ui_top/ui_rd_data0/not_strict_mode.rd_buf.rd_buf_indx_copy_r[3]2default:default2
2582default:default2
1302default:default2
1302default:default8Z32-1132h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. Its physical fanout number is changed from %s to %s. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth2�
su_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/u_ui_top/ui_rd_data0/not_strict_mode.rd_buf.rd_buf_indx_copy_r[4]su_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/u_ui_top/ui_rd_data0/not_strict_mode.rd_buf.rd_buf_indx_copy_r[4]2default:default2
2582default:default2
1302default:default2
1302default:default8Z32-1132h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. Its physical fanout number is changed from %s to %s. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth2�
Qu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/u_ui_top/ui_wr_data0/wdf_rdy_nsQu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/u_ui_top/ui_wr_data0/wdf_rdy_ns2default:default2
3892default:default2
542default:default2
542default:default8Z32-1132h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. Its physical fanout number is changed from %s to %s. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth2�
uu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/u_ui_top/ui_wr_data0/write_buffer.wr_buffer_ram[0].RAM32M0_i_10_n_0uu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/u_ui_top/ui_wr_data0/write_buffer.wr_buffer_ram[0].RAM32M0_i_10_n_02default:default2
3842default:default2
492default:default2
492default:default8Z32-1132h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. Its physical fanout number is changed from %s to %s. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth2�
uu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/u_ui_top/ui_wr_data0/write_buffer.wr_buffer_ram[0].RAM32M0_i_11_n_0uu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/u_ui_top/ui_wr_data0/write_buffer.wr_buffer_ram[0].RAM32M0_i_11_n_02default:default2
3842default:default2
492default:default2
492default:default8Z32-1132h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. Its physical fanout number is changed from %s to %s. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth2�
tu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/u_ui_top/ui_wr_data0/write_buffer.wr_buffer_ram[0].RAM32M0_i_7_n_0tu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/u_ui_top/ui_wr_data0/write_buffer.wr_buffer_ram[0].RAM32M0_i_7_n_02default:default2
3842default:default2
492default:default2
492default:default8Z32-1132h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. Its physical fanout number is changed from %s to %s. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth2�
tu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/u_ui_top/ui_wr_data0/write_buffer.wr_buffer_ram[0].RAM32M0_i_8_n_0tu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/u_ui_top/ui_wr_data0/write_buffer.wr_buffer_ram[0].RAM32M0_i_8_n_02default:default2
3842default:default2
492default:default2
492default:default8Z32-1132h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. Its physical fanout number is changed from %s to %s. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth2�
tu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/u_ui_top/ui_wr_data0/write_buffer.wr_buffer_ram[0].RAM32M0_i_9_n_0tu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/u_ui_top/ui_wr_data0/write_buffer.wr_buffer_ram[0].RAM32M0_i_9_n_02default:default2
3842default:default2
492default:default2
492default:default8Z32-1132h px� 
�
=Pass %s. Identified %s candidate %s for fanout optimization.
76*physynth2
12default:default2
92default:default2
nets2default:defaultZ32-76h px� 
�
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2�
=dac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/ep_trigger_reg[1]=dac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/ep_trigger_reg[1]2default:default8Z32-572h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Cdac80508_gen[0].spi_fifo1/u_Butterworth_0/mul_temp_2[46]_i_1__4_n_0Cdac80508_gen[0].spi_fifo1/u_Butterworth_0/mul_temp_2[46]_i_1__4_n_02default:default2
22default:default8Z32-81h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2�
Cdac80508_gen[1].spi_fifo1/u_Butterworth_0/mul_temp_2[46]_i_1__3_n_0Cdac80508_gen[1].spi_fifo1/u_Butterworth_0/mul_temp_2[46]_i_1__3_n_02default:default2
32default:default8Z32-81h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
22default:default2
nets2default:default2
52default:default2
	instances2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
22default:default2!
nets or cells2default:default2
52default:default2
cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25401.7632default:defaultZ32-619h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.1422default:default2
2541.6052default:default2
0.0002default:defaultZ17-268h px� 
R
=Phase 28 Very High Fanout Optimization | Checksum: 1a9f7f4c1
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:56 ; elapsed = 00:01:11 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
�

Phase %s%s
101*constraints2
29 2default:default26
"Single Cell Placement Optimization2default:defaultZ18-101h px� 
�
=Identified %s candidate %s for placement-based optimization.
334*physynth2
752default:default2
nets2default:defaultZ32-660h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 ddr3_ui_0/adc_data_count[0]_repN ddr3_ui_0/adc_data_count[0]_repN2default:default2f
'ddr3_ui_0/adc_data_count_reg[0]_replica	'ddr3_ui_0/adc_data_count_reg[0]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
bfg_pipein_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_ibfg_pipein_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i2default:default2�
ffg_pipein_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i_reg	ffg_pipein_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i_reg2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[0]wo03/wirehold[0]2default:default2@
wo03/wirehold_reg[0]	wo03/wirehold_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[2]wo20/wirehold[2]2default:default2@
wo20/wirehold_reg[2]	wo20/wirehold_reg[2]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 ddr3_ui_0/adc_data_count[4]_repN ddr3_ui_0/adc_data_count[4]_repN2default:default2f
'ddr3_ui_0/adc_data_count_reg[4]_replica	'ddr3_ui_0/adc_data_count_reg[4]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[4]wo03/wirehold[4]2default:default2@
wo03/wirehold_reg[4]	wo03/wirehold_reg[4]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[30]_repN!ddr3_ui_0/adc_data_count[30]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[30]_replica	(ddr3_ui_0/adc_data_count_reg[30]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[30]wo03/wirehold[30]2default:default2B
wo03/wirehold_reg[30]	wo03/wirehold_reg[30]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[13]_repN!ddr3_ui_0/adc_data_count[13]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[13]_replica	(ddr3_ui_0/adc_data_count_reg[13]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[13]wo03/wirehold[13]2default:default2B
wo03/wirehold_reg[13]	wo03/wirehold_reg[13]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[9]wo20/wirehold[9]2default:default2@
wo20/wirehold_reg[9]	wo20/wirehold_reg[9]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 ddr3_ui_0/adc_data_count[1]_repN ddr3_ui_0/adc_data_count[1]_repN2default:default2f
'ddr3_ui_0/adc_data_count_reg[1]_replica	'ddr3_ui_0/adc_data_count_reg[1]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[1]wo03/wirehold[1]2default:default2@
wo03/wirehold_reg[1]	wo03/wirehold_reg[1]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[24]_repN!ddr3_ui_0/adc_data_count[24]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[24]_replica	(ddr3_ui_0/adc_data_count_reg[24]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[24]wo03/wirehold[24]2default:default2B
wo03/wirehold_reg[24]	wo03/wirehold_reg[24]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
fokPipeOut_fifo_ddr2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_ifokPipeOut_fifo_ddr2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i2default:default2�
jokPipeOut_fifo_ddr2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg	jokPipeOut_fifo_ddr2/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[7]wo20/wirehold[7]2default:default2@
wo20/wirehold_reg[7]	wo20/wirehold_reg[7]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[16]_repN!ddr3_ui_0/adc_data_count[16]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[16]_replica	(ddr3_ui_0/adc_data_count_reg[16]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 ddr3_ui_0/adc_data_count[2]_repN ddr3_ui_0/adc_data_count[2]_repN2default:default2f
'ddr3_ui_0/adc_data_count_reg[2]_replica	'ddr3_ui_0/adc_data_count_reg[2]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[16]wo03/wirehold[16]2default:default2B
wo03/wirehold_reg[16]	wo03/wirehold_reg[16]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[2]wo03/wirehold[2]2default:default2@
wo03/wirehold_reg[2]	wo03/wirehold_reg[2]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
cadc_to_ddr_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_icadc_to_ddr_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i2default:default2�
gadc_to_ddr_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i_reg	gadc_to_ddr_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i_reg2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[4]wo20/wirehold[4]2default:default2@
wo20/wirehold_reg[4]	wo20/wirehold_reg[4]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[21]_repN!ddr3_ui_0/adc_data_count[21]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[21]_replica	(ddr3_ui_0/adc_data_count_reg[21]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[21]wo03/wirehold[21]2default:default2B
wo03/wirehold_reg[21]	wo03/wirehold_reg[21]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[27]_repN!ddr3_ui_0/adc_data_count[27]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[27]_replica	(ddr3_ui_0/adc_data_count_reg[27]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[27]wo03/wirehold[27]2default:default2B
wo03/wirehold_reg[27]	wo03/wirehold_reg[27]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[12]_repN!ddr3_ui_0/adc_data_count[12]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[12]_replica	(ddr3_ui_0/adc_data_count_reg[12]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[12]wo03/wirehold[12]2default:default2B
wo03/wirehold_reg[12]	wo03/wirehold_reg[12]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[23]_repN!ddr3_ui_0/adc_data_count[23]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[23]_replica	(ddr3_ui_0/adc_data_count_reg[23]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[23]wo03/wirehold[23]2default:default2B
wo03/wirehold_reg[23]	wo03/wirehold_reg[23]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[22]_repN!ddr3_ui_0/adc_data_count[22]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[22]_replica	(ddr3_ui_0/adc_data_count_reg[22]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[22]wo03/wirehold[22]2default:default2B
wo03/wirehold_reg[22]	wo03/wirehold_reg[22]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 ddr3_ui_0/adc_data_count[6]_repN ddr3_ui_0/adc_data_count[6]_repN2default:default2f
'ddr3_ui_0/adc_data_count_reg[6]_replica	'ddr3_ui_0/adc_data_count_reg[6]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[6]wo03/wirehold[6]2default:default2@
wo03/wirehold_reg[6]	wo03/wirehold_reg[6]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 ddr3_ui_0/adc_data_count[3]_repN ddr3_ui_0/adc_data_count[3]_repN2default:default2f
'ddr3_ui_0/adc_data_count_reg[3]_replica	'ddr3_ui_0/adc_data_count_reg[3]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[3]wo03/wirehold[3]2default:default2@
wo03/wirehold_reg[3]	wo03/wirehold_reg[3]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[18]_repN!ddr3_ui_0/adc_data_count[18]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[18]_replica	(ddr3_ui_0/adc_data_count_reg[18]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[25]_repN!ddr3_ui_0/adc_data_count[25]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[25]_replica	(ddr3_ui_0/adc_data_count_reg[25]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[26]_repN!ddr3_ui_0/adc_data_count[26]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[26]_replica	(ddr3_ui_0/adc_data_count_reg[26]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[18]wo03/wirehold[18]2default:default2B
wo03/wirehold_reg[18]	wo03/wirehold_reg[18]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[25]wo03/wirehold[25]2default:default2B
wo03/wirehold_reg[25]	wo03/wirehold_reg[25]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[26]wo03/wirehold[26]2default:default2B
wo03/wirehold_reg[26]	wo03/wirehold_reg[26]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[10]_repN!ddr3_ui_0/adc_data_count[10]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[10]_replica	(ddr3_ui_0/adc_data_count_reg[10]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[10]wo03/wirehold[10]2default:default2B
wo03/wirehold_reg[10]	wo03/wirehold_reg[10]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
fddr_to_dac_fifo_ddr/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_ifddr_to_dac_fifo_ddr/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i2default:default2�
jddr_to_dac_fifo_ddr/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg	jddr_to_dac_fifo_ddr/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[5]wo20/wirehold[5]2default:default2@
wo20/wirehold_reg[5]	wo20/wirehold_reg[5]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[20]_repN!ddr3_ui_0/adc_data_count[20]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[20]_replica	(ddr3_ui_0/adc_data_count_reg[20]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[20]wo03/wirehold[20]2default:default2B
wo03/wirehold_reg[20]	wo03/wirehold_reg[20]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[19]_repN!ddr3_ui_0/adc_data_count[19]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[19]_replica	(ddr3_ui_0/adc_data_count_reg[19]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 ddr3_ui_0/adc_data_count[9]_repN ddr3_ui_0/adc_data_count[9]_repN2default:default2f
'ddr3_ui_0/adc_data_count_reg[9]_replica	'ddr3_ui_0/adc_data_count_reg[9]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2�
ku_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/phy_dout[21]_repNku_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/phy_dout[21]_repN2default:default2�
yu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/init_calib_complete_reg_replica	yu_ddr3_256_32/u_ddr3_256_32_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/init_calib_complete_reg_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[19]wo03/wirehold[19]2default:default2B
wo03/wirehold_reg[19]	wo03/wirehold_reg[19]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[9]wo03/wirehold[9]2default:default2@
wo03/wirehold_reg[9]	wo03/wirehold_reg[9]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[0]wo20/wirehold[0]2default:default2@
wo20/wirehold_reg[0]	wo20/wirehold_reg[0]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[15]_repN!ddr3_ui_0/adc_data_count[15]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[15]_replica	(ddr3_ui_0/adc_data_count_reg[15]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[28]_repN!ddr3_ui_0/adc_data_count[28]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[28]_replica	(ddr3_ui_0/adc_data_count_reg[28]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[15]wo03/wirehold[15]2default:default2B
wo03/wirehold_reg[15]	wo03/wirehold_reg[15]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[28]wo03/wirehold[28]2default:default2B
wo03/wirehold_reg[28]	wo03/wirehold_reg[28]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[14]_repN!ddr3_ui_0/adc_data_count[14]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[14]_replica	(ddr3_ui_0/adc_data_count_reg[14]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2X
 ddr3_ui_0/adc_data_count[7]_repN ddr3_ui_0/adc_data_count[7]_repN2default:default2f
'ddr3_ui_0/adc_data_count_reg[7]_replica	'ddr3_ui_0/adc_data_count_reg[7]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[14]wo03/wirehold[14]2default:default2B
wo03/wirehold_reg[14]	wo03/wirehold_reg[14]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[7]wo03/wirehold[7]2default:default2@
wo03/wirehold_reg[7]	wo03/wirehold_reg[7]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ddr3_ui_0/adc_data_count[31]ddr3_ui_0/adc_data_count[31]2default:default2X
 ddr3_ui_0/adc_data_count_reg[31]	 ddr3_ui_0/adc_data_count_reg[31]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[31]wo03/wirehold[31]2default:default2B
wo03/wirehold_reg[31]	wo03/wirehold_reg[31]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ddr3_ui_0/adc_data_count[29]ddr3_ui_0/adc_data_count[29]2default:default2X
 ddr3_ui_0/adc_data_count_reg[29]	 ddr3_ui_0/adc_data_count_reg[29]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[29]wo03/wirehold[29]2default:default2B
wo03/wirehold_reg[29]	wo03/wirehold_reg[29]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2N
ddr3_ui_0/adc_data_count[8]ddr3_ui_0/adc_data_count[8]2default:default2V
ddr3_ui_0/adc_data_count_reg[8]	ddr3_ui_0/adc_data_count_reg[8]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[8]wo03/wirehold[8]2default:default2@
wo03/wirehold_reg[8]	wo03/wirehold_reg[8]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!ddr3_ui_0/adc_data_count[11]_repN!ddr3_ui_0/adc_data_count[11]_repN2default:default2h
(ddr3_ui_0/adc_data_count_reg[11]_replica	(ddr3_ui_0/adc_data_count_reg[11]_replica2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[11]wo03/wirehold[11]2default:default2B
wo03/wirehold_reg[11]	wo03/wirehold_reg[11]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2P
ddr3_ui_0/adc_data_count[17]ddr3_ui_0/adc_data_count[17]2default:default2X
 ddr3_ui_0/adc_data_count_reg[17]	 ddr3_ui_0/adc_data_count_reg[17]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[17]wo03/wirehold[17]2default:default2B
wo03/wirehold_reg[17]	wo03/wirehold_reg[17]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2N
ddr3_ui_0/adc_data_count[5]ddr3_ui_0/adc_data_count[5]2default:default2V
ddr3_ui_0/adc_data_count_reg[5]	ddr3_ui_0/adc_data_count_reg[5]2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[5]wo03/wirehold[5]2default:default2@
wo03/wirehold_reg[5]	wo03/wirehold_reg[5]2default:default8Z32-662h px� 
�
#Optimized %s %s.  Re-placed %s %s.
335*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-661h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0242default:default2
2541.6052default:default2
0.0002default:defaultZ17-268h px� 
W
BPhase 29 Single Cell Placement Optimization | Checksum: 15f243f44
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:04 ; elapsed = 00:01:16 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
�

Phase %s%s
101*constraints2
30 2default:default25
!Multi Cell Placement Optimization2default:defaultZ18-101h px� 
�
=Identified %s candidate %s for placement-based optimization.
334*physynth2
752default:default2
nets2default:defaultZ32-660h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[0]wo03/wirehold[0]2default:default2D
wo03/wirehold_reg[0]/Q	wo03/wirehold_reg[0]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[2]wo20/wirehold[2]2default:default2D
wo20/wirehold_reg[2]/Q	wo20/wirehold_reg[2]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[4]wo03/wirehold[4]2default:default2D
wo03/wirehold_reg[4]/Q	wo03/wirehold_reg[4]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[30]wo03/wirehold[30]2default:default2F
wo03/wirehold_reg[30]/Q	wo03/wirehold_reg[30]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[13]wo03/wirehold[13]2default:default2F
wo03/wirehold_reg[13]/Q	wo03/wirehold_reg[13]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[9]wo20/wirehold[9]2default:default2D
wo20/wirehold_reg[9]/Q	wo20/wirehold_reg[9]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[1]wo03/wirehold[1]2default:default2D
wo03/wirehold_reg[1]/Q	wo03/wirehold_reg[1]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[24]wo03/wirehold[24]2default:default2F
wo03/wirehold_reg[24]/Q	wo03/wirehold_reg[24]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[7]wo20/wirehold[7]2default:default2D
wo20/wirehold_reg[7]/Q	wo20/wirehold_reg[7]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[16]wo03/wirehold[16]2default:default2F
wo03/wirehold_reg[16]/Q	wo03/wirehold_reg[16]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[2]wo03/wirehold[2]2default:default2D
wo03/wirehold_reg[2]/Q	wo03/wirehold_reg[2]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[4]wo20/wirehold[4]2default:default2D
wo20/wirehold_reg[4]/Q	wo20/wirehold_reg[4]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[21]wo03/wirehold[21]2default:default2F
wo03/wirehold_reg[21]/Q	wo03/wirehold_reg[21]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[27]wo03/wirehold[27]2default:default2F
wo03/wirehold_reg[27]/Q	wo03/wirehold_reg[27]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[12]wo03/wirehold[12]2default:default2F
wo03/wirehold_reg[12]/Q	wo03/wirehold_reg[12]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[23]wo03/wirehold[23]2default:default2F
wo03/wirehold_reg[23]/Q	wo03/wirehold_reg[23]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[22]wo03/wirehold[22]2default:default2F
wo03/wirehold_reg[22]/Q	wo03/wirehold_reg[22]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[6]wo03/wirehold[6]2default:default2D
wo03/wirehold_reg[6]/Q	wo03/wirehold_reg[6]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[3]wo03/wirehold[3]2default:default2D
wo03/wirehold_reg[3]/Q	wo03/wirehold_reg[3]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[18]wo03/wirehold[18]2default:default2F
wo03/wirehold_reg[18]/Q	wo03/wirehold_reg[18]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[25]wo03/wirehold[25]2default:default2F
wo03/wirehold_reg[25]/Q	wo03/wirehold_reg[25]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[26]wo03/wirehold[26]2default:default2F
wo03/wirehold_reg[26]/Q	wo03/wirehold_reg[26]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[10]wo03/wirehold[10]2default:default2F
wo03/wirehold_reg[10]/Q	wo03/wirehold_reg[10]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[5]wo20/wirehold[5]2default:default2D
wo20/wirehold_reg[5]/Q	wo20/wirehold_reg[5]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[20]wo03/wirehold[20]2default:default2F
wo03/wirehold_reg[20]/Q	wo03/wirehold_reg[20]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[19]wo03/wirehold[19]2default:default2F
wo03/wirehold_reg[19]/Q	wo03/wirehold_reg[19]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[9]wo03/wirehold[9]2default:default2D
wo03/wirehold_reg[9]/Q	wo03/wirehold_reg[9]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo20/wirehold[0]wo20/wirehold[0]2default:default2D
wo20/wirehold_reg[0]/Q	wo20/wirehold_reg[0]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[15]wo03/wirehold[15]2default:default2F
wo03/wirehold_reg[15]/Q	wo03/wirehold_reg[15]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[28]wo03/wirehold[28]2default:default2F
wo03/wirehold_reg[28]/Q	wo03/wirehold_reg[28]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[14]wo03/wirehold[14]2default:default2F
wo03/wirehold_reg[14]/Q	wo03/wirehold_reg[14]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[7]wo03/wirehold[7]2default:default2D
wo03/wirehold_reg[7]/Q	wo03/wirehold_reg[7]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[31]wo03/wirehold[31]2default:default2F
wo03/wirehold_reg[31]/Q	wo03/wirehold_reg[31]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[29]wo03/wirehold[29]2default:default2F
wo03/wirehold_reg[29]/Q	wo03/wirehold_reg[29]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[8]wo03/wirehold[8]2default:default2D
wo03/wirehold_reg[8]/Q	wo03/wirehold_reg[8]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[11]wo03/wirehold[11]2default:default2F
wo03/wirehold_reg[11]/Q	wo03/wirehold_reg[11]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth2:
wo03/wirehold[17]wo03/wirehold[17]2default:default2F
wo03/wirehold_reg[17]/Q	wo03/wirehold_reg[17]/Q2default:default8Z32-662h px� 
�
/Processed net %s.  Did not re-place instance %s336*physynth28
wo03/wirehold[5]wo03/wirehold[5]2default:default2D
wo03/wirehold_reg[5]/Q	wo03/wirehold_reg[5]/Q2default:default8Z32-662h px� 
�
#Optimized %s %s.  Re-placed %s %s.
335*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-661h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0252default:default2
2541.6052default:default2
0.0002default:defaultZ17-268h px� 
V
APhase 30 Multi Cell Placement Optimization | Checksum: 15f243f44
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:09 ; elapsed = 00:01:20 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
{

Phase %s%s
101*constraints2
31 2default:default2-
SLR Crossing Optimization2default:defaultZ18-101h px� 
N
9Phase 31 SLR Crossing Optimization | Checksum: 15f243f44
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:09 ; elapsed = 00:01:20 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
|

Phase %s%s
101*constraints2
32 2default:default2.
Critical Path Optimization2default:defaultZ18-101h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25401.7632default:defaultZ32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth28
wo03/wirehold[0]wo03/wirehold[0]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
?u_ddr3_256_32/u_ddr3_256_32_mig/u_ddr3_infrastructure/clk_pll_i?u_ddr3_256_32/u_ddr3_256_32_mig/u_ddr3_infrastructure/clk_pll_i2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2X
 ddr3_ui_0/adc_data_count[0]_repN ddr3_ui_0/adc_data_count[0]_repN2default:default8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b3_section2_reg_reg_n_0_[30]Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b3_section2_reg_reg_n_0_[30]2default:default2�
Idac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b3_section2_reg_reg[30]	Idac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b3_section2_reg_reg[30]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b3_section2_reg_reg_n_0_[30]Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b3_section2_reg_reg_n_0_[30]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25401.6692default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Idac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg_n_0_[28]Idac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg_n_0_[28]2default:default2�
Ddac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg[28]	Ddac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg[28]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Idac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg_n_0_[28]Idac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg_n_0_[28]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25401.2362default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Idac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg_n_0_[29]Idac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg_n_0_[29]2default:default2�
Ddac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg[29]	Ddac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg[29]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Idac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg_n_0_[29]Idac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg_n_0_[29]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25400.8032default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Idac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg_n_0_[31]Idac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg_n_0_[31]2default:default2�
Ddac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg[31]	Ddac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg[31]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Idac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg_n_0_[31]Idac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg_n_0_[31]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25400.5212default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Hdac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg_n_0_[5]Hdac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg_n_0_[5]2default:default2�
Cdac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg[5]	Cdac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg[5]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Hdac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg_n_0_[5]Hdac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg_n_0_[5]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25400.2412default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Hdac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg_n_0_[8]Hdac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg_n_0_[8]2default:default2�
Cdac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg[8]	Cdac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg[8]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Hdac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg_n_0_[8]Hdac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg_n_0_[8]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25399.9592default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Mdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section2_reg_reg_n_0_[2]Mdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section2_reg_reg_n_0_[2]2default:default2�
Hdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section2_reg_reg[2]	Hdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section2_reg_reg[2]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Mdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section2_reg_reg_n_0_[2]Mdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section2_reg_reg_n_0_[2]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25399.8302default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section2_reg_reg_n_0_[31]Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section2_reg_reg_n_0_[31]2default:default2�
Idac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section2_reg_reg[31]	Idac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section2_reg_reg[31]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section2_reg_reg_n_0_[31]Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section2_reg_reg_n_0_[31]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25399.7022default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Mdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section2_reg_reg_n_0_[3]Mdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section2_reg_reg_n_0_[3]2default:default2�
Hdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section2_reg_reg[3]	Hdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section2_reg_reg[3]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Mdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section2_reg_reg_n_0_[3]Mdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section2_reg_reg_n_0_[3]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25399.5732default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Mdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section2_reg_reg_n_0_[8]Mdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section2_reg_reg_n_0_[8]2default:default2�
Hdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section2_reg_reg[8]	Hdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section2_reg_reg[8]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Mdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section2_reg_reg_n_0_[8]Mdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section2_reg_reg_n_0_[8]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25399.4442default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Ndac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[15]Ndac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[15]2default:default2�
Idac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[15]	Idac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[15]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Ndac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[15]Ndac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[15]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25398.9202default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Ndac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[16]Ndac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[16]2default:default2�
Idac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[16]	Idac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[16]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Ndac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[16]Ndac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[16]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25398.5422default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Mdac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[1]Mdac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[1]2default:default2�
Hdac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[1]	Hdac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[1]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Mdac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[1]Mdac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[1]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25398.1632default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Ndac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[20]Ndac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[20]2default:default2�
Idac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[20]	Idac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[20]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Ndac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[20]Ndac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[20]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25397.7852default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Ndac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[22]Ndac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[22]2default:default2�
Idac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[22]	Idac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[22]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Ndac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[22]Ndac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[22]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25397.4072default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Mdac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[7]Mdac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[7]2default:default2�
Hdac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[7]	Hdac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg[7]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Mdac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[7]Mdac_ad5453_gen[4].spi_fifo0/u_Butterworth_0/coeff_a3_section2_reg_reg_n_0_[7]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25397.0612default:defaultZ32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2N
ad7961_gen[0].adc7961/Q[11]ad7961_gen[0].adc7961/Q[11]2default:default8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
Timing/adc_tcyc_cnt[21]Timing/adc_tcyc_cnt[21]2default:default2N
Timing/adc_tcyc_cnt_reg[21]	Timing/adc_tcyc_cnt_reg[21]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
Timing/adc_tcyc_cnt[21]Timing/adc_tcyc_cnt[21]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25394.3332default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
Timing/adc_tcyc_cnt[13]Timing/adc_tcyc_cnt[13]2default:default2N
Timing/adc_tcyc_cnt_reg[13]	Timing/adc_tcyc_cnt_reg[13]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
Timing/adc_tcyc_cnt[13]Timing/adc_tcyc_cnt[13]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25377.2072default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
Timing/adc_tcyc_cnt[20]Timing/adc_tcyc_cnt[20]2default:default2N
Timing/adc_tcyc_cnt_reg[20]	Timing/adc_tcyc_cnt_reg[20]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
Timing/adc_tcyc_cnt[20]Timing/adc_tcyc_cnt[20]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25375.5932default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
Timing/adc_tcyc_cnt[25]Timing/adc_tcyc_cnt[25]2default:default2R
Timing/adc_tcyc_cnt_reg[25]/Q	Timing/adc_tcyc_cnt_reg[25]/Q2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
Timing/adc_tcyc_cnt[25]Timing/adc_tcyc_cnt[25]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25374.3362default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
Timing/adc_tcyc_cnt[12]Timing/adc_tcyc_cnt[12]2default:default2N
Timing/adc_tcyc_cnt_reg[12]	Timing/adc_tcyc_cnt_reg[12]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
Timing/adc_tcyc_cnt[12]Timing/adc_tcyc_cnt[12]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25373.8402default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
Timing/adc_tcyc_cnt[21]Timing/adc_tcyc_cnt[21]2default:default2N
Timing/adc_tcyc_cnt_reg[21]	Timing/adc_tcyc_cnt_reg[21]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
Timing/adc_tcyc_cnt[21]Timing/adc_tcyc_cnt[21]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25373.4872default:defaultZ32-619h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2F
Timing/adc_tcyc_cnt[21]Timing/adc_tcyc_cnt[21]2default:default2
12default:default8Z32-81h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
Timing/adc_tcyc_cnt[21]Timing/adc_tcyc_cnt[21]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25368.0792default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2P
Timing/adc_tcyc_cnt[21]_repNTiming/adc_tcyc_cnt[21]_repN2default:default2b
%Timing/adc_tcyc_cnt_reg[21]_replica/Q	%Timing/adc_tcyc_cnt_reg[21]_replica/Q2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2P
Timing/adc_tcyc_cnt[21]_repNTiming/adc_tcyc_cnt[21]_repN2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25376.2562default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
Timing/adc_tcyc_cnt[20]Timing/adc_tcyc_cnt[20]2default:default2N
Timing/adc_tcyc_cnt_reg[20]	Timing/adc_tcyc_cnt_reg[20]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
Timing/adc_tcyc_cnt[20]Timing/adc_tcyc_cnt[20]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25367.3212default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2P
Timing/adc_tcyc_cnt[21]_repNTiming/adc_tcyc_cnt[21]_repN2default:default2^
#Timing/adc_tcyc_cnt_reg[21]_replica	#Timing/adc_tcyc_cnt_reg[21]_replica2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2P
Timing/adc_tcyc_cnt[21]_repNTiming/adc_tcyc_cnt[21]_repN2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25366.5772default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
Timing/adc_tcyc_cnt[13]Timing/adc_tcyc_cnt[13]2default:default2R
Timing/adc_tcyc_cnt_reg[13]/Q	Timing/adc_tcyc_cnt_reg[13]/Q2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
Timing/adc_tcyc_cnt[13]Timing/adc_tcyc_cnt[13]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25365.8332default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
Timing/adc_tcyc_cnt[24]Timing/adc_tcyc_cnt[24]2default:default2N
Timing/adc_tcyc_cnt_reg[24]	Timing/adc_tcyc_cnt_reg[24]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
Timing/adc_tcyc_cnt[24]Timing/adc_tcyc_cnt[24]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25365.7582default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2P
Timing/adc_tcyc_cnt[21]_repNTiming/adc_tcyc_cnt[21]_repN2default:default2b
%Timing/adc_tcyc_cnt_reg[21]_replica/Q	%Timing/adc_tcyc_cnt_reg[21]_replica/Q2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2P
Timing/adc_tcyc_cnt[21]_repNTiming/adc_tcyc_cnt[21]_repN2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25363.6502default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
Timing/adc_tcyc_cnt[17]Timing/adc_tcyc_cnt[17]2default:default2N
Timing/adc_tcyc_cnt_reg[17]	Timing/adc_tcyc_cnt_reg[17]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
Timing/adc_tcyc_cnt[17]Timing/adc_tcyc_cnt[17]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25360.7562default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
Timing/adc_tcyc_cnt[20]Timing/adc_tcyc_cnt[20]2default:default2N
Timing/adc_tcyc_cnt_reg[20]	Timing/adc_tcyc_cnt_reg[20]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
Timing/adc_tcyc_cnt[20]Timing/adc_tcyc_cnt[20]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25358.3262default:defaultZ32-619h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2F
Timing/adc_tcyc_cnt[24]Timing/adc_tcyc_cnt[24]2default:default2
12default:default8Z32-81h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
Timing/adc_tcyc_cnt[24]Timing/adc_tcyc_cnt[24]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25361.1522default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
Timing/adc_tcyc_cnt[17]Timing/adc_tcyc_cnt[17]2default:default2R
Timing/adc_tcyc_cnt_reg[17]/Q	Timing/adc_tcyc_cnt_reg[17]/Q2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
Timing/adc_tcyc_cnt[17]Timing/adc_tcyc_cnt[17]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25360.3192default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
Timing/adc_tcyc_cnt[17]Timing/adc_tcyc_cnt[17]2default:default2N
Timing/adc_tcyc_cnt_reg[17]	Timing/adc_tcyc_cnt_reg[17]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
Timing/adc_tcyc_cnt[17]Timing/adc_tcyc_cnt[17]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25360.4082default:defaultZ32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2P
Timing/adc_tcyc_cnt[24]_repNTiming/adc_tcyc_cnt[24]_repN2default:default8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth20
Timing/AR[0]Timing/AR[0]2default:default2^
#Timing/Clock_Out_OBUFDS_i_2__1_comp	#Timing/Clock_Out_OBUFDS_i_2__1_comp2default:default8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2\
"Timing/Clock_Out_OBUFDS_i_4__0_n_0"Timing/Clock_Out_OBUFDS_i_4__0_n_02default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25355.5432default:defaultZ32-619h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2R
Timing/adc_tcyc_cnt_reg[21]_0Timing/adc_tcyc_cnt_reg[21]_02default:default8Z32-571h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2R
Timing/adc_tcyc_cnt_reg[21]_0Timing/adc_tcyc_cnt_reg[21]_02default:default2J
Timing/Cnv_Out_OBUFDS_i_2	Timing/Cnv_Out_OBUFDS_i_22default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2R
Timing/adc_tcyc_cnt_reg[21]_0Timing/adc_tcyc_cnt_reg[21]_02default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25360.3252default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2l
*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[0]*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[0]2default:default2l
*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[0]	*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[0]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2l
*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[0]*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[0]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25359.8942default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2l
*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[1]*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[1]2default:default2l
*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[1]	*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[1]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2l
*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[1]*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[1]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25359.4642default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2l
*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[2]*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[2]2default:default2l
*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[2]	*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[2]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2l
*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[2]*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[2]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25360.5362default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2l
*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[3]*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[3]2default:default2l
*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[3]	*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[3]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2l
*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[3]*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[3]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25360.1482default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
Timing/adc_tcyc_cnt[13]Timing/adc_tcyc_cnt[13]2default:default2R
Timing/adc_tcyc_cnt_reg[13]/Q	Timing/adc_tcyc_cnt_reg[13]/Q2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
Timing/adc_tcyc_cnt[13]Timing/adc_tcyc_cnt[13]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25357.2512default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
Timing/adc_tcyc_cnt[31]Timing/adc_tcyc_cnt[31]2default:default2N
Timing/adc_tcyc_cnt_reg[31]	Timing/adc_tcyc_cnt_reg[31]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
Timing/adc_tcyc_cnt[31]Timing/adc_tcyc_cnt[31]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25350.5502default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
Timing/adc_tcyc_cnt[17]Timing/adc_tcyc_cnt[17]2default:default2R
Timing/adc_tcyc_cnt_reg[17]/Q	Timing/adc_tcyc_cnt_reg[17]/Q2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
Timing/adc_tcyc_cnt[17]Timing/adc_tcyc_cnt[17]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25350.1622default:defaultZ32-619h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2R
Timing/adc_tcyc_cnt_reg[21]_0Timing/adc_tcyc_cnt_reg[21]_02default:default8Z32-571h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2R
Timing/adc_tcyc_cnt_reg[21]_0Timing/adc_tcyc_cnt_reg[21]_02default:default2N
Timing/Cnv_Out_OBUFDS_i_2/O	Timing/Cnv_Out_OBUFDS_i_2/O2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2R
Timing/adc_tcyc_cnt_reg[21]_0Timing/adc_tcyc_cnt_reg[21]_02default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25343.5792default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2l
*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[4]*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[4]2default:default2l
*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[4]	*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[4]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2l
*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[4]*ad7961_gen[3].adc7961/sclk_echo_cnt_reg[4]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25343.2352default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2N
ad7961_gen[3].adc7961/Q[10]ad7961_gen[3].adc7961/Q[10]2default:default2n
+ad7961_gen[3].adc7961/serial_buffer_reg[10]	+ad7961_gen[3].adc7961/serial_buffer_reg[10]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2N
ad7961_gen[3].adc7961/Q[10]ad7961_gen[3].adc7961/Q[10]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25348.2382default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2L
ad7961_gen[3].adc7961/Q[6]ad7961_gen[3].adc7961/Q[6]2default:default2l
*ad7961_gen[3].adc7961/serial_buffer_reg[6]	*ad7961_gen[3].adc7961/serial_buffer_reg[6]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2L
ad7961_gen[3].adc7961/Q[6]ad7961_gen[3].adc7961/Q[6]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25350.7642default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2L
ad7961_gen[3].adc7961/Q[7]ad7961_gen[3].adc7961/Q[7]2default:default2l
*ad7961_gen[3].adc7961/serial_buffer_reg[7]	*ad7961_gen[3].adc7961/serial_buffer_reg[7]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2L
ad7961_gen[3].adc7961/Q[7]ad7961_gen[3].adc7961/Q[7]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25351.4542default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2L
ad7961_gen[3].adc7961/Q[9]ad7961_gen[3].adc7961/Q[9]2default:default2l
*ad7961_gen[3].adc7961/serial_buffer_reg[9]	*ad7961_gen[3].adc7961/serial_buffer_reg[9]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2L
ad7961_gen[3].adc7961/Q[9]ad7961_gen[3].adc7961/Q[9]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25354.5112default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2N
ad7961_gen[1].adc7961/Q[11]ad7961_gen[1].adc7961/Q[11]2default:default2n
+ad7961_gen[1].adc7961/serial_buffer_reg[11]	+ad7961_gen[1].adc7961/serial_buffer_reg[11]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2N
ad7961_gen[1].adc7961/Q[11]ad7961_gen[1].adc7961/Q[11]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25354.6502default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2N
ad7961_gen[1].adc7961/Q[12]ad7961_gen[1].adc7961/Q[12]2default:default2n
+ad7961_gen[1].adc7961/serial_buffer_reg[12]	+ad7961_gen[1].adc7961/serial_buffer_reg[12]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2N
ad7961_gen[1].adc7961/Q[12]ad7961_gen[1].adc7961/Q[12]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25355.5792default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2N
ad7961_gen[1].adc7961/Q[13]ad7961_gen[1].adc7961/Q[13]2default:default2n
+ad7961_gen[1].adc7961/serial_buffer_reg[13]	+ad7961_gen[1].adc7961/serial_buffer_reg[13]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2N
ad7961_gen[1].adc7961/Q[13]ad7961_gen[1].adc7961/Q[13]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25355.4572default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2N
ad7961_gen[1].adc7961/Q[14]ad7961_gen[1].adc7961/Q[14]2default:default2n
+ad7961_gen[1].adc7961/serial_buffer_reg[14]	+ad7961_gen[1].adc7961/serial_buffer_reg[14]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2N
ad7961_gen[1].adc7961/Q[14]ad7961_gen[1].adc7961/Q[14]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25355.3662default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2N
ad7961_gen[1].adc7961/Q[15]ad7961_gen[1].adc7961/Q[15]2default:default2n
+ad7961_gen[1].adc7961/serial_buffer_reg[15]	+ad7961_gen[1].adc7961/serial_buffer_reg[15]2default:default8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2N
ad7961_gen[1].adc7961/Q[15]ad7961_gen[1].adc7961/Q[15]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25355.6342default:defaultZ32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2L
ad7961_gen[1].adc7961/Q[1]ad7961_gen[1].adc7961/Q[1]2default:default2l
*ad7961_gen[1].adc7961/serial_buffer_reg[1]	*ad7961_gen[1].adc7961/serial_buffer_reg[1]2default:default8Z32-663h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2"
Physopt 32-6632default:default2
1002default:defaultZ17-14h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2L
ad7961_gen[1].adc7961/Q[1]ad7961_gen[1].adc7961/Q[1]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25356.6182default:defaultZ32-619h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2L
ad7961_gen[1].adc7961/Q[7]ad7961_gen[1].adc7961/Q[7]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25356.6072default:defaultZ32-619h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2L
ad7961_gen[1].adc7961/Q[9]ad7961_gen[1].adc7961/Q[9]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25356.5982default:defaultZ32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2L
ad7961_gen[1].adc7961/Q[7]ad7961_gen[1].adc7961/Q[7]2default:default8Z32-702h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2R
Timing/adc_tcyc_cnt_reg[21]_0Timing/adc_tcyc_cnt_reg[21]_02default:default8Z32-571h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2R
Timing/adc_tcyc_cnt_reg[21]_0Timing/adc_tcyc_cnt_reg[21]_02default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25350.2692default:defaultZ32-619h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2N
ad7961_gen[2].adc7961/Q[15]ad7961_gen[2].adc7961/Q[15]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25351.7342default:defaultZ32-619h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2L
ad7961_gen[2].adc7961/Q[2]ad7961_gen[2].adc7961/Q[2]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25354.1712default:defaultZ32-619h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2L
ad7961_gen[2].adc7961/Q[8]ad7961_gen[2].adc7961/Q[8]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25355.5142default:defaultZ32-619h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2N
ad7961_gen[3].adc7961/Q[15]ad7961_gen[3].adc7961/Q[15]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25371.5812default:defaultZ32-619h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2b
%ad7961_gen[0].adc7961/sclk_cnt_reg[3]%ad7961_gen[0].adc7961/sclk_cnt_reg[3]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25371.4792default:defaultZ32-619h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2b
%ad7961_gen[0].adc7961/sclk_cnt_reg[4]%ad7961_gen[0].adc7961/sclk_cnt_reg[4]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25371.3752default:defaultZ32-619h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2b
%ad7961_gen[0].adc7961/sclk_cnt_reg[0]%ad7961_gen[0].adc7961/sclk_cnt_reg[0]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25371.3922default:defaultZ32-619h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2b
%ad7961_gen[0].adc7961/sclk_cnt_reg[1]%ad7961_gen[0].adc7961/sclk_cnt_reg[1]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25371.4102default:defaultZ32-619h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2b
%ad7961_gen[0].adc7961/sclk_cnt_reg[2]%ad7961_gen[0].adc7961/sclk_cnt_reg[2]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25371.3842default:defaultZ32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
%ad7961_gen[0].adc7961/sclk_cnt_reg[0]%ad7961_gen[0].adc7961/sclk_cnt_reg[0]2default:default8Z32-702h px� 
�
+Net %s was not replicated. - no resolution
314*physynth20
Timing/AR[0]Timing/AR[0]2default:default8Z32-571h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2V
ad7961_gen[0].adc7961/sclk_cnt0ad7961_gen[0].adc7961/sclk_cnt02default:default2r
-ad7961_gen[0].adc7961/sclk_cnt[4]_i_1__2_comp	-ad7961_gen[0].adc7961/sclk_cnt[4]_i_1__2_comp2default:default8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth20
Timing/AR[0]Timing/AR[0]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25368.9362default:defaultZ32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
6ad7961_gen[0].adc7961/serial_present_state_reg[1]_0[0]6ad7961_gen[0].adc7961/serial_present_state_reg[1]_0[0]2default:default8Z32-702h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2`
$Timing/serial_present_state_reg[1]_2$Timing/serial_present_state_reg[1]_22default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25368.7212default:defaultZ32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
-ad7961_gen[0].adc7961/serial_present_state[2]-ad7961_gen[0].adc7961/serial_present_state[2]2default:default8Z32-702h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
trigIn42/ep_trigger[19]trigIn42/ep_trigger[19]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25361.0322default:defaultZ32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
-ad7961_gen[0].adc7961/serial_present_state[0]-ad7961_gen[0].adc7961/serial_present_state[0]2default:default8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
8ad7961_gen[0].adc7961/serial_present_state[0]_i_1__2_n_08ad7961_gen[0].adc7961/serial_present_state[0]_i_1__2_n_02default:default2�
9ad7961_gen[0].adc7961/serial_present_state[0]_i_1__2_comp	9ad7961_gen[0].adc7961/serial_present_state[0]_i_1__2_comp2default:default8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2`
$Timing/serial_present_state_reg[1]_2$Timing/serial_present_state_reg[1]_22default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25360.8702default:defaultZ32-619h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2b
%ad7961_gen[3].adc7961/sclk_cnt_reg[0]%ad7961_gen[3].adc7961/sclk_cnt_reg[0]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25360.8162default:defaultZ32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
%ad7961_gen[3].adc7961/sclk_cnt_reg[0]%ad7961_gen[3].adc7961/sclk_cnt_reg[0]2default:default8Z32-702h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2R
Timing/adc_tcyc_cnt_reg[21]_0Timing/adc_tcyc_cnt_reg[21]_02default:default8Z32-571h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2R
Timing/adc_tcyc_cnt_reg[21]_0Timing/adc_tcyc_cnt_reg[21]_02default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25349.3112default:defaultZ32-619h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
Timing/adc_tcyc_cnt[17]Timing/adc_tcyc_cnt[17]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25348.3032default:defaultZ32-619h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2R
Timing/adc_tcyc_cnt_reg[21]_0Timing/adc_tcyc_cnt_reg[21]_02default:default8Z32-571h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2R
Timing/adc_tcyc_cnt_reg[21]_0Timing/adc_tcyc_cnt_reg[21]_02default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25348.2982default:defaultZ32-619h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2`
$Timing/serial_present_state_reg[1]_2$Timing/serial_present_state_reg[1]_22default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25348.2522default:defaultZ32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
%ad7961_gen[2].adc7961/sclk_cnt_reg[0]%ad7961_gen[2].adc7961/sclk_cnt_reg[0]2default:default8Z32-702h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2R
Timing/adc_tcyc_cnt_reg[21]_0Timing/adc_tcyc_cnt_reg[21]_02default:default8Z32-571h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2R
Timing/adc_tcyc_cnt_reg[21]_0Timing/adc_tcyc_cnt_reg[21]_02default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25347.6542default:defaultZ32-619h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2R
Timing/adc_tcyc_cnt_reg[21]_0Timing/adc_tcyc_cnt_reg[21]_02default:default8Z32-571h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2V
Timing/adc_tcyc_cnt_reg[5]_5[0]Timing/adc_tcyc_cnt_reg[5]_5[0]2default:default2T
Timing/sclk_cnt[4]_i_1__1_comp	Timing/sclk_cnt[4]_i_1__1_comp2default:default8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2R
Timing/adc_tcyc_cnt_reg[21]_0Timing/adc_tcyc_cnt_reg[21]_02default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25347.9682default:defaultZ32-619h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
8ad7961_gen[0].adc7961/serial_present_state[1]_i_1__2_n_08ad7961_gen[0].adc7961/serial_present_state[1]_i_1__2_n_02default:default2�
9ad7961_gen[0].adc7961/serial_present_state[1]_i_1__2_comp	9ad7961_gen[0].adc7961/serial_present_state[1]_i_1__2_comp2default:default8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2`
$Timing/serial_present_state_reg[1]_2$Timing/serial_present_state_reg[1]_22default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25348.0452default:defaultZ32-619h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
8ad7961_gen[0].adc7961/serial_present_state[2]_i_1__2_n_08ad7961_gen[0].adc7961/serial_present_state[2]_i_1__2_n_02default:default2�
9ad7961_gen[0].adc7961/serial_present_state[2]_i_1__2_comp	9ad7961_gen[0].adc7961/serial_present_state[2]_i_1__2_comp2default:default8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2`
$Timing/serial_present_state_reg[1]_2$Timing/serial_present_state_reg[1]_22default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25348.0272default:defaultZ32-619h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2L
ad7961_sync_reset/async_ddad7961_sync_reset/async_dd2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25346.7392default:defaultZ32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
%ad7961_gen[1].adc7961/sclk_cnt_reg[0]%ad7961_gen[1].adc7961/sclk_cnt_reg[0]2default:default8Z32-702h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2R
Timing/adc_tcyc_cnt_reg[21]_0Timing/adc_tcyc_cnt_reg[21]_02default:default8Z32-571h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2R
Timing/adc_tcyc_cnt_reg[21]_0Timing/adc_tcyc_cnt_reg[21]_02default:default2
42default:default8Z32-81h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2R
Timing/adc_tcyc_cnt_reg[21]_0Timing/adc_tcyc_cnt_reg[21]_02default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25339.6272default:defaultZ32-619h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2J
ad7961_sync_reset/async_dad7961_sync_reset/async_d2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25334.1112default:defaultZ32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
Timing/adc_tcyc_cnt[25]Timing/adc_tcyc_cnt[25]2default:default8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2.
Timing/E[0]Timing/E[0]2default:default2N
Timing/sclk_cnt[4]_i_1_comp	Timing/sclk_cnt[4]_i_1_comp2default:default8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2`
$Timing/adc_tcyc_cnt_reg[21]_0_repN_2$Timing/adc_tcyc_cnt_reg[21]_0_repN_22default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25333.8182default:defaultZ32-619h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2R
Timing/adc_tcyc_cnt_reg[21]_0Timing/adc_tcyc_cnt_reg[21]_02default:default2
32default:default8Z32-81h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2R
Timing/adc_tcyc_cnt_reg[21]_0Timing/adc_tcyc_cnt_reg[21]_02default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25333.4022default:defaultZ32-619h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2`
$Timing/adc_tcyc_cnt_reg[21]_0_repN_6$Timing/adc_tcyc_cnt_reg[21]_0_repN_62default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25333.1162default:defaultZ32-619h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2D
Timing/adc_tcyc_cnt[9]Timing/adc_tcyc_cnt[9]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25334.8552default:defaultZ32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2`
$Timing/adc_tcyc_cnt_reg[21]_0_repN_6$Timing/adc_tcyc_cnt_reg[21]_0_repN_62default:default8Z32-702h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2R
Timing/Cnv_Out_OBUFDS_i_5_n_0Timing/Cnv_Out_OBUFDS_i_5_n_02default:default8Z32-571h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2R
Timing/Cnv_Out_OBUFDS_i_5_n_0Timing/Cnv_Out_OBUFDS_i_5_n_02default:default2
12default:default8Z32-81h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2R
Timing/Cnv_Out_OBUFDS_i_5_n_0Timing/Cnv_Out_OBUFDS_i_5_n_02default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25340.9892default:defaultZ32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth28
wo03/wirehold[0]wo03/wirehold[0]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
?u_ddr3_256_32/u_ddr3_256_32_mig/u_ddr3_infrastructure/clk_pll_i?u_ddr3_256_32/u_ddr3_256_32_mig/u_ddr3_infrastructure/clk_pll_i2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2X
 ddr3_ui_0/adc_data_count[0]_repN ddr3_ui_0/adc_data_count[0]_repN2default:default8Z32-702h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b3_section2_reg_reg_n_0_[22]Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b3_section2_reg_reg_n_0_[22]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25340.9232default:defaultZ32-619h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b3_section2_reg_reg_n_0_[24]Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b3_section2_reg_reg_n_0_[24]2default:default8Z32-735h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25340.8602default:defaultZ32-619h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2"
Physopt 32-6192default:default2
1002default:defaultZ17-14h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b3_section2_reg_reg_n_0_[29]Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b3_section2_reg_reg_n_0_[29]2default:default8Z32-735h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a2_section2_reg_reg_n_0_[12]Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a2_section2_reg_reg_n_0_[12]2default:default8Z32-735h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a2_section2_reg_reg_n_0_[21]Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a2_section2_reg_reg_n_0_[21]2default:default8Z32-735h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a2_section2_reg_reg_n_0_[29]Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a2_section2_reg_reg_n_0_[29]2default:default8Z32-735h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Mdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a2_section2_reg_reg_n_0_[3]Mdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a2_section2_reg_reg_n_0_[3]2default:default8Z32-735h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Mdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a2_section2_reg_reg_n_0_[9]Mdac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_a2_section2_reg_reg_n_0_[9]2default:default8Z32-735h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Idac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg_n_0_[15]Idac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg_n_0_[15]2default:default8Z32-735h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Idac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg_n_0_[17]Idac_ad5453_gen[2].spi_fifo0/u_Butterworth_0/coeff_scale2_reg_reg_n_0_[17]2default:default8Z32-735h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section1_reg_reg_n_0_[14]Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section1_reg_reg_n_0_[14]2default:default8Z32-735h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section1_reg_reg_n_0_[20]Ndac_ad5453_gen[0].spi_fifo0/u_Butterworth_0/coeff_b1_section1_reg_reg_n_0_[20]2default:default8Z32-735h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2"
Physopt 32-7352default:default2
1002default:defaultZ17-14h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2L
ad7961_gen[3].adc7961/Q[3]ad7961_gen[3].adc7961/Q[3]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
Timing/adc_tcyc_cnt[25]Timing/adc_tcyc_cnt[25]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2R
Timing/adc_tcyc_cnt_reg[21]_0Timing/adc_tcyc_cnt_reg[21]_02default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2\
"Timing/Cnv_Out_OBUFDS_i_5_n_0_repN"Timing/Cnv_Out_OBUFDS_i_5_n_0_repN2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2V
Timing/adc_tcyc_cnt_reg[5]_6[0]Timing/adc_tcyc_cnt_reg[5]_6[0]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2&
clk_sysclk_sys2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
%ad7961_gen[2].adc7961/sclk_cnt_reg[0]%ad7961_gen[2].adc7961/sclk_cnt_reg[0]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
%ad7961_gen[0].adc7961/sclk_cnt_reg[0]%ad7961_gen[0].adc7961/sclk_cnt_reg[0]2default:default8Z32-702h px� 
�
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12default:default2
net2default:default2
62default:default2
pins2default:defaultZ32-608h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2`
$Timing/adc_tcyc_cnt_reg[21]_0_repN_6$Timing/adc_tcyc_cnt_reg[21]_0_repN_62default:default8Z32-702h px� 
�
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12default:default2
net2default:default2
142default:default2
pins2default:defaultZ32-608h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
%ad7961_gen[3].adc7961/sclk_cnt_reg[3]%ad7961_gen[3].adc7961/sclk_cnt_reg[3]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
Timing/adc_tcyc_cnt[30]Timing/adc_tcyc_cnt[30]2default:default8Z32-702h px� 
�
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12default:default2
net2default:default2
192default:default2
pins2default:defaultZ32-608h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
Timing/adc_tcyc_cnt[9]Timing/adc_tcyc_cnt[9]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2\
"Timing/adc_tcyc_cnt_reg[21]_0_repN"Timing/adc_tcyc_cnt_reg[21]_0_repN2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2R
Timing/Cnv_Out_OBUFDS_i_8_n_0Timing/Cnv_Out_OBUFDS_i_8_n_02default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
%ad7961_gen[3].adc7961/sclk_cnt_reg[0]%ad7961_gen[3].adc7961/sclk_cnt_reg[0]2default:default8Z32-702h px� 
�
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12default:default2
net2default:default2
192default:default2
pins2default:defaultZ32-608h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
-ad7961_gen[1].adc7961/serial_present_state[0]-ad7961_gen[1].adc7961/serial_present_state[0]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
%ad7961_gen[1].adc7961/sclk_cnt_reg[0]%ad7961_gen[1].adc7961/sclk_cnt_reg[0]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
Timing/adc_tcyc_cnt[13]Timing/adc_tcyc_cnt[13]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2`
$Timing/adc_tcyc_cnt_reg[21]_0_repN_3$Timing/adc_tcyc_cnt_reg[21]_0_repN_32default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2R
Timing/Cnv_Out_OBUFDS_i_6_n_0Timing/Cnv_Out_OBUFDS_i_6_n_02default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2V
ad7961_gen[0].adc7961/sclk_cnt0ad7961_gen[0].adc7961/sclk_cnt02default:default8Z32-702h px� 
O
:Phase 32 Critical Path Optimization | Checksum: 155e610bd
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:03:14 ; elapsed = 00:01:57 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
|

Phase %s%s
101*constraints2
33 2default:default2.
Critical Path Optimization2default:defaultZ18-101h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth28
wo03/wirehold[0]wo03/wirehold[0]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
?u_ddr3_256_32/u_ddr3_256_32_mig/u_ddr3_infrastructure/clk_pll_i?u_ddr3_256_32/u_ddr3_256_32_mig/u_ddr3_infrastructure/clk_pll_i2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2X
 ddr3_ui_0/adc_data_count[0]_repN ddr3_ui_0/adc_data_count[0]_repN2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2L
ad7961_gen[3].adc7961/Q[3]ad7961_gen[3].adc7961/Q[3]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
Timing/adc_tcyc_cnt[25]Timing/adc_tcyc_cnt[25]2default:default8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2V
Timing/adc_tcyc_cnt_reg[5]_6[0]Timing/adc_tcyc_cnt_reg[5]_6[0]2default:default2`
$Timing/serial_buffer[15]_i_3__0_comp	$Timing/serial_buffer[15]_i_3__0_comp2default:default8Z32-710h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
*ad7961_gen[0].adc7961/sclk_echo_cnt_reg[0]*ad7961_gen[0].adc7961/sclk_echo_cnt_reg[0]2default:default8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth20
Timing/AR[0]Timing/AR[0]2default:default2b
%Timing/Clock_Out_OBUFDS_i_2__1_comp_3	%Timing/Clock_Out_OBUFDS_i_2__1_comp_32default:default8Z32-710h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2F
Timing/adc_tcyc_cnt[30]Timing/adc_tcyc_cnt[30]2default:default2
12default:default8Z32-81h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2P
Timing/adc_tcyc_cnt[30]_repNTiming/adc_tcyc_cnt[30]_repN2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2`
$Timing/adc_tcyc_cnt_reg[21]_0_repN_9$Timing/adc_tcyc_cnt_reg[21]_0_repN_92default:default8Z32-702h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2R
Timing/Cnv_Out_OBUFDS_i_9_n_0Timing/Cnv_Out_OBUFDS_i_9_n_02default:default8Z32-571h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2R
Timing/Cnv_Out_OBUFDS_i_9_n_0Timing/Cnv_Out_OBUFDS_i_9_n_02default:default2
12default:default8Z32-81h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
%ad7961_gen[1].adc7961/sclk_cnt_reg[0]%ad7961_gen[1].adc7961/sclk_cnt_reg[0]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
%ad7961_gen[0].adc7961/sclk_cnt_reg[0]%ad7961_gen[0].adc7961/sclk_cnt_reg[0]2default:default8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2V
ad7961_gen[0].adc7961/sclk_cnt0ad7961_gen[0].adc7961/sclk_cnt02default:default2v
/ad7961_gen[0].adc7961/sclk_cnt[4]_i_1__2_comp_1	/ad7961_gen[0].adc7961/sclk_cnt[4]_i_1__2_comp_12default:default8Z32-710h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
%ad7961_gen[3].adc7961/sclk_cnt_reg[0]%ad7961_gen[3].adc7961/sclk_cnt_reg[0]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
Timing/adc_tcyc_cnt[9]Timing/adc_tcyc_cnt[9]2default:default8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2.
Timing/E[0]Timing/E[0]2default:default2R
Timing/sclk_cnt[4]_i_1_comp_1	Timing/sclk_cnt[4]_i_1_comp_12default:default8Z32-710h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
%ad7961_gen[2].adc7961/sclk_cnt_reg[0]%ad7961_gen[2].adc7961/sclk_cnt_reg[0]2default:default8Z32-702h px� 
�
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12default:default2
net2default:default2
142default:default2
pins2default:defaultZ32-608h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2\
"Timing/adc_tcyc_cnt_reg[21]_0_repN"Timing/adc_tcyc_cnt_reg[21]_0_repN2default:default8Z32-702h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2R
Timing/Cnv_Out_OBUFDS_i_8_n_0Timing/Cnv_Out_OBUFDS_i_8_n_02default:default8Z32-571h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2\
"Timing/adc_tcyc_cnt_reg[21]_0_repN"Timing/adc_tcyc_cnt_reg[21]_0_repN2default:default2X
 Timing/Cnv_Out_OBUFDS_i_2_comp_2	 Timing/Cnv_Out_OBUFDS_i_2_comp_22default:default8Z32-710h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2F
Timing/adc_tcyc_cnt[17]Timing/adc_tcyc_cnt[17]2default:default2
12default:default8Z32-81h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
%Timing/adc_tcyc_cnt_reg[21]_0_repN_10%Timing/adc_tcyc_cnt_reg[21]_0_repN_102default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2`
$Timing/adc_tcyc_cnt_reg[21]_0_repN_6$Timing/adc_tcyc_cnt_reg[21]_0_repN_62default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth28
wo03/wirehold[0]wo03/wirehold[0]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
?u_ddr3_256_32/u_ddr3_256_32_mig/u_ddr3_infrastructure/clk_pll_i?u_ddr3_256_32/u_ddr3_256_32_mig/u_ddr3_infrastructure/clk_pll_i2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2X
 ddr3_ui_0/adc_data_count[0]_repN ddr3_ui_0/adc_data_count[0]_repN2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
6dac_ad5453_gen[1].spi_fifo0/u_Butterworth_0/ena_reg[0]6dac_ad5453_gen[1].spi_fifo0/u_Butterworth_0/ena_reg[0]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2V
adc_pll/inst/clk_out1_clk_wiz_0adc_pll/inst/clk_out1_clk_wiz_02default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
%ad7961_gen[2].adc7961/sclk_cnt_reg[0]%ad7961_gen[2].adc7961/sclk_cnt_reg[0]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
Timing/adc_tcyc_cnt[13]Timing/adc_tcyc_cnt[13]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2`
$Timing/adc_tcyc_cnt_reg[21]_0_repN_6$Timing/adc_tcyc_cnt_reg[21]_0_repN_62default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2R
Timing/Cnv_Out_OBUFDS_i_6_n_0Timing/Cnv_Out_OBUFDS_i_6_n_02default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2V
Timing/adc_tcyc_cnt_reg[5]_3[0]Timing/adc_tcyc_cnt_reg[5]_3[0]2default:default8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2&
clk_sysclk_sys2default:default8Z32-702h px� 
O
:Phase 33 Critical Path Optimization | Checksum: 1d8f9e588
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:03:54 ; elapsed = 00:02:20 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
z

Phase %s%s
101*constraints2
34 2default:default2,
BRAM Enable Optimization2default:defaultZ18-101h px� 
M
8Phase 34 BRAM Enable Optimization | Checksum: 1d8f9e588
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:03:54 ; elapsed = 00:02:20 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
w

Phase %s%s
101*constraints2
35 2default:default2)
Hold Fix Optimization2default:defaultZ18-101h px� 
�
:%s %s Timing Summary | WNS=%s | TNS=%s | WHS=%s | THS=%s |342*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25344.4902default:default2
-4.2562default:default2
-121.4162default:defaultZ32-668h px� 
�
8Identified %s candidate %s for hold slack optimization.
45*physynth2
202default:default2
nets2default:defaultZ32-45h px� 
�
QOptimized %s %s. Inserted %s new %s. Calibrated %s existing %s. Inserted %s %s.

218*physynth2
202default:default2
nets2default:default2
02default:default2 
ZHOLD_DELAYs2default:default2
02default:default2 
ZHOLD_DELAYs2default:default2
202default:default2
buffers2default:defaultZ32-234h px� 
�
:%s %s Timing Summary | WNS=%s | TNS=%s | WHS=%s | THS=%s |342*physynth2
	Estimated2default:default2
 2default:default2
-10.6432default:default2

-25344.4902default:default2
-4.2562default:default2
-93.0492default:defaultZ32-668h px� 
J
5Phase 35 Hold Fix Optimization | Checksum: 13c6340f5
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:04:05 ; elapsed = 00:02:27 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.1272default:default2
2541.6052default:default2
0.0002default:defaultZ17-268h px� 
�
OPost Physical Optimization Timing Summary | WNS=%s | TNS=%s | WHS=%s | THS=%s |343*physynth2
-10.6432default:default2

-25344.4902default:default2
-4.2562default:default2
-93.0492default:defaultZ32-669h px� 
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
�----------------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Optimization            |  WNS Gain (ns)  |  TNS Gain (ns)  |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Fanout                  |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           3  |  00:00:02  |
|  Single Cell Placement   |          0.047  |          1.219  |            0  |              0  |                    42  |           0  |           4  |  00:00:21  |
|  Multi Cell Placement    |          0.000  |          0.324  |            0  |              0  |                     6  |           0  |           4  |  00:00:13  |
|  Rewire                  |          0.000  |          0.000  |            0  |              0  |                     0  |          12  |           3  |  00:00:00  |
|  Critical Cell           |          0.035  |          1.975  |           28  |              0  |                    28  |          12  |           3  |  00:00:07  |
|  SLR Crossing            |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           3  |  00:00:00  |
|  DSP Register            |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           2  |  00:00:00  |
|  BRAM Register           |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           2  |  00:00:00  |
|  URAM Register           |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           2  |  00:00:00  |
|  Shift Register          |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           2  |  00:00:00  |
|  Critical Pin            |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Very High Fanout        |          0.000  |        840.750  |            5  |              0  |                     2  |           0  |           1  |  00:00:30  |
|  BRAM Enable             |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Critical Path           |          0.000  |         57.273  |           13  |              0  |                   211  |           0  |           2  |  00:01:01  |
|  Total                   |          0.082  |        901.540  |           46  |              0  |                   289  |          24  |          33  |  00:02:13  |
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
7
"Summary of Hold Fix Optimizations
*commonh px� 
7
"=================================
*commonh px� 


*commonh px� 


*commonh px� 
�
�--------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Optimization               |  WHS Gain (ns)  |  THS Gain (ns)  |  Added LUTs  |  Added FFs  |  Optimized Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
--------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  LUT1 and ZHOLD Insertion   |          0.000  |         28.366  |          20  |          0  |              20  |           0  |           1  |  00:00:02  |
|  Total                      |          0.000  |         28.366  |          20  |          0  |              20  |           0  |           1  |  00:00:02  |
--------------------------------------------------------------------------------------------------------------------------------------------------------------
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
00:00:00.0192default:default2
2541.6052default:default2
0.0002default:defaultZ17-268h px� 
I
4Ending Physical Synthesis Task | Checksum: 70652a47
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:04:06 ; elapsed = 00:02:28 . Memory (MB): peak = 2541.605 ; gain = 0.0002default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
10742default:default2
152default:default2
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
00:04:272default:default2
00:02:402default:default2
2541.6052default:default2
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
2541.6052default:default2
0.0002default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2r
^C:/Users/lopr5624/orserstim/fpga_XEM7310/fpga_XEM7310.runs/impl_1/top_level_module_physopt.dcp2default:defaultZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:222default:default2
00:00:132default:default2
2541.6052default:default2
0.0002default:defaultZ17-268h px� 


End Record