
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px� 
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
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px� 
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
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px� 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px� 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
B
-Phase 1 Build RT Design | Checksum: bed21bb3
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:01:03 ; elapsed = 00:00:45 . Memory (MB): peak = 2578.176 ; gain = 36.5702default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
{

Phase %s%s
101*constraints2
2.1 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px� 
M
8Phase 2.1 Fix Topology Constraints | Checksum: bed21bb3
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:01:03 ; elapsed = 00:00:45 . Memory (MB): peak = 2578.176 ; gain = 36.5702default:defaulth px� 
t

Phase %s%s
101*constraints2
2.2 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
F
1Phase 2.2 Pre Route Cleanup | Checksum: bed21bb3
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:01:04 ; elapsed = 00:00:46 . Memory (MB): peak = 2578.176 ; gain = 36.5702default:defaulth px� 
p

Phase %s%s
101*constraints2
2.3 2default:default2!
Update Timing2default:defaultZ18-101h px� 
C
.Phase 2.3 Update Timing | Checksum: 14a8ae45c
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:01:39 ; elapsed = 00:01:09 . Memory (MB): peak = 2610.531 ; gain = 68.9262default:defaulth px� 
�
Intermediate Timing Summary %s164*route2N
:| WNS=-10.501| TNS=-21649.586| WHS=-2.042 | THS=-827.854|
2default:defaultZ35-416h px� 
}

Phase %s%s
101*constraints2
2.4 2default:default2.
Update Timing for Bus Skew2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
2.4.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 2.4.1 Update Timing | Checksum: 1a9463903
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:02:08 ; elapsed = 00:01:27 . Memory (MB): peak = 2736.789 ; gain = 195.1842default:defaulth px� 
�
Intermediate Timing Summary %s164*route2M
9| WNS=-10.501| TNS=-21555.003| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
P
;Phase 2.4 Update Timing for Bus Skew | Checksum: 178c4dbbe
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:02:09 ; elapsed = 00:01:27 . Memory (MB): peak = 2736.789 ; gain = 195.1842default:defaulth px� 
I
4Phase 2 Router Initialization | Checksum: 17002f290
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:02:10 ; elapsed = 00:01:28 . Memory (MB): peak = 2736.789 ; gain = 195.1842default:defaulth px� 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
q

Phase %s%s
101*constraints2
3.1 2default:default2"
Global Routing2default:defaultZ18-101h px� 
D
/Phase 3.1 Global Routing | Checksum: 17002f290
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:02:10 ; elapsed = 00:01:28 . Memory (MB): peak = 2736.789 ; gain = 195.1842default:defaulth px� 
C
.Phase 3 Initial Routing | Checksum: 1587ecca0
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:02:55 ; elapsed = 00:02:03 . Memory (MB): peak = 2750.816 ; gain = 209.2112default:defaulth px� 
�
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
1572default:default2�
�The top 5 pins with tight setup and hold constraints:

+====================+===================+=====================================================+
| Launch Setup Clock | Launch Hold Clock | Pin                                                 |
+====================+===================+=====================================================+
| sys_clk            | mmcm0_clk0        | ad7961_gen[1].adc7961/serial_present_state_reg[0]/D |
| sys_clk            | mmcm0_clk0        | ad7961_gen[1].adc7961/serial_present_state_reg[1]/D |
| sys_clk            | mmcm0_clk0        | ad7961_gen[2].adc7961/serial_present_state_reg[1]/D |
| sys_clk            | mmcm0_clk0        | ad7961_gen[3].adc7961/serial_present_state_reg[0]/D |
| sys_clk            | mmcm0_clk0        | ad7961_gen[2].adc7961/serial_present_state_reg[0]/D |
+--------------------+-------------------+-----------------------------------------------------+

File with complete list of pins: tight_setup_hold_pins.txt
2default:defaultZ35-580h px� 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2M
9| WNS=-10.513| TNS=-56726.527| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.1 Global Iteration 0 | Checksum: 160428266
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:04:50 ; elapsed = 00:03:28 . Memory (MB): peak = 2790.418 ; gain = 248.8122default:defaulth px� 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2M
9| WNS=-10.513| TNS=-56979.818| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.2 Global Iteration 1 | Checksum: 205830bbf
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:10:16 ; elapsed = 00:06:59 . Memory (MB): peak = 2981.648 ; gain = 440.0432default:defaulth px� 
F
1Phase 4 Rip-up And Reroute | Checksum: 205830bbf
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:10:16 ; elapsed = 00:06:59 . Memory (MB): peak = 2981.648 ; gain = 440.0432default:defaulth px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 5.1.1 Update Timing | Checksum: 1f8405ff1
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:10:23 ; elapsed = 00:07:03 . Memory (MB): peak = 2981.648 ; gain = 440.0432default:defaulth px� 
�
Intermediate Timing Summary %s164*route2M
9| WNS=-10.513| TNS=-56302.968| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
C
.Phase 5.1 Delay CleanUp | Checksum: 16b64b43c
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:10:43 ; elapsed = 00:07:13 . Memory (MB): peak = 2981.648 ; gain = 440.0432default:defaulth px� 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px� 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 16b64b43c
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:10:43 ; elapsed = 00:07:14 . Memory (MB): peak = 2981.648 ; gain = 440.0432default:defaulth px� 
O
:Phase 5 Delay and Skew Optimization | Checksum: 16b64b43c
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:10:43 ; elapsed = 00:07:14 . Memory (MB): peak = 2981.648 ; gain = 440.0432default:defaulth px� 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
D
/Phase 6.1.1 Update Timing | Checksum: d5af6293
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:10:51 ; elapsed = 00:07:19 . Memory (MB): peak = 2981.648 ; gain = 440.0432default:defaulth px� 
�
Intermediate Timing Summary %s164*route2M
9| WNS=-10.513| TNS=-56464.247| WHS=-1.141 | THS=-15.318|
2default:defaultZ35-416h px� 
B
-Phase 6.1 Hold Fix Iter | Checksum: 9d640beb
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:10:52 ; elapsed = 00:07:19 . Memory (MB): peak = 2981.648 ; gain = 440.0432default:defaulth px� 
�
�The router encountered %s pins that are both setup-critical and hold-critical and tried to fix hold violations at the expense of setup slack. Such pins are:
%s201*route2
662default:default2�
�	adc_to_ddr_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC_sp.ram/DIBDI[24]
	adc_to_ddr_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC_sp.ram/DIBDI[23]
	adc_to_ddr_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC_sp.ram/DIBDI[22]
	adc_to_ddr_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC_sp.ram/DIBDI[21]
	adc_to_ddr_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC_sp.ram/DIBDI[20]
	adc_to_ddr_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC_sp.ram/DIBDI[19]
	adc_to_ddr_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC_sp.ram/DIBDI[18]
	adc_to_ddr_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC_sp.ram/DIBDI[17]
	adc_to_ddr_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC_sp.ram/DIBDI[16]
	adc_to_ddr_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC_sp.ram/DIBDI[15]
	.. and 56 more pins.
2default:defaultZ35-468h px� 
@
+Phase 6 Post Hold Fix | Checksum: e51dd6d2
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:10:52 ; elapsed = 00:07:19 . Memory (MB): peak = 2981.648 ; gain = 440.0432default:defaulth px� 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px� 
B
-Phase 7 Route finalize | Checksum: 13d44b569
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:10:52 ; elapsed = 00:07:20 . Memory (MB): peak = 2981.648 ; gain = 440.0432default:defaulth px� 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px� 
I
4Phase 8 Verifying routed nets | Checksum: 13d44b569
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:10:53 ; elapsed = 00:07:20 . Memory (MB): peak = 2981.648 ; gain = 440.0432default:defaulth px� 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px� 
E
0Phase 9 Depositing Routes | Checksum: 18beeb47c
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:10:59 ; elapsed = 00:07:25 . Memory (MB): peak = 2981.648 ; gain = 440.0432default:defaulth px� 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px� 
q

Phase %s%s
101*constraints2
10.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
D
/Phase 10.1 Update Timing | Checksum: 18a262ad4
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:11:09 ; elapsed = 00:07:32 . Memory (MB): peak = 2981.648 ; gain = 440.0432default:defaulth px� 
�
Estimated Timing Summary %s
57*route2M
9| WNS=-10.513| TNS=-56482.098| WHS=0.050  | THS=0.000  |
2default:defaultZ35-57h px� 
B
!Router estimated timing not met.
128*routeZ35-328h px� 
G
2Phase 10 Post Router Timing | Checksum: 18a262ad4
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:11:09 ; elapsed = 00:07:32 . Memory (MB): peak = 2981.648 ; gain = 440.0432default:defaulth px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
�

%s
*constraints2q
]Time (s): cpu = 00:11:09 ; elapsed = 00:07:32 . Memory (MB): peak = 2981.648 ; gain = 440.0432default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
10942default:default2
172default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:11:392default:default2
00:07:482default:default2
2981.6482default:default2
440.0432default:defaultZ17-268h px� 
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
00:00:172default:default2
00:00:072default:default2
2981.6482default:default2
0.0002default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2,
report_design_analysis: 2default:default2
00:00:062default:default2
00:00:062default:default2
2981.6482default:default2
0.0002default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2q
]C:/Users/lopr5624/orserstim/fpga_XEM7310/fpga_XEM7310.runs/impl_1/top_level_module_routed.dcp2default:defaultZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:272default:default2
00:00:162default:default2
2981.6482default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2�
�Executing : report_drc -file top_level_module_drc_routed.rpt -pb top_level_module_drc_routed.pb -rpx top_level_module_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
xreport_drc -file top_level_module_drc_routed.rpt -pb top_level_module_drc_routed.pb -rpx top_level_module_drc_routed.rpx2default:defaultZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
586*	vivadotcl2�
aC:/Users/lopr5624/orserstim/fpga_XEM7310/fpga_XEM7310.runs/impl_1/top_level_module_drc_routed.rptaC:/Users/lopr5624/orserstim/fpga_XEM7310/fpga_XEM7310.runs/impl_1/top_level_module_drc_routed.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:412default:default2
00:00:212default:default2
2981.6482default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2�
�Executing : report_methodology -file top_level_module_methodology_drc_routed.rpt -pb top_level_module_methodology_drc_routed.pb -rpx top_level_module_methodology_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
�report_methodology -file top_level_module_methodology_drc_routed.rpt -pb top_level_module_methodology_drc_routed.pb -rpx top_level_module_methodology_drc_routed.rpx2default:defaultZ4-113h px� 
�
tSetting input delay on a clock pin '%s' relative to clock '%s' defined on the same pin is not supported, ignoring it1394*constraints2
okUH[0]2default:default2
okUH02default:default2f
PC:/Users/lopr5624/orserstim/fpga_XEM7310/fpga_XEM7310.srcs/constrs_1/xem7310.xdc2default:default2
712default:default8@Z18-6211h px� 
�
tSetting input delay on a clock pin '%s' relative to clock '%s' defined on the same pin is not supported, ignoring it1394*constraints2
okUH[0]2default:default2
okUH02default:default2f
PC:/Users/lopr5624/orserstim/fpga_XEM7310/fpga_XEM7310.srcs/constrs_1/xem7310.xdc2default:default2
722default:default8@Z18-6211h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px� 
�
2The results of Report Methodology are in file %s.
609*	vivadotcl2�
mC:/Users/lopr5624/orserstim/fpga_XEM7310/fpga_XEM7310.runs/impl_1/top_level_module_methodology_drc_routed.rptmC:/Users/lopr5624/orserstim/fpga_XEM7310/fpga_XEM7310.runs/impl_1/top_level_module_methodology_drc_routed.rpt2default:default8Z2-1520h px� 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2(
report_methodology: 2default:default2
00:00:492default:default2
00:00:282default:default2
2981.6482default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2�
�Executing : report_power -file top_level_module_power_routed.rpt -pb top_level_module_power_summary_routed.pb -rpx top_level_module_power_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
�report_power -file top_level_module_power_routed.rpt -pb top_level_module_power_summary_routed.pb -rpx top_level_module_power_routed.rpx2default:defaultZ4-113h px� 
�
$Power model is not available for %s
23*power2=

a0/d0/dna0	okHI/core0/core0/a0/d0/dna02default:default8Z33-23h px� 
�
tSetting input delay on a clock pin '%s' relative to clock '%s' defined on the same pin is not supported, ignoring it1394*constraints2
okUH[0]2default:default2
okUH02default:default2f
PC:/Users/lopr5624/orserstim/fpga_XEM7310/fpga_XEM7310.srcs/constrs_1/xem7310.xdc2default:default2
712default:default8@Z18-6211h px� 
�
tSetting input delay on a clock pin '%s' relative to clock '%s' defined on the same pin is not supported, ignoring it1394*constraints2
okUH[0]2default:default2
okUH02default:default2f
PC:/Users/lopr5624/orserstim/fpga_XEM7310/fpga_XEM7310.srcs/constrs_1/xem7310.xdc2default:default2
722default:default8@Z18-6211h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
�Detected over-assertion of set/reset/preset/clear net with high fanouts, power estimation might not be accurate. Please run Tool - Power Constraint Wizard to set proper switching activities for control signals.282*powerZ33-332h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
11072default:default2
222default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:512default:default2
00:00:302default:default2
2981.6482default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2�
mExecuting : report_route_status -file top_level_module_route_status.rpt -pb top_level_module_route_status.pb
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_timing_summary -max_paths 10 -file top_level_module_timing_summary_routed.rpt -pb top_level_module_timing_summary_routed.pb -rpx top_level_module_timing_summary_routed.rpx
2default:defaulth px� 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px� 
�
}There are set_bus_skew constraint(s) in this design. Please run report_bus_skew to ensure that bus skew requirements are met.223*timingZ38-436h px� 
�
%s4*runtcl2m
YExecuting : report_incremental_reuse -file top_level_module_incremental_reuse_routed.rpt
2default:defaulth px� 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px� 
�
%s4*runtcl2m
YExecuting : report_clock_utilization -file top_level_module_clock_utilization_routed.rpt
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_bus_skew -warn_on_violation -file top_level_module_bus_skew_routed.rpt -pb top_level_module_bus_skew_routed.pb -rpx top_level_module_bus_skew_routed.rpx
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