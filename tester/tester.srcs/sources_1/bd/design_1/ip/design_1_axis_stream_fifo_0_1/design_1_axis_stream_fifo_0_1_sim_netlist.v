// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Mar  6 16:38:08 2019
// Host        : DESKTOP-KC9HGNO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Xilinx_Projects/gyro_project/tester/tester.srcs/sources_1/bd/design_1/ip/design_1_axis_stream_fifo_0_1/design_1_axis_stream_fifo_0_1_sim_netlist.v
// Design      : design_1_axis_stream_fifo_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axis_stream_fifo_0_1,axis_stream_fifo_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_stream_fifo_v1_0,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_axis_stream_fifo_0_1
   (s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn,
    m00_axis_tdata,
    m00_axis_tstrb,
    m00_axis_tlast,
    m00_axis_tvalid,
    m00_axis_tready,
    m00_axis_aclk,
    m00_axis_aresetn,
    s00_axis_tdata,
    s00_axis_tstrb,
    s00_axis_tlast,
    s00_axis_tvalid,
    s00_axis_tready,
    s00_axis_aclk,
    s00_axis_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) output [31:0]m00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB" *) output [3:0]m00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output m00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) output m00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef" *) input m00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input m00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW" *) input m00_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA" *) input [31:0]s00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB" *) input [3:0]s00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST" *) input s00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID" *) input s00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef" *) output s00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input s00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW" *) input s00_axis_aresetn;

  wire \<const0> ;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [27:0]\^s00_axi_rdata ;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rdata[31] = \<const0> ;
  assign s00_axi_rdata[30] = \<const0> ;
  assign s00_axi_rdata[29] = \<const0> ;
  assign s00_axi_rdata[28] = \<const0> ;
  assign s00_axi_rdata[27:14] = \^s00_axi_rdata [27:14];
  assign s00_axi_rdata[13] = \<const0> ;
  assign s00_axi_rdata[12] = \<const0> ;
  assign s00_axi_rdata[11] = \<const0> ;
  assign s00_axi_rdata[10:0] = \^s00_axi_rdata [10:0];
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_axis_stream_fifo_0_1_axis_stream_fifo_v1_0 inst
       (.m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata({\^s00_axi_rdata [27:14],\^s00_axi_rdata [10:0]}),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata[0]),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb[0]),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_stream_fifo_v1_0" *) 
module design_1_axis_stream_fifo_0_1_axis_stream_fifo_v1_0
   (m00_axis_tvalid,
    m00_axis_tdata,
    m00_axis_tlast,
    s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axis_tready,
    s00_axi_bvalid,
    m00_axis_tready,
    s00_axis_tvalid,
    s00_axis_aclk,
    m00_axis_aclk,
    s00_axis_tdata,
    s00_axis_tlast,
    s00_axi_aclk,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axis_aresetn,
    m00_axis_aresetn,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready,
    s00_axi_wdata,
    s00_axi_wstrb);
  output m00_axis_tvalid;
  output [31:0]m00_axis_tdata;
  output m00_axis_tlast;
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output [24:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axis_tready;
  output s00_axi_bvalid;
  input m00_axis_tready;
  input s00_axis_tvalid;
  input s00_axis_aclk;
  input m00_axis_aclk;
  input [31:0]s00_axis_tdata;
  input s00_axis_tlast;
  input s00_axi_aclk;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axis_aresetn;
  input m00_axis_aresetn;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;
  input [0:0]s00_axi_wdata;
  input [0:0]s00_axi_wstrb;

  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_10;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_11;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_12;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_13;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_14;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_15;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_17;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_19;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_21;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_24;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_25;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_26;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_27;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_28;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_29;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_30;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_31;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_32;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_33;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_34;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_35;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_36;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_37;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_38;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_39;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_40;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_41;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_42;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_43;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_44;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_45;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_46;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_47;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_48;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_49;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_50;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_51;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_52;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_6;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_7;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_8;
  wire axis_stream_fifo_v1_0_S00_AXI_inst_n_9;
  wire [26:10]dbg_word0_int;
  wire [24:2]dbg_word1_int;
  wire [26:14]dbg_word2_int;
  wire [10:0]dbg_word3_int;
  wire empty;
  wire empty_carry_n_1;
  wire empty_carry_n_2;
  wire empty_carry_n_3;
  wire full0;
  wire full0_carry_n_2;
  wire full0_carry_n_3;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire m00_axis_tvalid_reg_i_1_n_0;
  wire m00_rst_sync1_reg;
  wire m00_rst_sync1_reg0;
  wire mem_read_data_valid_reg;
  wire mem_read_data_valid_reg_i_1_n_0;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_1_in;
  wire p_1_in1_in;
  wire [10:0]rd_ptr_gray_reg;
  wire [10:0]rd_ptr_gray_sync1_reg;
  wire \rd_ptr_gray_sync2_reg_reg_n_0_[0] ;
  wire \rd_ptr_gray_sync2_reg_reg_n_0_[1] ;
  wire \rd_ptr_gray_sync2_reg_reg_n_0_[2] ;
  wire \rd_ptr_gray_sync2_reg_reg_n_0_[3] ;
  wire \rd_ptr_gray_sync2_reg_reg_n_0_[4] ;
  wire \rd_ptr_gray_sync2_reg_reg_n_0_[5] ;
  wire \rd_ptr_gray_sync2_reg_reg_n_0_[6] ;
  wire \rd_ptr_gray_sync2_reg_reg_n_0_[7] ;
  wire \rd_ptr_gray_sync2_reg_reg_n_0_[8] ;
  wire \rd_ptr_reg[0]_i_1_n_0 ;
  wire \rd_ptr_reg[9]_i_1_n_0 ;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [24:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [0:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [0:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tready02_in;
  wire s00_axis_tvalid;
  wire s00_rst_sync1_reg;
  wire s00_rst_sync1_reg0;
  wire s00_rst_sync3_reg;
  wire [10:0]wr_addr_reg;
  wire \wr_addr_reg[0]_i_1_n_0 ;
  wire \wr_addr_reg[10]_i_1_n_0 ;
  wire \wr_addr_reg[1]_i_1_n_0 ;
  wire \wr_addr_reg[2]_i_1_n_0 ;
  wire \wr_addr_reg[3]_i_1_n_0 ;
  wire \wr_addr_reg[4]_i_1_n_0 ;
  wire \wr_addr_reg[5]_i_1_n_0 ;
  wire \wr_addr_reg[6]_i_1_n_0 ;
  wire \wr_addr_reg[7]_i_1_n_0 ;
  wire \wr_addr_reg[8]_i_1_n_0 ;
  wire \wr_addr_reg[9]_i_1_n_0 ;
  wire \wr_ptr_gray_reg[1]_i_1_n_0 ;
  wire \wr_ptr_gray_reg[2]_i_2_n_0 ;
  wire \wr_ptr_gray_reg[3]_i_2_n_0 ;
  wire \wr_ptr_gray_reg[5]_i_1_n_0 ;
  wire \wr_ptr_gray_reg[5]_i_2_n_0 ;
  wire \wr_ptr_gray_reg[6]_i_1_n_0 ;
  wire \wr_ptr_gray_reg[7]_i_1_n_0 ;
  wire \wr_ptr_gray_reg_reg_n_0_[0] ;
  wire \wr_ptr_gray_reg_reg_n_0_[1] ;
  wire \wr_ptr_gray_reg_reg_n_0_[2] ;
  wire \wr_ptr_gray_reg_reg_n_0_[3] ;
  wire \wr_ptr_gray_reg_reg_n_0_[4] ;
  wire \wr_ptr_gray_reg_reg_n_0_[5] ;
  wire \wr_ptr_gray_reg_reg_n_0_[6] ;
  wire \wr_ptr_gray_reg_reg_n_0_[7] ;
  wire \wr_ptr_gray_reg_reg_n_0_[8] ;
  wire [10:0]wr_ptr_gray_sync1_reg;
  wire [10:0]wr_ptr_gray_sync2_reg;
  wire [3:0]NLW_empty_carry_O_UNCONNECTED;
  wire [3:3]NLW_full0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_full0_carry_O_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  design_1_axis_stream_fifo_0_1_axis_stream_fifo_v1_0_S00_AXI axis_stream_fifo_v1_0_S00_AXI_inst
       (.CO(empty),
        .D({dbg_word0_int[10],axis_stream_fifo_v1_0_S00_AXI_inst_n_6,axis_stream_fifo_v1_0_S00_AXI_inst_n_7,axis_stream_fifo_v1_0_S00_AXI_inst_n_8,axis_stream_fifo_v1_0_S00_AXI_inst_n_9,axis_stream_fifo_v1_0_S00_AXI_inst_n_10,axis_stream_fifo_v1_0_S00_AXI_inst_n_11,axis_stream_fifo_v1_0_S00_AXI_inst_n_12,axis_stream_fifo_v1_0_S00_AXI_inst_n_13}),
        .Q(rd_ptr_gray_reg),
        .S({axis_stream_fifo_v1_0_S00_AXI_inst_n_42,axis_stream_fifo_v1_0_S00_AXI_inst_n_43,axis_stream_fifo_v1_0_S00_AXI_inst_n_44,axis_stream_fifo_v1_0_S00_AXI_inst_n_45}),
        .SR(s00_rst_sync3_reg),
        .dbg_word0_int(dbg_word0_int[26:14]),
        .dbg_word1_int(dbg_word1_int[24:14]),
        .dbg_word2_int({dbg_word2_int[26],dbg_word2_int[24:14]}),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid_reg_reg(m00_axis_tvalid),
        .m00_rst_sync1_reg(m00_rst_sync1_reg),
        .m00_rst_sync1_reg0(m00_rst_sync1_reg0),
        .m00_rst_sync2_reg_reg(axis_stream_fifo_v1_0_S00_AXI_inst_n_52),
        .m00_rst_sync3_reg_reg(axis_stream_fifo_v1_0_S00_AXI_inst_n_51),
        .mem_read_data_valid_reg(mem_read_data_valid_reg),
        .mem_reg(axis_stream_fifo_v1_0_S00_AXI_inst_n_14),
        .mem_reg_0(axis_stream_fifo_v1_0_S00_AXI_inst_n_27),
        .mem_reg_1({axis_stream_fifo_v1_0_S00_AXI_inst_n_46,axis_stream_fifo_v1_0_S00_AXI_inst_n_47,axis_stream_fifo_v1_0_S00_AXI_inst_n_48}),
        .\rd_ptr_gray_reg_reg[10] ({dbg_word1_int[10],axis_stream_fifo_v1_0_S00_AXI_inst_n_17,dbg_word1_int[7],axis_stream_fifo_v1_0_S00_AXI_inst_n_19,dbg_word1_int[5],axis_stream_fifo_v1_0_S00_AXI_inst_n_21,dbg_word1_int[3:2],axis_stream_fifo_v1_0_S00_AXI_inst_n_24,axis_stream_fifo_v1_0_S00_AXI_inst_n_25}),
        .\rd_ptr_gray_reg_reg[10]_0 (axis_stream_fifo_v1_0_S00_AXI_inst_n_26),
        .\rd_ptr_gray_reg_reg[10]_1 (axis_stream_fifo_v1_0_S00_AXI_inst_n_35),
        .\rd_ptr_gray_sync2_reg_reg[10] ({p_0_in0_in,p_0_in,\rd_ptr_gray_sync2_reg_reg_n_0_[8] ,\rd_ptr_gray_sync2_reg_reg_n_0_[7] ,\rd_ptr_gray_sync2_reg_reg_n_0_[6] ,\rd_ptr_gray_sync2_reg_reg_n_0_[5] ,\rd_ptr_gray_sync2_reg_reg_n_0_[4] ,\rd_ptr_gray_sync2_reg_reg_n_0_[3] ,\rd_ptr_gray_sync2_reg_reg_n_0_[2] ,\rd_ptr_gray_sync2_reg_reg_n_0_[1] ,\rd_ptr_gray_sync2_reg_reg_n_0_[0] }),
        .\rd_ptr_gray_sync2_reg_reg[8] (full0),
        .\rd_ptr_reg_reg[6] (axis_stream_fifo_v1_0_S00_AXI_inst_n_15),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tvalid(s00_axis_tvalid),
        .s00_rst_sync1_reg(s00_rst_sync1_reg),
        .s00_rst_sync1_reg0(s00_rst_sync1_reg0),
        .s00_rst_sync2_reg_reg(axis_stream_fifo_v1_0_S00_AXI_inst_n_50),
        .s00_rst_sync3_reg_reg(axis_stream_fifo_v1_0_S00_AXI_inst_n_49),
        .\wr_addr_reg_reg[10] (wr_addr_reg),
        .\wr_addr_reg_reg[2] (axis_stream_fifo_v1_0_S00_AXI_inst_n_40),
        .\wr_addr_reg_reg[5] (axis_stream_fifo_v1_0_S00_AXI_inst_n_32),
        .\wr_addr_reg_reg[6] (axis_stream_fifo_v1_0_S00_AXI_inst_n_30),
        .\wr_addr_reg_reg[8] (axis_stream_fifo_v1_0_S00_AXI_inst_n_36),
        .\wr_addr_reg_reg[8]_0 (axis_stream_fifo_v1_0_S00_AXI_inst_n_38),
        .\wr_ptr_gray_reg_reg[10] ({p_1_in1_in,p_1_in,\wr_ptr_gray_reg_reg_n_0_[8] ,\wr_ptr_gray_reg_reg_n_0_[7] ,\wr_ptr_gray_reg_reg_n_0_[6] ,\wr_ptr_gray_reg_reg_n_0_[5] ,\wr_ptr_gray_reg_reg_n_0_[4] ,\wr_ptr_gray_reg_reg_n_0_[3] ,\wr_ptr_gray_reg_reg_n_0_[2] ,\wr_ptr_gray_reg_reg_n_0_[1] ,\wr_ptr_gray_reg_reg_n_0_[0] }),
        .\wr_ptr_gray_reg_reg[1] (axis_stream_fifo_v1_0_S00_AXI_inst_n_39),
        .\wr_ptr_gray_reg_reg[4] (axis_stream_fifo_v1_0_S00_AXI_inst_n_33),
        .\wr_ptr_gray_reg_reg[6] (axis_stream_fifo_v1_0_S00_AXI_inst_n_28),
        .\wr_ptr_gray_reg_reg[6]_0 (axis_stream_fifo_v1_0_S00_AXI_inst_n_29),
        .\wr_ptr_gray_reg_reg[6]_1 (axis_stream_fifo_v1_0_S00_AXI_inst_n_41),
        .\wr_ptr_gray_sync2_reg_reg[10] (wr_ptr_gray_sync2_reg),
        .\wr_ptr_reg_reg[10] (axis_stream_fifo_v1_0_S00_AXI_inst_n_31),
        .\wr_ptr_reg_reg[3] (axis_stream_fifo_v1_0_S00_AXI_inst_n_37),
        .\wr_ptr_reg_reg[4] (axis_stream_fifo_v1_0_S00_AXI_inst_n_34));
  CARRY4 empty_carry
       (.CI(1'b0),
        .CO({empty,empty_carry_n_1,empty_carry_n_2,empty_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_empty_carry_O_UNCONNECTED[3:0]),
        .S({axis_stream_fifo_v1_0_S00_AXI_inst_n_42,axis_stream_fifo_v1_0_S00_AXI_inst_n_43,axis_stream_fifo_v1_0_S00_AXI_inst_n_44,axis_stream_fifo_v1_0_S00_AXI_inst_n_45}));
  CARRY4 full0_carry
       (.CI(1'b0),
        .CO({NLW_full0_carry_CO_UNCONNECTED[3],full0,full0_carry_n_2,full0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_full0_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,axis_stream_fifo_v1_0_S00_AXI_inst_n_46,axis_stream_fifo_v1_0_S00_AXI_inst_n_47,axis_stream_fifo_v1_0_S00_AXI_inst_n_48}));
  LUT3 #(
    .INIT(8'hBA)) 
    m00_axis_tvalid_reg_i_1
       (.I0(mem_read_data_valid_reg),
        .I1(m00_axis_tready),
        .I2(m00_axis_tvalid),
        .O(m00_axis_tvalid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m00_axis_tvalid_reg_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(m00_axis_tvalid_reg_i_1_n_0),
        .Q(m00_axis_tvalid),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b1)) 
    m00_rst_sync1_reg_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(m00_rst_sync1_reg0),
        .Q(m00_rst_sync1_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    m00_rst_sync2_reg_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_stream_fifo_v1_0_S00_AXI_inst_n_52),
        .Q(dbg_word0_int[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    m00_rst_sync3_reg_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_stream_fifo_v1_0_S00_AXI_inst_n_51),
        .Q(dbg_word0_int[25]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7555)) 
    mem_read_data_valid_reg_i_1
       (.I0(empty),
        .I1(m00_axis_tready),
        .I2(m00_axis_tvalid),
        .I3(mem_read_data_valid_reg),
        .O(mem_read_data_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mem_read_data_valid_reg_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(mem_read_data_valid_reg_i_1_n_0),
        .Q(mem_read_data_valid_reg),
        .R(dbg_word0_int[25]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d32" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "34816" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "32" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,wr_addr_reg[9:0],1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,dbg_word1_int[23:14],1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s00_axis_aclk),
        .CLKBWRCLK(m00_axis_aclk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI(s00_axis_tdata),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,s00_axis_tlast}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b1}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[31:0]),
        .DOBDO(m00_axis_tdata),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({NLW_mem_reg_DOPBDOP_UNCONNECTED[3:1],m00_axis_tlast}),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(s00_axis_tvalid),
        .ENBWREN(axis_stream_fifo_v1_0_S00_AXI_inst_n_27),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(axis_stream_fifo_v1_0_S00_AXI_inst_n_14),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA({s00_axis_tready02_in,s00_axis_tready02_in,s00_axis_tready02_in,s00_axis_tready02_in}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'hFFD7D7FF)) 
    mem_reg_i_3
       (.I0(full0),
        .I1(p_0_in),
        .I2(p_1_in),
        .I3(p_1_in1_in),
        .I4(p_0_in0_in),
        .O(s00_axis_tready02_in));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\rd_ptr_reg[0]_i_1_n_0 ),
        .Q(dbg_word1_int[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg_reg[10] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_word0_int[10]),
        .Q(dbg_word1_int[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_stream_fifo_v1_0_S00_AXI_inst_n_13),
        .Q(dbg_word1_int[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg_reg[2] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_stream_fifo_v1_0_S00_AXI_inst_n_12),
        .Q(dbg_word1_int[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg_reg[3] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_stream_fifo_v1_0_S00_AXI_inst_n_11),
        .Q(dbg_word1_int[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg_reg[4] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_stream_fifo_v1_0_S00_AXI_inst_n_10),
        .Q(dbg_word1_int[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg_reg[5] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_stream_fifo_v1_0_S00_AXI_inst_n_9),
        .Q(dbg_word1_int[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg_reg[6] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_stream_fifo_v1_0_S00_AXI_inst_n_8),
        .Q(dbg_word1_int[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg_reg[7] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_stream_fifo_v1_0_S00_AXI_inst_n_7),
        .Q(dbg_word1_int[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg_reg[8] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_stream_fifo_v1_0_S00_AXI_inst_n_6),
        .Q(dbg_word1_int[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg_reg[9] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\rd_ptr_reg[9]_i_1_n_0 ),
        .Q(dbg_word1_int[23]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA3C33)) 
    \rd_ptr_gray_reg[9]_i_1 
       (.I0(rd_ptr_gray_reg[9]),
        .I1(dbg_word0_int[24]),
        .I2(dbg_word0_int[23]),
        .I3(axis_stream_fifo_v1_0_S00_AXI_inst_n_35),
        .I4(empty),
        .I5(axis_stream_fifo_v1_0_S00_AXI_inst_n_26),
        .O(dbg_word1_int[9]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_stream_fifo_v1_0_S00_AXI_inst_n_25),
        .Q(rd_ptr_gray_reg[0]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[10] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_word1_int[10]),
        .Q(rd_ptr_gray_reg[10]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_stream_fifo_v1_0_S00_AXI_inst_n_24),
        .Q(rd_ptr_gray_reg[1]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[2] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_word1_int[2]),
        .Q(rd_ptr_gray_reg[2]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[3] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_word1_int[3]),
        .Q(rd_ptr_gray_reg[3]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[4] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_stream_fifo_v1_0_S00_AXI_inst_n_21),
        .Q(rd_ptr_gray_reg[4]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[5] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_word1_int[5]),
        .Q(rd_ptr_gray_reg[5]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[6] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_stream_fifo_v1_0_S00_AXI_inst_n_19),
        .Q(rd_ptr_gray_reg[6]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[7] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_word1_int[7]),
        .Q(rd_ptr_gray_reg[7]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[8] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_stream_fifo_v1_0_S00_AXI_inst_n_17),
        .Q(rd_ptr_gray_reg[8]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[9] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_word1_int[9]),
        .Q(rd_ptr_gray_reg[9]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[0] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(rd_ptr_gray_reg[0]),
        .Q(rd_ptr_gray_sync1_reg[0]),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[10] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(rd_ptr_gray_reg[10]),
        .Q(rd_ptr_gray_sync1_reg[10]),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[1] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(rd_ptr_gray_reg[1]),
        .Q(rd_ptr_gray_sync1_reg[1]),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[2] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(rd_ptr_gray_reg[2]),
        .Q(rd_ptr_gray_sync1_reg[2]),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[3] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(rd_ptr_gray_reg[3]),
        .Q(rd_ptr_gray_sync1_reg[3]),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[4] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(rd_ptr_gray_reg[4]),
        .Q(rd_ptr_gray_sync1_reg[4]),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[5] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(rd_ptr_gray_reg[5]),
        .Q(rd_ptr_gray_sync1_reg[5]),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[6] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(rd_ptr_gray_reg[6]),
        .Q(rd_ptr_gray_sync1_reg[6]),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[7] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(rd_ptr_gray_reg[7]),
        .Q(rd_ptr_gray_sync1_reg[7]),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[8] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(rd_ptr_gray_reg[8]),
        .Q(rd_ptr_gray_sync1_reg[8]),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[9] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(rd_ptr_gray_reg[9]),
        .Q(rd_ptr_gray_sync1_reg[9]),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[0] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(rd_ptr_gray_sync1_reg[0]),
        .Q(\rd_ptr_gray_sync2_reg_reg_n_0_[0] ),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[10] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(rd_ptr_gray_sync1_reg[10]),
        .Q(p_0_in0_in),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[1] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(rd_ptr_gray_sync1_reg[1]),
        .Q(\rd_ptr_gray_sync2_reg_reg_n_0_[1] ),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[2] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(rd_ptr_gray_sync1_reg[2]),
        .Q(\rd_ptr_gray_sync2_reg_reg_n_0_[2] ),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[3] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(rd_ptr_gray_sync1_reg[3]),
        .Q(\rd_ptr_gray_sync2_reg_reg_n_0_[3] ),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[4] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(rd_ptr_gray_sync1_reg[4]),
        .Q(\rd_ptr_gray_sync2_reg_reg_n_0_[4] ),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[5] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(rd_ptr_gray_sync1_reg[5]),
        .Q(\rd_ptr_gray_sync2_reg_reg_n_0_[5] ),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[6] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(rd_ptr_gray_sync1_reg[6]),
        .Q(\rd_ptr_gray_sync2_reg_reg_n_0_[6] ),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[7] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(rd_ptr_gray_sync1_reg[7]),
        .Q(\rd_ptr_gray_sync2_reg_reg_n_0_[7] ),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[8] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(rd_ptr_gray_sync1_reg[8]),
        .Q(\rd_ptr_gray_sync2_reg_reg_n_0_[8] ),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[9] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(rd_ptr_gray_sync1_reg[9]),
        .Q(p_0_in),
        .R(s00_rst_sync3_reg));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hAAAA5595)) 
    \rd_ptr_reg[0]_i_1 
       (.I0(dbg_word0_int[14]),
        .I1(mem_read_data_valid_reg),
        .I2(m00_axis_tvalid),
        .I3(m00_axis_tready),
        .I4(empty),
        .O(\rd_ptr_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \rd_ptr_reg[9]_i_1 
       (.I0(dbg_word0_int[22]),
        .I1(dbg_word0_int[20]),
        .I2(axis_stream_fifo_v1_0_S00_AXI_inst_n_15),
        .I3(dbg_word0_int[21]),
        .I4(axis_stream_fifo_v1_0_S00_AXI_inst_n_27),
        .I5(dbg_word0_int[23]),
        .O(\rd_ptr_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\rd_ptr_reg[0]_i_1_n_0 ),
        .Q(dbg_word0_int[14]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[10] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(dbg_word0_int[10]),
        .Q(dbg_word0_int[24]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_stream_fifo_v1_0_S00_AXI_inst_n_13),
        .Q(dbg_word0_int[15]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[2] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_stream_fifo_v1_0_S00_AXI_inst_n_12),
        .Q(dbg_word0_int[16]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[3] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_stream_fifo_v1_0_S00_AXI_inst_n_11),
        .Q(dbg_word0_int[17]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[4] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_stream_fifo_v1_0_S00_AXI_inst_n_10),
        .Q(dbg_word0_int[18]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[5] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_stream_fifo_v1_0_S00_AXI_inst_n_9),
        .Q(dbg_word0_int[19]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[6] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_stream_fifo_v1_0_S00_AXI_inst_n_8),
        .Q(dbg_word0_int[20]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[7] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_stream_fifo_v1_0_S00_AXI_inst_n_7),
        .Q(dbg_word0_int[21]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[8] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_stream_fifo_v1_0_S00_AXI_inst_n_6),
        .Q(dbg_word0_int[22]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[9] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\rd_ptr_reg[9]_i_1_n_0 ),
        .Q(dbg_word0_int[23]),
        .R(dbg_word0_int[25]));
  LUT6 #(
    .INIT(64'h5555511551155555)) 
    s00_axis_tready_INST_0
       (.I0(s00_rst_sync3_reg),
        .I1(full0),
        .I2(p_0_in),
        .I3(p_1_in),
        .I4(p_1_in1_in),
        .I5(p_0_in0_in),
        .O(s00_axis_tready));
  FDRE #(
    .INIT(1'b1)) 
    s00_rst_sync1_reg_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(s00_rst_sync1_reg0),
        .Q(s00_rst_sync1_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    s00_rst_sync2_reg_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(axis_stream_fifo_v1_0_S00_AXI_inst_n_50),
        .Q(dbg_word2_int[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    s00_rst_sync3_reg_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(axis_stream_fifo_v1_0_S00_AXI_inst_n_49),
        .Q(s00_rst_sync3_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h69555555AAAAAAAA)) 
    \wr_addr_reg[0]_i_1 
       (.I0(dbg_word2_int[14]),
        .I1(p_0_in0_in),
        .I2(p_1_in1_in),
        .I3(axis_stream_fifo_v1_0_S00_AXI_inst_n_28),
        .I4(full0),
        .I5(s00_axis_tvalid),
        .O(\wr_addr_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777F77744440444)) 
    \wr_addr_reg[10]_i_1 
       (.I0(axis_stream_fifo_v1_0_S00_AXI_inst_n_31),
        .I1(s00_axis_tvalid),
        .I2(full0),
        .I3(axis_stream_fifo_v1_0_S00_AXI_inst_n_28),
        .I4(axis_stream_fifo_v1_0_S00_AXI_inst_n_29),
        .I5(dbg_word2_int[24]),
        .O(\wr_addr_reg[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6555AAAAAAAAAAAA)) 
    \wr_addr_reg[1]_i_1 
       (.I0(dbg_word2_int[15]),
        .I1(axis_stream_fifo_v1_0_S00_AXI_inst_n_29),
        .I2(axis_stream_fifo_v1_0_S00_AXI_inst_n_28),
        .I3(full0),
        .I4(s00_axis_tvalid),
        .I5(dbg_word2_int[14]),
        .O(\wr_addr_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777F77744440444)) 
    \wr_addr_reg[2]_i_1 
       (.I0(axis_stream_fifo_v1_0_S00_AXI_inst_n_40),
        .I1(s00_axis_tvalid),
        .I2(full0),
        .I3(axis_stream_fifo_v1_0_S00_AXI_inst_n_28),
        .I4(axis_stream_fifo_v1_0_S00_AXI_inst_n_29),
        .I5(dbg_word2_int[16]),
        .O(\wr_addr_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000AAAAEFFFAAAA)) 
    \wr_addr_reg[3]_i_1 
       (.I0(dbg_word2_int[17]),
        .I1(axis_stream_fifo_v1_0_S00_AXI_inst_n_29),
        .I2(axis_stream_fifo_v1_0_S00_AXI_inst_n_28),
        .I3(full0),
        .I4(s00_axis_tvalid),
        .I5(axis_stream_fifo_v1_0_S00_AXI_inst_n_37),
        .O(\wr_addr_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA6555AAAA)) 
    \wr_addr_reg[4]_i_1 
       (.I0(dbg_word2_int[18]),
        .I1(axis_stream_fifo_v1_0_S00_AXI_inst_n_29),
        .I2(axis_stream_fifo_v1_0_S00_AXI_inst_n_28),
        .I3(full0),
        .I4(s00_axis_tvalid),
        .I5(axis_stream_fifo_v1_0_S00_AXI_inst_n_34),
        .O(\wr_addr_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9A9A9A9AAA9A9A9A)) 
    \wr_addr_reg[5]_i_1 
       (.I0(dbg_word2_int[19]),
        .I1(axis_stream_fifo_v1_0_S00_AXI_inst_n_32),
        .I2(s00_axis_tvalid),
        .I3(full0),
        .I4(axis_stream_fifo_v1_0_S00_AXI_inst_n_28),
        .I5(axis_stream_fifo_v1_0_S00_AXI_inst_n_29),
        .O(\wr_addr_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9A9A9A9AAA9A9A9A)) 
    \wr_addr_reg[6]_i_1 
       (.I0(dbg_word2_int[20]),
        .I1(axis_stream_fifo_v1_0_S00_AXI_inst_n_30),
        .I2(s00_axis_tvalid),
        .I3(full0),
        .I4(axis_stream_fifo_v1_0_S00_AXI_inst_n_28),
        .I5(axis_stream_fifo_v1_0_S00_AXI_inst_n_29),
        .O(\wr_addr_reg[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB4F0)) 
    \wr_addr_reg[7]_i_1 
       (.I0(axis_stream_fifo_v1_0_S00_AXI_inst_n_30),
        .I1(dbg_word2_int[20]),
        .I2(dbg_word2_int[21]),
        .I3(axis_stream_fifo_v1_0_S00_AXI_inst_n_36),
        .O(\wr_addr_reg[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \wr_addr_reg[8]_i_1 
       (.I0(dbg_word2_int[22]),
        .I1(axis_stream_fifo_v1_0_S00_AXI_inst_n_36),
        .I2(axis_stream_fifo_v1_0_S00_AXI_inst_n_38),
        .O(\wr_addr_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_addr_reg[9]_i_1 
       (.I0(dbg_word2_int[22]),
        .I1(axis_stream_fifo_v1_0_S00_AXI_inst_n_38),
        .I2(axis_stream_fifo_v1_0_S00_AXI_inst_n_36),
        .I3(dbg_word2_int[23]),
        .O(\wr_addr_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg_reg[0] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\wr_addr_reg[0]_i_1_n_0 ),
        .Q(wr_addr_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg_reg[10] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\wr_addr_reg[10]_i_1_n_0 ),
        .Q(wr_addr_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg_reg[1] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\wr_addr_reg[1]_i_1_n_0 ),
        .Q(wr_addr_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg_reg[2] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\wr_addr_reg[2]_i_1_n_0 ),
        .Q(wr_addr_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg_reg[3] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\wr_addr_reg[3]_i_1_n_0 ),
        .Q(wr_addr_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg_reg[4] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\wr_addr_reg[4]_i_1_n_0 ),
        .Q(wr_addr_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg_reg[5] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\wr_addr_reg[5]_i_1_n_0 ),
        .Q(wr_addr_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg_reg[6] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\wr_addr_reg[6]_i_1_n_0 ),
        .Q(wr_addr_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg_reg[7] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\wr_addr_reg[7]_i_1_n_0 ),
        .Q(wr_addr_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg_reg[8] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\wr_addr_reg[8]_i_1_n_0 ),
        .Q(wr_addr_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg_reg[9] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\wr_addr_reg[9]_i_1_n_0 ),
        .Q(wr_addr_reg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7777F77744440444)) 
    \wr_ptr_gray_reg[0]_i_1 
       (.I0(dbg_word2_int[15]),
        .I1(s00_axis_tvalid),
        .I2(full0),
        .I3(axis_stream_fifo_v1_0_S00_AXI_inst_n_28),
        .I4(axis_stream_fifo_v1_0_S00_AXI_inst_n_29),
        .I5(\wr_ptr_gray_reg_reg_n_0_[0] ),
        .O(dbg_word3_int[0]));
  LUT6 #(
    .INIT(64'h4000CCCCDFFFCCCC)) 
    \wr_ptr_gray_reg[10]_i_1 
       (.I0(p_0_in0_in),
        .I1(p_1_in1_in),
        .I2(axis_stream_fifo_v1_0_S00_AXI_inst_n_28),
        .I3(full0),
        .I4(s00_axis_tvalid),
        .I5(axis_stream_fifo_v1_0_S00_AXI_inst_n_31),
        .O(dbg_word3_int[10]));
  LUT6 #(
    .INIT(64'h3A3A3A3AAA3A3A3A)) 
    \wr_ptr_gray_reg[1]_i_1 
       (.I0(\wr_ptr_gray_reg_reg_n_0_[1] ),
        .I1(axis_stream_fifo_v1_0_S00_AXI_inst_n_39),
        .I2(s00_axis_tvalid),
        .I3(full0),
        .I4(axis_stream_fifo_v1_0_S00_AXI_inst_n_28),
        .I5(axis_stream_fifo_v1_0_S00_AXI_inst_n_29),
        .O(\wr_ptr_gray_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBFBBB88880888)) 
    \wr_ptr_gray_reg[2]_i_1 
       (.I0(\wr_ptr_gray_reg[2]_i_2_n_0 ),
        .I1(s00_axis_tvalid),
        .I2(full0),
        .I3(axis_stream_fifo_v1_0_S00_AXI_inst_n_28),
        .I4(axis_stream_fifo_v1_0_S00_AXI_inst_n_29),
        .I5(\wr_ptr_gray_reg_reg_n_0_[2] ),
        .O(dbg_word3_int[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h556A)) 
    \wr_ptr_gray_reg[2]_i_2 
       (.I0(dbg_word2_int[17]),
        .I1(dbg_word2_int[14]),
        .I2(dbg_word2_int[15]),
        .I3(dbg_word2_int[16]),
        .O(\wr_ptr_gray_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBFBBB88880888)) 
    \wr_ptr_gray_reg[3]_i_1 
       (.I0(\wr_ptr_gray_reg[3]_i_2_n_0 ),
        .I1(s00_axis_tvalid),
        .I2(full0),
        .I3(axis_stream_fifo_v1_0_S00_AXI_inst_n_28),
        .I4(axis_stream_fifo_v1_0_S00_AXI_inst_n_29),
        .I5(\wr_ptr_gray_reg_reg_n_0_[3] ),
        .O(dbg_word3_int[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h55556AAA)) 
    \wr_ptr_gray_reg[3]_i_2 
       (.I0(dbg_word2_int[18]),
        .I1(dbg_word2_int[15]),
        .I2(dbg_word2_int[14]),
        .I3(dbg_word2_int[16]),
        .I4(dbg_word2_int[17]),
        .O(\wr_ptr_gray_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBFBBB88880888)) 
    \wr_ptr_gray_reg[4]_i_1 
       (.I0(axis_stream_fifo_v1_0_S00_AXI_inst_n_33),
        .I1(s00_axis_tvalid),
        .I2(full0),
        .I3(axis_stream_fifo_v1_0_S00_AXI_inst_n_28),
        .I4(axis_stream_fifo_v1_0_S00_AXI_inst_n_29),
        .I5(\wr_ptr_gray_reg_reg_n_0_[4] ),
        .O(dbg_word3_int[4]));
  LUT6 #(
    .INIT(64'hCACACACAAACACACA)) 
    \wr_ptr_gray_reg[5]_i_1 
       (.I0(\wr_ptr_gray_reg_reg_n_0_[5] ),
        .I1(\wr_ptr_gray_reg[5]_i_2_n_0 ),
        .I2(s00_axis_tvalid),
        .I3(full0),
        .I4(axis_stream_fifo_v1_0_S00_AXI_inst_n_28),
        .I5(axis_stream_fifo_v1_0_S00_AXI_inst_n_29),
        .O(\wr_ptr_gray_reg[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h65)) 
    \wr_ptr_gray_reg[5]_i_2 
       (.I0(dbg_word2_int[20]),
        .I1(dbg_word2_int[19]),
        .I2(axis_stream_fifo_v1_0_S00_AXI_inst_n_32),
        .O(\wr_ptr_gray_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3A3A3A3AAA3A3A3A)) 
    \wr_ptr_gray_reg[6]_i_1 
       (.I0(\wr_ptr_gray_reg_reg_n_0_[6] ),
        .I1(axis_stream_fifo_v1_0_S00_AXI_inst_n_41),
        .I2(s00_axis_tvalid),
        .I3(full0),
        .I4(axis_stream_fifo_v1_0_S00_AXI_inst_n_28),
        .I5(axis_stream_fifo_v1_0_S00_AXI_inst_n_29),
        .O(\wr_ptr_gray_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3033CFCCAAAAAAAA)) 
    \wr_ptr_gray_reg[7]_i_1 
       (.I0(\wr_ptr_gray_reg_reg_n_0_[7] ),
        .I1(dbg_word2_int[21]),
        .I2(axis_stream_fifo_v1_0_S00_AXI_inst_n_30),
        .I3(dbg_word2_int[20]),
        .I4(dbg_word2_int[22]),
        .I5(axis_stream_fifo_v1_0_S00_AXI_inst_n_36),
        .O(\wr_ptr_gray_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h03FCAAAA)) 
    \wr_ptr_gray_reg[8]_i_1 
       (.I0(\wr_ptr_gray_reg_reg_n_0_[8] ),
        .I1(dbg_word2_int[22]),
        .I2(axis_stream_fifo_v1_0_S00_AXI_inst_n_38),
        .I3(dbg_word2_int[23]),
        .I4(axis_stream_fifo_v1_0_S00_AXI_inst_n_36),
        .O(dbg_word3_int[8]));
  LUT6 #(
    .INIT(64'h0333FCCCAAAAAAAA)) 
    \wr_ptr_gray_reg[9]_i_1 
       (.I0(p_1_in),
        .I1(dbg_word2_int[23]),
        .I2(dbg_word2_int[22]),
        .I3(axis_stream_fifo_v1_0_S00_AXI_inst_n_38),
        .I4(dbg_word2_int[24]),
        .I5(axis_stream_fifo_v1_0_S00_AXI_inst_n_36),
        .O(dbg_word3_int[9]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[0] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(dbg_word3_int[0]),
        .Q(\wr_ptr_gray_reg_reg_n_0_[0] ),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[10] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(dbg_word3_int[10]),
        .Q(p_1_in1_in),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[1] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\wr_ptr_gray_reg[1]_i_1_n_0 ),
        .Q(\wr_ptr_gray_reg_reg_n_0_[1] ),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[2] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(dbg_word3_int[2]),
        .Q(\wr_ptr_gray_reg_reg_n_0_[2] ),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[3] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(dbg_word3_int[3]),
        .Q(\wr_ptr_gray_reg_reg_n_0_[3] ),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[4] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(dbg_word3_int[4]),
        .Q(\wr_ptr_gray_reg_reg_n_0_[4] ),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[5] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\wr_ptr_gray_reg[5]_i_1_n_0 ),
        .Q(\wr_ptr_gray_reg_reg_n_0_[5] ),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[6] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\wr_ptr_gray_reg[6]_i_1_n_0 ),
        .Q(\wr_ptr_gray_reg_reg_n_0_[6] ),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[7] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\wr_ptr_gray_reg[7]_i_1_n_0 ),
        .Q(\wr_ptr_gray_reg_reg_n_0_[7] ),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[8] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(dbg_word3_int[8]),
        .Q(\wr_ptr_gray_reg_reg_n_0_[8] ),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[9] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(dbg_word3_int[9]),
        .Q(p_1_in),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\wr_ptr_gray_reg_reg_n_0_[0] ),
        .Q(wr_ptr_gray_sync1_reg[0]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[10] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(p_1_in1_in),
        .Q(wr_ptr_gray_sync1_reg[10]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\wr_ptr_gray_reg_reg_n_0_[1] ),
        .Q(wr_ptr_gray_sync1_reg[1]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[2] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\wr_ptr_gray_reg_reg_n_0_[2] ),
        .Q(wr_ptr_gray_sync1_reg[2]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[3] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\wr_ptr_gray_reg_reg_n_0_[3] ),
        .Q(wr_ptr_gray_sync1_reg[3]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[4] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\wr_ptr_gray_reg_reg_n_0_[4] ),
        .Q(wr_ptr_gray_sync1_reg[4]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[5] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\wr_ptr_gray_reg_reg_n_0_[5] ),
        .Q(wr_ptr_gray_sync1_reg[5]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[6] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\wr_ptr_gray_reg_reg_n_0_[6] ),
        .Q(wr_ptr_gray_sync1_reg[6]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[7] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\wr_ptr_gray_reg_reg_n_0_[7] ),
        .Q(wr_ptr_gray_sync1_reg[7]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[8] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\wr_ptr_gray_reg_reg_n_0_[8] ),
        .Q(wr_ptr_gray_sync1_reg[8]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[9] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(wr_ptr_gray_sync1_reg[9]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync2_reg_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(wr_ptr_gray_sync1_reg[0]),
        .Q(wr_ptr_gray_sync2_reg[0]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync2_reg_reg[10] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(wr_ptr_gray_sync1_reg[10]),
        .Q(wr_ptr_gray_sync2_reg[10]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync2_reg_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(wr_ptr_gray_sync1_reg[1]),
        .Q(wr_ptr_gray_sync2_reg[1]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync2_reg_reg[2] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(wr_ptr_gray_sync1_reg[2]),
        .Q(wr_ptr_gray_sync2_reg[2]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync2_reg_reg[3] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(wr_ptr_gray_sync1_reg[3]),
        .Q(wr_ptr_gray_sync2_reg[3]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync2_reg_reg[4] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(wr_ptr_gray_sync1_reg[4]),
        .Q(wr_ptr_gray_sync2_reg[4]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync2_reg_reg[5] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(wr_ptr_gray_sync1_reg[5]),
        .Q(wr_ptr_gray_sync2_reg[5]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync2_reg_reg[6] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(wr_ptr_gray_sync1_reg[6]),
        .Q(wr_ptr_gray_sync2_reg[6]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync2_reg_reg[7] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(wr_ptr_gray_sync1_reg[7]),
        .Q(wr_ptr_gray_sync2_reg[7]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync2_reg_reg[8] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(wr_ptr_gray_sync1_reg[8]),
        .Q(wr_ptr_gray_sync2_reg[8]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync2_reg_reg[9] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(wr_ptr_gray_sync1_reg[9]),
        .Q(wr_ptr_gray_sync2_reg[9]),
        .R(dbg_word0_int[25]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[0] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\wr_addr_reg[0]_i_1_n_0 ),
        .Q(dbg_word2_int[14]),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[10] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\wr_addr_reg[10]_i_1_n_0 ),
        .Q(dbg_word2_int[24]),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[1] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\wr_addr_reg[1]_i_1_n_0 ),
        .Q(dbg_word2_int[15]),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[2] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\wr_addr_reg[2]_i_1_n_0 ),
        .Q(dbg_word2_int[16]),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[3] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\wr_addr_reg[3]_i_1_n_0 ),
        .Q(dbg_word2_int[17]),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[4] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\wr_addr_reg[4]_i_1_n_0 ),
        .Q(dbg_word2_int[18]),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[5] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\wr_addr_reg[5]_i_1_n_0 ),
        .Q(dbg_word2_int[19]),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[6] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\wr_addr_reg[6]_i_1_n_0 ),
        .Q(dbg_word2_int[20]),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[7] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\wr_addr_reg[7]_i_1_n_0 ),
        .Q(dbg_word2_int[21]),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[8] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\wr_addr_reg[8]_i_1_n_0 ),
        .Q(dbg_word2_int[22]),
        .R(s00_rst_sync3_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[9] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\wr_addr_reg[9]_i_1_n_0 ),
        .Q(dbg_word2_int[23]),
        .R(s00_rst_sync3_reg));
endmodule

(* ORIG_REF_NAME = "axis_stream_fifo_v1_0_S00_AXI" *) 
module design_1_axis_stream_fifo_0_1_axis_stream_fifo_v1_0_S00_AXI
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_bvalid,
    s00_axi_rvalid,
    D,
    mem_reg,
    \rd_ptr_reg_reg[6] ,
    \rd_ptr_gray_reg_reg[10] ,
    \rd_ptr_gray_reg_reg[10]_0 ,
    mem_reg_0,
    \wr_ptr_gray_reg_reg[6] ,
    \wr_ptr_gray_reg_reg[6]_0 ,
    \wr_addr_reg_reg[6] ,
    \wr_ptr_reg_reg[10] ,
    \wr_addr_reg_reg[5] ,
    \wr_ptr_gray_reg_reg[4] ,
    \wr_ptr_reg_reg[4] ,
    \rd_ptr_gray_reg_reg[10]_1 ,
    \wr_addr_reg_reg[8] ,
    \wr_ptr_reg_reg[3] ,
    \wr_addr_reg_reg[8]_0 ,
    \wr_ptr_gray_reg_reg[1] ,
    \wr_addr_reg_reg[2] ,
    \wr_ptr_gray_reg_reg[6]_1 ,
    S,
    mem_reg_1,
    s00_rst_sync3_reg_reg,
    s00_rst_sync2_reg_reg,
    m00_rst_sync3_reg_reg,
    m00_rst_sync2_reg_reg,
    s00_axi_rdata,
    s00_rst_sync1_reg0,
    m00_rst_sync1_reg0,
    s00_axi_aclk,
    dbg_word0_int,
    CO,
    mem_read_data_valid_reg,
    m00_axis_tready,
    m00_axis_tvalid_reg_reg,
    Q,
    dbg_word2_int,
    s00_axis_tvalid,
    \rd_ptr_gray_sync2_reg_reg[8] ,
    \wr_ptr_gray_reg_reg[10] ,
    \rd_ptr_gray_sync2_reg_reg[10] ,
    \wr_ptr_gray_sync2_reg_reg[10] ,
    m00_rst_sync1_reg,
    s00_rst_sync1_reg,
    SR,
    \wr_addr_reg_reg[10] ,
    dbg_word1_int,
    s00_axi_aresetn,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axis_aresetn,
    m00_axis_aresetn,
    s00_axi_araddr,
    s00_axi_awaddr);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [8:0]D;
  output mem_reg;
  output \rd_ptr_reg_reg[6] ;
  output [9:0]\rd_ptr_gray_reg_reg[10] ;
  output \rd_ptr_gray_reg_reg[10]_0 ;
  output mem_reg_0;
  output \wr_ptr_gray_reg_reg[6] ;
  output \wr_ptr_gray_reg_reg[6]_0 ;
  output \wr_addr_reg_reg[6] ;
  output \wr_ptr_reg_reg[10] ;
  output \wr_addr_reg_reg[5] ;
  output \wr_ptr_gray_reg_reg[4] ;
  output \wr_ptr_reg_reg[4] ;
  output \rd_ptr_gray_reg_reg[10]_1 ;
  output \wr_addr_reg_reg[8] ;
  output \wr_ptr_reg_reg[3] ;
  output \wr_addr_reg_reg[8]_0 ;
  output \wr_ptr_gray_reg_reg[1] ;
  output \wr_addr_reg_reg[2] ;
  output \wr_ptr_gray_reg_reg[6]_1 ;
  output [3:0]S;
  output [2:0]mem_reg_1;
  output s00_rst_sync3_reg_reg;
  output s00_rst_sync2_reg_reg;
  output m00_rst_sync3_reg_reg;
  output m00_rst_sync2_reg_reg;
  output [24:0]s00_axi_rdata;
  output s00_rst_sync1_reg0;
  output m00_rst_sync1_reg0;
  input s00_axi_aclk;
  input [12:0]dbg_word0_int;
  input [0:0]CO;
  input mem_read_data_valid_reg;
  input m00_axis_tready;
  input m00_axis_tvalid_reg_reg;
  input [10:0]Q;
  input [11:0]dbg_word2_int;
  input s00_axis_tvalid;
  input [0:0]\rd_ptr_gray_sync2_reg_reg[8] ;
  input [10:0]\wr_ptr_gray_reg_reg[10] ;
  input [10:0]\rd_ptr_gray_sync2_reg_reg[10] ;
  input [10:0]\wr_ptr_gray_sync2_reg_reg[10] ;
  input m00_rst_sync1_reg;
  input s00_rst_sync1_reg;
  input [0:0]SR;
  input [10:0]\wr_addr_reg_reg[10] ;
  input [10:0]dbg_word1_int;
  input s00_axi_aresetn;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [0:0]s00_axi_wdata;
  input [0:0]s00_axi_wstrb;
  input s00_axis_aresetn;
  input m00_axis_aresetn;
  input [1:0]s00_axi_araddr;
  input [1:0]s00_axi_awaddr;

  wire [0:0]CO;
  wire [8:0]D;
  wire [10:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[10]_i_4_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[3]_i_4_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[5]_i_4_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[7]_i_4_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[8]_i_4_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire \axi_rdata[9]_i_4_n_0 ;
  wire \axi_rdata[9]_i_5_n_0 ;
  wire \axi_rdata[9]_i_6_n_0 ;
  wire \axi_rdata[9]_i_7_n_0 ;
  wire \axi_rdata[9]_i_8_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [12:0]dbg_word0_int;
  wire [10:0]dbg_word1_int;
  wire [11:0]dbg_word2_int;
  wire m00_axis_aresetn;
  wire m00_axis_tready;
  wire m00_axis_tvalid_reg_reg;
  wire m00_rst_sync1_reg;
  wire m00_rst_sync1_reg0;
  wire m00_rst_sync2_reg_reg;
  wire m00_rst_sync3_reg_reg;
  wire mem_read_data_valid_reg;
  wire mem_reg;
  wire mem_reg_0;
  wire [2:0]mem_reg_1;
  wire \rd_ptr_gray_reg[2]_i_2_n_0 ;
  wire \rd_ptr_gray_reg[3]_i_2_n_0 ;
  wire \rd_ptr_gray_reg[4]_i_2_n_0 ;
  wire \rd_ptr_gray_reg[5]_i_2_n_0 ;
  wire \rd_ptr_gray_reg[7]_i_2_n_0 ;
  wire \rd_ptr_gray_reg[8]_i_2_n_0 ;
  wire [9:0]\rd_ptr_gray_reg_reg[10] ;
  wire \rd_ptr_gray_reg_reg[10]_0 ;
  wire \rd_ptr_gray_reg_reg[10]_1 ;
  wire [10:0]\rd_ptr_gray_sync2_reg_reg[10] ;
  wire [0:0]\rd_ptr_gray_sync2_reg_reg[8] ;
  wire \rd_ptr_reg_reg[6] ;
  wire [27:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [24:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [0:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [0:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire s00_axis_aresetn;
  wire s00_axis_tvalid;
  wire s00_rst_sync1_reg;
  wire s00_rst_sync1_reg0;
  wire s00_rst_sync1_reg1;
  wire s00_rst_sync2_reg_reg;
  wire s00_rst_sync3_reg_reg;
  wire \slv_reg0[0]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire [10:0]\wr_addr_reg_reg[10] ;
  wire \wr_addr_reg_reg[2] ;
  wire \wr_addr_reg_reg[5] ;
  wire \wr_addr_reg_reg[6] ;
  wire \wr_addr_reg_reg[8] ;
  wire \wr_addr_reg_reg[8]_0 ;
  wire [10:0]\wr_ptr_gray_reg_reg[10] ;
  wire \wr_ptr_gray_reg_reg[1] ;
  wire \wr_ptr_gray_reg_reg[4] ;
  wire \wr_ptr_gray_reg_reg[6] ;
  wire \wr_ptr_gray_reg_reg[6]_0 ;
  wire \wr_ptr_gray_reg_reg[6]_1 ;
  wire [10:0]\wr_ptr_gray_sync2_reg_reg[10] ;
  wire \wr_ptr_reg_reg[10] ;
  wire \wr_ptr_reg_reg[3] ;
  wire \wr_ptr_reg_reg[4] ;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_awready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(s00_axi_arready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awready),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awready),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awready),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s00_axi_awready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awready),
        .I3(s00_axi_wready),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \axi_rdata[0]_i_2 
       (.I0(dbg_word2_int[0]),
        .I1(\wr_addr_reg_reg[8] ),
        .I2(axi_araddr[3]),
        .I3(dbg_word0_int[0]),
        .I4(mem_reg_0),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \axi_rdata[0]_i_3 
       (.I0(dbg_word2_int[1]),
        .I1(\wr_addr_reg_reg[8] ),
        .I2(\wr_ptr_gray_reg_reg[10] [0]),
        .I3(axi_araddr[3]),
        .I4(\rd_ptr_gray_reg_reg[10] [0]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7F80FFFF7F800000)) 
    \axi_rdata[10]_i_2 
       (.I0(dbg_word2_int[9]),
        .I1(\axi_rdata[10]_i_4_n_0 ),
        .I2(\wr_addr_reg_reg[8] ),
        .I3(dbg_word2_int[10]),
        .I4(axi_araddr[3]),
        .I5(D[8]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h2EFF2E00)) 
    \axi_rdata[10]_i_3 
       (.I0(\wr_ptr_gray_reg_reg[10] [10]),
        .I1(\wr_addr_reg_reg[8] ),
        .I2(\wr_ptr_reg_reg[10] ),
        .I3(axi_araddr[3]),
        .I4(\rd_ptr_gray_reg_reg[10] [9]),
        .O(\axi_rdata[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \axi_rdata[10]_i_4 
       (.I0(\wr_addr_reg_reg[6] ),
        .I1(dbg_word2_int[6]),
        .I2(dbg_word2_int[7]),
        .I3(dbg_word2_int[8]),
        .O(\axi_rdata[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_1 
       (.I0(\wr_addr_reg_reg[10] [0]),
        .I1(dbg_word1_int[0]),
        .I2(axi_araddr[2]),
        .I3(dbg_word2_int[0]),
        .I4(axi_araddr[3]),
        .I5(dbg_word0_int[0]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_1 
       (.I0(\wr_addr_reg_reg[10] [1]),
        .I1(dbg_word1_int[1]),
        .I2(axi_araddr[2]),
        .I3(dbg_word2_int[1]),
        .I4(axi_araddr[3]),
        .I5(dbg_word0_int[1]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_1 
       (.I0(\wr_addr_reg_reg[10] [2]),
        .I1(dbg_word1_int[2]),
        .I2(axi_araddr[2]),
        .I3(dbg_word2_int[2]),
        .I4(axi_araddr[3]),
        .I5(dbg_word0_int[2]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_1 
       (.I0(\wr_addr_reg_reg[10] [3]),
        .I1(dbg_word1_int[3]),
        .I2(axi_araddr[2]),
        .I3(dbg_word2_int[3]),
        .I4(axi_araddr[3]),
        .I5(dbg_word0_int[3]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_1 
       (.I0(\wr_addr_reg_reg[10] [4]),
        .I1(dbg_word1_int[4]),
        .I2(axi_araddr[2]),
        .I3(dbg_word2_int[4]),
        .I4(axi_araddr[3]),
        .I5(dbg_word0_int[4]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_1 
       (.I0(\wr_addr_reg_reg[10] [5]),
        .I1(dbg_word1_int[5]),
        .I2(axi_araddr[2]),
        .I3(dbg_word2_int[5]),
        .I4(axi_araddr[3]),
        .I5(dbg_word0_int[5]),
        .O(reg_data_out[19]));
  LUT5 #(
    .INIT(32'h6AFF6A00)) 
    \axi_rdata[1]_i_2 
       (.I0(dbg_word2_int[1]),
        .I1(\wr_addr_reg_reg[8] ),
        .I2(dbg_word2_int[0]),
        .I3(axi_araddr[3]),
        .I4(D[0]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3AFF3A00)) 
    \axi_rdata[1]_i_3 
       (.I0(\wr_ptr_gray_reg_reg[10] [1]),
        .I1(\wr_ptr_gray_reg_reg[1] ),
        .I2(\wr_addr_reg_reg[8] ),
        .I3(axi_araddr[3]),
        .I4(\rd_ptr_gray_reg_reg[10] [1]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_1 
       (.I0(\wr_addr_reg_reg[10] [6]),
        .I1(dbg_word1_int[6]),
        .I2(axi_araddr[2]),
        .I3(dbg_word2_int[6]),
        .I4(axi_araddr[3]),
        .I5(dbg_word0_int[6]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_1 
       (.I0(\wr_addr_reg_reg[10] [7]),
        .I1(dbg_word1_int[7]),
        .I2(axi_araddr[2]),
        .I3(dbg_word2_int[7]),
        .I4(axi_araddr[3]),
        .I5(dbg_word0_int[7]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_1 
       (.I0(\wr_addr_reg_reg[10] [8]),
        .I1(dbg_word1_int[8]),
        .I2(axi_araddr[2]),
        .I3(dbg_word2_int[8]),
        .I4(axi_araddr[3]),
        .I5(dbg_word0_int[8]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_1 
       (.I0(\wr_addr_reg_reg[10] [9]),
        .I1(dbg_word1_int[9]),
        .I2(axi_araddr[2]),
        .I3(dbg_word2_int[9]),
        .I4(axi_araddr[3]),
        .I5(dbg_word0_int[9]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_1 
       (.I0(\wr_addr_reg_reg[10] [10]),
        .I1(dbg_word1_int[10]),
        .I2(axi_araddr[2]),
        .I3(dbg_word2_int[10]),
        .I4(axi_araddr[3]),
        .I5(dbg_word0_int[10]),
        .O(reg_data_out[24]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[25]_i_1 
       (.I0(dbg_word0_int[11]),
        .I1(axi_araddr[3]),
        .I2(SR),
        .I3(axi_araddr[2]),
        .O(reg_data_out[25]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[26]_i_1 
       (.I0(dbg_word0_int[12]),
        .I1(axi_araddr[3]),
        .I2(dbg_word2_int[11]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[26]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[27]_i_1 
       (.I0(m00_rst_sync1_reg),
        .I1(axi_araddr[3]),
        .I2(s00_rst_sync1_reg),
        .I3(axi_araddr[2]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'h7F80FFFF7F800000)) 
    \axi_rdata[2]_i_2 
       (.I0(dbg_word2_int[1]),
        .I1(dbg_word2_int[0]),
        .I2(\wr_addr_reg_reg[8] ),
        .I3(dbg_word2_int[2]),
        .I4(axi_araddr[3]),
        .I5(D[1]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6F60FFFF6F600000)) 
    \axi_rdata[2]_i_3 
       (.I0(\wr_ptr_reg_reg[3] ),
        .I1(\wr_addr_reg_reg[2] ),
        .I2(\wr_addr_reg_reg[8] ),
        .I3(\wr_ptr_gray_reg_reg[10] [2]),
        .I4(axi_araddr[3]),
        .I5(\rd_ptr_gray_reg_reg[10] [2]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h2EFF2E00)) 
    \axi_rdata[3]_i_2 
       (.I0(dbg_word2_int[3]),
        .I1(\wr_addr_reg_reg[8] ),
        .I2(\wr_ptr_reg_reg[3] ),
        .I3(axi_araddr[3]),
        .I4(D[2]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6F60FFFF6F600000)) 
    \axi_rdata[3]_i_3 
       (.I0(\axi_rdata[3]_i_4_n_0 ),
        .I1(\wr_ptr_reg_reg[3] ),
        .I2(\wr_addr_reg_reg[8] ),
        .I3(\wr_ptr_gray_reg_reg[10] [3]),
        .I4(axi_araddr[3]),
        .I5(\rd_ptr_gray_reg_reg[10] [3]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h95555555)) 
    \axi_rdata[3]_i_4 
       (.I0(dbg_word2_int[4]),
        .I1(dbg_word2_int[3]),
        .I2(dbg_word2_int[1]),
        .I3(dbg_word2_int[0]),
        .I4(dbg_word2_int[2]),
        .O(\axi_rdata[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA6FFA600)) 
    \axi_rdata[4]_i_2 
       (.I0(dbg_word2_int[4]),
        .I1(\wr_addr_reg_reg[8] ),
        .I2(\wr_ptr_reg_reg[4] ),
        .I3(axi_araddr[3]),
        .I4(D[3]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[4]_i_3 
       (.I0(\wr_ptr_gray_reg_reg[4] ),
        .I1(\wr_addr_reg_reg[8] ),
        .I2(\wr_ptr_gray_reg_reg[10] [4]),
        .I3(axi_araddr[3]),
        .I4(\rd_ptr_gray_reg_reg[10] [4]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h9AFF9A00)) 
    \axi_rdata[5]_i_2 
       (.I0(dbg_word2_int[5]),
        .I1(\wr_addr_reg_reg[5] ),
        .I2(\wr_addr_reg_reg[8] ),
        .I3(axi_araddr[3]),
        .I4(D[4]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC3AAFFFFC3AA0000)) 
    \axi_rdata[5]_i_3 
       (.I0(\wr_ptr_gray_reg_reg[10] [5]),
        .I1(dbg_word2_int[6]),
        .I2(\axi_rdata[5]_i_4_n_0 ),
        .I3(\wr_addr_reg_reg[8] ),
        .I4(axi_araddr[3]),
        .I5(\rd_ptr_gray_reg_reg[10] [5]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \axi_rdata[5]_i_4 
       (.I0(dbg_word2_int[4]),
        .I1(dbg_word2_int[2]),
        .I2(dbg_word2_int[0]),
        .I3(dbg_word2_int[1]),
        .I4(dbg_word2_int[3]),
        .I5(dbg_word2_int[5]),
        .O(\axi_rdata[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h9AFF9A00)) 
    \axi_rdata[6]_i_2 
       (.I0(dbg_word2_int[6]),
        .I1(\wr_addr_reg_reg[6] ),
        .I2(\wr_addr_reg_reg[8] ),
        .I3(axi_araddr[3]),
        .I4(D[5]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3AFF3A00)) 
    \axi_rdata[6]_i_3 
       (.I0(\wr_ptr_gray_reg_reg[10] [6]),
        .I1(\wr_ptr_gray_reg_reg[6]_1 ),
        .I2(\wr_addr_reg_reg[8] ),
        .I3(axi_araddr[3]),
        .I4(\rd_ptr_gray_reg_reg[10] [6]),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB4F0FFFFB4F00000)) 
    \axi_rdata[7]_i_2 
       (.I0(\wr_addr_reg_reg[6] ),
        .I1(dbg_word2_int[6]),
        .I2(dbg_word2_int[7]),
        .I3(\wr_addr_reg_reg[8] ),
        .I4(axi_araddr[3]),
        .I5(D[6]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC3AAFFFFC3AA0000)) 
    \axi_rdata[7]_i_3 
       (.I0(\wr_ptr_gray_reg_reg[10] [7]),
        .I1(\axi_rdata[7]_i_4_n_0 ),
        .I2(dbg_word2_int[8]),
        .I3(\wr_addr_reg_reg[8] ),
        .I4(axi_araddr[3]),
        .I5(\rd_ptr_gray_reg_reg[10] [7]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \axi_rdata[7]_i_4 
       (.I0(dbg_word2_int[7]),
        .I1(\wr_addr_reg_reg[6] ),
        .I2(dbg_word2_int[6]),
        .O(\axi_rdata[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h6AFF6A00)) 
    \axi_rdata[8]_i_2 
       (.I0(dbg_word2_int[8]),
        .I1(\wr_addr_reg_reg[8] ),
        .I2(\wr_addr_reg_reg[8]_0 ),
        .I3(axi_araddr[3]),
        .I4(D[7]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC3AAFFFFC3AA0000)) 
    \axi_rdata[8]_i_3 
       (.I0(\wr_ptr_gray_reg_reg[10] [8]),
        .I1(\axi_rdata[8]_i_4_n_0 ),
        .I2(dbg_word2_int[9]),
        .I3(\wr_addr_reg_reg[8] ),
        .I4(axi_araddr[3]),
        .I5(\rd_ptr_gray_reg_reg[10] [8]),
        .O(\axi_rdata[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4555)) 
    \axi_rdata[8]_i_4 
       (.I0(dbg_word2_int[8]),
        .I1(\wr_addr_reg_reg[6] ),
        .I2(dbg_word2_int[6]),
        .I3(dbg_word2_int[7]),
        .O(\axi_rdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB0A0B0A0B0A0BBA0)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(\axi_rdata[9]_i_3_n_0 ),
        .I2(\axi_rdata[9]_i_4_n_0 ),
        .I3(axi_araddr[3]),
        .I4(\axi_rdata[9]_i_5_n_0 ),
        .I5(\axi_rdata[9]_i_6_n_0 ),
        .O(reg_data_out[9]));
  LUT6 #(
    .INIT(64'hAAAAAAAAEEEEEEEB)) 
    \axi_rdata[9]_i_2 
       (.I0(axi_araddr[2]),
        .I1(dbg_word0_int[9]),
        .I2(CO),
        .I3(\rd_ptr_gray_reg_reg[10]_0 ),
        .I4(\rd_ptr_gray_reg_reg[10]_1 ),
        .I5(axi_araddr[3]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9999599955555555)) 
    \axi_rdata[9]_i_3 
       (.I0(dbg_word2_int[9]),
        .I1(s00_axis_tvalid),
        .I2(\rd_ptr_gray_sync2_reg_reg[8] ),
        .I3(\wr_ptr_gray_reg_reg[6] ),
        .I4(\wr_ptr_gray_reg_reg[6]_0 ),
        .I5(\axi_rdata[10]_i_4_n_0 ),
        .O(\axi_rdata[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44444405FFFFFFFF)) 
    \axi_rdata[9]_i_4 
       (.I0(axi_araddr[3]),
        .I1(Q[9]),
        .I2(\axi_rdata[9]_i_7_n_0 ),
        .I3(CO),
        .I4(\rd_ptr_gray_reg_reg[10]_0 ),
        .I5(axi_araddr[2]),
        .O(\axi_rdata[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA2AAA2A0000)) 
    \axi_rdata[9]_i_5 
       (.I0(s00_axis_tvalid),
        .I1(\rd_ptr_gray_sync2_reg_reg[8] ),
        .I2(\wr_ptr_gray_reg_reg[6] ),
        .I3(\wr_ptr_gray_reg_reg[6]_0 ),
        .I4(dbg_word2_int[10]),
        .I5(\axi_rdata[9]_i_8_n_0 ),
        .O(\axi_rdata[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h060000000F0F0F0F)) 
    \axi_rdata[9]_i_6 
       (.I0(\rd_ptr_gray_sync2_reg_reg[10] [10]),
        .I1(\wr_ptr_gray_reg_reg[10] [10]),
        .I2(\wr_ptr_gray_reg_reg[10] [9]),
        .I3(\rd_ptr_gray_sync2_reg_reg[10] [9]),
        .I4(\rd_ptr_gray_sync2_reg_reg[8] ),
        .I5(s00_axis_tvalid),
        .O(\axi_rdata[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h99A9999999999999)) 
    \axi_rdata[9]_i_7 
       (.I0(dbg_word0_int[10]),
        .I1(dbg_word0_int[9]),
        .I2(dbg_word0_int[7]),
        .I3(\rd_ptr_reg_reg[6] ),
        .I4(dbg_word0_int[6]),
        .I5(dbg_word0_int[8]),
        .O(\axi_rdata[9]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h55551555)) 
    \axi_rdata[9]_i_8 
       (.I0(dbg_word2_int[9]),
        .I1(dbg_word2_int[8]),
        .I2(dbg_word2_int[7]),
        .I3(dbg_word2_int[6]),
        .I4(\wr_addr_reg_reg[6] ),
        .O(\axi_rdata[9]_i_8_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(\axi_rdata[0]_i_3_n_0 ),
        .O(reg_data_out[0]),
        .S(axi_araddr[2]));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(\axi_rdata[10]_i_3_n_0 ),
        .O(reg_data_out[10]),
        .S(axi_araddr[2]));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(\axi_rdata[1]_i_3_n_0 ),
        .O(reg_data_out[1]),
        .S(axi_araddr[2]));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(\axi_rdata[2]_i_3_n_0 ),
        .O(reg_data_out[2]),
        .S(axi_araddr[2]));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(\axi_rdata[3]_i_3_n_0 ),
        .O(reg_data_out[3]),
        .S(axi_araddr[2]));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(\axi_rdata[4]_i_3_n_0 ),
        .O(reg_data_out[4]),
        .S(axi_araddr[2]));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(\axi_rdata[5]_i_3_n_0 ),
        .O(reg_data_out[5]),
        .S(axi_araddr[2]));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(\axi_rdata[6]_i_3_n_0 ),
        .O(reg_data_out[6]),
        .S(axi_araddr[2]));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(\axi_rdata[7]_i_3_n_0 ),
        .O(reg_data_out[7]),
        .S(axi_araddr[2]));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(\axi_rdata[8]_i_3_n_0 ),
        .O(reg_data_out[8]),
        .S(axi_araddr[2]));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arready),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wready),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_wready),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    empty_carry_i_1
       (.I0(\wr_ptr_gray_sync2_reg_reg[10] [10]),
        .I1(Q[10]),
        .I2(\wr_ptr_gray_sync2_reg_reg[10] [9]),
        .I3(Q[9]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty_carry_i_2
       (.I0(\wr_ptr_gray_sync2_reg_reg[10] [7]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(\wr_ptr_gray_sync2_reg_reg[10] [8]),
        .I4(Q[6]),
        .I5(\wr_ptr_gray_sync2_reg_reg[10] [6]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty_carry_i_3
       (.I0(\wr_ptr_gray_sync2_reg_reg[10] [5]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\wr_ptr_gray_sync2_reg_reg[10] [3]),
        .I4(Q[4]),
        .I5(\wr_ptr_gray_sync2_reg_reg[10] [4]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty_carry_i_4
       (.I0(Q[1]),
        .I1(\wr_ptr_gray_sync2_reg_reg[10] [1]),
        .I2(Q[0]),
        .I3(\wr_ptr_gray_sync2_reg_reg[10] [0]),
        .I4(\wr_ptr_gray_sync2_reg_reg[10] [2]),
        .I5(Q[2]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    full0_carry_i_1
       (.I0(\rd_ptr_gray_sync2_reg_reg[10] [8]),
        .I1(\wr_ptr_gray_reg_reg[10] [8]),
        .I2(\wr_ptr_gray_reg_reg[10] [6]),
        .I3(\rd_ptr_gray_sync2_reg_reg[10] [6]),
        .I4(\wr_ptr_gray_reg_reg[10] [7]),
        .I5(\rd_ptr_gray_sync2_reg_reg[10] [7]),
        .O(mem_reg_1[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    full0_carry_i_2
       (.I0(\rd_ptr_gray_sync2_reg_reg[10] [5]),
        .I1(\wr_ptr_gray_reg_reg[10] [5]),
        .I2(\wr_ptr_gray_reg_reg[10] [3]),
        .I3(\rd_ptr_gray_sync2_reg_reg[10] [3]),
        .I4(\wr_ptr_gray_reg_reg[10] [4]),
        .I5(\rd_ptr_gray_sync2_reg_reg[10] [4]),
        .O(mem_reg_1[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    full0_carry_i_3
       (.I0(\wr_ptr_gray_reg_reg[10] [0]),
        .I1(\rd_ptr_gray_sync2_reg_reg[10] [0]),
        .I2(\wr_ptr_gray_reg_reg[10] [1]),
        .I3(\rd_ptr_gray_sync2_reg_reg[10] [1]),
        .I4(\rd_ptr_gray_sync2_reg_reg[10] [2]),
        .I5(\wr_ptr_gray_reg_reg[10] [2]),
        .O(mem_reg_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hB)) 
    m00_rst_sync1_reg_i_1
       (.I0(s00_rst_sync1_reg1),
        .I1(m00_axis_aresetn),
        .O(m00_rst_sync1_reg0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    m00_rst_sync2_reg_i_1
       (.I0(s00_rst_sync1_reg),
        .I1(m00_rst_sync1_reg),
        .I2(m00_axis_aresetn),
        .I3(s00_rst_sync1_reg1),
        .O(m00_rst_sync2_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    m00_rst_sync3_reg_i_1
       (.I0(dbg_word0_int[12]),
        .I1(m00_axis_aresetn),
        .I2(s00_rst_sync1_reg1),
        .O(m00_rst_sync3_reg_reg));
  LUT4 #(
    .INIT(16'h4555)) 
    mem_reg_i_1
       (.I0(CO),
        .I1(m00_axis_tready),
        .I2(m00_axis_tvalid_reg_reg),
        .I3(mem_read_data_valid_reg),
        .O(mem_reg_0));
  LUT2 #(
    .INIT(4'hB)) 
    mem_reg_i_2
       (.I0(m00_axis_tready),
        .I1(m00_axis_tvalid_reg_reg),
        .O(mem_reg));
  LUT6 #(
    .INIT(64'hA3AAA3A3A3A3A3A3)) 
    \rd_ptr_gray_reg[0]_i_1 
       (.I0(Q[0]),
        .I1(dbg_word0_int[1]),
        .I2(CO),
        .I3(m00_axis_tready),
        .I4(m00_axis_tvalid_reg_reg),
        .I5(mem_read_data_valid_reg),
        .O(\rd_ptr_gray_reg_reg[10] [0]));
  LUT6 #(
    .INIT(64'hFF00FF00FF009A9A)) 
    \rd_ptr_gray_reg[10]_i_1 
       (.I0(dbg_word0_int[10]),
        .I1(\rd_ptr_gray_reg_reg[10]_1 ),
        .I2(dbg_word0_int[9]),
        .I3(Q[10]),
        .I4(CO),
        .I5(\rd_ptr_gray_reg_reg[10]_0 ),
        .O(\rd_ptr_gray_reg_reg[10] [9]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \rd_ptr_gray_reg[10]_i_2 
       (.I0(dbg_word0_int[7]),
        .I1(\rd_ptr_reg_reg[6] ),
        .I2(dbg_word0_int[6]),
        .I3(dbg_word0_int[8]),
        .O(\rd_ptr_gray_reg_reg[10]_1 ));
  LUT3 #(
    .INIT(8'h08)) 
    \rd_ptr_gray_reg[10]_i_3 
       (.I0(mem_read_data_valid_reg),
        .I1(m00_axis_tvalid_reg_reg),
        .I2(m00_axis_tready),
        .O(\rd_ptr_gray_reg_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA333C)) 
    \rd_ptr_gray_reg[1]_i_1 
       (.I0(Q[1]),
        .I1(dbg_word0_int[2]),
        .I2(dbg_word0_int[1]),
        .I3(dbg_word0_int[0]),
        .I4(CO),
        .I5(\rd_ptr_gray_reg_reg[10]_0 ),
        .O(\rd_ptr_gray_reg_reg[10] [1]));
  LUT6 #(
    .INIT(64'hFFFFFF6500000065)) 
    \rd_ptr_gray_reg[2]_i_1 
       (.I0(dbg_word0_int[3]),
        .I1(dbg_word0_int[2]),
        .I2(\rd_ptr_gray_reg[2]_i_2_n_0 ),
        .I3(CO),
        .I4(\rd_ptr_gray_reg_reg[10]_0 ),
        .I5(Q[2]),
        .O(\rd_ptr_gray_reg_reg[10] [2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rd_ptr_gray_reg[2]_i_2 
       (.I0(dbg_word0_int[0]),
        .I1(dbg_word0_int[1]),
        .O(\rd_ptr_gray_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF6500000065)) 
    \rd_ptr_gray_reg[3]_i_1 
       (.I0(dbg_word0_int[4]),
        .I1(dbg_word0_int[3]),
        .I2(\rd_ptr_gray_reg[3]_i_2_n_0 ),
        .I3(CO),
        .I4(\rd_ptr_gray_reg_reg[10]_0 ),
        .I5(Q[3]),
        .O(\rd_ptr_gray_reg_reg[10] [3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \rd_ptr_gray_reg[3]_i_2 
       (.I0(dbg_word0_int[1]),
        .I1(dbg_word0_int[0]),
        .I2(dbg_word0_int[2]),
        .O(\rd_ptr_gray_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF6500000065)) 
    \rd_ptr_gray_reg[4]_i_1 
       (.I0(dbg_word0_int[5]),
        .I1(dbg_word0_int[4]),
        .I2(\rd_ptr_gray_reg[4]_i_2_n_0 ),
        .I3(CO),
        .I4(\rd_ptr_gray_reg_reg[10]_0 ),
        .I5(Q[4]),
        .O(\rd_ptr_gray_reg_reg[10] [4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rd_ptr_gray_reg[4]_i_2 
       (.I0(dbg_word0_int[2]),
        .I1(dbg_word0_int[0]),
        .I2(dbg_word0_int[1]),
        .I3(dbg_word0_int[3]),
        .O(\rd_ptr_gray_reg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FF2D002D)) 
    \rd_ptr_gray_reg[5]_i_1 
       (.I0(\rd_ptr_gray_reg[5]_i_2_n_0 ),
        .I1(dbg_word0_int[5]),
        .I2(dbg_word0_int[6]),
        .I3(CO),
        .I4(Q[5]),
        .I5(\rd_ptr_gray_reg_reg[10]_0 ),
        .O(\rd_ptr_gray_reg_reg[10] [5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \rd_ptr_gray_reg[5]_i_2 
       (.I0(dbg_word0_int[3]),
        .I1(dbg_word0_int[1]),
        .I2(dbg_word0_int[0]),
        .I3(dbg_word0_int[2]),
        .I4(dbg_word0_int[4]),
        .O(\rd_ptr_gray_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF6500000065)) 
    \rd_ptr_gray_reg[6]_i_1 
       (.I0(dbg_word0_int[7]),
        .I1(dbg_word0_int[6]),
        .I2(\rd_ptr_reg_reg[6] ),
        .I3(CO),
        .I4(\rd_ptr_gray_reg_reg[10]_0 ),
        .I5(Q[6]),
        .O(\rd_ptr_gray_reg_reg[10] [6]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \rd_ptr_gray_reg[6]_i_2 
       (.I0(dbg_word0_int[4]),
        .I1(dbg_word0_int[2]),
        .I2(dbg_word0_int[0]),
        .I3(dbg_word0_int[1]),
        .I4(dbg_word0_int[3]),
        .I5(dbg_word0_int[5]),
        .O(\rd_ptr_reg_reg[6] ));
  LUT6 #(
    .INIT(64'hA8A8ABA8ABABA8AB)) 
    \rd_ptr_gray_reg[7]_i_1 
       (.I0(Q[7]),
        .I1(\rd_ptr_gray_reg_reg[10]_0 ),
        .I2(CO),
        .I3(\rd_ptr_gray_reg[7]_i_2_n_0 ),
        .I4(dbg_word0_int[7]),
        .I5(dbg_word0_int[8]),
        .O(\rd_ptr_gray_reg_reg[10] [7]));
  LUT2 #(
    .INIT(4'hB)) 
    \rd_ptr_gray_reg[7]_i_2 
       (.I0(\rd_ptr_reg_reg[6] ),
        .I1(dbg_word0_int[6]),
        .O(\rd_ptr_gray_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF6500000065)) 
    \rd_ptr_gray_reg[8]_i_1 
       (.I0(dbg_word0_int[9]),
        .I1(dbg_word0_int[8]),
        .I2(\rd_ptr_gray_reg[8]_i_2_n_0 ),
        .I3(CO),
        .I4(\rd_ptr_gray_reg_reg[10]_0 ),
        .I5(Q[8]),
        .O(\rd_ptr_gray_reg_reg[10] [8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \rd_ptr_gray_reg[8]_i_2 
       (.I0(dbg_word0_int[6]),
        .I1(\rd_ptr_reg_reg[6] ),
        .I2(dbg_word0_int[7]),
        .O(\rd_ptr_gray_reg[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0B4F0F0F0B4F0B4)) 
    \rd_ptr_reg[10]_i_1 
       (.I0(\rd_ptr_gray_reg_reg[10]_1 ),
        .I1(dbg_word0_int[9]),
        .I2(dbg_word0_int[10]),
        .I3(CO),
        .I4(mem_reg),
        .I5(mem_read_data_valid_reg),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hDFDDDDDD20222222)) 
    \rd_ptr_reg[1]_i_1 
       (.I0(dbg_word0_int[0]),
        .I1(CO),
        .I2(m00_axis_tready),
        .I3(m00_axis_tvalid_reg_reg),
        .I4(mem_read_data_valid_reg),
        .I5(dbg_word0_int[1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAA6AAAAAAA6AAA6A)) 
    \rd_ptr_reg[2]_i_1 
       (.I0(dbg_word0_int[2]),
        .I1(dbg_word0_int[1]),
        .I2(dbg_word0_int[0]),
        .I3(CO),
        .I4(mem_reg),
        .I5(mem_read_data_valid_reg),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA6AAA)) 
    \rd_ptr_reg[3]_i_1 
       (.I0(dbg_word0_int[3]),
        .I1(dbg_word0_int[1]),
        .I2(dbg_word0_int[0]),
        .I3(dbg_word0_int[2]),
        .I4(CO),
        .I5(\rd_ptr_gray_reg_reg[10]_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFFF08000000F7)) 
    \rd_ptr_reg[4]_i_1 
       (.I0(mem_read_data_valid_reg),
        .I1(m00_axis_tvalid_reg_reg),
        .I2(m00_axis_tready),
        .I3(CO),
        .I4(\rd_ptr_gray_reg[4]_i_2_n_0 ),
        .I5(dbg_word0_int[4]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hA9AAA9A9A9A9A9A9)) 
    \rd_ptr_reg[5]_i_1 
       (.I0(dbg_word0_int[5]),
        .I1(\rd_ptr_gray_reg[5]_i_2_n_0 ),
        .I2(CO),
        .I3(m00_axis_tready),
        .I4(m00_axis_tvalid_reg_reg),
        .I5(mem_read_data_valid_reg),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hA9AAA9A9A9A9A9A9)) 
    \rd_ptr_reg[6]_i_1 
       (.I0(dbg_word0_int[6]),
        .I1(\rd_ptr_reg_reg[6] ),
        .I2(CO),
        .I3(m00_axis_tready),
        .I4(m00_axis_tvalid_reg_reg),
        .I5(mem_read_data_valid_reg),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAA9AAAAAAA9AAA9A)) 
    \rd_ptr_reg[7]_i_1 
       (.I0(dbg_word0_int[7]),
        .I1(\rd_ptr_reg_reg[6] ),
        .I2(dbg_word0_int[6]),
        .I3(CO),
        .I4(mem_reg),
        .I5(mem_read_data_valid_reg),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hA9AAA9A9A9A9A9A9)) 
    \rd_ptr_reg[8]_i_1 
       (.I0(dbg_word0_int[8]),
        .I1(\rd_ptr_gray_reg[8]_i_2_n_0 ),
        .I2(CO),
        .I3(m00_axis_tready),
        .I4(m00_axis_tvalid_reg_reg),
        .I5(mem_read_data_valid_reg),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    s00_rst_sync1_reg_i_1
       (.I0(s00_rst_sync1_reg1),
        .I1(s00_axis_aresetn),
        .O(s00_rst_sync1_reg0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    s00_rst_sync2_reg_i_1
       (.I0(s00_rst_sync1_reg),
        .I1(m00_rst_sync1_reg),
        .I2(s00_axis_aresetn),
        .I3(s00_rst_sync1_reg1),
        .O(s00_rst_sync2_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    s00_rst_sync3_reg_i_1
       (.I0(dbg_word2_int[11]),
        .I1(s00_axis_aresetn),
        .I2(s00_rst_sync1_reg1),
        .O(s00_rst_sync3_reg_reg));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \slv_reg0[0]_i_1 
       (.I0(s00_axi_wdata),
        .I1(slv_reg_wren__0),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(s00_axi_wstrb),
        .I5(s00_rst_sync1_reg1),
        .O(\slv_reg0[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[0]_i_2 
       (.I0(s00_axi_wready),
        .I1(s00_axi_awready),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg0[0]_i_1_n_0 ),
        .Q(s00_rst_sync1_reg1),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(s00_axi_arready),
        .O(slv_reg_rden__0));
  LUT6 #(
    .INIT(64'h5955555555555555)) 
    \wr_addr_reg[10]_i_2 
       (.I0(dbg_word2_int[10]),
        .I1(dbg_word2_int[9]),
        .I2(\wr_addr_reg_reg[6] ),
        .I3(dbg_word2_int[6]),
        .I4(dbg_word2_int[7]),
        .I5(dbg_word2_int[8]),
        .O(\wr_ptr_reg_reg[10] ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_reg[10]_i_3 
       (.I0(\wr_ptr_gray_reg_reg[10] [9]),
        .I1(\rd_ptr_gray_sync2_reg_reg[10] [9]),
        .O(\wr_ptr_gray_reg_reg[6] ));
  LUT2 #(
    .INIT(4'h9)) 
    \wr_addr_reg[10]_i_4 
       (.I0(\wr_ptr_gray_reg_reg[10] [10]),
        .I1(\rd_ptr_gray_sync2_reg_reg[10] [10]),
        .O(\wr_ptr_gray_reg_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h95)) 
    \wr_addr_reg[2]_i_2 
       (.I0(dbg_word2_int[2]),
        .I1(dbg_word2_int[1]),
        .I2(dbg_word2_int[0]),
        .O(\wr_addr_reg_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h9555)) 
    \wr_addr_reg[3]_i_2 
       (.I0(dbg_word2_int[3]),
        .I1(dbg_word2_int[2]),
        .I2(dbg_word2_int[0]),
        .I3(dbg_word2_int[1]),
        .O(\wr_ptr_reg_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \wr_addr_reg[4]_i_2 
       (.I0(dbg_word2_int[2]),
        .I1(dbg_word2_int[0]),
        .I2(dbg_word2_int[1]),
        .I3(dbg_word2_int[3]),
        .O(\wr_ptr_reg_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \wr_addr_reg[5]_i_2 
       (.I0(dbg_word2_int[3]),
        .I1(dbg_word2_int[1]),
        .I2(dbg_word2_int[0]),
        .I3(dbg_word2_int[2]),
        .I4(dbg_word2_int[4]),
        .O(\wr_addr_reg_reg[5] ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \wr_addr_reg[7]_i_2 
       (.I0(dbg_word2_int[4]),
        .I1(dbg_word2_int[2]),
        .I2(dbg_word2_int[0]),
        .I3(dbg_word2_int[1]),
        .I4(dbg_word2_int[3]),
        .I5(dbg_word2_int[5]),
        .O(\wr_addr_reg_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \wr_addr_reg[9]_i_2 
       (.I0(dbg_word2_int[7]),
        .I1(dbg_word2_int[6]),
        .I2(\wr_addr_reg_reg[6] ),
        .O(\wr_addr_reg_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hAAAAA22AA22AAAAA)) 
    \wr_addr_reg[9]_i_3 
       (.I0(s00_axis_tvalid),
        .I1(\rd_ptr_gray_sync2_reg_reg[8] ),
        .I2(\rd_ptr_gray_sync2_reg_reg[10] [9]),
        .I3(\wr_ptr_gray_reg_reg[10] [9]),
        .I4(\wr_ptr_gray_reg_reg[10] [10]),
        .I5(\rd_ptr_gray_sync2_reg_reg[10] [10]),
        .O(\wr_addr_reg_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \wr_ptr_gray_reg[1]_i_2 
       (.I0(dbg_word2_int[2]),
        .I1(dbg_word2_int[1]),
        .I2(dbg_word2_int[0]),
        .O(\wr_ptr_gray_reg_reg[1] ));
  LUT6 #(
    .INIT(64'h5666666666666666)) 
    \wr_ptr_gray_reg[4]_i_2 
       (.I0(dbg_word2_int[5]),
        .I1(dbg_word2_int[4]),
        .I2(dbg_word2_int[2]),
        .I3(dbg_word2_int[0]),
        .I4(dbg_word2_int[1]),
        .I5(dbg_word2_int[3]),
        .O(\wr_ptr_gray_reg_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \wr_ptr_gray_reg[6]_i_2 
       (.I0(dbg_word2_int[7]),
        .I1(dbg_word2_int[6]),
        .I2(\wr_addr_reg_reg[6] ),
        .O(\wr_ptr_gray_reg_reg[6]_1 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
