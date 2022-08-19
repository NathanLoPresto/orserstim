// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Aug 15 10:04:21 2022
// Host        : A00080135 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/lopr5624/orserstim/fpga_XEM7310/fpga_XEM7310.srcs/sources_1/ip/fifo_i2c_pipe/fifo_i2c_pipe_sim_netlist.v
// Design      : fifo_i2c_pipe
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_i2c_pipe,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module fifo_i2c_pipe
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [7:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [7:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1021" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1020" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "8" *) 
  (* C_RD_DEPTH = "256" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "8" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_i2c_pipe_fifo_generator_v13_2_7 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[7:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_i2c_pipe_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_i2c_pipe_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire [6:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [7:0]dest_out_bin;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[2]),
        .O(binval[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_i2c_pipe_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_i2c_pipe_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module fifo_i2c_pipe_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module fifo_i2c_pipe_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 110496)
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
