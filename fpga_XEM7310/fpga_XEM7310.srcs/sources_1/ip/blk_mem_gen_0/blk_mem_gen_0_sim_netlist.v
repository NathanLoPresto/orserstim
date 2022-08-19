// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Aug 15 10:05:26 2022
// Host        : A00080135 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/lopr5624/orserstim/fpga_XEM7310/fpga_XEM7310.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [3:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_douta_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.68295 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "15" *) 
  (* C_READ_DEPTH_B = "15" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "15" *) 
  (* C_WRITE_DEPTH_B = "15" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[31:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20432)
`pragma protect data_block
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
NzTN3wwSnLUwzFK8KA0zoXD6qIqyIJ1PV/Q=
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
