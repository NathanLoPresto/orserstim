// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Aug 15 10:05:32 2022
// Host        : A00080135 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/lopr5624/orserstim/fpga_XEM7310/fpga_XEM7310.srcs/sources_1/ip/mult_gen_1/mult_gen_1_sim_netlist.v
// Design      : mult_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_1,mult_gen_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_18,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module mult_gen_1
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [13:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [13:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [27:0]P;

  wire [13:0]A;
  wire [13:0]B;
  wire CLK;
  wire [27:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "14" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "14" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "27" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  mult_gen_1_mult_gen_v12_0_18 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
t16GlZFP6wSHOfCuAKBB/aPhRt430na0RFcw9RLqLlFnTIXf0J5icL3Tu/TFzA59bhtk+ZNdlj7F
7orXq0M9haENsb+TBIeK/GuLcI1S2IEIkFVmtIvegJBlN3srdWrLqI/AyFdszg5PkZrzXG88Xc2b
2WO3QwoaFVIK/AojhI0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UtSqlFV62lL0vsa+Fh+XV0GodQOhNU+6dPw5SjSuv0OvMPVTZXVGpv55T6fELMTk959mSyk6Ry8g
0O9Y+nqYj7I0zkNLWT7cwBX+iLCmX2JSQo0kktzf26plrcNa51Bs4Rbc4NpXOM0qb4rXVuoKypyP
HSgLU/Y/LJXF61+xWUxlO/iS23d098gIYO7aX1Nz0Zpxw9ecqpaiqqmINjKd7+FoOYwpOnngiAXz
pOgYfhxk1ISU+bUSjZjeDoP7g1lNCWE31RTqWkWQGF10aXAKjpV/urSILMIltA6tEQlYe504jcmA
K6CG5Be/e48W9rZhr524SoZsyb09Xu0ljFmYyw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
s9gMEzowcFxkq1MbQ+ohDFKy7tBz/pLyjan2X3aZrppPTnWFYxUwzBEF/ro/EfUUM8uTCttMSXmu
O+6LCUK5jgPjkaMWPsMS55hYAR6EBnyybIWMRKkzEnFIHYmOxoJXN6aejqQdGAJpk/GM0k2kE/2C
QJ0emaNzqpUFy8zVyD8=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a0jBWiKNqZ7hnx/6B7nI5ufxVeaI4NzBKnxHHL8rwEz+qZ6mQupkBL3OTKmXAoK5zM5zDX0BoIdg
g+qNbp2F/8a5NuDvQMSkFxXdX7tOsauze3WM5EFttlHDYHZKU6UpAJzbezDElKw67YmPdL2ias/f
cSf3Fsh+XYTJ2zk/Aki0aFTehgi8L4XtguQEsT9XeeJ+tXYAZohSNP/ZXyhbkIW1mpV3SlcC1dRy
fSbB/vnosDy99WZN5QQbdfYRLfBvXzklzldu53DJpWg3jshPotjjSI5uzp9DlhnDpOfdwh9CxlWq
JE6qCDbRp5l1ZZOW0Ts19+g/aN9sVzjbQ4oDlA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qAarq/HXu81d0yuylcPPXIPWsCCc2TC6LAm/TCo4PR7216jMtwG+SOM1+zlbzk5Kpoch2SxtyiyE
5sK7WhCCZrOW1iGC/V20t18okkAYc4u3L4md0H66B/+eKmZgbzcFSwiDhMJoBwjF2zjk2TM4Bm93
BlxsT6IQkVfY9OKxz3GKD18ZjGSQJb5rVaf/7yNlHKzsG7Zc5elrKUlCAelqg//v1qERxc0ZG5Mj
w9CJUiyPyaJZc6G+R+HfcZEK0Fuzs6xXGFnB6brHur9bHoCc0zmUXG+id4uvtFlqHTuH9Q8Ki3tS
3rXAl0lciyqfBhhsnTnP0yNu1Nj58S3wQZETeQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
m+BUnInKIetlcLwW5iyofYSLsTDcXRlNB6pr6H27L0tCYqG/fBmMFNiAUrJVb1hcbAOcDFCc5rjd
xA3xq3XzBTBLb5c6E202/xQvY32FumZ7gT+LPjb38Dqx7+alozDd+UEUruhrn6Sf4y8lmFklMZwW
a+Mf69X3eouV8s/54pNM77bHRMFHIqgva8hdzjjPB4kd8LddABMlTi3n2xgGCzXS8TAAAInPnR91
J9/U+l7mZ2BaratH/KLMMYOyoh4VmQUGPqHz2qXcCqu5CgODCZd5pkhugY9ByDQjLYVnmlxFG9Kc
4zXrtf2d25q9Kn9btoNwzwELaiybU8i6WgtJxg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nSH0KxJSxKPrCObmIHBcS8P1BA8mMtMKqPe8mvzoRbgsm/8Hz3rOL+ObP57qGSnFfseFbJy9iUl4
6EJIYYkZ94Q6lS6wsmymnSoy+vX3DDIbRcxWwZa8R3Zi3CDJdN+2l8QTxVl+S9SKUWPl1QseYb7V
bEl29QVgno6+ByYpHrXetmxVyG9o+GqR7GXlr/EZDwiUB/mB2Vyy7uNdZ/Fr9y/FsEphy+7K2lIx
nszpEPcZoKK2zlEs9wAnacKPuzf2VujZw4paW7aIhaUZlfzpP97rwUq4nCcDhV+xfol9uV1ThT1+
ZpLPKV9L6J7YIr0IXR65jxMP75KM36Wmqsns4g==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gpqCjOGJ637kBUJ19PgbSJOhTU2E6DfZTimxleISPs9RU7JykCGy9SPqx5xyVl3r6c6UYgi5hKNu
BVJDY+U9sVxwTjIgNs7zH/d8a5TQkliqDGq/Y/imWwPXYCADds3+N4PR+uXE+Ul2KsnNQP/gHXdU
ycgvwzTDcsyE+cntZUH35EtHyv2IvPhE9aJb1ZPvCY3uR1kG6KQwF10Ww7LEKRWTr5oMxz/R0s35
M833FVtkrZ9uTzKLa4Joo8ARMQx66IAKO6CKl30kcdr6kGrVWo8ArEB8h/7amQkkEKGVq/D0sTHK
2uHyOt6xvSrj6l9Hae1Sd1o6qu4mcFIsIacU+BJLJXt8FwLu6oobnGTewU+GNlAqvMxjdly3MScb
LDBHIzqAlqgCo2w4/I5QLKRCErydKjZ/8en4d1c22Zr89egLY08IctZj0FJ+GBh8Z04DzVom/E8V
CsPGJD1cFSZfb2/Uu9L3NPANh/eOGvxqlVycjSoPL4y/QjfdEZkR1djC

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Lzl+f5a5cWrBOpktelLybDJh26zODO1cHXsoEd4TW3dG5VAyRkeqtbBdb2PUWyKp7FY1uPuLyZog
BI9Pe1gS/m4LY6swFIngwuj94CQmLxPk9/yO7WrUCtlvlQrzSmQfxSpsqripZlybkc1jfloeNkb5
FoKJ9ORCPnEzASlhTb7+ZNMpY3FSm46yfpRyBw9OylwmX7enBBmMuxzGgVilSG1Zb2pCbJuWdplU
vc0acLwej8Ct03etO29l9Voikk1nGEBCUDPO/RrHuTvxnv0uruDhViyY/1Aq27n3r9qK1Ii5IGRY
t8uLW08VQmUHPHrU/dETI3BxChGHPvbitgbnkQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
p2+lz0LXs/Ccwjy6JEWjk9l2elPFLDQ+SvEBxSUhjCZGZ9lgU7GzYdM9tA/f8l/ppW5+Zqp3Fa77
MxrWi8Pd5pXpPgG5eU7h2ppt2+CRezhteHhTyTwc/pr5XKKiO/sU+1s1Yq1XLTrRTs7HuuXA/iPB
GsK6DonlPulcx0PaBPOcR+kk317xCJ5LA8zWJ3W8ZWanvcAF6LvHivwLkBByYiS412PsWLR8Ozla
u7QfFD1/cT7DLXIWHcZpOwOdqgWMt/jfpU+Hk3rYHdXzRxScg1jT3Citx4KgPiZRqzctylcbtP42
M7HfGF24PfbD+9ozq2I3I3rsevfD69/AF6Ldig==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WfQvQabnxy9UR5YbzBaKKLDzMK6YdKT2Msk1yj5fch8hvqGA/J6iFNXac5MLDoW4XeyHn0BpiBZB
GHWdZDxTYgdFa4NVZrTRIXQt/XzjUaoHvYNhDeyH+Dzffm38Hsloiwys7hl9mLrS5BWGHKu71lwK
MDUuPGb80ALTZCEKmN+ENs2MlAf3LQflCVeKgJU3wMA2f6kFN3v9AirdxmslFMMZJd+54UARr41P
Jngzw/7N4EXU+srjHQpGKd9uchASnzutFZgYUcIXVdVsTq6eIumVjX7nTDlvtDPbwAmxViqMxN/d
pGq6vKTWpkPIaFxxPaYLVDXyocS3nxaYLJBeTQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11104)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
