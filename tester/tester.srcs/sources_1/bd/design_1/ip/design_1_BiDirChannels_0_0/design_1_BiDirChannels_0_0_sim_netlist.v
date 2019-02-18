// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Feb 18 02:43:26 2019
// Host        : DESKTOP-KC9HGNO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Xilinx_Projects/gyro_project/tester/tester.srcs/sources_1/bd/design_1/ip/design_1_BiDirChannels_0_0/design_1_BiDirChannels_0_0_sim_netlist.v
// Design      : design_1_BiDirChannels_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_BiDirChannels_0_0,BiDirChannels_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "BiDirChannels_v1_0,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_BiDirChannels_0_0
   (HS_DataIn,
    HS_DataOut,
    HS_Clock,
    MCK,
    s00_axi_awaddr,
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
  input HS_DataIn;
  output HS_DataOut;
  output HS_Clock;
  output MCK;
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
  wire HS_Clock;
  wire HS_DataIn;
  wire HS_DataOut;
  wire MCK;
  wire Q_reg_i_1_n_0;
  wire clk0;
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
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;

  assign m00_axis_tstrb[3] = \<const0> ;
  assign m00_axis_tstrb[2] = \<const0> ;
  assign m00_axis_tstrb[1] = \<const0> ;
  assign m00_axis_tstrb[0] = \<const0> ;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    Q_reg_i_1
       (.I0(MCK),
        .O(Q_reg_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out_reg[31]_i_1 
       (.I0(s00_axi_aclk),
        .O(clk0));
  design_1_BiDirChannels_0_0_BiDirChannels_v1_0 inst
       (.CLK(clk0),
        .HS_Clock(HS_Clock),
        .HS_DataIn(HS_DataIn),
        .HS_DataOut(HS_DataOut),
        .MCK(MCK),
        .Q_reg(Q_reg_i_1_n_0),
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
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "BiDirChannels_v1_0" *) 
module design_1_BiDirChannels_0_0_BiDirChannels_v1_0
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    m00_axis_tlast,
    m00_axis_tvalid,
    s00_axis_tready,
    MCK,
    HS_DataOut,
    s00_axi_bvalid,
    s00_axi_rvalid,
    HS_Clock,
    s00_axi_rdata,
    m00_axis_tdata,
    s00_axi_aclk,
    CLK,
    s00_axis_tvalid,
    Q_reg,
    m00_axis_tready,
    HS_DataIn,
    s00_axi_aresetn,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axis_tdata,
    s00_axis_tlast,
    s00_axi_wstrb);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output m00_axis_tlast;
  output m00_axis_tvalid;
  output s00_axis_tready;
  output MCK;
  output HS_DataOut;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output HS_Clock;
  output [31:0]s00_axi_rdata;
  output [31:0]m00_axis_tdata;
  input s00_axi_aclk;
  input CLK;
  input s00_axis_tvalid;
  input Q_reg;
  input m00_axis_tready;
  input HS_DataIn;
  input s00_axi_aresetn;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input [31:0]s00_axis_tdata;
  input s00_axis_tlast;
  input [3:0]s00_axi_wstrb;

  wire BiDirChannels_v1_0_S00_AXI_inst_n_6;
  wire BiDirChannels_v1_0_S00_AXI_inst_n_9;
  wire CLK;
  wire D;
  wire [7:0]\DEBUGGER/CNTR0/r_reg_reg__0 ;
  wire [7:0]\DEBUGGER/CNTR1/r_reg_reg__0 ;
  wire [7:0]\DEBUGGER/CNTR2/r_reg_reg__0 ;
  wire [7:0]\DEBUGGER/CNTR3/r_reg_reg__0 ;
  wire [7:0]\DEBUGGER/CNTR4/r_reg_reg__0 ;
  wire [7:0]\DEBUGGER/CNTR5/r_reg_reg__0 ;
  wire HS_Clock;
  wire HS_DataIn;
  wire HS_DataOut;
  wire MCK;
  wire Q_reg;
  wire X0_n_1;
  wire [0:0]data_in;
  wire [28:28]data_word_0;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
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
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;

  design_1_BiDirChannels_0_0_BiDirChannels_v1_0_S00_AXI BiDirChannels_v1_0_S00_AXI_inst
       (.Q(\DEBUGGER/CNTR0/r_reg_reg__0 ),
        .Q_reg({D,BiDirChannels_v1_0_S00_AXI_inst_n_6}),
        .\axi_rdata_reg[28]_0 ({data_word_0,data_in}),
        .\r_reg_reg[7] (BiDirChannels_v1_0_S00_AXI_inst_n_9),
        .\r_reg_reg[7]_0 (\DEBUGGER/CNTR2/r_reg_reg__0 ),
        .\r_reg_reg[7]_1 (\DEBUGGER/CNTR4/r_reg_reg__0 ),
        .\r_reg_reg[7]_2 (\DEBUGGER/CNTR3/r_reg_reg__0 ),
        .\r_reg_reg[7]_3 (\DEBUGGER/CNTR1/r_reg_reg__0 ),
        .\r_reg_reg[7]_4 (\DEBUGGER/CNTR5/r_reg_reg__0 ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(X0_n_1),
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
        .s00_axi_wvalid(s00_axi_wvalid));
  design_1_BiDirChannels_0_0_GyroBiDirChannelController X0
       (.CLK(m00_axis_tlast),
        .HS_Clock(HS_Clock),
        .HS_DataIn(HS_DataIn),
        .HS_DataOut(HS_DataOut),
        .MCK(MCK),
        .Q(\DEBUGGER/CNTR0/r_reg_reg__0 ),
        .Q_reg(Q_reg),
        .\data_out_reg[0] (X0_n_1),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .\r_reg_reg[7] (\DEBUGGER/CNTR1/r_reg_reg__0 ),
        .\r_reg_reg[7]_0 (\DEBUGGER/CNTR2/r_reg_reg__0 ),
        .\r_reg_reg[7]_1 (\DEBUGGER/CNTR4/r_reg_reg__0 ),
        .\r_reg_reg[7]_2 (\DEBUGGER/CNTR3/r_reg_reg__0 ),
        .\r_reg_reg[7]_3 (\DEBUGGER/CNTR5/r_reg_reg__0 ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aclk_0(CLK),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid),
        .\slv_reg0_reg[16] (BiDirChannels_v1_0_S00_AXI_inst_n_9),
        .\slv_reg0_reg[28] ({data_word_0,data_in}),
        .\slv_reg1_reg[4] ({D,BiDirChannels_v1_0_S00_AXI_inst_n_6}));
endmodule

(* ORIG_REF_NAME = "BiDirChannels_v1_0_S00_AXI" *) 
module design_1_BiDirChannels_0_0_BiDirChannels_v1_0_S00_AXI
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_bvalid,
    s00_axi_rvalid,
    Q_reg,
    \axi_rdata_reg[28]_0 ,
    \r_reg_reg[7] ,
    s00_axi_rdata,
    s00_axi_aresetn_0,
    s00_axi_aclk,
    Q,
    \r_reg_reg[7]_0 ,
    \r_reg_reg[7]_1 ,
    \r_reg_reg[7]_2 ,
    \r_reg_reg[7]_3 ,
    \r_reg_reg[7]_4 ,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [1:0]Q_reg;
  output [1:0]\axi_rdata_reg[28]_0 ;
  output \r_reg_reg[7] ;
  output [31:0]s00_axi_rdata;
  input s00_axi_aresetn_0;
  input s00_axi_aclk;
  input [7:0]Q;
  input [7:0]\r_reg_reg[7]_0 ;
  input [7:0]\r_reg_reg[7]_1 ;
  input [7:0]\r_reg_reg[7]_2 ;
  input [7:0]\r_reg_reg[7]_3 ;
  input [7:0]\r_reg_reg[7]_4 ;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input s00_axi_aresetn;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire [7:0]Q;
  wire [1:0]Q_reg;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire [1:0]\axi_rdata_reg[28]_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [1:1]data_in;
  wire [16:16]data_word_0;
  wire [1:0]p_0_in;
  wire [28:7]p_1_in;
  wire \r_reg_reg[7] ;
  wire [7:0]\r_reg_reg[7]_0 ;
  wire [7:0]\r_reg_reg[7]_1 ;
  wire [7:0]\r_reg_reg[7]_2 ;
  wire [7:0]\r_reg_reg[7]_3 ;
  wire [7:0]\r_reg_reg[7]_4 ;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire \slv_reg0_reg_n_0_[0] ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[10] ;
  wire \slv_reg1_reg_n_0_[11] ;
  wire \slv_reg1_reg_n_0_[12] ;
  wire \slv_reg1_reg_n_0_[13] ;
  wire \slv_reg1_reg_n_0_[14] ;
  wire \slv_reg1_reg_n_0_[15] ;
  wire \slv_reg1_reg_n_0_[16] ;
  wire \slv_reg1_reg_n_0_[17] ;
  wire \slv_reg1_reg_n_0_[18] ;
  wire \slv_reg1_reg_n_0_[19] ;
  wire \slv_reg1_reg_n_0_[1] ;
  wire \slv_reg1_reg_n_0_[20] ;
  wire \slv_reg1_reg_n_0_[21] ;
  wire \slv_reg1_reg_n_0_[22] ;
  wire \slv_reg1_reg_n_0_[23] ;
  wire \slv_reg1_reg_n_0_[24] ;
  wire \slv_reg1_reg_n_0_[25] ;
  wire \slv_reg1_reg_n_0_[26] ;
  wire \slv_reg1_reg_n_0_[27] ;
  wire \slv_reg1_reg_n_0_[28] ;
  wire \slv_reg1_reg_n_0_[29] ;
  wire \slv_reg1_reg_n_0_[2] ;
  wire \slv_reg1_reg_n_0_[30] ;
  wire \slv_reg1_reg_n_0_[31] ;
  wire \slv_reg1_reg_n_0_[3] ;
  wire \slv_reg1_reg_n_0_[5] ;
  wire \slv_reg1_reg_n_0_[6] ;
  wire \slv_reg1_reg_n_0_[7] ;
  wire \slv_reg1_reg_n_0_[8] ;
  wire \slv_reg1_reg_n_0_[9] ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;

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
        .S(s00_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
        .R(s00_axi_aresetn_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(s00_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
        .R(s00_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awready),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awready),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(s00_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_1
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
        .R(s00_axi_aresetn_0));
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
        .R(s00_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_1 
       (.I0(Q[0]),
        .I1(Q_reg[0]),
        .I2(axi_araddr[2]),
        .I3(\r_reg_reg[7]_0 [0]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[0] ),
        .O(reg_data_out[0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[10]_i_1 
       (.I0(\slv_reg1_reg_n_0_[10] ),
        .I1(axi_araddr[2]),
        .I2(\r_reg_reg[7]_1 [2]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[10] ),
        .O(reg_data_out[10]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[11]_i_1 
       (.I0(\slv_reg1_reg_n_0_[11] ),
        .I1(axi_araddr[2]),
        .I2(\r_reg_reg[7]_1 [3]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[11] ),
        .O(reg_data_out[11]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[12]_i_1 
       (.I0(\slv_reg1_reg_n_0_[12] ),
        .I1(axi_araddr[2]),
        .I2(\r_reg_reg[7]_1 [4]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[12] ),
        .O(reg_data_out[12]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[13]_i_1 
       (.I0(\slv_reg1_reg_n_0_[13] ),
        .I1(axi_araddr[2]),
        .I2(\r_reg_reg[7]_1 [5]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[13] ),
        .O(reg_data_out[13]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[14]_i_1 
       (.I0(\slv_reg1_reg_n_0_[14] ),
        .I1(axi_araddr[2]),
        .I2(\r_reg_reg[7]_1 [6]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[14] ),
        .O(reg_data_out[14]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[15]_i_1 
       (.I0(\slv_reg1_reg_n_0_[15] ),
        .I1(axi_araddr[2]),
        .I2(\r_reg_reg[7]_1 [7]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[15] ),
        .O(reg_data_out[15]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[16]_i_1 
       (.I0(\slv_reg1_reg_n_0_[16] ),
        .I1(axi_araddr[2]),
        .I2(\r_reg_reg[7]_2 [0]),
        .I3(axi_araddr[3]),
        .I4(data_word_0),
        .O(reg_data_out[16]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[17]_i_1 
       (.I0(\slv_reg1_reg_n_0_[17] ),
        .I1(axi_araddr[2]),
        .I2(\r_reg_reg[7]_2 [1]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[17] ),
        .O(reg_data_out[17]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[18]_i_1 
       (.I0(\slv_reg1_reg_n_0_[18] ),
        .I1(axi_araddr[2]),
        .I2(\r_reg_reg[7]_2 [2]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[18] ),
        .O(reg_data_out[18]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[19]_i_1 
       (.I0(\slv_reg1_reg_n_0_[19] ),
        .I1(axi_araddr[2]),
        .I2(\r_reg_reg[7]_2 [3]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[19] ),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_1 
       (.I0(Q[1]),
        .I1(\slv_reg1_reg_n_0_[1] ),
        .I2(axi_araddr[2]),
        .I3(\r_reg_reg[7]_0 [1]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[1] ),
        .O(reg_data_out[1]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[20]_i_1 
       (.I0(\slv_reg1_reg_n_0_[20] ),
        .I1(axi_araddr[2]),
        .I2(\r_reg_reg[7]_2 [4]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[20] ),
        .O(reg_data_out[20]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[21]_i_1 
       (.I0(\slv_reg1_reg_n_0_[21] ),
        .I1(axi_araddr[2]),
        .I2(\r_reg_reg[7]_2 [5]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[21] ),
        .O(reg_data_out[21]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[22]_i_1 
       (.I0(\slv_reg1_reg_n_0_[22] ),
        .I1(axi_araddr[2]),
        .I2(\r_reg_reg[7]_2 [6]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[22] ),
        .O(reg_data_out[22]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[23]_i_1 
       (.I0(\slv_reg1_reg_n_0_[23] ),
        .I1(axi_araddr[2]),
        .I2(\r_reg_reg[7]_2 [7]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[23] ),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_1 
       (.I0(\r_reg_reg[7]_3 [0]),
        .I1(\slv_reg1_reg_n_0_[24] ),
        .I2(axi_araddr[2]),
        .I3(\r_reg_reg[7]_4 [0]),
        .I4(axi_araddr[3]),
        .I5(\axi_rdata_reg[28]_0 [0]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_1 
       (.I0(\r_reg_reg[7]_3 [1]),
        .I1(\slv_reg1_reg_n_0_[25] ),
        .I2(axi_araddr[2]),
        .I3(\r_reg_reg[7]_4 [1]),
        .I4(axi_araddr[3]),
        .I5(data_in),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_1 
       (.I0(\r_reg_reg[7]_3 [2]),
        .I1(\slv_reg1_reg_n_0_[26] ),
        .I2(axi_araddr[2]),
        .I3(\r_reg_reg[7]_4 [2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[26] ),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_1 
       (.I0(\r_reg_reg[7]_3 [3]),
        .I1(\slv_reg1_reg_n_0_[27] ),
        .I2(axi_araddr[2]),
        .I3(\r_reg_reg[7]_4 [3]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[27] ),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_1 
       (.I0(\r_reg_reg[7]_3 [4]),
        .I1(\slv_reg1_reg_n_0_[28] ),
        .I2(axi_araddr[2]),
        .I3(\r_reg_reg[7]_4 [4]),
        .I4(axi_araddr[3]),
        .I5(\axi_rdata_reg[28]_0 [1]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_1 
       (.I0(\r_reg_reg[7]_3 [5]),
        .I1(\slv_reg1_reg_n_0_[29] ),
        .I2(axi_araddr[2]),
        .I3(\r_reg_reg[7]_4 [5]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[29] ),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_1 
       (.I0(Q[2]),
        .I1(\slv_reg1_reg_n_0_[2] ),
        .I2(axi_araddr[2]),
        .I3(\r_reg_reg[7]_0 [2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[2] ),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_1 
       (.I0(\r_reg_reg[7]_3 [6]),
        .I1(\slv_reg1_reg_n_0_[30] ),
        .I2(axi_araddr[2]),
        .I3(\r_reg_reg[7]_4 [6]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[30] ),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_1 
       (.I0(\r_reg_reg[7]_3 [7]),
        .I1(\slv_reg1_reg_n_0_[31] ),
        .I2(axi_araddr[2]),
        .I3(\r_reg_reg[7]_4 [7]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[31] ),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_1 
       (.I0(Q[3]),
        .I1(\slv_reg1_reg_n_0_[3] ),
        .I2(axi_araddr[2]),
        .I3(\r_reg_reg[7]_0 [3]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[3] ),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_1 
       (.I0(Q[4]),
        .I1(Q_reg[1]),
        .I2(axi_araddr[2]),
        .I3(\r_reg_reg[7]_0 [4]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[4] ),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_1 
       (.I0(Q[5]),
        .I1(\slv_reg1_reg_n_0_[5] ),
        .I2(axi_araddr[2]),
        .I3(\r_reg_reg[7]_0 [5]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[5] ),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_1 
       (.I0(Q[6]),
        .I1(\slv_reg1_reg_n_0_[6] ),
        .I2(axi_araddr[2]),
        .I3(\r_reg_reg[7]_0 [6]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[6] ),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_1 
       (.I0(Q[7]),
        .I1(\slv_reg1_reg_n_0_[7] ),
        .I2(axi_araddr[2]),
        .I3(\r_reg_reg[7]_0 [7]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[7] ),
        .O(reg_data_out[7]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[8]_i_1 
       (.I0(\slv_reg1_reg_n_0_[8] ),
        .I1(axi_araddr[2]),
        .I2(\r_reg_reg[7]_1 [0]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[8] ),
        .O(reg_data_out[8]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[9]_i_1 
       (.I0(\slv_reg1_reg_n_0_[9] ),
        .I1(axi_araddr[2]),
        .I2(\r_reg_reg[7]_1 [1]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[9] ),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(s00_axi_aresetn_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(s00_axi_aresetn_0));
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
        .R(s00_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
        .R(s00_axi_aresetn_0));
  LUT2 #(
    .INIT(4'hB)) 
    \r_reg[7]_i_3__1 
       (.I0(data_word_0),
        .I1(s00_axi_aresetn),
        .O(\r_reg_reg[7] ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(p_1_in[28]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_wready),
        .I1(s00_axi_awready),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(data_word_0),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[28]),
        .D(s00_axi_wdata[24]),
        .Q(\axi_rdata_reg[28]_0 [0]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[28]),
        .D(s00_axi_wdata[25]),
        .Q(data_in),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[28]),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[28]),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[28]),
        .D(s00_axi_wdata[28]),
        .Q(\axi_rdata_reg[28]_0 [1]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[28]),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[28]),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[28]),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(s00_axi_aresetn_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(Q_reg[0]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg1_reg_n_0_[10] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg1_reg_n_0_[11] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg1_reg_n_0_[12] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg1_reg_n_0_[13] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg1_reg_n_0_[14] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg1_reg_n_0_[15] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg1_reg_n_0_[16] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg1_reg_n_0_[17] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg1_reg_n_0_[18] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg1_reg_n_0_[19] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg1_reg_n_0_[1] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg1_reg_n_0_[20] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg1_reg_n_0_[21] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg1_reg_n_0_[22] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg1_reg_n_0_[23] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg1_reg_n_0_[24] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg1_reg_n_0_[25] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg1_reg_n_0_[26] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg1_reg_n_0_[27] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg1_reg_n_0_[28] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg1_reg_n_0_[29] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg1_reg_n_0_[2] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg1_reg_n_0_[30] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg1_reg_n_0_[31] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg1_reg_n_0_[3] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(Q_reg[1]),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg1_reg_n_0_[5] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg1_reg_n_0_[6] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg1_reg_n_0_[7] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg1_reg_n_0_[8] ),
        .R(s00_axi_aresetn_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg1_reg_n_0_[9] ),
        .R(s00_axi_aresetn_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(s00_axi_arready),
        .O(slv_reg_rden__0));
endmodule

(* ORIG_REF_NAME = "GyroBiDirChannelController" *) 
module design_1_BiDirChannels_0_0_GyroBiDirChannelController
   (CLK,
    \data_out_reg[0] ,
    m00_axis_tvalid,
    s00_axis_tready,
    MCK,
    HS_DataOut,
    HS_Clock,
    Q,
    \r_reg_reg[7] ,
    \r_reg_reg[7]_0 ,
    \r_reg_reg[7]_1 ,
    \r_reg_reg[7]_2 ,
    \r_reg_reg[7]_3 ,
    m00_axis_tdata,
    s00_axi_aclk_0,
    s00_axis_tvalid,
    Q_reg,
    s00_axi_aclk,
    \slv_reg0_reg[28] ,
    \slv_reg1_reg[4] ,
    m00_axis_tready,
    HS_DataIn,
    s00_axi_aresetn,
    s00_axis_tdata,
    \slv_reg0_reg[16] ,
    s00_axis_tlast);
  output CLK;
  output \data_out_reg[0] ;
  output m00_axis_tvalid;
  output s00_axis_tready;
  output MCK;
  output HS_DataOut;
  output HS_Clock;
  output [7:0]Q;
  output [7:0]\r_reg_reg[7] ;
  output [7:0]\r_reg_reg[7]_0 ;
  output [7:0]\r_reg_reg[7]_1 ;
  output [7:0]\r_reg_reg[7]_2 ;
  output [7:0]\r_reg_reg[7]_3 ;
  output [31:0]m00_axis_tdata;
  input s00_axi_aclk_0;
  input s00_axis_tvalid;
  input Q_reg;
  input s00_axi_aclk;
  input [1:0]\slv_reg0_reg[28] ;
  input [1:0]\slv_reg1_reg[4] ;
  input m00_axis_tready;
  input HS_DataIn;
  input s00_axi_aresetn;
  input [31:0]s00_axis_tdata;
  input \slv_reg0_reg[16] ;
  input s00_axis_tlast;

  wire BUFFERS_n_10;
  wire BUFFERS_n_11;
  wire BUFFERS_n_12;
  wire BUFFERS_n_13;
  wire BUFFERS_n_14;
  wire BUFFERS_n_15;
  wire BUFFERS_n_16;
  wire BUFFERS_n_17;
  wire BUFFERS_n_18;
  wire BUFFERS_n_19;
  wire BUFFERS_n_20;
  wire BUFFERS_n_21;
  wire BUFFERS_n_22;
  wire BUFFERS_n_23;
  wire BUFFERS_n_24;
  wire BUFFERS_n_25;
  wire BUFFERS_n_26;
  wire BUFFERS_n_27;
  wire BUFFERS_n_28;
  wire BUFFERS_n_29;
  wire BUFFERS_n_30;
  wire BUFFERS_n_31;
  wire BUFFERS_n_32;
  wire BUFFERS_n_33;
  wire BUFFERS_n_34;
  wire BUFFERS_n_35;
  wire BUFFERS_n_36;
  wire BUFFERS_n_37;
  wire BUFFERS_n_6;
  wire BUFFERS_n_7;
  wire BUFFERS_n_8;
  wire BUFFERS_n_9;
  wire CLK;
  wire HS_Clock;
  wire HS_DataIn;
  wire HS_DataOut;
  wire MCK;
  wire [7:0]Q;
  wire Q_reg;
  wire \data_out_reg[0] ;
  wire debug_in_shift_int;
  wire debug_out_shift_int;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [31:0]r_reg;
  wire [7:0]\r_reg_reg[7] ;
  wire [7:0]\r_reg_reg[7]_0 ;
  wire [7:0]\r_reg_reg[7]_1 ;
  wire [7:0]\r_reg_reg[7]_2 ;
  wire [7:0]\r_reg_reg[7]_3 ;
  wire rx_fifo_valid_delayed;
  wire rx_token_next_int;
  wire s00_axi_aclk;
  wire s00_axi_aclk_0;
  wire s00_axi_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire \slv_reg0_reg[16] ;
  wire [1:0]\slv_reg0_reg[28] ;
  wire [1:0]\slv_reg1_reg[4] ;
  wire tx_token_next_int;
  wire tx_token_valid_int;

  design_1_BiDirChannels_0_0_GyroBiDirTokenBuffer BUFFERS
       (.Q(r_reg),
        .\data_out_reg[0] (\data_out_reg[0] ),
        .debug_in_shift_int(debug_in_shift_int),
        .debug_out_shift_int(debug_out_shift_int),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(CLK),
        .m00_axis_tvalid(m00_axis_tvalid),
        .\r_reg_reg[0]_P (BUFFERS_n_37),
        .\r_reg_reg[10]_P (BUFFERS_n_27),
        .\r_reg_reg[11]_P (BUFFERS_n_26),
        .\r_reg_reg[12]_P (BUFFERS_n_25),
        .\r_reg_reg[13]_P (BUFFERS_n_24),
        .\r_reg_reg[14]_P (BUFFERS_n_23),
        .\r_reg_reg[15]_P (BUFFERS_n_22),
        .\r_reg_reg[16]_P (BUFFERS_n_21),
        .\r_reg_reg[17]_P (BUFFERS_n_20),
        .\r_reg_reg[18]_P (BUFFERS_n_19),
        .\r_reg_reg[19]_P (BUFFERS_n_18),
        .\r_reg_reg[1]_P (BUFFERS_n_36),
        .\r_reg_reg[20]_P (BUFFERS_n_17),
        .\r_reg_reg[21]_P (BUFFERS_n_16),
        .\r_reg_reg[22]_P (BUFFERS_n_15),
        .\r_reg_reg[23]_P (BUFFERS_n_14),
        .\r_reg_reg[24]_P (BUFFERS_n_13),
        .\r_reg_reg[25]_P (BUFFERS_n_12),
        .\r_reg_reg[26]_P (BUFFERS_n_11),
        .\r_reg_reg[27]_P (BUFFERS_n_10),
        .\r_reg_reg[28]_P (BUFFERS_n_9),
        .\r_reg_reg[29]_P (BUFFERS_n_8),
        .\r_reg_reg[2]_P (BUFFERS_n_35),
        .\r_reg_reg[30]_P (BUFFERS_n_7),
        .\r_reg_reg[31]_P (BUFFERS_n_6),
        .\r_reg_reg[3]_P (BUFFERS_n_34),
        .\r_reg_reg[4]_P (BUFFERS_n_33),
        .\r_reg_reg[5]_P (BUFFERS_n_32),
        .\r_reg_reg[6]_P (BUFFERS_n_31),
        .\r_reg_reg[7]_P (BUFFERS_n_30),
        .\r_reg_reg[8]_P (BUFFERS_n_29),
        .\r_reg_reg[9]_P (BUFFERS_n_28),
        .rx_fifo_valid_delayed(rx_fifo_valid_delayed),
        .s00_axi_aclk(s00_axi_aclk_0),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid),
        .tx_token_valid_int(tx_token_valid_int));
  design_1_BiDirChannels_0_0_GyroInputOutputChannel CHANNELS
       (.CLK(tx_token_next_int),
        .HS_Clock(HS_Clock),
        .HS_DataIn(HS_DataIn),
        .HS_DataOut(HS_DataOut),
        .MCK(MCK),
        .Q(r_reg),
        .Q_reg(Q_reg),
        .\data_out_reg[0] (BUFFERS_n_37),
        .\data_out_reg[10] (BUFFERS_n_27),
        .\data_out_reg[11] (BUFFERS_n_26),
        .\data_out_reg[12] (BUFFERS_n_25),
        .\data_out_reg[13] (BUFFERS_n_24),
        .\data_out_reg[14] (BUFFERS_n_23),
        .\data_out_reg[15] (BUFFERS_n_22),
        .\data_out_reg[16] (BUFFERS_n_21),
        .\data_out_reg[17] (BUFFERS_n_20),
        .\data_out_reg[18] (BUFFERS_n_19),
        .\data_out_reg[19] (BUFFERS_n_18),
        .\data_out_reg[1] (BUFFERS_n_36),
        .\data_out_reg[20] (BUFFERS_n_17),
        .\data_out_reg[21] (BUFFERS_n_16),
        .\data_out_reg[22] (BUFFERS_n_15),
        .\data_out_reg[23] (BUFFERS_n_14),
        .\data_out_reg[24] (BUFFERS_n_13),
        .\data_out_reg[25] (BUFFERS_n_12),
        .\data_out_reg[26] (BUFFERS_n_11),
        .\data_out_reg[27] (BUFFERS_n_10),
        .\data_out_reg[28] (BUFFERS_n_9),
        .\data_out_reg[29] (BUFFERS_n_8),
        .\data_out_reg[2] (BUFFERS_n_35),
        .\data_out_reg[30] (BUFFERS_n_7),
        .\data_out_reg[31] (BUFFERS_n_6),
        .\data_out_reg[3] (BUFFERS_n_34),
        .\data_out_reg[4] (BUFFERS_n_33),
        .\data_out_reg[5] (BUFFERS_n_32),
        .\data_out_reg[6] (BUFFERS_n_31),
        .\data_out_reg[7] (BUFFERS_n_30),
        .\data_out_reg[8] (BUFFERS_n_29),
        .\data_out_reg[9] (BUFFERS_n_28),
        .debug_in_shift_int(debug_in_shift_int),
        .debug_out_shift_int(debug_out_shift_int),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .\r_reg_reg[7] (rx_token_next_int),
        .rx_fifo_valid_delayed(rx_fifo_valid_delayed),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(\data_out_reg[0] ),
        .\slv_reg0_reg[28] (\slv_reg0_reg[28] ),
        .\slv_reg1_reg[4] (\slv_reg1_reg[4] ),
        .tx_token_valid_int(tx_token_valid_int));
  design_1_BiDirChannels_0_0_GyroChannelDebugger DEBUGGER
       (.CLK(rx_token_next_int),
        .Q(Q),
        .Q_reg(tx_token_next_int),
        .Q_reg_0(CLK),
        .debug_in_shift_int(debug_in_shift_int),
        .debug_out_shift_int(debug_out_shift_int),
        .\r_reg_reg[7] (\r_reg_reg[7] ),
        .\r_reg_reg[7]_0 (\r_reg_reg[7]_0 ),
        .\r_reg_reg[7]_1 (\r_reg_reg[7]_1 ),
        .\r_reg_reg[7]_2 (\r_reg_reg[7]_2 ),
        .\r_reg_reg[7]_3 (\r_reg_reg[7]_3 ),
        .s00_axis_tlast(s00_axis_tlast),
        .\slv_reg0_reg[16] (\slv_reg0_reg[16] ));
endmodule

(* ORIG_REF_NAME = "GyroBiDirTokenBuffer" *) 
module design_1_BiDirChannels_0_0_GyroBiDirTokenBuffer
   (m00_axis_tlast,
    \data_out_reg[0] ,
    rx_fifo_valid_delayed,
    tx_token_valid_int,
    m00_axis_tvalid,
    s00_axis_tready,
    \r_reg_reg[31]_P ,
    \r_reg_reg[30]_P ,
    \r_reg_reg[29]_P ,
    \r_reg_reg[28]_P ,
    \r_reg_reg[27]_P ,
    \r_reg_reg[26]_P ,
    \r_reg_reg[25]_P ,
    \r_reg_reg[24]_P ,
    \r_reg_reg[23]_P ,
    \r_reg_reg[22]_P ,
    \r_reg_reg[21]_P ,
    \r_reg_reg[20]_P ,
    \r_reg_reg[19]_P ,
    \r_reg_reg[18]_P ,
    \r_reg_reg[17]_P ,
    \r_reg_reg[16]_P ,
    \r_reg_reg[15]_P ,
    \r_reg_reg[14]_P ,
    \r_reg_reg[13]_P ,
    \r_reg_reg[12]_P ,
    \r_reg_reg[11]_P ,
    \r_reg_reg[10]_P ,
    \r_reg_reg[9]_P ,
    \r_reg_reg[8]_P ,
    \r_reg_reg[7]_P ,
    \r_reg_reg[6]_P ,
    \r_reg_reg[5]_P ,
    \r_reg_reg[4]_P ,
    \r_reg_reg[3]_P ,
    \r_reg_reg[2]_P ,
    \r_reg_reg[1]_P ,
    \r_reg_reg[0]_P ,
    m00_axis_tdata,
    s00_axi_aclk,
    s00_axis_tvalid,
    debug_out_shift_int,
    debug_in_shift_int,
    Q,
    s00_axi_aresetn,
    s00_axis_tdata);
  output m00_axis_tlast;
  output \data_out_reg[0] ;
  output rx_fifo_valid_delayed;
  output tx_token_valid_int;
  output m00_axis_tvalid;
  output s00_axis_tready;
  output \r_reg_reg[31]_P ;
  output \r_reg_reg[30]_P ;
  output \r_reg_reg[29]_P ;
  output \r_reg_reg[28]_P ;
  output \r_reg_reg[27]_P ;
  output \r_reg_reg[26]_P ;
  output \r_reg_reg[25]_P ;
  output \r_reg_reg[24]_P ;
  output \r_reg_reg[23]_P ;
  output \r_reg_reg[22]_P ;
  output \r_reg_reg[21]_P ;
  output \r_reg_reg[20]_P ;
  output \r_reg_reg[19]_P ;
  output \r_reg_reg[18]_P ;
  output \r_reg_reg[17]_P ;
  output \r_reg_reg[16]_P ;
  output \r_reg_reg[15]_P ;
  output \r_reg_reg[14]_P ;
  output \r_reg_reg[13]_P ;
  output \r_reg_reg[12]_P ;
  output \r_reg_reg[11]_P ;
  output \r_reg_reg[10]_P ;
  output \r_reg_reg[9]_P ;
  output \r_reg_reg[8]_P ;
  output \r_reg_reg[7]_P ;
  output \r_reg_reg[6]_P ;
  output \r_reg_reg[5]_P ;
  output \r_reg_reg[4]_P ;
  output \r_reg_reg[3]_P ;
  output \r_reg_reg[2]_P ;
  output \r_reg_reg[1]_P ;
  output \r_reg_reg[0]_P ;
  output [31:0]m00_axis_tdata;
  input s00_axi_aclk;
  input s00_axis_tvalid;
  input debug_out_shift_int;
  input debug_in_shift_int;
  input [31:0]Q;
  input s00_axi_aresetn;
  input [31:0]s00_axis_tdata;

  wire D0;
  wire D0_0;
  wire InDataReg_n_0;
  wire InDataReg_n_1;
  wire InDataReg_n_10;
  wire InDataReg_n_11;
  wire InDataReg_n_12;
  wire InDataReg_n_13;
  wire InDataReg_n_14;
  wire InDataReg_n_15;
  wire InDataReg_n_16;
  wire InDataReg_n_17;
  wire InDataReg_n_18;
  wire InDataReg_n_19;
  wire InDataReg_n_2;
  wire InDataReg_n_20;
  wire InDataReg_n_21;
  wire InDataReg_n_22;
  wire InDataReg_n_23;
  wire InDataReg_n_24;
  wire InDataReg_n_25;
  wire InDataReg_n_26;
  wire InDataReg_n_27;
  wire InDataReg_n_28;
  wire InDataReg_n_29;
  wire InDataReg_n_3;
  wire InDataReg_n_30;
  wire InDataReg_n_31;
  wire InDataReg_n_4;
  wire InDataReg_n_5;
  wire InDataReg_n_6;
  wire InDataReg_n_7;
  wire InDataReg_n_8;
  wire InDataReg_n_9;
  wire [31:0]Q;
  wire \data_out_reg[0] ;
  wire debug_in_shift_int;
  wire debug_out_shift_int;
  wire inputFF_n_1;
  wire inputShiftRegister_n_0;
  wire inputShiftRegister_n_1;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tvalid;
  wire [7:7]out_full;
  wire outputDelayLine_n_1;
  wire outputDelayLine_n_10;
  wire outputDelayLine_n_11;
  wire outputDelayLine_n_12;
  wire outputDelayLine_n_13;
  wire outputDelayLine_n_14;
  wire outputDelayLine_n_15;
  wire outputDelayLine_n_16;
  wire outputDelayLine_n_17;
  wire outputDelayLine_n_18;
  wire outputDelayLine_n_19;
  wire outputDelayLine_n_2;
  wire outputDelayLine_n_20;
  wire outputDelayLine_n_21;
  wire outputDelayLine_n_22;
  wire outputDelayLine_n_23;
  wire outputDelayLine_n_24;
  wire outputDelayLine_n_25;
  wire outputDelayLine_n_26;
  wire outputDelayLine_n_27;
  wire outputDelayLine_n_28;
  wire outputDelayLine_n_29;
  wire outputDelayLine_n_3;
  wire outputDelayLine_n_30;
  wire outputDelayLine_n_31;
  wire outputDelayLine_n_32;
  wire outputDelayLine_n_33;
  wire outputDelayLine_n_4;
  wire outputDelayLine_n_5;
  wire outputDelayLine_n_6;
  wire outputDelayLine_n_7;
  wire outputDelayLine_n_8;
  wire outputDelayLine_n_9;
  wire outputFF_n_1;
  wire \r_reg_reg[0]_P ;
  wire \r_reg_reg[10]_P ;
  wire \r_reg_reg[11]_P ;
  wire \r_reg_reg[12]_P ;
  wire \r_reg_reg[13]_P ;
  wire \r_reg_reg[14]_P ;
  wire \r_reg_reg[15]_P ;
  wire \r_reg_reg[16]_P ;
  wire \r_reg_reg[17]_P ;
  wire \r_reg_reg[18]_P ;
  wire \r_reg_reg[19]_P ;
  wire \r_reg_reg[1]_P ;
  wire \r_reg_reg[20]_P ;
  wire \r_reg_reg[21]_P ;
  wire \r_reg_reg[22]_P ;
  wire \r_reg_reg[23]_P ;
  wire \r_reg_reg[24]_P ;
  wire \r_reg_reg[25]_P ;
  wire \r_reg_reg[26]_P ;
  wire \r_reg_reg[27]_P ;
  wire \r_reg_reg[28]_P ;
  wire \r_reg_reg[29]_P ;
  wire \r_reg_reg[2]_P ;
  wire \r_reg_reg[30]_P ;
  wire \r_reg_reg[31]_P ;
  wire \r_reg_reg[3]_P ;
  wire \r_reg_reg[4]_P ;
  wire \r_reg_reg[5]_P ;
  wire \r_reg_reg[6]_P ;
  wire \r_reg_reg[7]_P ;
  wire \r_reg_reg[8]_P ;
  wire \r_reg_reg[9]_P ;
  wire rx_fifo_valid_delayed;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire tx_token_valid_int;

  design_1_BiDirChannels_0_0_register_32bits InDataReg
       (.Q({InDataReg_n_0,InDataReg_n_1,InDataReg_n_2,InDataReg_n_3,InDataReg_n_4,InDataReg_n_5,InDataReg_n_6,InDataReg_n_7,InDataReg_n_8,InDataReg_n_9,InDataReg_n_10,InDataReg_n_11,InDataReg_n_12,InDataReg_n_13,InDataReg_n_14,InDataReg_n_15,InDataReg_n_16,InDataReg_n_17,InDataReg_n_18,InDataReg_n_19,InDataReg_n_20,InDataReg_n_21,InDataReg_n_22,InDataReg_n_23,InDataReg_n_24,InDataReg_n_25,InDataReg_n_26,InDataReg_n_27,InDataReg_n_28,InDataReg_n_29,InDataReg_n_30,InDataReg_n_31}),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(\data_out_reg[0] ),
        .s00_axis_tdata(s00_axis_tdata));
  design_1_BiDirChannels_0_0_dff_7 InValidReg
       (.rx_fifo_valid_delayed(rx_fifo_valid_delayed),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(\data_out_reg[0] ),
        .s00_axis_tvalid(s00_axis_tvalid));
  design_1_BiDirChannels_0_0_register_32bits_8 OutDataReg
       (.D({outputDelayLine_n_2,outputDelayLine_n_3,outputDelayLine_n_4,outputDelayLine_n_5,outputDelayLine_n_6,outputDelayLine_n_7,outputDelayLine_n_8,outputDelayLine_n_9,outputDelayLine_n_10,outputDelayLine_n_11,outputDelayLine_n_12,outputDelayLine_n_13,outputDelayLine_n_14,outputDelayLine_n_15,outputDelayLine_n_16,outputDelayLine_n_17,outputDelayLine_n_18,outputDelayLine_n_19,outputDelayLine_n_20,outputDelayLine_n_21,outputDelayLine_n_22,outputDelayLine_n_23,outputDelayLine_n_24,outputDelayLine_n_25,outputDelayLine_n_26,outputDelayLine_n_27,outputDelayLine_n_28,outputDelayLine_n_29,outputDelayLine_n_30,outputDelayLine_n_31,outputDelayLine_n_32,outputDelayLine_n_33}),
        .m00_axis_tdata(m00_axis_tdata),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(\data_out_reg[0] ));
  design_1_BiDirChannels_0_0_dff_9 OutLastReg
       (.D0_0(D0_0),
        .m00_axis_tlast(m00_axis_tlast),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(\data_out_reg[0] ));
  design_1_BiDirChannels_0_0_dff_10 OutReadyReg
       (.D0(D0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(\data_out_reg[0] ),
        .s00_axis_tready(s00_axis_tready));
  design_1_BiDirChannels_0_0_delay_line_8x32bits inputDelayLine
       (.Q({InDataReg_n_0,InDataReg_n_1,InDataReg_n_2,InDataReg_n_3,InDataReg_n_4,InDataReg_n_5,InDataReg_n_6,InDataReg_n_7,InDataReg_n_8,InDataReg_n_9,InDataReg_n_10,InDataReg_n_11,InDataReg_n_12,InDataReg_n_13,InDataReg_n_14,InDataReg_n_15,InDataReg_n_16,InDataReg_n_17,InDataReg_n_18,InDataReg_n_19,InDataReg_n_20,InDataReg_n_21,InDataReg_n_22,InDataReg_n_23,InDataReg_n_24,InDataReg_n_25,InDataReg_n_26,InDataReg_n_27,InDataReg_n_28,InDataReg_n_29,InDataReg_n_30,InDataReg_n_31}),
        .debug_in_shift_int(debug_in_shift_int),
        .out_reg_c_5(inputShiftRegister_n_0),
        .\r_reg_reg[0]_P (\r_reg_reg[0]_P ),
        .\r_reg_reg[10]_P (\r_reg_reg[10]_P ),
        .\r_reg_reg[11]_P (\r_reg_reg[11]_P ),
        .\r_reg_reg[12]_P (\r_reg_reg[12]_P ),
        .\r_reg_reg[13]_P (\r_reg_reg[13]_P ),
        .\r_reg_reg[14]_P (\r_reg_reg[14]_P ),
        .\r_reg_reg[15]_P (\r_reg_reg[15]_P ),
        .\r_reg_reg[16]_P (\r_reg_reg[16]_P ),
        .\r_reg_reg[17]_P (\r_reg_reg[17]_P ),
        .\r_reg_reg[18]_P (\r_reg_reg[18]_P ),
        .\r_reg_reg[19]_P (\r_reg_reg[19]_P ),
        .\r_reg_reg[1]_P (\r_reg_reg[1]_P ),
        .\r_reg_reg[20]_P (\r_reg_reg[20]_P ),
        .\r_reg_reg[21]_P (\r_reg_reg[21]_P ),
        .\r_reg_reg[22]_P (\r_reg_reg[22]_P ),
        .\r_reg_reg[23]_P (\r_reg_reg[23]_P ),
        .\r_reg_reg[24]_P (\r_reg_reg[24]_P ),
        .\r_reg_reg[25]_P (\r_reg_reg[25]_P ),
        .\r_reg_reg[26]_P (\r_reg_reg[26]_P ),
        .\r_reg_reg[27]_P (\r_reg_reg[27]_P ),
        .\r_reg_reg[28]_P (\r_reg_reg[28]_P ),
        .\r_reg_reg[29]_P (\r_reg_reg[29]_P ),
        .\r_reg_reg[2]_P (\r_reg_reg[2]_P ),
        .\r_reg_reg[30]_P (\r_reg_reg[30]_P ),
        .\r_reg_reg[31]_P (\r_reg_reg[31]_P ),
        .\r_reg_reg[3]_P (\r_reg_reg[3]_P ),
        .\r_reg_reg[4]_P (\r_reg_reg[4]_P ),
        .\r_reg_reg[5]_P (\r_reg_reg[5]_P ),
        .\r_reg_reg[6]_P (\r_reg_reg[6]_P ),
        .\r_reg_reg[7]_P (\r_reg_reg[7]_P ),
        .\r_reg_reg[8]_P (\r_reg_reg[8]_P ),
        .\r_reg_reg[9]_P (\r_reg_reg[9]_P ),
        .s00_axi_aresetn(\data_out_reg[0] ));
  design_1_BiDirChannels_0_0_dff_11 inputFF
       (.\out_reg[6]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (inputFF_n_1),
        .\out_reg[7] (inputShiftRegister_n_1),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(\data_out_reg[0] ),
        .tx_token_valid_int(tx_token_valid_int));
  design_1_BiDirChannels_0_0_shift_reg_8bits inputShiftRegister
       (.D0(D0),
        .Q_reg(inputShiftRegister_n_1),
        .Q_reg_0(inputFF_n_1),
        .debug_in_shift_int(debug_in_shift_int),
        .\out_reg[7]_0 (inputShiftRegister_n_0),
        .s00_axi_aresetn(\data_out_reg[0] ));
  design_1_BiDirChannels_0_0_delay_line_8x32bits_12 outputDelayLine
       (.D({outputDelayLine_n_2,outputDelayLine_n_3,outputDelayLine_n_4,outputDelayLine_n_5,outputDelayLine_n_6,outputDelayLine_n_7,outputDelayLine_n_8,outputDelayLine_n_9,outputDelayLine_n_10,outputDelayLine_n_11,outputDelayLine_n_12,outputDelayLine_n_13,outputDelayLine_n_14,outputDelayLine_n_15,outputDelayLine_n_16,outputDelayLine_n_17,outputDelayLine_n_18,outputDelayLine_n_19,outputDelayLine_n_20,outputDelayLine_n_21,outputDelayLine_n_22,outputDelayLine_n_23,outputDelayLine_n_24,outputDelayLine_n_25,outputDelayLine_n_26,outputDelayLine_n_27,outputDelayLine_n_28,outputDelayLine_n_29,outputDelayLine_n_30,outputDelayLine_n_31,outputDelayLine_n_32,outputDelayLine_n_33}),
        .Q(Q),
        .\data_out_reg[0] (\data_out_reg[0] ),
        .data_out_reg_c(outputDelayLine_n_1),
        .debug_out_shift_int(debug_out_shift_int),
        .s00_axi_aresetn(s00_axi_aresetn));
  design_1_BiDirChannels_0_0_dff_13 outputFF
       (.m00_axis_tvalid(m00_axis_tvalid),
        .out_full(out_full),
        .\out_reg[5]_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c (outputFF_n_1),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(\data_out_reg[0] ));
  design_1_BiDirChannels_0_0_shift_reg_8bits_14 outputShiftRegister
       (.D0_0(D0_0),
        .Q_reg(out_full),
        .Q_reg_0(outputFF_n_1),
        .data_out_reg_c(outputDelayLine_n_1),
        .debug_out_shift_int(debug_out_shift_int),
        .s00_axi_aresetn(\data_out_reg[0] ));
endmodule

(* ORIG_REF_NAME = "GyroChannelDebugger" *) 
module design_1_BiDirChannels_0_0_GyroChannelDebugger
   (Q,
    \r_reg_reg[7] ,
    \r_reg_reg[7]_0 ,
    \r_reg_reg[7]_1 ,
    \r_reg_reg[7]_2 ,
    \r_reg_reg[7]_3 ,
    CLK,
    \slv_reg0_reg[16] ,
    Q_reg,
    s00_axis_tlast,
    debug_out_shift_int,
    Q_reg_0,
    debug_in_shift_int);
  output [7:0]Q;
  output [7:0]\r_reg_reg[7] ;
  output [7:0]\r_reg_reg[7]_0 ;
  output [7:0]\r_reg_reg[7]_1 ;
  output [7:0]\r_reg_reg[7]_2 ;
  output [7:0]\r_reg_reg[7]_3 ;
  input CLK;
  input \slv_reg0_reg[16] ;
  input Q_reg;
  input s00_axis_tlast;
  input debug_out_shift_int;
  input Q_reg_0;
  input debug_in_shift_int;

  wire CLK;
  wire [7:0]Q;
  wire Q_reg;
  wire Q_reg_0;
  wire debug_in_shift_int;
  wire debug_out_shift_int;
  wire [7:0]\r_reg_reg[7] ;
  wire [7:0]\r_reg_reg[7]_0 ;
  wire [7:0]\r_reg_reg[7]_1 ;
  wire [7:0]\r_reg_reg[7]_2 ;
  wire [7:0]\r_reg_reg[7]_3 ;
  wire s00_axis_tlast;
  wire \slv_reg0_reg[16] ;

  design_1_BiDirChannels_0_0_upCounter8Bits CNTR0
       (.CLK(CLK),
        .Q(Q),
        .\slv_reg0_reg[16] (\slv_reg0_reg[16] ));
  design_1_BiDirChannels_0_0_upCounter8Bits_0 CNTR1
       (.Q(\r_reg_reg[7] ),
        .Q_reg(Q_reg),
        .\slv_reg0_reg[16] (\slv_reg0_reg[16] ));
  design_1_BiDirChannels_0_0_upCounter8Bits_1 CNTR2
       (.Q(\r_reg_reg[7]_0 ),
        .s00_axis_tlast(s00_axis_tlast),
        .\slv_reg0_reg[16] (\slv_reg0_reg[16] ));
  design_1_BiDirChannels_0_0_upCounter8Bits_2 CNTR3
       (.Q(\r_reg_reg[7]_2 ),
        .Q_reg(Q_reg_0),
        .\slv_reg0_reg[16] (\slv_reg0_reg[16] ));
  design_1_BiDirChannels_0_0_upCounter8Bits_3 CNTR4
       (.Q(\r_reg_reg[7]_1 ),
        .debug_out_shift_int(debug_out_shift_int),
        .\slv_reg0_reg[16] (\slv_reg0_reg[16] ));
  design_1_BiDirChannels_0_0_upCounter8Bits_4 CNTR5
       (.Q(\r_reg_reg[7]_3 ),
        .debug_in_shift_int(debug_in_shift_int),
        .\slv_reg0_reg[16] (\slv_reg0_reg[16] ));
endmodule

(* ORIG_REF_NAME = "GyroInputOutputChannel" *) 
module design_1_BiDirChannels_0_0_GyroInputOutputChannel
   (MCK,
    HS_DataOut,
    debug_in_shift_int,
    debug_out_shift_int,
    CLK,
    \r_reg_reg[7] ,
    HS_Clock,
    Q,
    Q_reg,
    s00_axi_aclk,
    s00_axi_aresetn_0,
    \slv_reg0_reg[28] ,
    \slv_reg1_reg[4] ,
    tx_token_valid_int,
    rx_fifo_valid_delayed,
    m00_axis_tready,
    m00_axis_tvalid,
    HS_DataIn,
    s00_axi_aresetn,
    \data_out_reg[31] ,
    \data_out_reg[30] ,
    \data_out_reg[29] ,
    \data_out_reg[28] ,
    \data_out_reg[27] ,
    \data_out_reg[26] ,
    \data_out_reg[25] ,
    \data_out_reg[24] ,
    \data_out_reg[23] ,
    \data_out_reg[22] ,
    \data_out_reg[21] ,
    \data_out_reg[20] ,
    \data_out_reg[19] ,
    \data_out_reg[18] ,
    \data_out_reg[17] ,
    \data_out_reg[16] ,
    \data_out_reg[15] ,
    \data_out_reg[14] ,
    \data_out_reg[13] ,
    \data_out_reg[12] ,
    \data_out_reg[11] ,
    \data_out_reg[10] ,
    \data_out_reg[9] ,
    \data_out_reg[8] ,
    \data_out_reg[7] ,
    \data_out_reg[6] ,
    \data_out_reg[5] ,
    \data_out_reg[4] ,
    \data_out_reg[3] ,
    \data_out_reg[2] ,
    \data_out_reg[1] ,
    \data_out_reg[0] );
  output MCK;
  output HS_DataOut;
  output debug_in_shift_int;
  output debug_out_shift_int;
  output CLK;
  output \r_reg_reg[7] ;
  output HS_Clock;
  output [31:0]Q;
  input Q_reg;
  input s00_axi_aclk;
  input s00_axi_aresetn_0;
  input [1:0]\slv_reg0_reg[28] ;
  input [1:0]\slv_reg1_reg[4] ;
  input tx_token_valid_int;
  input rx_fifo_valid_delayed;
  input m00_axis_tready;
  input m00_axis_tvalid;
  input HS_DataIn;
  input s00_axi_aresetn;
  input \data_out_reg[31] ;
  input \data_out_reg[30] ;
  input \data_out_reg[29] ;
  input \data_out_reg[28] ;
  input \data_out_reg[27] ;
  input \data_out_reg[26] ;
  input \data_out_reg[25] ;
  input \data_out_reg[24] ;
  input \data_out_reg[23] ;
  input \data_out_reg[22] ;
  input \data_out_reg[21] ;
  input \data_out_reg[20] ;
  input \data_out_reg[19] ;
  input \data_out_reg[18] ;
  input \data_out_reg[17] ;
  input \data_out_reg[16] ;
  input \data_out_reg[15] ;
  input \data_out_reg[14] ;
  input \data_out_reg[13] ;
  input \data_out_reg[12] ;
  input \data_out_reg[11] ;
  input \data_out_reg[10] ;
  input \data_out_reg[9] ;
  input \data_out_reg[8] ;
  input \data_out_reg[7] ;
  input \data_out_reg[6] ;
  input \data_out_reg[5] ;
  input \data_out_reg[4] ;
  input \data_out_reg[3] ;
  input \data_out_reg[2] ;
  input \data_out_reg[1] ;
  input \data_out_reg[0] ;

  wire CLK;
  wire HS_Clock;
  wire HS_DataIn;
  wire HS_DataOut;
  wire MASK_HSCK_n_10;
  wire MASK_HSCK_n_11;
  wire MASK_HSCK_n_12;
  wire MASK_HSCK_n_13;
  wire MASK_HSCK_n_14;
  wire MASK_HSCK_n_15;
  wire MASK_HSCK_n_16;
  wire MASK_HSCK_n_17;
  wire MASK_HSCK_n_18;
  wire MASK_HSCK_n_19;
  wire MASK_HSCK_n_2;
  wire MASK_HSCK_n_20;
  wire MASK_HSCK_n_21;
  wire MASK_HSCK_n_22;
  wire MASK_HSCK_n_23;
  wire MASK_HSCK_n_24;
  wire MASK_HSCK_n_25;
  wire MASK_HSCK_n_26;
  wire MASK_HSCK_n_27;
  wire MASK_HSCK_n_28;
  wire MASK_HSCK_n_29;
  wire MASK_HSCK_n_3;
  wire MASK_HSCK_n_30;
  wire MASK_HSCK_n_31;
  wire MASK_HSCK_n_32;
  wire MASK_HSCK_n_33;
  wire MASK_HSCK_n_34;
  wire MASK_HSCK_n_35;
  wire MASK_HSCK_n_36;
  wire MASK_HSCK_n_37;
  wire MASK_HSCK_n_38;
  wire MASK_HSCK_n_39;
  wire MASK_HSCK_n_4;
  wire MASK_HSCK_n_40;
  wire MASK_HSCK_n_41;
  wire MASK_HSCK_n_42;
  wire MASK_HSCK_n_43;
  wire MASK_HSCK_n_44;
  wire MASK_HSCK_n_45;
  wire MASK_HSCK_n_46;
  wire MASK_HSCK_n_47;
  wire MASK_HSCK_n_48;
  wire MASK_HSCK_n_49;
  wire MASK_HSCK_n_5;
  wire MASK_HSCK_n_50;
  wire MASK_HSCK_n_51;
  wire MASK_HSCK_n_52;
  wire MASK_HSCK_n_53;
  wire MASK_HSCK_n_54;
  wire MASK_HSCK_n_55;
  wire MASK_HSCK_n_56;
  wire MASK_HSCK_n_57;
  wire MASK_HSCK_n_58;
  wire MASK_HSCK_n_59;
  wire MASK_HSCK_n_6;
  wire MASK_HSCK_n_60;
  wire MASK_HSCK_n_61;
  wire MASK_HSCK_n_62;
  wire MASK_HSCK_n_63;
  wire MASK_HSCK_n_64;
  wire MASK_HSCK_n_65;
  wire MASK_HSCK_n_7;
  wire MASK_HSCK_n_8;
  wire MASK_HSCK_n_9;
  wire MCK;
  wire PULSE_CNTR_n_1;
  wire PULSE_CNTR_n_7;
  wire PULSE_CNTR_n_8;
  wire [31:0]Q;
  wire Q_reg;
  wire \data_out_reg[0] ;
  wire \data_out_reg[10] ;
  wire \data_out_reg[11] ;
  wire \data_out_reg[12] ;
  wire \data_out_reg[13] ;
  wire \data_out_reg[14] ;
  wire \data_out_reg[15] ;
  wire \data_out_reg[16] ;
  wire \data_out_reg[17] ;
  wire \data_out_reg[18] ;
  wire \data_out_reg[19] ;
  wire \data_out_reg[1] ;
  wire \data_out_reg[20] ;
  wire \data_out_reg[21] ;
  wire \data_out_reg[22] ;
  wire \data_out_reg[23] ;
  wire \data_out_reg[24] ;
  wire \data_out_reg[25] ;
  wire \data_out_reg[26] ;
  wire \data_out_reg[27] ;
  wire \data_out_reg[28] ;
  wire \data_out_reg[29] ;
  wire \data_out_reg[2] ;
  wire \data_out_reg[30] ;
  wire \data_out_reg[31] ;
  wire \data_out_reg[3] ;
  wire \data_out_reg[4] ;
  wire \data_out_reg[5] ;
  wire \data_out_reg[6] ;
  wire \data_out_reg[7] ;
  wire \data_out_reg[8] ;
  wire \data_out_reg[9] ;
  wire debug_in_shift_int;
  wire debug_out_shift_int;
  wire hs_data_in_int;
  wire in_start_stop_int;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire masked_out_hsck_int;
  wire mode_int;
  wire out_start_stop_int;
  wire \r_reg_reg[7] ;
  wire rx_fifo_valid_delayed;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire [1:0]\slv_reg0_reg[28] ;
  wire [1:0]\slv_reg1_reg[4] ;
  wire tx_token_valid_int;

  design_1_BiDirChannels_0_0_clock_divider_by_2 CLK_DIV2
       (.MCK(MCK),
        .Q_reg(Q_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn_0));
  design_1_BiDirChannels_0_0_inputShiftRegister32Bits IN_SHIFT_REG
       (.D(hs_data_in_int),
        .Q(Q),
        .Q_reg(PULSE_CNTR_n_8),
        .s00_axi_aresetn(s00_axi_aresetn_0));
  design_1_BiDirChannels_0_0_maskHSCK MASK_HSCK
       (.\data_out_reg[0] (\data_out_reg[0] ),
        .\data_out_reg[10] (\data_out_reg[10] ),
        .\data_out_reg[11] (\data_out_reg[11] ),
        .\data_out_reg[12] (\data_out_reg[12] ),
        .\data_out_reg[13] (\data_out_reg[13] ),
        .\data_out_reg[14] (\data_out_reg[14] ),
        .\data_out_reg[15] (\data_out_reg[15] ),
        .\data_out_reg[16] (\data_out_reg[16] ),
        .\data_out_reg[17] (\data_out_reg[17] ),
        .\data_out_reg[18] (\data_out_reg[18] ),
        .\data_out_reg[19] (\data_out_reg[19] ),
        .\data_out_reg[1] (\data_out_reg[1] ),
        .\data_out_reg[20] (\data_out_reg[20] ),
        .\data_out_reg[21] (\data_out_reg[21] ),
        .\data_out_reg[22] (\data_out_reg[22] ),
        .\data_out_reg[23] (\data_out_reg[23] ),
        .\data_out_reg[24] (\data_out_reg[24] ),
        .\data_out_reg[25] (\data_out_reg[25] ),
        .\data_out_reg[26] (\data_out_reg[26] ),
        .\data_out_reg[27] (\data_out_reg[27] ),
        .\data_out_reg[28] (\data_out_reg[28] ),
        .\data_out_reg[29] (\data_out_reg[29] ),
        .\data_out_reg[2] (\data_out_reg[2] ),
        .\data_out_reg[30] (\data_out_reg[30] ),
        .\data_out_reg[31] (\data_out_reg[31] ),
        .\data_out_reg[3] (\data_out_reg[3] ),
        .\data_out_reg[4] (\data_out_reg[4] ),
        .\data_out_reg[5] (\data_out_reg[5] ),
        .\data_out_reg[6] (\data_out_reg[6] ),
        .\data_out_reg[7] (\data_out_reg[7] ),
        .\data_out_reg[8] (\data_out_reg[8] ),
        .\data_out_reg[9] (\data_out_reg[9] ),
        .in_start_stop_int(in_start_stop_int),
        .out_start_stop_int(out_start_stop_int),
        .\r_reg_reg[0] (PULSE_CNTR_n_1),
        .\r_reg_reg[0]_P (MASK_HSCK_n_33),
        .\r_reg_reg[10]_C (MASK_HSCK_n_55),
        .\r_reg_reg[10]_P (MASK_HSCK_n_23),
        .\r_reg_reg[11]_C (MASK_HSCK_n_54),
        .\r_reg_reg[11]_P (MASK_HSCK_n_22),
        .\r_reg_reg[12]_C (MASK_HSCK_n_53),
        .\r_reg_reg[12]_P (MASK_HSCK_n_21),
        .\r_reg_reg[13]_C (MASK_HSCK_n_52),
        .\r_reg_reg[13]_P (MASK_HSCK_n_20),
        .\r_reg_reg[14]_C (MASK_HSCK_n_51),
        .\r_reg_reg[14]_P (MASK_HSCK_n_19),
        .\r_reg_reg[15]_C (MASK_HSCK_n_50),
        .\r_reg_reg[15]_P (MASK_HSCK_n_18),
        .\r_reg_reg[16]_C (MASK_HSCK_n_49),
        .\r_reg_reg[16]_P (MASK_HSCK_n_17),
        .\r_reg_reg[17]_C (MASK_HSCK_n_48),
        .\r_reg_reg[17]_P (MASK_HSCK_n_16),
        .\r_reg_reg[18]_C (MASK_HSCK_n_47),
        .\r_reg_reg[18]_P (MASK_HSCK_n_15),
        .\r_reg_reg[19]_C (MASK_HSCK_n_46),
        .\r_reg_reg[19]_P (MASK_HSCK_n_14),
        .\r_reg_reg[1]_C (MASK_HSCK_n_64),
        .\r_reg_reg[1]_P (MASK_HSCK_n_32),
        .\r_reg_reg[1]_P_0 (MASK_HSCK_n_65),
        .\r_reg_reg[20]_C (MASK_HSCK_n_45),
        .\r_reg_reg[20]_P (MASK_HSCK_n_13),
        .\r_reg_reg[21]_C (MASK_HSCK_n_44),
        .\r_reg_reg[21]_P (MASK_HSCK_n_12),
        .\r_reg_reg[22]_C (MASK_HSCK_n_43),
        .\r_reg_reg[22]_P (MASK_HSCK_n_11),
        .\r_reg_reg[23]_C (MASK_HSCK_n_42),
        .\r_reg_reg[23]_P (MASK_HSCK_n_10),
        .\r_reg_reg[24]_C (MASK_HSCK_n_41),
        .\r_reg_reg[24]_P (MASK_HSCK_n_9),
        .\r_reg_reg[25]_C (MASK_HSCK_n_40),
        .\r_reg_reg[25]_P (MASK_HSCK_n_8),
        .\r_reg_reg[26]_C (MASK_HSCK_n_39),
        .\r_reg_reg[26]_P (MASK_HSCK_n_7),
        .\r_reg_reg[27]_C (MASK_HSCK_n_38),
        .\r_reg_reg[27]_P (MASK_HSCK_n_6),
        .\r_reg_reg[28]_C (MASK_HSCK_n_37),
        .\r_reg_reg[28]_P (MASK_HSCK_n_5),
        .\r_reg_reg[29]_C (MASK_HSCK_n_36),
        .\r_reg_reg[29]_P (MASK_HSCK_n_4),
        .\r_reg_reg[2]_C (MASK_HSCK_n_63),
        .\r_reg_reg[2]_P (MASK_HSCK_n_31),
        .\r_reg_reg[30]_C (MASK_HSCK_n_35),
        .\r_reg_reg[30]_P (MASK_HSCK_n_3),
        .\r_reg_reg[31]_C (MASK_HSCK_n_34),
        .\r_reg_reg[31]_P (MASK_HSCK_n_2),
        .\r_reg_reg[3]_C (MASK_HSCK_n_62),
        .\r_reg_reg[3]_P (MASK_HSCK_n_30),
        .\r_reg_reg[4]_C (MASK_HSCK_n_61),
        .\r_reg_reg[4]_P (MASK_HSCK_n_29),
        .\r_reg_reg[5]_C (MASK_HSCK_n_60),
        .\r_reg_reg[5]_P (MASK_HSCK_n_28),
        .\r_reg_reg[6]_C (MASK_HSCK_n_59),
        .\r_reg_reg[6]_P (MASK_HSCK_n_27),
        .\r_reg_reg[7]_C (MASK_HSCK_n_58),
        .\r_reg_reg[7]_P (MASK_HSCK_n_26),
        .\r_reg_reg[8]_C (MASK_HSCK_n_57),
        .\r_reg_reg[8]_P (MASK_HSCK_n_25),
        .\r_reg_reg[9]_C (MASK_HSCK_n_56),
        .\r_reg_reg[9]_P (MASK_HSCK_n_24),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(s00_axi_aresetn_0),
        .\slv_reg1_reg[4] (\slv_reg1_reg[4] ),
        .tx_token_valid_int(tx_token_valid_int));
  design_1_BiDirChannels_0_0_outputShiftRegister32Bits OUT_SHIFT_REG
       (.D(hs_data_in_int),
        .HS_DataIn(HS_DataIn),
        .HS_DataOut(HS_DataOut),
        .Q_reg(PULSE_CNTR_n_7),
        .Q_reg_0(MASK_HSCK_n_2),
        .Q_reg_1(MASK_HSCK_n_34),
        .Q_reg_10(MASK_HSCK_n_7),
        .Q_reg_11(MASK_HSCK_n_39),
        .Q_reg_12(MASK_HSCK_n_8),
        .Q_reg_13(MASK_HSCK_n_40),
        .Q_reg_14(MASK_HSCK_n_9),
        .Q_reg_15(MASK_HSCK_n_41),
        .Q_reg_16(MASK_HSCK_n_10),
        .Q_reg_17(MASK_HSCK_n_42),
        .Q_reg_18(MASK_HSCK_n_11),
        .Q_reg_19(MASK_HSCK_n_43),
        .Q_reg_2(MASK_HSCK_n_3),
        .Q_reg_20(MASK_HSCK_n_12),
        .Q_reg_21(MASK_HSCK_n_44),
        .Q_reg_22(MASK_HSCK_n_13),
        .Q_reg_23(MASK_HSCK_n_45),
        .Q_reg_24(MASK_HSCK_n_14),
        .Q_reg_25(MASK_HSCK_n_46),
        .Q_reg_26(MASK_HSCK_n_15),
        .Q_reg_27(MASK_HSCK_n_47),
        .Q_reg_28(MASK_HSCK_n_16),
        .Q_reg_29(MASK_HSCK_n_48),
        .Q_reg_3(MASK_HSCK_n_35),
        .Q_reg_30(MASK_HSCK_n_17),
        .Q_reg_31(MASK_HSCK_n_49),
        .Q_reg_32(MASK_HSCK_n_18),
        .Q_reg_33(MASK_HSCK_n_50),
        .Q_reg_34(MASK_HSCK_n_19),
        .Q_reg_35(MASK_HSCK_n_51),
        .Q_reg_36(MASK_HSCK_n_20),
        .Q_reg_37(MASK_HSCK_n_52),
        .Q_reg_38(MASK_HSCK_n_21),
        .Q_reg_39(MASK_HSCK_n_53),
        .Q_reg_4(MASK_HSCK_n_4),
        .Q_reg_40(MASK_HSCK_n_22),
        .Q_reg_41(MASK_HSCK_n_54),
        .Q_reg_42(MASK_HSCK_n_23),
        .Q_reg_43(MASK_HSCK_n_55),
        .Q_reg_44(MASK_HSCK_n_24),
        .Q_reg_45(MASK_HSCK_n_56),
        .Q_reg_46(MASK_HSCK_n_25),
        .Q_reg_47(MASK_HSCK_n_57),
        .Q_reg_48(MASK_HSCK_n_26),
        .Q_reg_49(MASK_HSCK_n_58),
        .Q_reg_5(MASK_HSCK_n_36),
        .Q_reg_50(MASK_HSCK_n_27),
        .Q_reg_51(MASK_HSCK_n_59),
        .Q_reg_52(MASK_HSCK_n_28),
        .Q_reg_53(MASK_HSCK_n_60),
        .Q_reg_54(MASK_HSCK_n_29),
        .Q_reg_55(MASK_HSCK_n_61),
        .Q_reg_56(MASK_HSCK_n_30),
        .Q_reg_57(MASK_HSCK_n_62),
        .Q_reg_58(MASK_HSCK_n_31),
        .Q_reg_59(MASK_HSCK_n_63),
        .Q_reg_6(MASK_HSCK_n_5),
        .Q_reg_60(MASK_HSCK_n_32),
        .Q_reg_61(MASK_HSCK_n_64),
        .Q_reg_62(MASK_HSCK_n_33),
        .Q_reg_63(MASK_HSCK_n_65),
        .Q_reg_7(MASK_HSCK_n_37),
        .Q_reg_8(MASK_HSCK_n_6),
        .Q_reg_9(MASK_HSCK_n_38),
        .masked_out_hsck_int(masked_out_hsck_int),
        .mode_int(mode_int));
  design_1_BiDirChannels_0_0_counter48Cycles PULSE_CNTR
       (.CLK(CLK),
        .HS_Clock(HS_Clock),
        .Q_reg(PULSE_CNTR_n_1),
        .Q_reg_0(MCK),
        .Q_reg_1(Q_reg),
        .debug_in_shift_int(debug_in_shift_int),
        .debug_out_shift_int(debug_out_shift_int),
        .in_start_stop_int(in_start_stop_int),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .masked_out_hsck_int(masked_out_hsck_int),
        .out_start_stop_int(out_start_stop_int),
        .\r_reg_reg[31] (PULSE_CNTR_n_8),
        .\r_reg_reg[32] (PULSE_CNTR_n_7),
        .\r_reg_reg[7] (\r_reg_reg[7] ),
        .rx_fifo_valid_delayed(rx_fifo_valid_delayed),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(s00_axi_aresetn_0),
        .\slv_reg0_reg[28] (\slv_reg0_reg[28] [1]),
        .tx_token_valid_int(tx_token_valid_int));
  design_1_BiDirChannels_0_0_register_2bits STATE_REG
       (.Q_reg(Q_reg),
        .mode_int(mode_int),
        .s00_axi_aresetn(s00_axi_aresetn_0),
        .\slv_reg0_reg[24] (\slv_reg0_reg[28] [0]));
endmodule

(* ORIG_REF_NAME = "clock_divider_by_2" *) 
module design_1_BiDirChannels_0_0_clock_divider_by_2
   (MCK,
    Q_reg,
    s00_axi_aclk,
    s00_axi_aresetn);
  output MCK;
  input Q_reg;
  input s00_axi_aclk;
  input s00_axi_aresetn;

  wire MCK;
  wire Q_reg;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;

  design_1_BiDirChannels_0_0_dff_6 ff0
       (.MCK(MCK),
        .Q_reg_0(Q_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
endmodule

(* ORIG_REF_NAME = "counter48Cycles" *) 
module design_1_BiDirChannels_0_0_counter48Cycles
   (debug_in_shift_int,
    Q_reg,
    debug_out_shift_int,
    CLK,
    \r_reg_reg[7] ,
    masked_out_hsck_int,
    HS_Clock,
    \r_reg_reg[32] ,
    \r_reg_reg[31] ,
    out_start_stop_int,
    tx_token_valid_int,
    rx_fifo_valid_delayed,
    s00_axi_aclk,
    m00_axis_tready,
    m00_axis_tvalid,
    in_start_stop_int,
    Q_reg_0,
    \slv_reg0_reg[28] ,
    s00_axi_aresetn,
    Q_reg_1,
    s00_axi_aresetn_0);
  output debug_in_shift_int;
  output Q_reg;
  output debug_out_shift_int;
  output CLK;
  output \r_reg_reg[7] ;
  output masked_out_hsck_int;
  output HS_Clock;
  output \r_reg_reg[32] ;
  output \r_reg_reg[31] ;
  input out_start_stop_int;
  input tx_token_valid_int;
  input rx_fifo_valid_delayed;
  input s00_axi_aclk;
  input m00_axis_tready;
  input m00_axis_tvalid;
  input in_start_stop_int;
  input Q_reg_0;
  input [0:0]\slv_reg0_reg[28] ;
  input s00_axi_aresetn;
  input Q_reg_1;
  input s00_axi_aresetn_0;

  wire CLK;
  wire HS_Clock;
  wire Q_reg;
  wire Q_reg_0;
  wire Q_reg_1;
  wire [5:0]count_pulses;
  wire debug_in_shift_int;
  wire debug_out_shift_int;
  wire in_start_stop_int;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire masked_out_hsck_int;
  wire out_start_stop_int;
  wire \r_reg[0]_i_1__6_n_0 ;
  wire \r_reg[1]_i_1__5_n_0 ;
  wire \r_reg[2]_i_1__5_n_0 ;
  wire \r_reg[3]_i_1__5_n_0 ;
  wire \r_reg[4]_i_1__5_n_0 ;
  wire \r_reg[5]_i_1__5_n_0 ;
  wire \r_reg_reg[31] ;
  wire \r_reg_reg[32] ;
  wire \r_reg_reg[7] ;
  wire rx_fifo_valid_delayed;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire [0:0]\slv_reg0_reg[28] ;
  wire tx_token_valid_int;

  LUT5 #(
    .INIT(32'hA956AAAA)) 
    HS_Clock_INST_0
       (.I0(\slv_reg0_reg[28] ),
        .I1(count_pulses[5]),
        .I2(count_pulses[3]),
        .I3(count_pulses[4]),
        .I4(Q_reg_0),
        .O(HS_Clock));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    Q_i_1
       (.I0(count_pulses[0]),
        .I1(count_pulses[5]),
        .I2(count_pulses[3]),
        .I3(count_pulses[4]),
        .I4(count_pulses[1]),
        .I5(count_pulses[2]),
        .O(Q_reg));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h8F808080)) 
    \out[7]_i_1 
       (.I0(m00_axis_tready),
        .I1(s00_axi_aclk),
        .I2(m00_axis_tvalid),
        .I3(Q_reg),
        .I4(in_start_stop_int),
        .O(debug_out_shift_int));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_reg[0]_i_1__6 
       (.I0(count_pulses[0]),
        .O(\r_reg[0]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \r_reg[1]_i_1__5 
       (.I0(count_pulses[0]),
        .I1(count_pulses[1]),
        .O(\r_reg[1]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \r_reg[2]_i_1__5 
       (.I0(count_pulses[2]),
        .I1(count_pulses[0]),
        .I2(count_pulses[1]),
        .O(\r_reg[2]_i_1__5_n_0 ));
  LUT5 #(
    .INIT(32'hFD57FFFF)) 
    \r_reg[31]_i_1 
       (.I0(in_start_stop_int),
        .I1(count_pulses[5]),
        .I2(count_pulses[3]),
        .I3(count_pulses[4]),
        .I4(Q_reg_0),
        .O(\r_reg_reg[31] ));
  LUT5 #(
    .INIT(32'h02A80000)) 
    \r_reg[32]_i_2 
       (.I0(out_start_stop_int),
        .I1(count_pulses[5]),
        .I2(count_pulses[3]),
        .I3(count_pulses[4]),
        .I4(Q_reg_0),
        .O(masked_out_hsck_int));
  LUT4 #(
    .INIT(16'h80FF)) 
    \r_reg[32]_i_3 
       (.I0(tx_token_valid_int),
        .I1(Q_reg),
        .I2(out_start_stop_int),
        .I3(s00_axi_aresetn),
        .O(\r_reg_reg[32] ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hCCC9)) 
    \r_reg[3]_i_1__5 
       (.I0(count_pulses[2]),
        .I1(count_pulses[3]),
        .I2(count_pulses[0]),
        .I3(count_pulses[1]),
        .O(\r_reg[3]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCC2)) 
    \r_reg[4]_i_1__5 
       (.I0(count_pulses[5]),
        .I1(count_pulses[4]),
        .I2(count_pulses[2]),
        .I3(count_pulses[0]),
        .I4(count_pulses[1]),
        .I5(count_pulses[3]),
        .O(\r_reg[4]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \r_reg[5]_i_1__5 
       (.I0(count_pulses[2]),
        .I1(count_pulses[3]),
        .I2(count_pulses[0]),
        .I3(count_pulses[1]),
        .I4(count_pulses[4]),
        .I5(count_pulses[5]),
        .O(\r_reg[5]_i_1__5_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \r_reg[7]_i_2 
       (.I0(Q_reg),
        .I1(out_start_stop_int),
        .I2(tx_token_valid_int),
        .I3(rx_fifo_valid_delayed),
        .I4(s00_axi_aclk),
        .O(debug_in_shift_int));
  LUT2 #(
    .INIT(4'h8)) 
    \r_reg[7]_i_2__0 
       (.I0(Q_reg),
        .I1(out_start_stop_int),
        .O(CLK));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_reg[7]_i_2__1 
       (.I0(Q_reg),
        .I1(in_start_stop_int),
        .O(\r_reg_reg[7] ));
  FDCE \r_reg_reg[0] 
       (.C(Q_reg_1),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\r_reg[0]_i_1__6_n_0 ),
        .Q(count_pulses[0]));
  FDCE \r_reg_reg[1] 
       (.C(Q_reg_1),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\r_reg[1]_i_1__5_n_0 ),
        .Q(count_pulses[1]));
  FDCE \r_reg_reg[2] 
       (.C(Q_reg_1),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\r_reg[2]_i_1__5_n_0 ),
        .Q(count_pulses[2]));
  FDCE \r_reg_reg[3] 
       (.C(Q_reg_1),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\r_reg[3]_i_1__5_n_0 ),
        .Q(count_pulses[3]));
  FDCE \r_reg_reg[4] 
       (.C(Q_reg_1),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\r_reg[4]_i_1__5_n_0 ),
        .Q(count_pulses[4]));
  FDCE \r_reg_reg[5] 
       (.C(Q_reg_1),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\r_reg[5]_i_1__5_n_0 ),
        .Q(count_pulses[5]));
endmodule

(* ORIG_REF_NAME = "delay_line_8x32bits" *) 
module design_1_BiDirChannels_0_0_delay_line_8x32bits
   (\r_reg_reg[31]_P ,
    \r_reg_reg[30]_P ,
    \r_reg_reg[29]_P ,
    \r_reg_reg[28]_P ,
    \r_reg_reg[27]_P ,
    \r_reg_reg[26]_P ,
    \r_reg_reg[25]_P ,
    \r_reg_reg[24]_P ,
    \r_reg_reg[23]_P ,
    \r_reg_reg[22]_P ,
    \r_reg_reg[21]_P ,
    \r_reg_reg[20]_P ,
    \r_reg_reg[19]_P ,
    \r_reg_reg[18]_P ,
    \r_reg_reg[17]_P ,
    \r_reg_reg[16]_P ,
    \r_reg_reg[15]_P ,
    \r_reg_reg[14]_P ,
    \r_reg_reg[13]_P ,
    \r_reg_reg[12]_P ,
    \r_reg_reg[11]_P ,
    \r_reg_reg[10]_P ,
    \r_reg_reg[9]_P ,
    \r_reg_reg[8]_P ,
    \r_reg_reg[7]_P ,
    \r_reg_reg[6]_P ,
    \r_reg_reg[5]_P ,
    \r_reg_reg[4]_P ,
    \r_reg_reg[3]_P ,
    \r_reg_reg[2]_P ,
    \r_reg_reg[1]_P ,
    \r_reg_reg[0]_P ,
    Q,
    debug_in_shift_int,
    out_reg_c_5,
    s00_axi_aresetn);
  output \r_reg_reg[31]_P ;
  output \r_reg_reg[30]_P ;
  output \r_reg_reg[29]_P ;
  output \r_reg_reg[28]_P ;
  output \r_reg_reg[27]_P ;
  output \r_reg_reg[26]_P ;
  output \r_reg_reg[25]_P ;
  output \r_reg_reg[24]_P ;
  output \r_reg_reg[23]_P ;
  output \r_reg_reg[22]_P ;
  output \r_reg_reg[21]_P ;
  output \r_reg_reg[20]_P ;
  output \r_reg_reg[19]_P ;
  output \r_reg_reg[18]_P ;
  output \r_reg_reg[17]_P ;
  output \r_reg_reg[16]_P ;
  output \r_reg_reg[15]_P ;
  output \r_reg_reg[14]_P ;
  output \r_reg_reg[13]_P ;
  output \r_reg_reg[12]_P ;
  output \r_reg_reg[11]_P ;
  output \r_reg_reg[10]_P ;
  output \r_reg_reg[9]_P ;
  output \r_reg_reg[8]_P ;
  output \r_reg_reg[7]_P ;
  output \r_reg_reg[6]_P ;
  output \r_reg_reg[5]_P ;
  output \r_reg_reg[4]_P ;
  output \r_reg_reg[3]_P ;
  output \r_reg_reg[2]_P ;
  output \r_reg_reg[1]_P ;
  output \r_reg_reg[0]_P ;
  input [31:0]Q;
  input debug_in_shift_int;
  input out_reg_c_5;
  input s00_axi_aresetn;

  wire [31:0]Q;
  wire Reg5_n_0;
  wire Reg5_n_1;
  wire Reg5_n_10;
  wire Reg5_n_11;
  wire Reg5_n_12;
  wire Reg5_n_13;
  wire Reg5_n_14;
  wire Reg5_n_15;
  wire Reg5_n_16;
  wire Reg5_n_17;
  wire Reg5_n_18;
  wire Reg5_n_19;
  wire Reg5_n_2;
  wire Reg5_n_20;
  wire Reg5_n_21;
  wire Reg5_n_22;
  wire Reg5_n_23;
  wire Reg5_n_24;
  wire Reg5_n_25;
  wire Reg5_n_26;
  wire Reg5_n_27;
  wire Reg5_n_28;
  wire Reg5_n_29;
  wire Reg5_n_3;
  wire Reg5_n_30;
  wire Reg5_n_31;
  wire Reg5_n_4;
  wire Reg5_n_5;
  wire Reg5_n_6;
  wire Reg5_n_7;
  wire Reg5_n_8;
  wire Reg5_n_9;
  wire Reg6_n_0;
  wire Reg6_n_1;
  wire Reg6_n_10;
  wire Reg6_n_11;
  wire Reg6_n_12;
  wire Reg6_n_13;
  wire Reg6_n_14;
  wire Reg6_n_15;
  wire Reg6_n_16;
  wire Reg6_n_17;
  wire Reg6_n_18;
  wire Reg6_n_19;
  wire Reg6_n_2;
  wire Reg6_n_20;
  wire Reg6_n_21;
  wire Reg6_n_22;
  wire Reg6_n_23;
  wire Reg6_n_24;
  wire Reg6_n_25;
  wire Reg6_n_26;
  wire Reg6_n_27;
  wire Reg6_n_28;
  wire Reg6_n_29;
  wire Reg6_n_3;
  wire Reg6_n_30;
  wire Reg6_n_31;
  wire Reg6_n_4;
  wire Reg6_n_5;
  wire Reg6_n_6;
  wire Reg6_n_7;
  wire Reg6_n_8;
  wire Reg6_n_9;
  wire debug_in_shift_int;
  wire out_reg_c_5;
  wire \r_reg_reg[0]_P ;
  wire \r_reg_reg[10]_P ;
  wire \r_reg_reg[11]_P ;
  wire \r_reg_reg[12]_P ;
  wire \r_reg_reg[13]_P ;
  wire \r_reg_reg[14]_P ;
  wire \r_reg_reg[15]_P ;
  wire \r_reg_reg[16]_P ;
  wire \r_reg_reg[17]_P ;
  wire \r_reg_reg[18]_P ;
  wire \r_reg_reg[19]_P ;
  wire \r_reg_reg[1]_P ;
  wire \r_reg_reg[20]_P ;
  wire \r_reg_reg[21]_P ;
  wire \r_reg_reg[22]_P ;
  wire \r_reg_reg[23]_P ;
  wire \r_reg_reg[24]_P ;
  wire \r_reg_reg[25]_P ;
  wire \r_reg_reg[26]_P ;
  wire \r_reg_reg[27]_P ;
  wire \r_reg_reg[28]_P ;
  wire \r_reg_reg[29]_P ;
  wire \r_reg_reg[2]_P ;
  wire \r_reg_reg[30]_P ;
  wire \r_reg_reg[31]_P ;
  wire \r_reg_reg[3]_P ;
  wire \r_reg_reg[4]_P ;
  wire \r_reg_reg[5]_P ;
  wire \r_reg_reg[6]_P ;
  wire \r_reg_reg[7]_P ;
  wire \r_reg_reg[8]_P ;
  wire \r_reg_reg[9]_P ;
  wire s00_axi_aresetn;

  design_1_BiDirChannels_0_0_register_32bits_23 Reg5
       (.Q(Q),
        .\data_out_reg[0]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_31),
        .\data_out_reg[10]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_21),
        .\data_out_reg[11]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_20),
        .\data_out_reg[12]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_19),
        .\data_out_reg[13]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_18),
        .\data_out_reg[14]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_17),
        .\data_out_reg[15]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_16),
        .\data_out_reg[16]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_15),
        .\data_out_reg[17]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_14),
        .\data_out_reg[18]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_13),
        .\data_out_reg[19]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_12),
        .\data_out_reg[1]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_30),
        .\data_out_reg[20]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_11),
        .\data_out_reg[21]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_10),
        .\data_out_reg[22]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_9),
        .\data_out_reg[23]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_8),
        .\data_out_reg[24]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_7),
        .\data_out_reg[25]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_6),
        .\data_out_reg[26]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_5),
        .\data_out_reg[27]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_4),
        .\data_out_reg[28]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_3),
        .\data_out_reg[29]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_2),
        .\data_out_reg[2]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_29),
        .\data_out_reg[30]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_1),
        .\data_out_reg[31]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_0),
        .\data_out_reg[3]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_28),
        .\data_out_reg[4]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_27),
        .\data_out_reg[5]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_26),
        .\data_out_reg[6]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_25),
        .\data_out_reg[7]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_24),
        .\data_out_reg[8]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_23),
        .\data_out_reg[9]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg5_n_22),
        .debug_in_shift_int(debug_in_shift_int));
  design_1_BiDirChannels_0_0_register_32bits_24 Reg6
       (.\data_out_reg[0] (Reg6_n_31),
        .\data_out_reg[0]_0 (Reg5_n_31),
        .\data_out_reg[10] (Reg6_n_21),
        .\data_out_reg[10]_0 (Reg5_n_21),
        .\data_out_reg[11] (Reg6_n_20),
        .\data_out_reg[11]_0 (Reg5_n_20),
        .\data_out_reg[12] (Reg6_n_19),
        .\data_out_reg[12]_0 (Reg5_n_19),
        .\data_out_reg[13] (Reg6_n_18),
        .\data_out_reg[13]_0 (Reg5_n_18),
        .\data_out_reg[14] (Reg6_n_17),
        .\data_out_reg[14]_0 (Reg5_n_17),
        .\data_out_reg[15] (Reg6_n_16),
        .\data_out_reg[15]_0 (Reg5_n_16),
        .\data_out_reg[16] (Reg6_n_15),
        .\data_out_reg[16]_0 (Reg5_n_15),
        .\data_out_reg[17] (Reg6_n_14),
        .\data_out_reg[17]_0 (Reg5_n_14),
        .\data_out_reg[18] (Reg6_n_13),
        .\data_out_reg[18]_0 (Reg5_n_13),
        .\data_out_reg[19] (Reg6_n_12),
        .\data_out_reg[19]_0 (Reg5_n_12),
        .\data_out_reg[1] (Reg6_n_30),
        .\data_out_reg[1]_0 (Reg5_n_30),
        .\data_out_reg[20] (Reg6_n_11),
        .\data_out_reg[20]_0 (Reg5_n_11),
        .\data_out_reg[21] (Reg6_n_10),
        .\data_out_reg[21]_0 (Reg5_n_10),
        .\data_out_reg[22] (Reg6_n_9),
        .\data_out_reg[22]_0 (Reg5_n_9),
        .\data_out_reg[23] (Reg6_n_8),
        .\data_out_reg[23]_0 (Reg5_n_8),
        .\data_out_reg[24] (Reg6_n_7),
        .\data_out_reg[24]_0 (Reg5_n_7),
        .\data_out_reg[25] (Reg6_n_6),
        .\data_out_reg[25]_0 (Reg5_n_6),
        .\data_out_reg[26] (Reg6_n_5),
        .\data_out_reg[26]_0 (Reg5_n_5),
        .\data_out_reg[27] (Reg6_n_4),
        .\data_out_reg[27]_0 (Reg5_n_4),
        .\data_out_reg[28] (Reg6_n_3),
        .\data_out_reg[28]_0 (Reg5_n_3),
        .\data_out_reg[29] (Reg6_n_2),
        .\data_out_reg[29]_0 (Reg5_n_2),
        .\data_out_reg[2] (Reg6_n_29),
        .\data_out_reg[2]_0 (Reg5_n_29),
        .\data_out_reg[30] (Reg6_n_1),
        .\data_out_reg[30]_0 (Reg5_n_1),
        .\data_out_reg[31] (Reg6_n_0),
        .\data_out_reg[31]_0 (Reg5_n_0),
        .\data_out_reg[3] (Reg6_n_28),
        .\data_out_reg[3]_0 (Reg5_n_28),
        .\data_out_reg[4] (Reg6_n_27),
        .\data_out_reg[4]_0 (Reg5_n_27),
        .\data_out_reg[5] (Reg6_n_26),
        .\data_out_reg[5]_0 (Reg5_n_26),
        .\data_out_reg[6] (Reg6_n_25),
        .\data_out_reg[6]_0 (Reg5_n_25),
        .\data_out_reg[7] (Reg6_n_24),
        .\data_out_reg[7]_0 (Reg5_n_24),
        .\data_out_reg[8] (Reg6_n_23),
        .\data_out_reg[8]_0 (Reg5_n_23),
        .\data_out_reg[9] (Reg6_n_22),
        .\data_out_reg[9]_0 (Reg5_n_22),
        .debug_in_shift_int(debug_in_shift_int),
        .out_reg_c_5(out_reg_c_5));
  design_1_BiDirChannels_0_0_register_32bits_25 Reg7
       (.\data_out_reg[0]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_31),
        .\data_out_reg[10]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_21),
        .\data_out_reg[11]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_20),
        .\data_out_reg[12]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_19),
        .\data_out_reg[13]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_18),
        .\data_out_reg[14]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_17),
        .\data_out_reg[15]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_16),
        .\data_out_reg[16]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_15),
        .\data_out_reg[17]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_14),
        .\data_out_reg[18]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_13),
        .\data_out_reg[19]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_12),
        .\data_out_reg[1]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_30),
        .\data_out_reg[20]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_11),
        .\data_out_reg[21]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_10),
        .\data_out_reg[22]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_9),
        .\data_out_reg[23]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_8),
        .\data_out_reg[24]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_7),
        .\data_out_reg[25]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_6),
        .\data_out_reg[26]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_5),
        .\data_out_reg[27]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_4),
        .\data_out_reg[28]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_3),
        .\data_out_reg[29]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_2),
        .\data_out_reg[2]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_29),
        .\data_out_reg[30]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_1),
        .\data_out_reg[31]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_0),
        .\data_out_reg[3]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_28),
        .\data_out_reg[4]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_27),
        .\data_out_reg[5]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_26),
        .\data_out_reg[6]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_25),
        .\data_out_reg[7]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_24),
        .\data_out_reg[8]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_23),
        .\data_out_reg[9]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 (Reg6_n_22),
        .debug_in_shift_int(debug_in_shift_int),
        .\r_reg_reg[0]_P (\r_reg_reg[0]_P ),
        .\r_reg_reg[10]_P (\r_reg_reg[10]_P ),
        .\r_reg_reg[11]_P (\r_reg_reg[11]_P ),
        .\r_reg_reg[12]_P (\r_reg_reg[12]_P ),
        .\r_reg_reg[13]_P (\r_reg_reg[13]_P ),
        .\r_reg_reg[14]_P (\r_reg_reg[14]_P ),
        .\r_reg_reg[15]_P (\r_reg_reg[15]_P ),
        .\r_reg_reg[16]_P (\r_reg_reg[16]_P ),
        .\r_reg_reg[17]_P (\r_reg_reg[17]_P ),
        .\r_reg_reg[18]_P (\r_reg_reg[18]_P ),
        .\r_reg_reg[19]_P (\r_reg_reg[19]_P ),
        .\r_reg_reg[1]_P (\r_reg_reg[1]_P ),
        .\r_reg_reg[20]_P (\r_reg_reg[20]_P ),
        .\r_reg_reg[21]_P (\r_reg_reg[21]_P ),
        .\r_reg_reg[22]_P (\r_reg_reg[22]_P ),
        .\r_reg_reg[23]_P (\r_reg_reg[23]_P ),
        .\r_reg_reg[24]_P (\r_reg_reg[24]_P ),
        .\r_reg_reg[25]_P (\r_reg_reg[25]_P ),
        .\r_reg_reg[26]_P (\r_reg_reg[26]_P ),
        .\r_reg_reg[27]_P (\r_reg_reg[27]_P ),
        .\r_reg_reg[28]_P (\r_reg_reg[28]_P ),
        .\r_reg_reg[29]_P (\r_reg_reg[29]_P ),
        .\r_reg_reg[2]_P (\r_reg_reg[2]_P ),
        .\r_reg_reg[30]_P (\r_reg_reg[30]_P ),
        .\r_reg_reg[31]_P (\r_reg_reg[31]_P ),
        .\r_reg_reg[3]_P (\r_reg_reg[3]_P ),
        .\r_reg_reg[4]_P (\r_reg_reg[4]_P ),
        .\r_reg_reg[5]_P (\r_reg_reg[5]_P ),
        .\r_reg_reg[6]_P (\r_reg_reg[6]_P ),
        .\r_reg_reg[7]_P (\r_reg_reg[7]_P ),
        .\r_reg_reg[8]_P (\r_reg_reg[8]_P ),
        .\r_reg_reg[9]_P (\r_reg_reg[9]_P ),
        .s00_axi_aresetn(s00_axi_aresetn));
endmodule

(* ORIG_REF_NAME = "delay_line_8x32bits" *) 
module design_1_BiDirChannels_0_0_delay_line_8x32bits_12
   (\data_out_reg[0] ,
    data_out_reg_c,
    D,
    debug_out_shift_int,
    Q,
    s00_axi_aresetn);
  output \data_out_reg[0] ;
  output data_out_reg_c;
  output [31:0]D;
  input debug_out_shift_int;
  input [31:0]Q;
  input s00_axi_aresetn;

  wire [31:0]D;
  wire [31:0]Q;
  wire Reg0_n_0;
  wire Reg1_n_0;
  wire Reg2_n_0;
  wire Reg3_n_0;
  wire Reg4_n_0;
  wire Reg5_n_1;
  wire Reg5_n_10;
  wire Reg5_n_11;
  wire Reg5_n_12;
  wire Reg5_n_13;
  wire Reg5_n_14;
  wire Reg5_n_15;
  wire Reg5_n_16;
  wire Reg5_n_17;
  wire Reg5_n_18;
  wire Reg5_n_19;
  wire Reg5_n_2;
  wire Reg5_n_20;
  wire Reg5_n_21;
  wire Reg5_n_22;
  wire Reg5_n_23;
  wire Reg5_n_24;
  wire Reg5_n_25;
  wire Reg5_n_26;
  wire Reg5_n_27;
  wire Reg5_n_28;
  wire Reg5_n_29;
  wire Reg5_n_3;
  wire Reg5_n_30;
  wire Reg5_n_31;
  wire Reg5_n_32;
  wire Reg5_n_4;
  wire Reg5_n_5;
  wire Reg5_n_6;
  wire Reg5_n_7;
  wire Reg5_n_8;
  wire Reg5_n_9;
  wire Reg6_n_0;
  wire Reg6_n_1;
  wire Reg6_n_10;
  wire Reg6_n_11;
  wire Reg6_n_12;
  wire Reg6_n_13;
  wire Reg6_n_14;
  wire Reg6_n_15;
  wire Reg6_n_16;
  wire Reg6_n_17;
  wire Reg6_n_18;
  wire Reg6_n_19;
  wire Reg6_n_2;
  wire Reg6_n_20;
  wire Reg6_n_21;
  wire Reg6_n_22;
  wire Reg6_n_23;
  wire Reg6_n_24;
  wire Reg6_n_25;
  wire Reg6_n_26;
  wire Reg6_n_27;
  wire Reg6_n_28;
  wire Reg6_n_29;
  wire Reg6_n_3;
  wire Reg6_n_30;
  wire Reg6_n_31;
  wire Reg6_n_4;
  wire Reg6_n_5;
  wire Reg6_n_6;
  wire Reg6_n_7;
  wire Reg6_n_8;
  wire Reg6_n_9;
  wire \data_out_reg[0] ;
  wire data_out_reg_c;
  wire debug_out_shift_int;
  wire s00_axi_aresetn;

  design_1_BiDirChannels_0_0_register_32bits_15 Reg0
       (.data_out_reg_c_0(Reg0_n_0),
        .debug_out_shift_int(debug_out_shift_int),
        .s00_axi_aresetn(\data_out_reg[0] ));
  design_1_BiDirChannels_0_0_register_32bits_16 Reg1
       (.data_out_reg_c_0(Reg1_n_0),
        .data_out_reg_c_1(Reg0_n_0),
        .debug_out_shift_int(debug_out_shift_int),
        .s00_axi_aresetn(\data_out_reg[0] ));
  design_1_BiDirChannels_0_0_register_32bits_17 Reg2
       (.data_out_reg_c_0(Reg2_n_0),
        .data_out_reg_c_1(Reg1_n_0),
        .debug_out_shift_int(debug_out_shift_int),
        .s00_axi_aresetn(\data_out_reg[0] ));
  design_1_BiDirChannels_0_0_register_32bits_18 Reg3
       (.data_out_reg_c_0(Reg3_n_0),
        .data_out_reg_c_1(Reg2_n_0),
        .debug_out_shift_int(debug_out_shift_int),
        .s00_axi_aresetn(\data_out_reg[0] ));
  design_1_BiDirChannels_0_0_register_32bits_19 Reg4
       (.data_out_reg_c_0(Reg4_n_0),
        .data_out_reg_c_1(Reg3_n_0),
        .debug_out_shift_int(debug_out_shift_int),
        .s00_axi_aresetn(\data_out_reg[0] ));
  design_1_BiDirChannels_0_0_register_32bits_20 Reg5
       (.Q(Q),
        .\data_out_reg[0]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_32),
        .\data_out_reg[10]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_22),
        .\data_out_reg[11]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_21),
        .\data_out_reg[12]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_20),
        .\data_out_reg[13]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_19),
        .\data_out_reg[14]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_18),
        .\data_out_reg[15]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_17),
        .\data_out_reg[16]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_16),
        .\data_out_reg[17]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_15),
        .\data_out_reg[18]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_14),
        .\data_out_reg[19]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_13),
        .\data_out_reg[1]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_31),
        .\data_out_reg[20]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_12),
        .\data_out_reg[21]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_11),
        .\data_out_reg[22]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_10),
        .\data_out_reg[23]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_9),
        .\data_out_reg[24]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_8),
        .\data_out_reg[25]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_7),
        .\data_out_reg[26]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_6),
        .\data_out_reg[27]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_5),
        .\data_out_reg[28]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_4),
        .\data_out_reg[29]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_3),
        .\data_out_reg[2]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_30),
        .\data_out_reg[30]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_2),
        .\data_out_reg[31]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_1),
        .\data_out_reg[3]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_29),
        .\data_out_reg[4]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_28),
        .\data_out_reg[5]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_27),
        .\data_out_reg[6]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_26),
        .\data_out_reg[7]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_25),
        .\data_out_reg[8]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_24),
        .\data_out_reg[9]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg5_n_23),
        .data_out_reg_c_0(data_out_reg_c),
        .data_out_reg_c_1(Reg4_n_0),
        .debug_out_shift_int(debug_out_shift_int),
        .s00_axi_aresetn(\data_out_reg[0] ));
  design_1_BiDirChannels_0_0_register_32bits_21 Reg6
       (.\data_out_reg[0] (Reg6_n_31),
        .\data_out_reg[10] (Reg6_n_21),
        .\data_out_reg[11] (Reg6_n_20),
        .\data_out_reg[12] (Reg6_n_19),
        .\data_out_reg[13] (Reg6_n_18),
        .\data_out_reg[14] (Reg6_n_17),
        .\data_out_reg[15] (Reg6_n_16),
        .\data_out_reg[16] (Reg6_n_15),
        .\data_out_reg[17] (Reg6_n_14),
        .\data_out_reg[18] (Reg6_n_13),
        .\data_out_reg[19] (Reg6_n_12),
        .\data_out_reg[1] (Reg6_n_30),
        .\data_out_reg[20] (Reg6_n_11),
        .\data_out_reg[21] (Reg6_n_10),
        .\data_out_reg[22] (Reg6_n_9),
        .\data_out_reg[23] (Reg6_n_8),
        .\data_out_reg[24] (Reg6_n_7),
        .\data_out_reg[25] (Reg6_n_6),
        .\data_out_reg[26] (Reg6_n_5),
        .\data_out_reg[27] (Reg6_n_4),
        .\data_out_reg[28] (Reg6_n_3),
        .\data_out_reg[29] (Reg6_n_2),
        .\data_out_reg[2] (Reg6_n_29),
        .\data_out_reg[30] (Reg6_n_1),
        .\data_out_reg[31] (Reg6_n_0),
        .\data_out_reg[3] (Reg6_n_28),
        .\data_out_reg[4] (Reg6_n_27),
        .\data_out_reg[5] (Reg6_n_26),
        .\data_out_reg[6] (Reg6_n_25),
        .\data_out_reg[7] (Reg6_n_24),
        .\data_out_reg[8] (Reg6_n_23),
        .\data_out_reg[9] (Reg6_n_22),
        .data_out_reg_c_0(data_out_reg_c),
        .debug_out_shift_int(debug_out_shift_int),
        .\r_reg_reg[0] (Reg5_n_32),
        .\r_reg_reg[10] (Reg5_n_22),
        .\r_reg_reg[11] (Reg5_n_21),
        .\r_reg_reg[12] (Reg5_n_20),
        .\r_reg_reg[13] (Reg5_n_19),
        .\r_reg_reg[14] (Reg5_n_18),
        .\r_reg_reg[15] (Reg5_n_17),
        .\r_reg_reg[16] (Reg5_n_16),
        .\r_reg_reg[17] (Reg5_n_15),
        .\r_reg_reg[18] (Reg5_n_14),
        .\r_reg_reg[19] (Reg5_n_13),
        .\r_reg_reg[1] (Reg5_n_31),
        .\r_reg_reg[20] (Reg5_n_12),
        .\r_reg_reg[21] (Reg5_n_11),
        .\r_reg_reg[22] (Reg5_n_10),
        .\r_reg_reg[23] (Reg5_n_9),
        .\r_reg_reg[24] (Reg5_n_8),
        .\r_reg_reg[25] (Reg5_n_7),
        .\r_reg_reg[26] (Reg5_n_6),
        .\r_reg_reg[27] (Reg5_n_5),
        .\r_reg_reg[28] (Reg5_n_4),
        .\r_reg_reg[29] (Reg5_n_3),
        .\r_reg_reg[2] (Reg5_n_30),
        .\r_reg_reg[30] (Reg5_n_2),
        .\r_reg_reg[31] (Reg5_n_1),
        .\r_reg_reg[3] (Reg5_n_29),
        .\r_reg_reg[4] (Reg5_n_28),
        .\r_reg_reg[5] (Reg5_n_27),
        .\r_reg_reg[6] (Reg5_n_26),
        .\r_reg_reg[7] (Reg5_n_25),
        .\r_reg_reg[8] (Reg5_n_24),
        .\r_reg_reg[9] (Reg5_n_23),
        .s00_axi_aresetn(\data_out_reg[0] ));
  design_1_BiDirChannels_0_0_register_32bits_22 Reg7
       (.D(D),
        .\data_out_reg[0]_0 (\data_out_reg[0] ),
        .\data_out_reg[0]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_31),
        .\data_out_reg[10]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_21),
        .\data_out_reg[11]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_20),
        .\data_out_reg[12]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_19),
        .\data_out_reg[13]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_18),
        .\data_out_reg[14]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_17),
        .\data_out_reg[15]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_16),
        .\data_out_reg[16]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_15),
        .\data_out_reg[17]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_14),
        .\data_out_reg[18]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_13),
        .\data_out_reg[19]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_12),
        .\data_out_reg[1]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_30),
        .\data_out_reg[20]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_11),
        .\data_out_reg[21]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_10),
        .\data_out_reg[22]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_9),
        .\data_out_reg[23]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_8),
        .\data_out_reg[24]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_7),
        .\data_out_reg[25]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_6),
        .\data_out_reg[26]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_5),
        .\data_out_reg[27]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_4),
        .\data_out_reg[28]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_3),
        .\data_out_reg[29]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_2),
        .\data_out_reg[2]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_29),
        .\data_out_reg[30]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_1),
        .\data_out_reg[31]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_0),
        .\data_out_reg[3]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_28),
        .\data_out_reg[4]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_27),
        .\data_out_reg[5]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_26),
        .\data_out_reg[6]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_25),
        .\data_out_reg[7]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_24),
        .\data_out_reg[8]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_23),
        .\data_out_reg[9]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c (Reg6_n_22),
        .debug_out_shift_int(debug_out_shift_int),
        .s00_axi_aresetn(s00_axi_aresetn));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module design_1_BiDirChannels_0_0_dff
   (in_start_stop_int,
    \slv_reg1_reg[4] ,
    \r_reg_reg[0] ,
    s00_axi_aresetn);
  output in_start_stop_int;
  input [0:0]\slv_reg1_reg[4] ;
  input \r_reg_reg[0] ;
  input s00_axi_aresetn;

  wire in_start_stop_int;
  wire \r_reg_reg[0] ;
  wire s00_axi_aresetn;
  wire [0:0]\slv_reg1_reg[4] ;

  FDCE Q_reg
       (.C(\r_reg_reg[0] ),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\slv_reg1_reg[4] ),
        .Q(in_start_stop_int));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module design_1_BiDirChannels_0_0_dff_10
   (s00_axis_tready,
    D0,
    s00_axi_aclk,
    s00_axi_aresetn);
  output s00_axis_tready;
  input D0;
  input s00_axi_aclk;
  input s00_axi_aresetn;

  wire D0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axis_tready;

  FDCE Q_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D0),
        .Q(s00_axis_tready));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module design_1_BiDirChannels_0_0_dff_11
   (tx_token_valid_int,
    \out_reg[6]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \out_reg[7] ,
    s00_axi_aclk,
    s00_axi_aresetn);
  output tx_token_valid_int;
  output \out_reg[6]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \out_reg[7] ;
  input s00_axi_aclk;
  input s00_axi_aresetn;

  wire \out_reg[6]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \out_reg[7] ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire tx_token_valid_int;

  FDCE Q_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\out_reg[7] ),
        .Q(tx_token_valid_int));
  LUT1 #(
    .INIT(2'h1)) 
    \out_reg[5]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4_i_1 
       (.I0(tx_token_valid_int),
        .O(\out_reg[6]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module design_1_BiDirChannels_0_0_dff_13
   (m00_axis_tvalid,
    \out_reg[5]_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c ,
    out_full,
    s00_axi_aclk,
    s00_axi_aresetn);
  output m00_axis_tvalid;
  output \out_reg[5]_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c ;
  input [0:0]out_full;
  input s00_axi_aclk;
  input s00_axi_aresetn;

  wire m00_axis_tvalid;
  wire [0:0]out_full;
  wire \out_reg[5]_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;

  FDCE Q_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(out_full),
        .Q(m00_axis_tvalid));
  LUT1 #(
    .INIT(2'h1)) 
    \out_reg[4]_srl5_inst_X0_BUFFERS_outputDelayLine_Reg4_data_out_reg_c_i_1 
       (.I0(m00_axis_tvalid),
        .O(\out_reg[5]_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c ));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module design_1_BiDirChannels_0_0_dff_5
   (\r_reg_reg[1]_C ,
    \r_reg_reg[31]_P ,
    \r_reg_reg[30]_P ,
    \r_reg_reg[29]_P ,
    \r_reg_reg[28]_P ,
    \r_reg_reg[27]_P ,
    \r_reg_reg[26]_P ,
    \r_reg_reg[25]_P ,
    \r_reg_reg[24]_P ,
    \r_reg_reg[23]_P ,
    \r_reg_reg[22]_P ,
    \r_reg_reg[21]_P ,
    \r_reg_reg[20]_P ,
    \r_reg_reg[19]_P ,
    \r_reg_reg[18]_P ,
    \r_reg_reg[17]_P ,
    \r_reg_reg[16]_P ,
    \r_reg_reg[15]_P ,
    \r_reg_reg[14]_P ,
    \r_reg_reg[13]_P ,
    \r_reg_reg[12]_P ,
    \r_reg_reg[11]_P ,
    \r_reg_reg[10]_P ,
    \r_reg_reg[9]_P ,
    \r_reg_reg[8]_P ,
    \r_reg_reg[7]_P ,
    \r_reg_reg[6]_P ,
    \r_reg_reg[5]_P ,
    \r_reg_reg[4]_P ,
    \r_reg_reg[3]_P ,
    \r_reg_reg[2]_P ,
    \r_reg_reg[1]_P ,
    \r_reg_reg[0]_P ,
    \r_reg_reg[31]_C ,
    \r_reg_reg[30]_C ,
    \r_reg_reg[29]_C ,
    \r_reg_reg[28]_C ,
    \r_reg_reg[27]_C ,
    \r_reg_reg[26]_C ,
    \r_reg_reg[25]_C ,
    \r_reg_reg[24]_C ,
    \r_reg_reg[23]_C ,
    \r_reg_reg[22]_C ,
    \r_reg_reg[21]_C ,
    \r_reg_reg[20]_C ,
    \r_reg_reg[19]_C ,
    \r_reg_reg[18]_C ,
    \r_reg_reg[17]_C ,
    \r_reg_reg[16]_C ,
    \r_reg_reg[15]_C ,
    \r_reg_reg[14]_C ,
    \r_reg_reg[13]_C ,
    \r_reg_reg[12]_C ,
    \r_reg_reg[11]_C ,
    \r_reg_reg[10]_C ,
    \r_reg_reg[9]_C ,
    \r_reg_reg[8]_C ,
    \r_reg_reg[7]_C ,
    \r_reg_reg[6]_C ,
    \r_reg_reg[5]_C ,
    \r_reg_reg[4]_C ,
    \r_reg_reg[3]_C ,
    \r_reg_reg[2]_C ,
    \r_reg_reg[1]_C_0 ,
    \r_reg_reg[1]_P_0 ,
    \slv_reg1_reg[0] ,
    \r_reg_reg[0] ,
    s00_axi_aresetn_0,
    s00_axi_aresetn,
    tx_token_valid_int,
    \data_out_reg[31] ,
    \data_out_reg[30] ,
    \data_out_reg[29] ,
    \data_out_reg[28] ,
    \data_out_reg[27] ,
    \data_out_reg[26] ,
    \data_out_reg[25] ,
    \data_out_reg[24] ,
    \data_out_reg[23] ,
    \data_out_reg[22] ,
    \data_out_reg[21] ,
    \data_out_reg[20] ,
    \data_out_reg[19] ,
    \data_out_reg[18] ,
    \data_out_reg[17] ,
    \data_out_reg[16] ,
    \data_out_reg[15] ,
    \data_out_reg[14] ,
    \data_out_reg[13] ,
    \data_out_reg[12] ,
    \data_out_reg[11] ,
    \data_out_reg[10] ,
    \data_out_reg[9] ,
    \data_out_reg[8] ,
    \data_out_reg[7] ,
    \data_out_reg[6] ,
    \data_out_reg[5] ,
    \data_out_reg[4] ,
    \data_out_reg[3] ,
    \data_out_reg[2] ,
    \data_out_reg[1] ,
    \data_out_reg[0] );
  output \r_reg_reg[1]_C ;
  output \r_reg_reg[31]_P ;
  output \r_reg_reg[30]_P ;
  output \r_reg_reg[29]_P ;
  output \r_reg_reg[28]_P ;
  output \r_reg_reg[27]_P ;
  output \r_reg_reg[26]_P ;
  output \r_reg_reg[25]_P ;
  output \r_reg_reg[24]_P ;
  output \r_reg_reg[23]_P ;
  output \r_reg_reg[22]_P ;
  output \r_reg_reg[21]_P ;
  output \r_reg_reg[20]_P ;
  output \r_reg_reg[19]_P ;
  output \r_reg_reg[18]_P ;
  output \r_reg_reg[17]_P ;
  output \r_reg_reg[16]_P ;
  output \r_reg_reg[15]_P ;
  output \r_reg_reg[14]_P ;
  output \r_reg_reg[13]_P ;
  output \r_reg_reg[12]_P ;
  output \r_reg_reg[11]_P ;
  output \r_reg_reg[10]_P ;
  output \r_reg_reg[9]_P ;
  output \r_reg_reg[8]_P ;
  output \r_reg_reg[7]_P ;
  output \r_reg_reg[6]_P ;
  output \r_reg_reg[5]_P ;
  output \r_reg_reg[4]_P ;
  output \r_reg_reg[3]_P ;
  output \r_reg_reg[2]_P ;
  output \r_reg_reg[1]_P ;
  output \r_reg_reg[0]_P ;
  output \r_reg_reg[31]_C ;
  output \r_reg_reg[30]_C ;
  output \r_reg_reg[29]_C ;
  output \r_reg_reg[28]_C ;
  output \r_reg_reg[27]_C ;
  output \r_reg_reg[26]_C ;
  output \r_reg_reg[25]_C ;
  output \r_reg_reg[24]_C ;
  output \r_reg_reg[23]_C ;
  output \r_reg_reg[22]_C ;
  output \r_reg_reg[21]_C ;
  output \r_reg_reg[20]_C ;
  output \r_reg_reg[19]_C ;
  output \r_reg_reg[18]_C ;
  output \r_reg_reg[17]_C ;
  output \r_reg_reg[16]_C ;
  output \r_reg_reg[15]_C ;
  output \r_reg_reg[14]_C ;
  output \r_reg_reg[13]_C ;
  output \r_reg_reg[12]_C ;
  output \r_reg_reg[11]_C ;
  output \r_reg_reg[10]_C ;
  output \r_reg_reg[9]_C ;
  output \r_reg_reg[8]_C ;
  output \r_reg_reg[7]_C ;
  output \r_reg_reg[6]_C ;
  output \r_reg_reg[5]_C ;
  output \r_reg_reg[4]_C ;
  output \r_reg_reg[3]_C ;
  output \r_reg_reg[2]_C ;
  output \r_reg_reg[1]_C_0 ;
  output \r_reg_reg[1]_P_0 ;
  input [0:0]\slv_reg1_reg[0] ;
  input \r_reg_reg[0] ;
  input s00_axi_aresetn_0;
  input s00_axi_aresetn;
  input tx_token_valid_int;
  input \data_out_reg[31] ;
  input \data_out_reg[30] ;
  input \data_out_reg[29] ;
  input \data_out_reg[28] ;
  input \data_out_reg[27] ;
  input \data_out_reg[26] ;
  input \data_out_reg[25] ;
  input \data_out_reg[24] ;
  input \data_out_reg[23] ;
  input \data_out_reg[22] ;
  input \data_out_reg[21] ;
  input \data_out_reg[20] ;
  input \data_out_reg[19] ;
  input \data_out_reg[18] ;
  input \data_out_reg[17] ;
  input \data_out_reg[16] ;
  input \data_out_reg[15] ;
  input \data_out_reg[14] ;
  input \data_out_reg[13] ;
  input \data_out_reg[12] ;
  input \data_out_reg[11] ;
  input \data_out_reg[10] ;
  input \data_out_reg[9] ;
  input \data_out_reg[8] ;
  input \data_out_reg[7] ;
  input \data_out_reg[6] ;
  input \data_out_reg[5] ;
  input \data_out_reg[4] ;
  input \data_out_reg[3] ;
  input \data_out_reg[2] ;
  input \data_out_reg[1] ;
  input \data_out_reg[0] ;

  wire \data_out_reg[0] ;
  wire \data_out_reg[10] ;
  wire \data_out_reg[11] ;
  wire \data_out_reg[12] ;
  wire \data_out_reg[13] ;
  wire \data_out_reg[14] ;
  wire \data_out_reg[15] ;
  wire \data_out_reg[16] ;
  wire \data_out_reg[17] ;
  wire \data_out_reg[18] ;
  wire \data_out_reg[19] ;
  wire \data_out_reg[1] ;
  wire \data_out_reg[20] ;
  wire \data_out_reg[21] ;
  wire \data_out_reg[22] ;
  wire \data_out_reg[23] ;
  wire \data_out_reg[24] ;
  wire \data_out_reg[25] ;
  wire \data_out_reg[26] ;
  wire \data_out_reg[27] ;
  wire \data_out_reg[28] ;
  wire \data_out_reg[29] ;
  wire \data_out_reg[2] ;
  wire \data_out_reg[30] ;
  wire \data_out_reg[31] ;
  wire \data_out_reg[3] ;
  wire \data_out_reg[4] ;
  wire \data_out_reg[5] ;
  wire \data_out_reg[6] ;
  wire \data_out_reg[7] ;
  wire \data_out_reg[8] ;
  wire \data_out_reg[9] ;
  wire \r_reg_reg[0] ;
  wire \r_reg_reg[0]_P ;
  wire \r_reg_reg[10]_C ;
  wire \r_reg_reg[10]_P ;
  wire \r_reg_reg[11]_C ;
  wire \r_reg_reg[11]_P ;
  wire \r_reg_reg[12]_C ;
  wire \r_reg_reg[12]_P ;
  wire \r_reg_reg[13]_C ;
  wire \r_reg_reg[13]_P ;
  wire \r_reg_reg[14]_C ;
  wire \r_reg_reg[14]_P ;
  wire \r_reg_reg[15]_C ;
  wire \r_reg_reg[15]_P ;
  wire \r_reg_reg[16]_C ;
  wire \r_reg_reg[16]_P ;
  wire \r_reg_reg[17]_C ;
  wire \r_reg_reg[17]_P ;
  wire \r_reg_reg[18]_C ;
  wire \r_reg_reg[18]_P ;
  wire \r_reg_reg[19]_C ;
  wire \r_reg_reg[19]_P ;
  wire \r_reg_reg[1]_C ;
  wire \r_reg_reg[1]_C_0 ;
  wire \r_reg_reg[1]_P ;
  wire \r_reg_reg[1]_P_0 ;
  wire \r_reg_reg[20]_C ;
  wire \r_reg_reg[20]_P ;
  wire \r_reg_reg[21]_C ;
  wire \r_reg_reg[21]_P ;
  wire \r_reg_reg[22]_C ;
  wire \r_reg_reg[22]_P ;
  wire \r_reg_reg[23]_C ;
  wire \r_reg_reg[23]_P ;
  wire \r_reg_reg[24]_C ;
  wire \r_reg_reg[24]_P ;
  wire \r_reg_reg[25]_C ;
  wire \r_reg_reg[25]_P ;
  wire \r_reg_reg[26]_C ;
  wire \r_reg_reg[26]_P ;
  wire \r_reg_reg[27]_C ;
  wire \r_reg_reg[27]_P ;
  wire \r_reg_reg[28]_C ;
  wire \r_reg_reg[28]_P ;
  wire \r_reg_reg[29]_C ;
  wire \r_reg_reg[29]_P ;
  wire \r_reg_reg[2]_C ;
  wire \r_reg_reg[2]_P ;
  wire \r_reg_reg[30]_C ;
  wire \r_reg_reg[30]_P ;
  wire \r_reg_reg[31]_C ;
  wire \r_reg_reg[31]_P ;
  wire \r_reg_reg[3]_C ;
  wire \r_reg_reg[3]_P ;
  wire \r_reg_reg[4]_C ;
  wire \r_reg_reg[4]_P ;
  wire \r_reg_reg[5]_C ;
  wire \r_reg_reg[5]_P ;
  wire \r_reg_reg[6]_C ;
  wire \r_reg_reg[6]_P ;
  wire \r_reg_reg[7]_C ;
  wire \r_reg_reg[7]_P ;
  wire \r_reg_reg[8]_C ;
  wire \r_reg_reg[8]_P ;
  wire \r_reg_reg[9]_C ;
  wire \r_reg_reg[9]_P ;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire [0:0]\slv_reg1_reg[0] ;
  wire tx_token_valid_int;

  FDCE Q_reg
       (.C(\r_reg_reg[0] ),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\slv_reg1_reg[0] ),
        .Q(\r_reg_reg[1]_C ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[0]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[0] ),
        .O(\r_reg_reg[0]_P ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[0]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[0] ),
        .O(\r_reg_reg[1]_P_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[10]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[10] ),
        .O(\r_reg_reg[10]_P ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[10]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[10] ),
        .O(\r_reg_reg[10]_C ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[11]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[11] ),
        .O(\r_reg_reg[11]_P ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[11]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[11] ),
        .O(\r_reg_reg[11]_C ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[12]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[12] ),
        .O(\r_reg_reg[12]_P ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[12]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[12] ),
        .O(\r_reg_reg[12]_C ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[13]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[13] ),
        .O(\r_reg_reg[13]_P ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[13]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[13] ),
        .O(\r_reg_reg[13]_C ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[14]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[14] ),
        .O(\r_reg_reg[14]_P ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[14]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[14] ),
        .O(\r_reg_reg[14]_C ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[15]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[15] ),
        .O(\r_reg_reg[15]_P ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[15]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[15] ),
        .O(\r_reg_reg[15]_C ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[16]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[16] ),
        .O(\r_reg_reg[16]_P ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[16]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[16] ),
        .O(\r_reg_reg[16]_C ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[17]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[17] ),
        .O(\r_reg_reg[17]_P ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[17]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[17] ),
        .O(\r_reg_reg[17]_C ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[18]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[18] ),
        .O(\r_reg_reg[18]_P ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[18]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[18] ),
        .O(\r_reg_reg[18]_C ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[19]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[19] ),
        .O(\r_reg_reg[19]_P ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[19]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[19] ),
        .O(\r_reg_reg[19]_C ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[1]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[1] ),
        .O(\r_reg_reg[1]_P ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[1]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[1] ),
        .O(\r_reg_reg[1]_C_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[20]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[20] ),
        .O(\r_reg_reg[20]_P ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[20]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[20] ),
        .O(\r_reg_reg[20]_C ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[21]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[21] ),
        .O(\r_reg_reg[21]_P ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[21]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[21] ),
        .O(\r_reg_reg[21]_C ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[22]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[22] ),
        .O(\r_reg_reg[22]_P ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[22]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[22] ),
        .O(\r_reg_reg[22]_C ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[23]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[23] ),
        .O(\r_reg_reg[23]_P ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[23]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[23] ),
        .O(\r_reg_reg[23]_C ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[24]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[24] ),
        .O(\r_reg_reg[24]_P ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[24]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[24] ),
        .O(\r_reg_reg[24]_C ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[25]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[25] ),
        .O(\r_reg_reg[25]_P ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[25]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[25] ),
        .O(\r_reg_reg[25]_C ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[26]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[26] ),
        .O(\r_reg_reg[26]_P ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[26]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[26] ),
        .O(\r_reg_reg[26]_C ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[27]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[27] ),
        .O(\r_reg_reg[27]_P ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[27]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[27] ),
        .O(\r_reg_reg[27]_C ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[28]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[28] ),
        .O(\r_reg_reg[28]_P ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[28]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[28] ),
        .O(\r_reg_reg[28]_C ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[29]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[29] ),
        .O(\r_reg_reg[29]_P ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[29]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[29] ),
        .O(\r_reg_reg[29]_C ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[2]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[2] ),
        .O(\r_reg_reg[2]_P ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[2]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[2] ),
        .O(\r_reg_reg[2]_C ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[30]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[30] ),
        .O(\r_reg_reg[30]_P ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[30]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[30] ),
        .O(\r_reg_reg[30]_C ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[31]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[31] ),
        .O(\r_reg_reg[31]_P ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[31]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[31] ),
        .O(\r_reg_reg[31]_C ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[3]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[3] ),
        .O(\r_reg_reg[3]_P ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[3]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[3] ),
        .O(\r_reg_reg[3]_C ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[4]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[4] ),
        .O(\r_reg_reg[4]_P ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[4]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[4] ),
        .O(\r_reg_reg[4]_C ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[5]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[5] ),
        .O(\r_reg_reg[5]_P ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[5]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[5] ),
        .O(\r_reg_reg[5]_C ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[6]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[6] ),
        .O(\r_reg_reg[6]_P ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[6]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[6] ),
        .O(\r_reg_reg[6]_C ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[7]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[7] ),
        .O(\r_reg_reg[7]_P ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[7]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[7] ),
        .O(\r_reg_reg[7]_C ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[8]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[8] ),
        .O(\r_reg_reg[8]_P ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[8]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[8] ),
        .O(\r_reg_reg[8]_C ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg_reg[9]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[9] ),
        .O(\r_reg_reg[9]_P ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h5555D555)) 
    \r_reg_reg[9]_LDC_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\r_reg_reg[1]_C ),
        .I2(\r_reg_reg[0] ),
        .I3(tx_token_valid_int),
        .I4(\data_out_reg[9] ),
        .O(\r_reg_reg[9]_C ));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module design_1_BiDirChannels_0_0_dff_6
   (MCK,
    Q_reg_0,
    s00_axi_aclk,
    s00_axi_aresetn);
  output MCK;
  input Q_reg_0;
  input s00_axi_aclk;
  input s00_axi_aresetn;

  wire MCK;
  wire Q_reg_0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;

  FDCE Q_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q_reg_0),
        .Q(MCK));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module design_1_BiDirChannels_0_0_dff_7
   (rx_fifo_valid_delayed,
    s00_axis_tvalid,
    s00_axi_aclk,
    s00_axi_aresetn);
  output rx_fifo_valid_delayed;
  input s00_axis_tvalid;
  input s00_axi_aclk;
  input s00_axi_aresetn;

  wire rx_fifo_valid_delayed;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axis_tvalid;

  FDCE Q_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tvalid),
        .Q(rx_fifo_valid_delayed));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module design_1_BiDirChannels_0_0_dff_9
   (m00_axis_tlast,
    D0_0,
    s00_axi_aclk,
    s00_axi_aresetn);
  output m00_axis_tlast;
  input D0_0;
  input s00_axi_aclk;
  input s00_axi_aresetn;

  wire D0_0;
  wire m00_axis_tlast;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;

  FDCE Q_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D0_0),
        .Q(m00_axis_tlast));
endmodule

(* ORIG_REF_NAME = "inputShiftRegister32Bits" *) 
module design_1_BiDirChannels_0_0_inputShiftRegister32Bits
   (Q,
    Q_reg,
    s00_axi_aresetn,
    D);
  output [31:0]Q;
  input Q_reg;
  input s00_axi_aresetn;
  input [0:0]D;

  wire [0:0]D;
  wire [31:0]Q;
  wire Q_reg;
  wire s00_axi_aresetn;

  FDCE \r_reg_reg[0] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D),
        .Q(Q[0]));
  FDCE \r_reg_reg[10] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[9]),
        .Q(Q[10]));
  FDCE \r_reg_reg[11] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[10]),
        .Q(Q[11]));
  FDCE \r_reg_reg[12] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[11]),
        .Q(Q[12]));
  FDCE \r_reg_reg[13] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[12]),
        .Q(Q[13]));
  FDCE \r_reg_reg[14] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[13]),
        .Q(Q[14]));
  FDCE \r_reg_reg[15] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[14]),
        .Q(Q[15]));
  FDCE \r_reg_reg[16] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[15]),
        .Q(Q[16]));
  FDCE \r_reg_reg[17] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[16]),
        .Q(Q[17]));
  FDCE \r_reg_reg[18] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[17]),
        .Q(Q[18]));
  FDCE \r_reg_reg[19] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[18]),
        .Q(Q[19]));
  FDCE \r_reg_reg[1] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[0]),
        .Q(Q[1]));
  FDCE \r_reg_reg[20] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[19]),
        .Q(Q[20]));
  FDCE \r_reg_reg[21] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[20]),
        .Q(Q[21]));
  FDCE \r_reg_reg[22] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[21]),
        .Q(Q[22]));
  FDCE \r_reg_reg[23] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[22]),
        .Q(Q[23]));
  FDCE \r_reg_reg[24] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[23]),
        .Q(Q[24]));
  FDCE \r_reg_reg[25] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[24]),
        .Q(Q[25]));
  FDCE \r_reg_reg[26] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[25]),
        .Q(Q[26]));
  FDCE \r_reg_reg[27] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[26]),
        .Q(Q[27]));
  FDCE \r_reg_reg[28] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[27]),
        .Q(Q[28]));
  FDCE \r_reg_reg[29] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[28]),
        .Q(Q[29]));
  FDCE \r_reg_reg[2] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[1]),
        .Q(Q[2]));
  FDCE \r_reg_reg[30] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[29]),
        .Q(Q[30]));
  FDCE \r_reg_reg[31] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[30]),
        .Q(Q[31]));
  FDCE \r_reg_reg[3] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[2]),
        .Q(Q[3]));
  FDCE \r_reg_reg[4] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[3]),
        .Q(Q[4]));
  FDCE \r_reg_reg[5] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[4]),
        .Q(Q[5]));
  FDCE \r_reg_reg[6] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[5]),
        .Q(Q[6]));
  FDCE \r_reg_reg[7] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[6]),
        .Q(Q[7]));
  FDCE \r_reg_reg[8] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[7]),
        .Q(Q[8]));
  FDCE \r_reg_reg[9] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q[8]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "maskHSCK" *) 
module design_1_BiDirChannels_0_0_maskHSCK
   (in_start_stop_int,
    out_start_stop_int,
    \r_reg_reg[31]_P ,
    \r_reg_reg[30]_P ,
    \r_reg_reg[29]_P ,
    \r_reg_reg[28]_P ,
    \r_reg_reg[27]_P ,
    \r_reg_reg[26]_P ,
    \r_reg_reg[25]_P ,
    \r_reg_reg[24]_P ,
    \r_reg_reg[23]_P ,
    \r_reg_reg[22]_P ,
    \r_reg_reg[21]_P ,
    \r_reg_reg[20]_P ,
    \r_reg_reg[19]_P ,
    \r_reg_reg[18]_P ,
    \r_reg_reg[17]_P ,
    \r_reg_reg[16]_P ,
    \r_reg_reg[15]_P ,
    \r_reg_reg[14]_P ,
    \r_reg_reg[13]_P ,
    \r_reg_reg[12]_P ,
    \r_reg_reg[11]_P ,
    \r_reg_reg[10]_P ,
    \r_reg_reg[9]_P ,
    \r_reg_reg[8]_P ,
    \r_reg_reg[7]_P ,
    \r_reg_reg[6]_P ,
    \r_reg_reg[5]_P ,
    \r_reg_reg[4]_P ,
    \r_reg_reg[3]_P ,
    \r_reg_reg[2]_P ,
    \r_reg_reg[1]_P ,
    \r_reg_reg[0]_P ,
    \r_reg_reg[31]_C ,
    \r_reg_reg[30]_C ,
    \r_reg_reg[29]_C ,
    \r_reg_reg[28]_C ,
    \r_reg_reg[27]_C ,
    \r_reg_reg[26]_C ,
    \r_reg_reg[25]_C ,
    \r_reg_reg[24]_C ,
    \r_reg_reg[23]_C ,
    \r_reg_reg[22]_C ,
    \r_reg_reg[21]_C ,
    \r_reg_reg[20]_C ,
    \r_reg_reg[19]_C ,
    \r_reg_reg[18]_C ,
    \r_reg_reg[17]_C ,
    \r_reg_reg[16]_C ,
    \r_reg_reg[15]_C ,
    \r_reg_reg[14]_C ,
    \r_reg_reg[13]_C ,
    \r_reg_reg[12]_C ,
    \r_reg_reg[11]_C ,
    \r_reg_reg[10]_C ,
    \r_reg_reg[9]_C ,
    \r_reg_reg[8]_C ,
    \r_reg_reg[7]_C ,
    \r_reg_reg[6]_C ,
    \r_reg_reg[5]_C ,
    \r_reg_reg[4]_C ,
    \r_reg_reg[3]_C ,
    \r_reg_reg[2]_C ,
    \r_reg_reg[1]_C ,
    \r_reg_reg[1]_P_0 ,
    \slv_reg1_reg[4] ,
    \r_reg_reg[0] ,
    s00_axi_aresetn_0,
    s00_axi_aresetn,
    tx_token_valid_int,
    \data_out_reg[31] ,
    \data_out_reg[30] ,
    \data_out_reg[29] ,
    \data_out_reg[28] ,
    \data_out_reg[27] ,
    \data_out_reg[26] ,
    \data_out_reg[25] ,
    \data_out_reg[24] ,
    \data_out_reg[23] ,
    \data_out_reg[22] ,
    \data_out_reg[21] ,
    \data_out_reg[20] ,
    \data_out_reg[19] ,
    \data_out_reg[18] ,
    \data_out_reg[17] ,
    \data_out_reg[16] ,
    \data_out_reg[15] ,
    \data_out_reg[14] ,
    \data_out_reg[13] ,
    \data_out_reg[12] ,
    \data_out_reg[11] ,
    \data_out_reg[10] ,
    \data_out_reg[9] ,
    \data_out_reg[8] ,
    \data_out_reg[7] ,
    \data_out_reg[6] ,
    \data_out_reg[5] ,
    \data_out_reg[4] ,
    \data_out_reg[3] ,
    \data_out_reg[2] ,
    \data_out_reg[1] ,
    \data_out_reg[0] );
  output in_start_stop_int;
  output out_start_stop_int;
  output \r_reg_reg[31]_P ;
  output \r_reg_reg[30]_P ;
  output \r_reg_reg[29]_P ;
  output \r_reg_reg[28]_P ;
  output \r_reg_reg[27]_P ;
  output \r_reg_reg[26]_P ;
  output \r_reg_reg[25]_P ;
  output \r_reg_reg[24]_P ;
  output \r_reg_reg[23]_P ;
  output \r_reg_reg[22]_P ;
  output \r_reg_reg[21]_P ;
  output \r_reg_reg[20]_P ;
  output \r_reg_reg[19]_P ;
  output \r_reg_reg[18]_P ;
  output \r_reg_reg[17]_P ;
  output \r_reg_reg[16]_P ;
  output \r_reg_reg[15]_P ;
  output \r_reg_reg[14]_P ;
  output \r_reg_reg[13]_P ;
  output \r_reg_reg[12]_P ;
  output \r_reg_reg[11]_P ;
  output \r_reg_reg[10]_P ;
  output \r_reg_reg[9]_P ;
  output \r_reg_reg[8]_P ;
  output \r_reg_reg[7]_P ;
  output \r_reg_reg[6]_P ;
  output \r_reg_reg[5]_P ;
  output \r_reg_reg[4]_P ;
  output \r_reg_reg[3]_P ;
  output \r_reg_reg[2]_P ;
  output \r_reg_reg[1]_P ;
  output \r_reg_reg[0]_P ;
  output \r_reg_reg[31]_C ;
  output \r_reg_reg[30]_C ;
  output \r_reg_reg[29]_C ;
  output \r_reg_reg[28]_C ;
  output \r_reg_reg[27]_C ;
  output \r_reg_reg[26]_C ;
  output \r_reg_reg[25]_C ;
  output \r_reg_reg[24]_C ;
  output \r_reg_reg[23]_C ;
  output \r_reg_reg[22]_C ;
  output \r_reg_reg[21]_C ;
  output \r_reg_reg[20]_C ;
  output \r_reg_reg[19]_C ;
  output \r_reg_reg[18]_C ;
  output \r_reg_reg[17]_C ;
  output \r_reg_reg[16]_C ;
  output \r_reg_reg[15]_C ;
  output \r_reg_reg[14]_C ;
  output \r_reg_reg[13]_C ;
  output \r_reg_reg[12]_C ;
  output \r_reg_reg[11]_C ;
  output \r_reg_reg[10]_C ;
  output \r_reg_reg[9]_C ;
  output \r_reg_reg[8]_C ;
  output \r_reg_reg[7]_C ;
  output \r_reg_reg[6]_C ;
  output \r_reg_reg[5]_C ;
  output \r_reg_reg[4]_C ;
  output \r_reg_reg[3]_C ;
  output \r_reg_reg[2]_C ;
  output \r_reg_reg[1]_C ;
  output \r_reg_reg[1]_P_0 ;
  input [1:0]\slv_reg1_reg[4] ;
  input \r_reg_reg[0] ;
  input s00_axi_aresetn_0;
  input s00_axi_aresetn;
  input tx_token_valid_int;
  input \data_out_reg[31] ;
  input \data_out_reg[30] ;
  input \data_out_reg[29] ;
  input \data_out_reg[28] ;
  input \data_out_reg[27] ;
  input \data_out_reg[26] ;
  input \data_out_reg[25] ;
  input \data_out_reg[24] ;
  input \data_out_reg[23] ;
  input \data_out_reg[22] ;
  input \data_out_reg[21] ;
  input \data_out_reg[20] ;
  input \data_out_reg[19] ;
  input \data_out_reg[18] ;
  input \data_out_reg[17] ;
  input \data_out_reg[16] ;
  input \data_out_reg[15] ;
  input \data_out_reg[14] ;
  input \data_out_reg[13] ;
  input \data_out_reg[12] ;
  input \data_out_reg[11] ;
  input \data_out_reg[10] ;
  input \data_out_reg[9] ;
  input \data_out_reg[8] ;
  input \data_out_reg[7] ;
  input \data_out_reg[6] ;
  input \data_out_reg[5] ;
  input \data_out_reg[4] ;
  input \data_out_reg[3] ;
  input \data_out_reg[2] ;
  input \data_out_reg[1] ;
  input \data_out_reg[0] ;

  wire \data_out_reg[0] ;
  wire \data_out_reg[10] ;
  wire \data_out_reg[11] ;
  wire \data_out_reg[12] ;
  wire \data_out_reg[13] ;
  wire \data_out_reg[14] ;
  wire \data_out_reg[15] ;
  wire \data_out_reg[16] ;
  wire \data_out_reg[17] ;
  wire \data_out_reg[18] ;
  wire \data_out_reg[19] ;
  wire \data_out_reg[1] ;
  wire \data_out_reg[20] ;
  wire \data_out_reg[21] ;
  wire \data_out_reg[22] ;
  wire \data_out_reg[23] ;
  wire \data_out_reg[24] ;
  wire \data_out_reg[25] ;
  wire \data_out_reg[26] ;
  wire \data_out_reg[27] ;
  wire \data_out_reg[28] ;
  wire \data_out_reg[29] ;
  wire \data_out_reg[2] ;
  wire \data_out_reg[30] ;
  wire \data_out_reg[31] ;
  wire \data_out_reg[3] ;
  wire \data_out_reg[4] ;
  wire \data_out_reg[5] ;
  wire \data_out_reg[6] ;
  wire \data_out_reg[7] ;
  wire \data_out_reg[8] ;
  wire \data_out_reg[9] ;
  wire in_start_stop_int;
  wire out_start_stop_int;
  wire \r_reg_reg[0] ;
  wire \r_reg_reg[0]_P ;
  wire \r_reg_reg[10]_C ;
  wire \r_reg_reg[10]_P ;
  wire \r_reg_reg[11]_C ;
  wire \r_reg_reg[11]_P ;
  wire \r_reg_reg[12]_C ;
  wire \r_reg_reg[12]_P ;
  wire \r_reg_reg[13]_C ;
  wire \r_reg_reg[13]_P ;
  wire \r_reg_reg[14]_C ;
  wire \r_reg_reg[14]_P ;
  wire \r_reg_reg[15]_C ;
  wire \r_reg_reg[15]_P ;
  wire \r_reg_reg[16]_C ;
  wire \r_reg_reg[16]_P ;
  wire \r_reg_reg[17]_C ;
  wire \r_reg_reg[17]_P ;
  wire \r_reg_reg[18]_C ;
  wire \r_reg_reg[18]_P ;
  wire \r_reg_reg[19]_C ;
  wire \r_reg_reg[19]_P ;
  wire \r_reg_reg[1]_C ;
  wire \r_reg_reg[1]_P ;
  wire \r_reg_reg[1]_P_0 ;
  wire \r_reg_reg[20]_C ;
  wire \r_reg_reg[20]_P ;
  wire \r_reg_reg[21]_C ;
  wire \r_reg_reg[21]_P ;
  wire \r_reg_reg[22]_C ;
  wire \r_reg_reg[22]_P ;
  wire \r_reg_reg[23]_C ;
  wire \r_reg_reg[23]_P ;
  wire \r_reg_reg[24]_C ;
  wire \r_reg_reg[24]_P ;
  wire \r_reg_reg[25]_C ;
  wire \r_reg_reg[25]_P ;
  wire \r_reg_reg[26]_C ;
  wire \r_reg_reg[26]_P ;
  wire \r_reg_reg[27]_C ;
  wire \r_reg_reg[27]_P ;
  wire \r_reg_reg[28]_C ;
  wire \r_reg_reg[28]_P ;
  wire \r_reg_reg[29]_C ;
  wire \r_reg_reg[29]_P ;
  wire \r_reg_reg[2]_C ;
  wire \r_reg_reg[2]_P ;
  wire \r_reg_reg[30]_C ;
  wire \r_reg_reg[30]_P ;
  wire \r_reg_reg[31]_C ;
  wire \r_reg_reg[31]_P ;
  wire \r_reg_reg[3]_C ;
  wire \r_reg_reg[3]_P ;
  wire \r_reg_reg[4]_C ;
  wire \r_reg_reg[4]_P ;
  wire \r_reg_reg[5]_C ;
  wire \r_reg_reg[5]_P ;
  wire \r_reg_reg[6]_C ;
  wire \r_reg_reg[6]_P ;
  wire \r_reg_reg[7]_C ;
  wire \r_reg_reg[7]_P ;
  wire \r_reg_reg[8]_C ;
  wire \r_reg_reg[8]_P ;
  wire \r_reg_reg[9]_C ;
  wire \r_reg_reg[9]_P ;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire [1:0]\slv_reg1_reg[4] ;
  wire tx_token_valid_int;

  design_1_BiDirChannels_0_0_dff ff0
       (.in_start_stop_int(in_start_stop_int),
        .\r_reg_reg[0] (\r_reg_reg[0] ),
        .s00_axi_aresetn(s00_axi_aresetn_0),
        .\slv_reg1_reg[4] (\slv_reg1_reg[4] [1]));
  design_1_BiDirChannels_0_0_dff_5 ff1
       (.\data_out_reg[0] (\data_out_reg[0] ),
        .\data_out_reg[10] (\data_out_reg[10] ),
        .\data_out_reg[11] (\data_out_reg[11] ),
        .\data_out_reg[12] (\data_out_reg[12] ),
        .\data_out_reg[13] (\data_out_reg[13] ),
        .\data_out_reg[14] (\data_out_reg[14] ),
        .\data_out_reg[15] (\data_out_reg[15] ),
        .\data_out_reg[16] (\data_out_reg[16] ),
        .\data_out_reg[17] (\data_out_reg[17] ),
        .\data_out_reg[18] (\data_out_reg[18] ),
        .\data_out_reg[19] (\data_out_reg[19] ),
        .\data_out_reg[1] (\data_out_reg[1] ),
        .\data_out_reg[20] (\data_out_reg[20] ),
        .\data_out_reg[21] (\data_out_reg[21] ),
        .\data_out_reg[22] (\data_out_reg[22] ),
        .\data_out_reg[23] (\data_out_reg[23] ),
        .\data_out_reg[24] (\data_out_reg[24] ),
        .\data_out_reg[25] (\data_out_reg[25] ),
        .\data_out_reg[26] (\data_out_reg[26] ),
        .\data_out_reg[27] (\data_out_reg[27] ),
        .\data_out_reg[28] (\data_out_reg[28] ),
        .\data_out_reg[29] (\data_out_reg[29] ),
        .\data_out_reg[2] (\data_out_reg[2] ),
        .\data_out_reg[30] (\data_out_reg[30] ),
        .\data_out_reg[31] (\data_out_reg[31] ),
        .\data_out_reg[3] (\data_out_reg[3] ),
        .\data_out_reg[4] (\data_out_reg[4] ),
        .\data_out_reg[5] (\data_out_reg[5] ),
        .\data_out_reg[6] (\data_out_reg[6] ),
        .\data_out_reg[7] (\data_out_reg[7] ),
        .\data_out_reg[8] (\data_out_reg[8] ),
        .\data_out_reg[9] (\data_out_reg[9] ),
        .\r_reg_reg[0] (\r_reg_reg[0] ),
        .\r_reg_reg[0]_P (\r_reg_reg[0]_P ),
        .\r_reg_reg[10]_C (\r_reg_reg[10]_C ),
        .\r_reg_reg[10]_P (\r_reg_reg[10]_P ),
        .\r_reg_reg[11]_C (\r_reg_reg[11]_C ),
        .\r_reg_reg[11]_P (\r_reg_reg[11]_P ),
        .\r_reg_reg[12]_C (\r_reg_reg[12]_C ),
        .\r_reg_reg[12]_P (\r_reg_reg[12]_P ),
        .\r_reg_reg[13]_C (\r_reg_reg[13]_C ),
        .\r_reg_reg[13]_P (\r_reg_reg[13]_P ),
        .\r_reg_reg[14]_C (\r_reg_reg[14]_C ),
        .\r_reg_reg[14]_P (\r_reg_reg[14]_P ),
        .\r_reg_reg[15]_C (\r_reg_reg[15]_C ),
        .\r_reg_reg[15]_P (\r_reg_reg[15]_P ),
        .\r_reg_reg[16]_C (\r_reg_reg[16]_C ),
        .\r_reg_reg[16]_P (\r_reg_reg[16]_P ),
        .\r_reg_reg[17]_C (\r_reg_reg[17]_C ),
        .\r_reg_reg[17]_P (\r_reg_reg[17]_P ),
        .\r_reg_reg[18]_C (\r_reg_reg[18]_C ),
        .\r_reg_reg[18]_P (\r_reg_reg[18]_P ),
        .\r_reg_reg[19]_C (\r_reg_reg[19]_C ),
        .\r_reg_reg[19]_P (\r_reg_reg[19]_P ),
        .\r_reg_reg[1]_C (out_start_stop_int),
        .\r_reg_reg[1]_C_0 (\r_reg_reg[1]_C ),
        .\r_reg_reg[1]_P (\r_reg_reg[1]_P ),
        .\r_reg_reg[1]_P_0 (\r_reg_reg[1]_P_0 ),
        .\r_reg_reg[20]_C (\r_reg_reg[20]_C ),
        .\r_reg_reg[20]_P (\r_reg_reg[20]_P ),
        .\r_reg_reg[21]_C (\r_reg_reg[21]_C ),
        .\r_reg_reg[21]_P (\r_reg_reg[21]_P ),
        .\r_reg_reg[22]_C (\r_reg_reg[22]_C ),
        .\r_reg_reg[22]_P (\r_reg_reg[22]_P ),
        .\r_reg_reg[23]_C (\r_reg_reg[23]_C ),
        .\r_reg_reg[23]_P (\r_reg_reg[23]_P ),
        .\r_reg_reg[24]_C (\r_reg_reg[24]_C ),
        .\r_reg_reg[24]_P (\r_reg_reg[24]_P ),
        .\r_reg_reg[25]_C (\r_reg_reg[25]_C ),
        .\r_reg_reg[25]_P (\r_reg_reg[25]_P ),
        .\r_reg_reg[26]_C (\r_reg_reg[26]_C ),
        .\r_reg_reg[26]_P (\r_reg_reg[26]_P ),
        .\r_reg_reg[27]_C (\r_reg_reg[27]_C ),
        .\r_reg_reg[27]_P (\r_reg_reg[27]_P ),
        .\r_reg_reg[28]_C (\r_reg_reg[28]_C ),
        .\r_reg_reg[28]_P (\r_reg_reg[28]_P ),
        .\r_reg_reg[29]_C (\r_reg_reg[29]_C ),
        .\r_reg_reg[29]_P (\r_reg_reg[29]_P ),
        .\r_reg_reg[2]_C (\r_reg_reg[2]_C ),
        .\r_reg_reg[2]_P (\r_reg_reg[2]_P ),
        .\r_reg_reg[30]_C (\r_reg_reg[30]_C ),
        .\r_reg_reg[30]_P (\r_reg_reg[30]_P ),
        .\r_reg_reg[31]_C (\r_reg_reg[31]_C ),
        .\r_reg_reg[31]_P (\r_reg_reg[31]_P ),
        .\r_reg_reg[3]_C (\r_reg_reg[3]_C ),
        .\r_reg_reg[3]_P (\r_reg_reg[3]_P ),
        .\r_reg_reg[4]_C (\r_reg_reg[4]_C ),
        .\r_reg_reg[4]_P (\r_reg_reg[4]_P ),
        .\r_reg_reg[5]_C (\r_reg_reg[5]_C ),
        .\r_reg_reg[5]_P (\r_reg_reg[5]_P ),
        .\r_reg_reg[6]_C (\r_reg_reg[6]_C ),
        .\r_reg_reg[6]_P (\r_reg_reg[6]_P ),
        .\r_reg_reg[7]_C (\r_reg_reg[7]_C ),
        .\r_reg_reg[7]_P (\r_reg_reg[7]_P ),
        .\r_reg_reg[8]_C (\r_reg_reg[8]_C ),
        .\r_reg_reg[8]_P (\r_reg_reg[8]_P ),
        .\r_reg_reg[9]_C (\r_reg_reg[9]_C ),
        .\r_reg_reg[9]_P (\r_reg_reg[9]_P ),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(s00_axi_aresetn_0),
        .\slv_reg1_reg[0] (\slv_reg1_reg[4] [0]),
        .tx_token_valid_int(tx_token_valid_int));
endmodule

(* ORIG_REF_NAME = "outputShiftRegister32Bits" *) 
module design_1_BiDirChannels_0_0_outputShiftRegister32Bits
   (HS_DataOut,
    D,
    masked_out_hsck_int,
    Q_reg,
    Q_reg_0,
    Q_reg_1,
    Q_reg_2,
    Q_reg_3,
    Q_reg_4,
    Q_reg_5,
    Q_reg_6,
    Q_reg_7,
    Q_reg_8,
    Q_reg_9,
    Q_reg_10,
    Q_reg_11,
    Q_reg_12,
    Q_reg_13,
    Q_reg_14,
    Q_reg_15,
    Q_reg_16,
    Q_reg_17,
    Q_reg_18,
    Q_reg_19,
    Q_reg_20,
    Q_reg_21,
    Q_reg_22,
    Q_reg_23,
    Q_reg_24,
    Q_reg_25,
    Q_reg_26,
    Q_reg_27,
    Q_reg_28,
    Q_reg_29,
    Q_reg_30,
    Q_reg_31,
    Q_reg_32,
    Q_reg_33,
    Q_reg_34,
    Q_reg_35,
    Q_reg_36,
    Q_reg_37,
    Q_reg_38,
    Q_reg_39,
    Q_reg_40,
    Q_reg_41,
    Q_reg_42,
    Q_reg_43,
    Q_reg_44,
    Q_reg_45,
    Q_reg_46,
    Q_reg_47,
    Q_reg_48,
    Q_reg_49,
    Q_reg_50,
    Q_reg_51,
    Q_reg_52,
    Q_reg_53,
    Q_reg_54,
    Q_reg_55,
    Q_reg_56,
    Q_reg_57,
    Q_reg_58,
    Q_reg_59,
    Q_reg_60,
    Q_reg_61,
    Q_reg_62,
    Q_reg_63,
    mode_int,
    HS_DataIn);
  output HS_DataOut;
  output [0:0]D;
  input masked_out_hsck_int;
  input Q_reg;
  input Q_reg_0;
  input Q_reg_1;
  input Q_reg_2;
  input Q_reg_3;
  input Q_reg_4;
  input Q_reg_5;
  input Q_reg_6;
  input Q_reg_7;
  input Q_reg_8;
  input Q_reg_9;
  input Q_reg_10;
  input Q_reg_11;
  input Q_reg_12;
  input Q_reg_13;
  input Q_reg_14;
  input Q_reg_15;
  input Q_reg_16;
  input Q_reg_17;
  input Q_reg_18;
  input Q_reg_19;
  input Q_reg_20;
  input Q_reg_21;
  input Q_reg_22;
  input Q_reg_23;
  input Q_reg_24;
  input Q_reg_25;
  input Q_reg_26;
  input Q_reg_27;
  input Q_reg_28;
  input Q_reg_29;
  input Q_reg_30;
  input Q_reg_31;
  input Q_reg_32;
  input Q_reg_33;
  input Q_reg_34;
  input Q_reg_35;
  input Q_reg_36;
  input Q_reg_37;
  input Q_reg_38;
  input Q_reg_39;
  input Q_reg_40;
  input Q_reg_41;
  input Q_reg_42;
  input Q_reg_43;
  input Q_reg_44;
  input Q_reg_45;
  input Q_reg_46;
  input Q_reg_47;
  input Q_reg_48;
  input Q_reg_49;
  input Q_reg_50;
  input Q_reg_51;
  input Q_reg_52;
  input Q_reg_53;
  input Q_reg_54;
  input Q_reg_55;
  input Q_reg_56;
  input Q_reg_57;
  input Q_reg_58;
  input Q_reg_59;
  input Q_reg_60;
  input Q_reg_61;
  input Q_reg_62;
  input Q_reg_63;
  input mode_int;
  input HS_DataIn;

  wire [0:0]D;
  wire HS_DataIn;
  wire HS_DataOut;
  wire Q_reg;
  wire Q_reg_0;
  wire Q_reg_1;
  wire Q_reg_10;
  wire Q_reg_11;
  wire Q_reg_12;
  wire Q_reg_13;
  wire Q_reg_14;
  wire Q_reg_15;
  wire Q_reg_16;
  wire Q_reg_17;
  wire Q_reg_18;
  wire Q_reg_19;
  wire Q_reg_2;
  wire Q_reg_20;
  wire Q_reg_21;
  wire Q_reg_22;
  wire Q_reg_23;
  wire Q_reg_24;
  wire Q_reg_25;
  wire Q_reg_26;
  wire Q_reg_27;
  wire Q_reg_28;
  wire Q_reg_29;
  wire Q_reg_3;
  wire Q_reg_30;
  wire Q_reg_31;
  wire Q_reg_32;
  wire Q_reg_33;
  wire Q_reg_34;
  wire Q_reg_35;
  wire Q_reg_36;
  wire Q_reg_37;
  wire Q_reg_38;
  wire Q_reg_39;
  wire Q_reg_4;
  wire Q_reg_40;
  wire Q_reg_41;
  wire Q_reg_42;
  wire Q_reg_43;
  wire Q_reg_44;
  wire Q_reg_45;
  wire Q_reg_46;
  wire Q_reg_47;
  wire Q_reg_48;
  wire Q_reg_49;
  wire Q_reg_5;
  wire Q_reg_50;
  wire Q_reg_51;
  wire Q_reg_52;
  wire Q_reg_53;
  wire Q_reg_54;
  wire Q_reg_55;
  wire Q_reg_56;
  wire Q_reg_57;
  wire Q_reg_58;
  wire Q_reg_59;
  wire Q_reg_6;
  wire Q_reg_60;
  wire Q_reg_61;
  wire Q_reg_62;
  wire Q_reg_63;
  wire Q_reg_7;
  wire Q_reg_8;
  wire Q_reg_9;
  wire masked_out_hsck_int;
  wire mode_int;
  wire \r_reg[10]_C_i_1_n_0 ;
  wire \r_reg[11]_C_i_1_n_0 ;
  wire \r_reg[12]_C_i_1_n_0 ;
  wire \r_reg[13]_C_i_1_n_0 ;
  wire \r_reg[14]_C_i_1_n_0 ;
  wire \r_reg[15]_C_i_1_n_0 ;
  wire \r_reg[16]_C_i_1_n_0 ;
  wire \r_reg[17]_C_i_1_n_0 ;
  wire \r_reg[18]_C_i_1_n_0 ;
  wire \r_reg[19]_C_i_1_n_0 ;
  wire \r_reg[1]_C_i_1_n_0 ;
  wire \r_reg[20]_C_i_1_n_0 ;
  wire \r_reg[21]_C_i_1_n_0 ;
  wire \r_reg[22]_C_i_1_n_0 ;
  wire \r_reg[23]_C_i_1_n_0 ;
  wire \r_reg[24]_C_i_1_n_0 ;
  wire \r_reg[25]_C_i_1_n_0 ;
  wire \r_reg[26]_C_i_1_n_0 ;
  wire \r_reg[27]_C_i_1_n_0 ;
  wire \r_reg[28]_C_i_1_n_0 ;
  wire \r_reg[29]_C_i_1_n_0 ;
  wire \r_reg[2]_C_i_1_n_0 ;
  wire \r_reg[30]_C_i_1_n_0 ;
  wire \r_reg[31]_C_i_1_n_0 ;
  wire \r_reg[32]_i_1_n_0 ;
  wire \r_reg[3]_C_i_1_n_0 ;
  wire \r_reg[4]_C_i_1_n_0 ;
  wire \r_reg[5]_C_i_1_n_0 ;
  wire \r_reg[6]_C_i_1_n_0 ;
  wire \r_reg[7]_C_i_1_n_0 ;
  wire \r_reg[8]_C_i_1_n_0 ;
  wire \r_reg[9]_C_i_1_n_0 ;
  wire \r_reg_reg[0]_LDC_n_0 ;
  wire \r_reg_reg[0]_P_n_0 ;
  wire \r_reg_reg[10]_C_n_0 ;
  wire \r_reg_reg[10]_LDC_n_0 ;
  wire \r_reg_reg[10]_P_n_0 ;
  wire \r_reg_reg[11]_C_n_0 ;
  wire \r_reg_reg[11]_LDC_n_0 ;
  wire \r_reg_reg[11]_P_n_0 ;
  wire \r_reg_reg[12]_C_n_0 ;
  wire \r_reg_reg[12]_LDC_n_0 ;
  wire \r_reg_reg[12]_P_n_0 ;
  wire \r_reg_reg[13]_C_n_0 ;
  wire \r_reg_reg[13]_LDC_n_0 ;
  wire \r_reg_reg[13]_P_n_0 ;
  wire \r_reg_reg[14]_C_n_0 ;
  wire \r_reg_reg[14]_LDC_n_0 ;
  wire \r_reg_reg[14]_P_n_0 ;
  wire \r_reg_reg[15]_C_n_0 ;
  wire \r_reg_reg[15]_LDC_n_0 ;
  wire \r_reg_reg[15]_P_n_0 ;
  wire \r_reg_reg[16]_C_n_0 ;
  wire \r_reg_reg[16]_LDC_n_0 ;
  wire \r_reg_reg[16]_P_n_0 ;
  wire \r_reg_reg[17]_C_n_0 ;
  wire \r_reg_reg[17]_LDC_n_0 ;
  wire \r_reg_reg[17]_P_n_0 ;
  wire \r_reg_reg[18]_C_n_0 ;
  wire \r_reg_reg[18]_LDC_n_0 ;
  wire \r_reg_reg[18]_P_n_0 ;
  wire \r_reg_reg[19]_C_n_0 ;
  wire \r_reg_reg[19]_LDC_n_0 ;
  wire \r_reg_reg[19]_P_n_0 ;
  wire \r_reg_reg[1]_C_n_0 ;
  wire \r_reg_reg[1]_LDC_n_0 ;
  wire \r_reg_reg[1]_P_n_0 ;
  wire \r_reg_reg[20]_C_n_0 ;
  wire \r_reg_reg[20]_LDC_n_0 ;
  wire \r_reg_reg[20]_P_n_0 ;
  wire \r_reg_reg[21]_C_n_0 ;
  wire \r_reg_reg[21]_LDC_n_0 ;
  wire \r_reg_reg[21]_P_n_0 ;
  wire \r_reg_reg[22]_C_n_0 ;
  wire \r_reg_reg[22]_LDC_n_0 ;
  wire \r_reg_reg[22]_P_n_0 ;
  wire \r_reg_reg[23]_C_n_0 ;
  wire \r_reg_reg[23]_LDC_n_0 ;
  wire \r_reg_reg[23]_P_n_0 ;
  wire \r_reg_reg[24]_C_n_0 ;
  wire \r_reg_reg[24]_LDC_n_0 ;
  wire \r_reg_reg[24]_P_n_0 ;
  wire \r_reg_reg[25]_C_n_0 ;
  wire \r_reg_reg[25]_LDC_n_0 ;
  wire \r_reg_reg[25]_P_n_0 ;
  wire \r_reg_reg[26]_C_n_0 ;
  wire \r_reg_reg[26]_LDC_n_0 ;
  wire \r_reg_reg[26]_P_n_0 ;
  wire \r_reg_reg[27]_C_n_0 ;
  wire \r_reg_reg[27]_LDC_n_0 ;
  wire \r_reg_reg[27]_P_n_0 ;
  wire \r_reg_reg[28]_C_n_0 ;
  wire \r_reg_reg[28]_LDC_n_0 ;
  wire \r_reg_reg[28]_P_n_0 ;
  wire \r_reg_reg[29]_C_n_0 ;
  wire \r_reg_reg[29]_LDC_n_0 ;
  wire \r_reg_reg[29]_P_n_0 ;
  wire \r_reg_reg[2]_C_n_0 ;
  wire \r_reg_reg[2]_LDC_n_0 ;
  wire \r_reg_reg[2]_P_n_0 ;
  wire \r_reg_reg[30]_C_n_0 ;
  wire \r_reg_reg[30]_LDC_n_0 ;
  wire \r_reg_reg[30]_P_n_0 ;
  wire \r_reg_reg[31]_C_n_0 ;
  wire \r_reg_reg[31]_LDC_n_0 ;
  wire \r_reg_reg[31]_P_n_0 ;
  wire \r_reg_reg[3]_C_n_0 ;
  wire \r_reg_reg[3]_LDC_n_0 ;
  wire \r_reg_reg[3]_P_n_0 ;
  wire \r_reg_reg[4]_C_n_0 ;
  wire \r_reg_reg[4]_LDC_n_0 ;
  wire \r_reg_reg[4]_P_n_0 ;
  wire \r_reg_reg[5]_C_n_0 ;
  wire \r_reg_reg[5]_LDC_n_0 ;
  wire \r_reg_reg[5]_P_n_0 ;
  wire \r_reg_reg[6]_C_n_0 ;
  wire \r_reg_reg[6]_LDC_n_0 ;
  wire \r_reg_reg[6]_P_n_0 ;
  wire \r_reg_reg[7]_C_n_0 ;
  wire \r_reg_reg[7]_LDC_n_0 ;
  wire \r_reg_reg[7]_P_n_0 ;
  wire \r_reg_reg[8]_C_n_0 ;
  wire \r_reg_reg[8]_LDC_n_0 ;
  wire \r_reg_reg[8]_P_n_0 ;
  wire \r_reg_reg[9]_C_n_0 ;
  wire \r_reg_reg[9]_LDC_n_0 ;
  wire \r_reg_reg[9]_P_n_0 ;

  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[0]_i_1__5 
       (.I0(HS_DataOut),
        .I1(mode_int),
        .I2(HS_DataIn),
        .O(D));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[10]_C_i_1 
       (.I0(\r_reg_reg[9]_P_n_0 ),
        .I1(\r_reg_reg[9]_LDC_n_0 ),
        .I2(\r_reg_reg[9]_C_n_0 ),
        .O(\r_reg[10]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[11]_C_i_1 
       (.I0(\r_reg_reg[10]_P_n_0 ),
        .I1(\r_reg_reg[10]_LDC_n_0 ),
        .I2(\r_reg_reg[10]_C_n_0 ),
        .O(\r_reg[11]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[12]_C_i_1 
       (.I0(\r_reg_reg[11]_P_n_0 ),
        .I1(\r_reg_reg[11]_LDC_n_0 ),
        .I2(\r_reg_reg[11]_C_n_0 ),
        .O(\r_reg[12]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[13]_C_i_1 
       (.I0(\r_reg_reg[12]_P_n_0 ),
        .I1(\r_reg_reg[12]_LDC_n_0 ),
        .I2(\r_reg_reg[12]_C_n_0 ),
        .O(\r_reg[13]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[14]_C_i_1 
       (.I0(\r_reg_reg[13]_P_n_0 ),
        .I1(\r_reg_reg[13]_LDC_n_0 ),
        .I2(\r_reg_reg[13]_C_n_0 ),
        .O(\r_reg[14]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[15]_C_i_1 
       (.I0(\r_reg_reg[14]_P_n_0 ),
        .I1(\r_reg_reg[14]_LDC_n_0 ),
        .I2(\r_reg_reg[14]_C_n_0 ),
        .O(\r_reg[15]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[16]_C_i_1 
       (.I0(\r_reg_reg[15]_P_n_0 ),
        .I1(\r_reg_reg[15]_LDC_n_0 ),
        .I2(\r_reg_reg[15]_C_n_0 ),
        .O(\r_reg[16]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[17]_C_i_1 
       (.I0(\r_reg_reg[16]_P_n_0 ),
        .I1(\r_reg_reg[16]_LDC_n_0 ),
        .I2(\r_reg_reg[16]_C_n_0 ),
        .O(\r_reg[17]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[18]_C_i_1 
       (.I0(\r_reg_reg[17]_P_n_0 ),
        .I1(\r_reg_reg[17]_LDC_n_0 ),
        .I2(\r_reg_reg[17]_C_n_0 ),
        .O(\r_reg[18]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[19]_C_i_1 
       (.I0(\r_reg_reg[18]_P_n_0 ),
        .I1(\r_reg_reg[18]_LDC_n_0 ),
        .I2(\r_reg_reg[18]_C_n_0 ),
        .O(\r_reg[19]_C_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \r_reg[1]_C_i_1 
       (.I0(\r_reg_reg[0]_LDC_n_0 ),
        .I1(\r_reg_reg[0]_P_n_0 ),
        .O(\r_reg[1]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[20]_C_i_1 
       (.I0(\r_reg_reg[19]_P_n_0 ),
        .I1(\r_reg_reg[19]_LDC_n_0 ),
        .I2(\r_reg_reg[19]_C_n_0 ),
        .O(\r_reg[20]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[21]_C_i_1 
       (.I0(\r_reg_reg[20]_P_n_0 ),
        .I1(\r_reg_reg[20]_LDC_n_0 ),
        .I2(\r_reg_reg[20]_C_n_0 ),
        .O(\r_reg[21]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[22]_C_i_1 
       (.I0(\r_reg_reg[21]_P_n_0 ),
        .I1(\r_reg_reg[21]_LDC_n_0 ),
        .I2(\r_reg_reg[21]_C_n_0 ),
        .O(\r_reg[22]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[23]_C_i_1 
       (.I0(\r_reg_reg[22]_P_n_0 ),
        .I1(\r_reg_reg[22]_LDC_n_0 ),
        .I2(\r_reg_reg[22]_C_n_0 ),
        .O(\r_reg[23]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[24]_C_i_1 
       (.I0(\r_reg_reg[23]_P_n_0 ),
        .I1(\r_reg_reg[23]_LDC_n_0 ),
        .I2(\r_reg_reg[23]_C_n_0 ),
        .O(\r_reg[24]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[25]_C_i_1 
       (.I0(\r_reg_reg[24]_P_n_0 ),
        .I1(\r_reg_reg[24]_LDC_n_0 ),
        .I2(\r_reg_reg[24]_C_n_0 ),
        .O(\r_reg[25]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[26]_C_i_1 
       (.I0(\r_reg_reg[25]_P_n_0 ),
        .I1(\r_reg_reg[25]_LDC_n_0 ),
        .I2(\r_reg_reg[25]_C_n_0 ),
        .O(\r_reg[26]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[27]_C_i_1 
       (.I0(\r_reg_reg[26]_P_n_0 ),
        .I1(\r_reg_reg[26]_LDC_n_0 ),
        .I2(\r_reg_reg[26]_C_n_0 ),
        .O(\r_reg[27]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[28]_C_i_1 
       (.I0(\r_reg_reg[27]_P_n_0 ),
        .I1(\r_reg_reg[27]_LDC_n_0 ),
        .I2(\r_reg_reg[27]_C_n_0 ),
        .O(\r_reg[28]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[29]_C_i_1 
       (.I0(\r_reg_reg[28]_P_n_0 ),
        .I1(\r_reg_reg[28]_LDC_n_0 ),
        .I2(\r_reg_reg[28]_C_n_0 ),
        .O(\r_reg[29]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[2]_C_i_1 
       (.I0(\r_reg_reg[1]_P_n_0 ),
        .I1(\r_reg_reg[1]_LDC_n_0 ),
        .I2(\r_reg_reg[1]_C_n_0 ),
        .O(\r_reg[2]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[30]_C_i_1 
       (.I0(\r_reg_reg[29]_P_n_0 ),
        .I1(\r_reg_reg[29]_LDC_n_0 ),
        .I2(\r_reg_reg[29]_C_n_0 ),
        .O(\r_reg[30]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[31]_C_i_1 
       (.I0(\r_reg_reg[30]_P_n_0 ),
        .I1(\r_reg_reg[30]_LDC_n_0 ),
        .I2(\r_reg_reg[30]_C_n_0 ),
        .O(\r_reg[31]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[32]_i_1 
       (.I0(\r_reg_reg[31]_P_n_0 ),
        .I1(\r_reg_reg[31]_LDC_n_0 ),
        .I2(\r_reg_reg[31]_C_n_0 ),
        .O(\r_reg[32]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[3]_C_i_1 
       (.I0(\r_reg_reg[2]_P_n_0 ),
        .I1(\r_reg_reg[2]_LDC_n_0 ),
        .I2(\r_reg_reg[2]_C_n_0 ),
        .O(\r_reg[3]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[4]_C_i_1 
       (.I0(\r_reg_reg[3]_P_n_0 ),
        .I1(\r_reg_reg[3]_LDC_n_0 ),
        .I2(\r_reg_reg[3]_C_n_0 ),
        .O(\r_reg[4]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[5]_C_i_1 
       (.I0(\r_reg_reg[4]_P_n_0 ),
        .I1(\r_reg_reg[4]_LDC_n_0 ),
        .I2(\r_reg_reg[4]_C_n_0 ),
        .O(\r_reg[5]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[6]_C_i_1 
       (.I0(\r_reg_reg[5]_P_n_0 ),
        .I1(\r_reg_reg[5]_LDC_n_0 ),
        .I2(\r_reg_reg[5]_C_n_0 ),
        .O(\r_reg[6]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[7]_C_i_1 
       (.I0(\r_reg_reg[6]_P_n_0 ),
        .I1(\r_reg_reg[6]_LDC_n_0 ),
        .I2(\r_reg_reg[6]_C_n_0 ),
        .O(\r_reg[7]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[8]_C_i_1 
       (.I0(\r_reg_reg[7]_P_n_0 ),
        .I1(\r_reg_reg[7]_LDC_n_0 ),
        .I2(\r_reg_reg[7]_C_n_0 ),
        .O(\r_reg[8]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[9]_C_i_1 
       (.I0(\r_reg_reg[8]_P_n_0 ),
        .I1(\r_reg_reg[8]_LDC_n_0 ),
        .I2(\r_reg_reg[8]_C_n_0 ),
        .O(\r_reg[9]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[0]_LDC 
       (.CLR(Q_reg_63),
        .D(1'b1),
        .G(Q_reg_62),
        .GE(1'b1),
        .Q(\r_reg_reg[0]_LDC_n_0 ));
  FDPE \r_reg_reg[0]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(1'b0),
        .PRE(Q_reg_62),
        .Q(\r_reg_reg[0]_P_n_0 ));
  FDCE \r_reg_reg[10]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_43),
        .D(\r_reg[10]_C_i_1_n_0 ),
        .Q(\r_reg_reg[10]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[10]_LDC 
       (.CLR(Q_reg_43),
        .D(1'b1),
        .G(Q_reg_42),
        .GE(1'b1),
        .Q(\r_reg_reg[10]_LDC_n_0 ));
  FDPE \r_reg_reg[10]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[10]_C_i_1_n_0 ),
        .PRE(Q_reg_42),
        .Q(\r_reg_reg[10]_P_n_0 ));
  FDCE \r_reg_reg[11]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_41),
        .D(\r_reg[11]_C_i_1_n_0 ),
        .Q(\r_reg_reg[11]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[11]_LDC 
       (.CLR(Q_reg_41),
        .D(1'b1),
        .G(Q_reg_40),
        .GE(1'b1),
        .Q(\r_reg_reg[11]_LDC_n_0 ));
  FDPE \r_reg_reg[11]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[11]_C_i_1_n_0 ),
        .PRE(Q_reg_40),
        .Q(\r_reg_reg[11]_P_n_0 ));
  FDCE \r_reg_reg[12]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_39),
        .D(\r_reg[12]_C_i_1_n_0 ),
        .Q(\r_reg_reg[12]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[12]_LDC 
       (.CLR(Q_reg_39),
        .D(1'b1),
        .G(Q_reg_38),
        .GE(1'b1),
        .Q(\r_reg_reg[12]_LDC_n_0 ));
  FDPE \r_reg_reg[12]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[12]_C_i_1_n_0 ),
        .PRE(Q_reg_38),
        .Q(\r_reg_reg[12]_P_n_0 ));
  FDCE \r_reg_reg[13]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_37),
        .D(\r_reg[13]_C_i_1_n_0 ),
        .Q(\r_reg_reg[13]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[13]_LDC 
       (.CLR(Q_reg_37),
        .D(1'b1),
        .G(Q_reg_36),
        .GE(1'b1),
        .Q(\r_reg_reg[13]_LDC_n_0 ));
  FDPE \r_reg_reg[13]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[13]_C_i_1_n_0 ),
        .PRE(Q_reg_36),
        .Q(\r_reg_reg[13]_P_n_0 ));
  FDCE \r_reg_reg[14]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_35),
        .D(\r_reg[14]_C_i_1_n_0 ),
        .Q(\r_reg_reg[14]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[14]_LDC 
       (.CLR(Q_reg_35),
        .D(1'b1),
        .G(Q_reg_34),
        .GE(1'b1),
        .Q(\r_reg_reg[14]_LDC_n_0 ));
  FDPE \r_reg_reg[14]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[14]_C_i_1_n_0 ),
        .PRE(Q_reg_34),
        .Q(\r_reg_reg[14]_P_n_0 ));
  FDCE \r_reg_reg[15]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_33),
        .D(\r_reg[15]_C_i_1_n_0 ),
        .Q(\r_reg_reg[15]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[15]_LDC 
       (.CLR(Q_reg_33),
        .D(1'b1),
        .G(Q_reg_32),
        .GE(1'b1),
        .Q(\r_reg_reg[15]_LDC_n_0 ));
  FDPE \r_reg_reg[15]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[15]_C_i_1_n_0 ),
        .PRE(Q_reg_32),
        .Q(\r_reg_reg[15]_P_n_0 ));
  FDCE \r_reg_reg[16]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_31),
        .D(\r_reg[16]_C_i_1_n_0 ),
        .Q(\r_reg_reg[16]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[16]_LDC 
       (.CLR(Q_reg_31),
        .D(1'b1),
        .G(Q_reg_30),
        .GE(1'b1),
        .Q(\r_reg_reg[16]_LDC_n_0 ));
  FDPE \r_reg_reg[16]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[16]_C_i_1_n_0 ),
        .PRE(Q_reg_30),
        .Q(\r_reg_reg[16]_P_n_0 ));
  FDCE \r_reg_reg[17]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_29),
        .D(\r_reg[17]_C_i_1_n_0 ),
        .Q(\r_reg_reg[17]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[17]_LDC 
       (.CLR(Q_reg_29),
        .D(1'b1),
        .G(Q_reg_28),
        .GE(1'b1),
        .Q(\r_reg_reg[17]_LDC_n_0 ));
  FDPE \r_reg_reg[17]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[17]_C_i_1_n_0 ),
        .PRE(Q_reg_28),
        .Q(\r_reg_reg[17]_P_n_0 ));
  FDCE \r_reg_reg[18]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_27),
        .D(\r_reg[18]_C_i_1_n_0 ),
        .Q(\r_reg_reg[18]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[18]_LDC 
       (.CLR(Q_reg_27),
        .D(1'b1),
        .G(Q_reg_26),
        .GE(1'b1),
        .Q(\r_reg_reg[18]_LDC_n_0 ));
  FDPE \r_reg_reg[18]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[18]_C_i_1_n_0 ),
        .PRE(Q_reg_26),
        .Q(\r_reg_reg[18]_P_n_0 ));
  FDCE \r_reg_reg[19]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_25),
        .D(\r_reg[19]_C_i_1_n_0 ),
        .Q(\r_reg_reg[19]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[19]_LDC 
       (.CLR(Q_reg_25),
        .D(1'b1),
        .G(Q_reg_24),
        .GE(1'b1),
        .Q(\r_reg_reg[19]_LDC_n_0 ));
  FDPE \r_reg_reg[19]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[19]_C_i_1_n_0 ),
        .PRE(Q_reg_24),
        .Q(\r_reg_reg[19]_P_n_0 ));
  FDCE \r_reg_reg[1]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_61),
        .D(\r_reg[1]_C_i_1_n_0 ),
        .Q(\r_reg_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[1]_LDC 
       (.CLR(Q_reg_61),
        .D(1'b1),
        .G(Q_reg_60),
        .GE(1'b1),
        .Q(\r_reg_reg[1]_LDC_n_0 ));
  FDPE \r_reg_reg[1]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[1]_C_i_1_n_0 ),
        .PRE(Q_reg_60),
        .Q(\r_reg_reg[1]_P_n_0 ));
  FDCE \r_reg_reg[20]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_23),
        .D(\r_reg[20]_C_i_1_n_0 ),
        .Q(\r_reg_reg[20]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[20]_LDC 
       (.CLR(Q_reg_23),
        .D(1'b1),
        .G(Q_reg_22),
        .GE(1'b1),
        .Q(\r_reg_reg[20]_LDC_n_0 ));
  FDPE \r_reg_reg[20]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[20]_C_i_1_n_0 ),
        .PRE(Q_reg_22),
        .Q(\r_reg_reg[20]_P_n_0 ));
  FDCE \r_reg_reg[21]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_21),
        .D(\r_reg[21]_C_i_1_n_0 ),
        .Q(\r_reg_reg[21]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[21]_LDC 
       (.CLR(Q_reg_21),
        .D(1'b1),
        .G(Q_reg_20),
        .GE(1'b1),
        .Q(\r_reg_reg[21]_LDC_n_0 ));
  FDPE \r_reg_reg[21]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[21]_C_i_1_n_0 ),
        .PRE(Q_reg_20),
        .Q(\r_reg_reg[21]_P_n_0 ));
  FDCE \r_reg_reg[22]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_19),
        .D(\r_reg[22]_C_i_1_n_0 ),
        .Q(\r_reg_reg[22]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[22]_LDC 
       (.CLR(Q_reg_19),
        .D(1'b1),
        .G(Q_reg_18),
        .GE(1'b1),
        .Q(\r_reg_reg[22]_LDC_n_0 ));
  FDPE \r_reg_reg[22]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[22]_C_i_1_n_0 ),
        .PRE(Q_reg_18),
        .Q(\r_reg_reg[22]_P_n_0 ));
  FDCE \r_reg_reg[23]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_17),
        .D(\r_reg[23]_C_i_1_n_0 ),
        .Q(\r_reg_reg[23]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[23]_LDC 
       (.CLR(Q_reg_17),
        .D(1'b1),
        .G(Q_reg_16),
        .GE(1'b1),
        .Q(\r_reg_reg[23]_LDC_n_0 ));
  FDPE \r_reg_reg[23]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[23]_C_i_1_n_0 ),
        .PRE(Q_reg_16),
        .Q(\r_reg_reg[23]_P_n_0 ));
  FDCE \r_reg_reg[24]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_15),
        .D(\r_reg[24]_C_i_1_n_0 ),
        .Q(\r_reg_reg[24]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[24]_LDC 
       (.CLR(Q_reg_15),
        .D(1'b1),
        .G(Q_reg_14),
        .GE(1'b1),
        .Q(\r_reg_reg[24]_LDC_n_0 ));
  FDPE \r_reg_reg[24]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[24]_C_i_1_n_0 ),
        .PRE(Q_reg_14),
        .Q(\r_reg_reg[24]_P_n_0 ));
  FDCE \r_reg_reg[25]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_13),
        .D(\r_reg[25]_C_i_1_n_0 ),
        .Q(\r_reg_reg[25]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[25]_LDC 
       (.CLR(Q_reg_13),
        .D(1'b1),
        .G(Q_reg_12),
        .GE(1'b1),
        .Q(\r_reg_reg[25]_LDC_n_0 ));
  FDPE \r_reg_reg[25]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[25]_C_i_1_n_0 ),
        .PRE(Q_reg_12),
        .Q(\r_reg_reg[25]_P_n_0 ));
  FDCE \r_reg_reg[26]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_11),
        .D(\r_reg[26]_C_i_1_n_0 ),
        .Q(\r_reg_reg[26]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[26]_LDC 
       (.CLR(Q_reg_11),
        .D(1'b1),
        .G(Q_reg_10),
        .GE(1'b1),
        .Q(\r_reg_reg[26]_LDC_n_0 ));
  FDPE \r_reg_reg[26]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[26]_C_i_1_n_0 ),
        .PRE(Q_reg_10),
        .Q(\r_reg_reg[26]_P_n_0 ));
  FDCE \r_reg_reg[27]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_9),
        .D(\r_reg[27]_C_i_1_n_0 ),
        .Q(\r_reg_reg[27]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[27]_LDC 
       (.CLR(Q_reg_9),
        .D(1'b1),
        .G(Q_reg_8),
        .GE(1'b1),
        .Q(\r_reg_reg[27]_LDC_n_0 ));
  FDPE \r_reg_reg[27]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[27]_C_i_1_n_0 ),
        .PRE(Q_reg_8),
        .Q(\r_reg_reg[27]_P_n_0 ));
  FDCE \r_reg_reg[28]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_7),
        .D(\r_reg[28]_C_i_1_n_0 ),
        .Q(\r_reg_reg[28]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[28]_LDC 
       (.CLR(Q_reg_7),
        .D(1'b1),
        .G(Q_reg_6),
        .GE(1'b1),
        .Q(\r_reg_reg[28]_LDC_n_0 ));
  FDPE \r_reg_reg[28]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[28]_C_i_1_n_0 ),
        .PRE(Q_reg_6),
        .Q(\r_reg_reg[28]_P_n_0 ));
  FDCE \r_reg_reg[29]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_5),
        .D(\r_reg[29]_C_i_1_n_0 ),
        .Q(\r_reg_reg[29]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[29]_LDC 
       (.CLR(Q_reg_5),
        .D(1'b1),
        .G(Q_reg_4),
        .GE(1'b1),
        .Q(\r_reg_reg[29]_LDC_n_0 ));
  FDPE \r_reg_reg[29]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[29]_C_i_1_n_0 ),
        .PRE(Q_reg_4),
        .Q(\r_reg_reg[29]_P_n_0 ));
  FDCE \r_reg_reg[2]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_59),
        .D(\r_reg[2]_C_i_1_n_0 ),
        .Q(\r_reg_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[2]_LDC 
       (.CLR(Q_reg_59),
        .D(1'b1),
        .G(Q_reg_58),
        .GE(1'b1),
        .Q(\r_reg_reg[2]_LDC_n_0 ));
  FDPE \r_reg_reg[2]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[2]_C_i_1_n_0 ),
        .PRE(Q_reg_58),
        .Q(\r_reg_reg[2]_P_n_0 ));
  FDCE \r_reg_reg[30]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_3),
        .D(\r_reg[30]_C_i_1_n_0 ),
        .Q(\r_reg_reg[30]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[30]_LDC 
       (.CLR(Q_reg_3),
        .D(1'b1),
        .G(Q_reg_2),
        .GE(1'b1),
        .Q(\r_reg_reg[30]_LDC_n_0 ));
  FDPE \r_reg_reg[30]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[30]_C_i_1_n_0 ),
        .PRE(Q_reg_2),
        .Q(\r_reg_reg[30]_P_n_0 ));
  FDCE \r_reg_reg[31]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_1),
        .D(\r_reg[31]_C_i_1_n_0 ),
        .Q(\r_reg_reg[31]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[31]_LDC 
       (.CLR(Q_reg_1),
        .D(1'b1),
        .G(Q_reg_0),
        .GE(1'b1),
        .Q(\r_reg_reg[31]_LDC_n_0 ));
  FDPE \r_reg_reg[31]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[31]_C_i_1_n_0 ),
        .PRE(Q_reg_0),
        .Q(\r_reg_reg[31]_P_n_0 ));
  FDCE \r_reg_reg[32] 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(\r_reg[32]_i_1_n_0 ),
        .Q(HS_DataOut));
  FDCE \r_reg_reg[3]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_57),
        .D(\r_reg[3]_C_i_1_n_0 ),
        .Q(\r_reg_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[3]_LDC 
       (.CLR(Q_reg_57),
        .D(1'b1),
        .G(Q_reg_56),
        .GE(1'b1),
        .Q(\r_reg_reg[3]_LDC_n_0 ));
  FDPE \r_reg_reg[3]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[3]_C_i_1_n_0 ),
        .PRE(Q_reg_56),
        .Q(\r_reg_reg[3]_P_n_0 ));
  FDCE \r_reg_reg[4]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_55),
        .D(\r_reg[4]_C_i_1_n_0 ),
        .Q(\r_reg_reg[4]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[4]_LDC 
       (.CLR(Q_reg_55),
        .D(1'b1),
        .G(Q_reg_54),
        .GE(1'b1),
        .Q(\r_reg_reg[4]_LDC_n_0 ));
  FDPE \r_reg_reg[4]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[4]_C_i_1_n_0 ),
        .PRE(Q_reg_54),
        .Q(\r_reg_reg[4]_P_n_0 ));
  FDCE \r_reg_reg[5]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_53),
        .D(\r_reg[5]_C_i_1_n_0 ),
        .Q(\r_reg_reg[5]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[5]_LDC 
       (.CLR(Q_reg_53),
        .D(1'b1),
        .G(Q_reg_52),
        .GE(1'b1),
        .Q(\r_reg_reg[5]_LDC_n_0 ));
  FDPE \r_reg_reg[5]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[5]_C_i_1_n_0 ),
        .PRE(Q_reg_52),
        .Q(\r_reg_reg[5]_P_n_0 ));
  FDCE \r_reg_reg[6]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_51),
        .D(\r_reg[6]_C_i_1_n_0 ),
        .Q(\r_reg_reg[6]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[6]_LDC 
       (.CLR(Q_reg_51),
        .D(1'b1),
        .G(Q_reg_50),
        .GE(1'b1),
        .Q(\r_reg_reg[6]_LDC_n_0 ));
  FDPE \r_reg_reg[6]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[6]_C_i_1_n_0 ),
        .PRE(Q_reg_50),
        .Q(\r_reg_reg[6]_P_n_0 ));
  FDCE \r_reg_reg[7]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_49),
        .D(\r_reg[7]_C_i_1_n_0 ),
        .Q(\r_reg_reg[7]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[7]_LDC 
       (.CLR(Q_reg_49),
        .D(1'b1),
        .G(Q_reg_48),
        .GE(1'b1),
        .Q(\r_reg_reg[7]_LDC_n_0 ));
  FDPE \r_reg_reg[7]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[7]_C_i_1_n_0 ),
        .PRE(Q_reg_48),
        .Q(\r_reg_reg[7]_P_n_0 ));
  FDCE \r_reg_reg[8]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_47),
        .D(\r_reg[8]_C_i_1_n_0 ),
        .Q(\r_reg_reg[8]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[8]_LDC 
       (.CLR(Q_reg_47),
        .D(1'b1),
        .G(Q_reg_46),
        .GE(1'b1),
        .Q(\r_reg_reg[8]_LDC_n_0 ));
  FDPE \r_reg_reg[8]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[8]_C_i_1_n_0 ),
        .PRE(Q_reg_46),
        .Q(\r_reg_reg[8]_P_n_0 ));
  FDCE \r_reg_reg[9]_C 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .CLR(Q_reg_45),
        .D(\r_reg[9]_C_i_1_n_0 ),
        .Q(\r_reg_reg[9]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[9]_LDC 
       (.CLR(Q_reg_45),
        .D(1'b1),
        .G(Q_reg_44),
        .GE(1'b1),
        .Q(\r_reg_reg[9]_LDC_n_0 ));
  FDPE \r_reg_reg[9]_P 
       (.C(masked_out_hsck_int),
        .CE(1'b1),
        .D(\r_reg[9]_C_i_1_n_0 ),
        .PRE(Q_reg_44),
        .Q(\r_reg_reg[9]_P_n_0 ));
endmodule

(* ORIG_REF_NAME = "register_2bits" *) 
module design_1_BiDirChannels_0_0_register_2bits
   (mode_int,
    \slv_reg0_reg[24] ,
    Q_reg,
    s00_axi_aresetn);
  output mode_int;
  input [0:0]\slv_reg0_reg[24] ;
  input Q_reg;
  input s00_axi_aresetn;

  wire Q_reg;
  wire mode_int;
  wire s00_axi_aresetn;
  wire [0:0]\slv_reg0_reg[24] ;

  FDCE \data_out_reg[0] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\slv_reg0_reg[24] ),
        .Q(mode_int));
endmodule

(* ORIG_REF_NAME = "register_32bits" *) 
module design_1_BiDirChannels_0_0_register_32bits
   (Q,
    s00_axis_tdata,
    s00_axi_aclk,
    s00_axi_aresetn);
  output [31:0]Q;
  input [31:0]s00_axis_tdata;
  input s00_axi_aclk;
  input s00_axi_aresetn;

  wire [31:0]Q;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [31:0]s00_axis_tdata;

  FDCE \data_out_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[0]),
        .Q(Q[0]));
  FDCE \data_out_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[10]),
        .Q(Q[10]));
  FDCE \data_out_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[11]),
        .Q(Q[11]));
  FDCE \data_out_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[12]),
        .Q(Q[12]));
  FDCE \data_out_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[13]),
        .Q(Q[13]));
  FDCE \data_out_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[14]),
        .Q(Q[14]));
  FDCE \data_out_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[15]),
        .Q(Q[15]));
  FDCE \data_out_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[16]),
        .Q(Q[16]));
  FDCE \data_out_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[17]),
        .Q(Q[17]));
  FDCE \data_out_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[18]),
        .Q(Q[18]));
  FDCE \data_out_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[19]),
        .Q(Q[19]));
  FDCE \data_out_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[1]),
        .Q(Q[1]));
  FDCE \data_out_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[20]),
        .Q(Q[20]));
  FDCE \data_out_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[21]),
        .Q(Q[21]));
  FDCE \data_out_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[22]),
        .Q(Q[22]));
  FDCE \data_out_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[23]),
        .Q(Q[23]));
  FDCE \data_out_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[24]),
        .Q(Q[24]));
  FDCE \data_out_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[25]),
        .Q(Q[25]));
  FDCE \data_out_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[26]),
        .Q(Q[26]));
  FDCE \data_out_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[27]),
        .Q(Q[27]));
  FDCE \data_out_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[28]),
        .Q(Q[28]));
  FDCE \data_out_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[29]),
        .Q(Q[29]));
  FDCE \data_out_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[2]),
        .Q(Q[2]));
  FDCE \data_out_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[30]),
        .Q(Q[30]));
  FDCE \data_out_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[31]),
        .Q(Q[31]));
  FDCE \data_out_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[3]),
        .Q(Q[3]));
  FDCE \data_out_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[4]),
        .Q(Q[4]));
  FDCE \data_out_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[5]),
        .Q(Q[5]));
  FDCE \data_out_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[6]),
        .Q(Q[6]));
  FDCE \data_out_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[7]),
        .Q(Q[7]));
  FDCE \data_out_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[8]),
        .Q(Q[8]));
  FDCE \data_out_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(s00_axis_tdata[9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "register_32bits" *) 
module design_1_BiDirChannels_0_0_register_32bits_15
   (data_out_reg_c_0,
    debug_out_shift_int,
    s00_axi_aresetn);
  output data_out_reg_c_0;
  input debug_out_shift_int;
  input s00_axi_aresetn;

  wire data_out_reg_c_0;
  wire debug_out_shift_int;
  wire s00_axi_aresetn;

  FDCE data_out_reg_c
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(1'b1),
        .Q(data_out_reg_c_0));
endmodule

(* ORIG_REF_NAME = "register_32bits" *) 
module design_1_BiDirChannels_0_0_register_32bits_16
   (data_out_reg_c_0,
    data_out_reg_c_1,
    debug_out_shift_int,
    s00_axi_aresetn);
  output data_out_reg_c_0;
  input data_out_reg_c_1;
  input debug_out_shift_int;
  input s00_axi_aresetn;

  wire data_out_reg_c_0;
  wire data_out_reg_c_1;
  wire debug_out_shift_int;
  wire s00_axi_aresetn;

  FDCE data_out_reg_c
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(data_out_reg_c_1),
        .Q(data_out_reg_c_0));
endmodule

(* ORIG_REF_NAME = "register_32bits" *) 
module design_1_BiDirChannels_0_0_register_32bits_17
   (data_out_reg_c_0,
    data_out_reg_c_1,
    debug_out_shift_int,
    s00_axi_aresetn);
  output data_out_reg_c_0;
  input data_out_reg_c_1;
  input debug_out_shift_int;
  input s00_axi_aresetn;

  wire data_out_reg_c_0;
  wire data_out_reg_c_1;
  wire debug_out_shift_int;
  wire s00_axi_aresetn;

  FDCE data_out_reg_c
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(data_out_reg_c_1),
        .Q(data_out_reg_c_0));
endmodule

(* ORIG_REF_NAME = "register_32bits" *) 
module design_1_BiDirChannels_0_0_register_32bits_18
   (data_out_reg_c_0,
    data_out_reg_c_1,
    debug_out_shift_int,
    s00_axi_aresetn);
  output data_out_reg_c_0;
  input data_out_reg_c_1;
  input debug_out_shift_int;
  input s00_axi_aresetn;

  wire data_out_reg_c_0;
  wire data_out_reg_c_1;
  wire debug_out_shift_int;
  wire s00_axi_aresetn;

  FDCE data_out_reg_c
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(data_out_reg_c_1),
        .Q(data_out_reg_c_0));
endmodule

(* ORIG_REF_NAME = "register_32bits" *) 
module design_1_BiDirChannels_0_0_register_32bits_19
   (data_out_reg_c_0,
    data_out_reg_c_1,
    debug_out_shift_int,
    s00_axi_aresetn);
  output data_out_reg_c_0;
  input data_out_reg_c_1;
  input debug_out_shift_int;
  input s00_axi_aresetn;

  wire data_out_reg_c_0;
  wire data_out_reg_c_1;
  wire debug_out_shift_int;
  wire s00_axi_aresetn;

  FDCE data_out_reg_c
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(data_out_reg_c_1),
        .Q(data_out_reg_c_0));
endmodule

(* ORIG_REF_NAME = "register_32bits" *) 
module design_1_BiDirChannels_0_0_register_32bits_20
   (data_out_reg_c_0,
    \data_out_reg[31]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[30]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[29]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[28]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[27]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[26]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[25]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[24]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[23]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[22]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[21]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[20]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[19]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[18]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[17]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[16]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[15]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[14]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[13]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[12]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[11]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[10]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[9]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[8]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[7]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[6]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[5]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[4]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[3]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[2]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[1]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[0]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    data_out_reg_c_1,
    debug_out_shift_int,
    s00_axi_aresetn,
    Q);
  output data_out_reg_c_0;
  output \data_out_reg[31]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[30]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[29]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[28]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[27]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[26]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[25]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[24]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[23]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[22]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[21]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[20]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[19]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[18]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[17]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[16]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[15]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[14]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[13]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[12]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[11]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[10]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[9]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[8]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[7]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[6]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[5]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[4]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[3]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[2]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[1]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  output \data_out_reg[0]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input data_out_reg_c_1;
  input debug_out_shift_int;
  input s00_axi_aresetn;
  input [31:0]Q;

  wire [31:0]Q;
  wire \data_out_reg[0]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[10]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[11]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[12]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[13]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[14]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[15]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[16]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[17]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[18]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[19]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[1]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[20]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[21]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[22]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[23]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[24]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[25]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[26]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[27]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[28]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[29]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[2]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[30]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[31]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[3]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[4]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[5]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[6]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[7]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[8]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[9]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire data_out_reg_c_0;
  wire data_out_reg_c_1;
  wire debug_out_shift_int;
  wire s00_axi_aresetn;

  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[0]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[0]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[0]),
        .Q(\data_out_reg[0]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[10]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[10]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[10]),
        .Q(\data_out_reg[10]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[11]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[11]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[11]),
        .Q(\data_out_reg[11]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[12]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[12]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[12]),
        .Q(\data_out_reg[12]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[13]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[13]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[13]),
        .Q(\data_out_reg[13]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[14]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[14]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[14]),
        .Q(\data_out_reg[14]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[15]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[15]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[15]),
        .Q(\data_out_reg[15]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[16]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[16]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[16]),
        .Q(\data_out_reg[16]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[17]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[17]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[17]),
        .Q(\data_out_reg[17]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[18]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[18]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[18]),
        .Q(\data_out_reg[18]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[19]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[19]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[19]),
        .Q(\data_out_reg[19]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[1]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[1]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[1]),
        .Q(\data_out_reg[1]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[20]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[20]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[20]),
        .Q(\data_out_reg[20]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[21]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[21]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[21]),
        .Q(\data_out_reg[21]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[22]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[22]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[22]),
        .Q(\data_out_reg[22]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[23]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[23]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[23]),
        .Q(\data_out_reg[23]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[24]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[24]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[24]),
        .Q(\data_out_reg[24]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[25]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[25]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[25]),
        .Q(\data_out_reg[25]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[26]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[26]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[26]),
        .Q(\data_out_reg[26]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[27]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[27]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[27]),
        .Q(\data_out_reg[27]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[28]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[28]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[28]),
        .Q(\data_out_reg[28]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[29]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[29]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[29]),
        .Q(\data_out_reg[29]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[2]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[2]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[2]),
        .Q(\data_out_reg[2]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[30]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[30]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[30]),
        .Q(\data_out_reg[30]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[31]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[31]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[31]),
        .Q(\data_out_reg[31]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[3]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[3]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[3]),
        .Q(\data_out_reg[3]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[4]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[4]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[4]),
        .Q(\data_out_reg[4]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[5]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[5]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[5]),
        .Q(\data_out_reg[5]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[6]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[6]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[6]),
        .Q(\data_out_reg[6]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[7]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[7]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[7]),
        .Q(\data_out_reg[7]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[8]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[8]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[8]),
        .Q(\data_out_reg[8]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputDelayLine/Reg5/data_out_reg[9]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c " *) 
  SRL16E \data_out_reg[9]_srl6_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q[9]),
        .Q(\data_out_reg[9]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ));
  FDCE data_out_reg_c
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(data_out_reg_c_1),
        .Q(data_out_reg_c_0));
endmodule

(* ORIG_REF_NAME = "register_32bits" *) 
module design_1_BiDirChannels_0_0_register_32bits_21
   (\data_out_reg[31] ,
    \data_out_reg[30] ,
    \data_out_reg[29] ,
    \data_out_reg[28] ,
    \data_out_reg[27] ,
    \data_out_reg[26] ,
    \data_out_reg[25] ,
    \data_out_reg[24] ,
    \data_out_reg[23] ,
    \data_out_reg[22] ,
    \data_out_reg[21] ,
    \data_out_reg[20] ,
    \data_out_reg[19] ,
    \data_out_reg[18] ,
    \data_out_reg[17] ,
    \data_out_reg[16] ,
    \data_out_reg[15] ,
    \data_out_reg[14] ,
    \data_out_reg[13] ,
    \data_out_reg[12] ,
    \data_out_reg[11] ,
    \data_out_reg[10] ,
    \data_out_reg[9] ,
    \data_out_reg[8] ,
    \data_out_reg[7] ,
    \data_out_reg[6] ,
    \data_out_reg[5] ,
    \data_out_reg[4] ,
    \data_out_reg[3] ,
    \data_out_reg[2] ,
    \data_out_reg[1] ,
    \data_out_reg[0] ,
    data_out_reg_c_0,
    debug_out_shift_int,
    s00_axi_aresetn,
    \r_reg_reg[31] ,
    \r_reg_reg[30] ,
    \r_reg_reg[29] ,
    \r_reg_reg[28] ,
    \r_reg_reg[27] ,
    \r_reg_reg[26] ,
    \r_reg_reg[25] ,
    \r_reg_reg[24] ,
    \r_reg_reg[23] ,
    \r_reg_reg[22] ,
    \r_reg_reg[21] ,
    \r_reg_reg[20] ,
    \r_reg_reg[19] ,
    \r_reg_reg[18] ,
    \r_reg_reg[17] ,
    \r_reg_reg[16] ,
    \r_reg_reg[15] ,
    \r_reg_reg[14] ,
    \r_reg_reg[13] ,
    \r_reg_reg[12] ,
    \r_reg_reg[11] ,
    \r_reg_reg[10] ,
    \r_reg_reg[9] ,
    \r_reg_reg[8] ,
    \r_reg_reg[7] ,
    \r_reg_reg[6] ,
    \r_reg_reg[5] ,
    \r_reg_reg[4] ,
    \r_reg_reg[3] ,
    \r_reg_reg[2] ,
    \r_reg_reg[1] ,
    \r_reg_reg[0] );
  output \data_out_reg[31] ;
  output \data_out_reg[30] ;
  output \data_out_reg[29] ;
  output \data_out_reg[28] ;
  output \data_out_reg[27] ;
  output \data_out_reg[26] ;
  output \data_out_reg[25] ;
  output \data_out_reg[24] ;
  output \data_out_reg[23] ;
  output \data_out_reg[22] ;
  output \data_out_reg[21] ;
  output \data_out_reg[20] ;
  output \data_out_reg[19] ;
  output \data_out_reg[18] ;
  output \data_out_reg[17] ;
  output \data_out_reg[16] ;
  output \data_out_reg[15] ;
  output \data_out_reg[14] ;
  output \data_out_reg[13] ;
  output \data_out_reg[12] ;
  output \data_out_reg[11] ;
  output \data_out_reg[10] ;
  output \data_out_reg[9] ;
  output \data_out_reg[8] ;
  output \data_out_reg[7] ;
  output \data_out_reg[6] ;
  output \data_out_reg[5] ;
  output \data_out_reg[4] ;
  output \data_out_reg[3] ;
  output \data_out_reg[2] ;
  output \data_out_reg[1] ;
  output \data_out_reg[0] ;
  input data_out_reg_c_0;
  input debug_out_shift_int;
  input s00_axi_aresetn;
  input \r_reg_reg[31] ;
  input \r_reg_reg[30] ;
  input \r_reg_reg[29] ;
  input \r_reg_reg[28] ;
  input \r_reg_reg[27] ;
  input \r_reg_reg[26] ;
  input \r_reg_reg[25] ;
  input \r_reg_reg[24] ;
  input \r_reg_reg[23] ;
  input \r_reg_reg[22] ;
  input \r_reg_reg[21] ;
  input \r_reg_reg[20] ;
  input \r_reg_reg[19] ;
  input \r_reg_reg[18] ;
  input \r_reg_reg[17] ;
  input \r_reg_reg[16] ;
  input \r_reg_reg[15] ;
  input \r_reg_reg[14] ;
  input \r_reg_reg[13] ;
  input \r_reg_reg[12] ;
  input \r_reg_reg[11] ;
  input \r_reg_reg[10] ;
  input \r_reg_reg[9] ;
  input \r_reg_reg[8] ;
  input \r_reg_reg[7] ;
  input \r_reg_reg[6] ;
  input \r_reg_reg[5] ;
  input \r_reg_reg[4] ;
  input \r_reg_reg[3] ;
  input \r_reg_reg[2] ;
  input \r_reg_reg[1] ;
  input \r_reg_reg[0] ;

  wire \data_out_reg[0] ;
  wire \data_out_reg[0]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[10] ;
  wire \data_out_reg[10]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[11] ;
  wire \data_out_reg[11]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[12] ;
  wire \data_out_reg[12]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[13] ;
  wire \data_out_reg[13]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[14] ;
  wire \data_out_reg[14]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[15] ;
  wire \data_out_reg[15]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[16] ;
  wire \data_out_reg[16]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[17] ;
  wire \data_out_reg[17]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[18] ;
  wire \data_out_reg[18]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[19] ;
  wire \data_out_reg[19]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[1] ;
  wire \data_out_reg[1]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[20] ;
  wire \data_out_reg[20]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[21] ;
  wire \data_out_reg[21]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[22] ;
  wire \data_out_reg[22]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[23] ;
  wire \data_out_reg[23]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[24] ;
  wire \data_out_reg[24]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[25] ;
  wire \data_out_reg[25]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[26] ;
  wire \data_out_reg[26]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[27] ;
  wire \data_out_reg[27]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[28] ;
  wire \data_out_reg[28]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[29] ;
  wire \data_out_reg[29]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[2] ;
  wire \data_out_reg[2]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[30] ;
  wire \data_out_reg[30]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[31] ;
  wire \data_out_reg[31]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[3] ;
  wire \data_out_reg[3]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[4] ;
  wire \data_out_reg[4]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[5] ;
  wire \data_out_reg[5]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[6] ;
  wire \data_out_reg[6]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[7] ;
  wire \data_out_reg[7]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[8] ;
  wire \data_out_reg[8]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire \data_out_reg[9] ;
  wire \data_out_reg[9]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ;
  wire data_out_reg_c_0;
  wire data_out_reg_c_n_0;
  wire debug_out_shift_int;
  wire \r_reg_reg[0] ;
  wire \r_reg_reg[10] ;
  wire \r_reg_reg[11] ;
  wire \r_reg_reg[12] ;
  wire \r_reg_reg[13] ;
  wire \r_reg_reg[14] ;
  wire \r_reg_reg[15] ;
  wire \r_reg_reg[16] ;
  wire \r_reg_reg[17] ;
  wire \r_reg_reg[18] ;
  wire \r_reg_reg[19] ;
  wire \r_reg_reg[1] ;
  wire \r_reg_reg[20] ;
  wire \r_reg_reg[21] ;
  wire \r_reg_reg[22] ;
  wire \r_reg_reg[23] ;
  wire \r_reg_reg[24] ;
  wire \r_reg_reg[25] ;
  wire \r_reg_reg[26] ;
  wire \r_reg_reg[27] ;
  wire \r_reg_reg[28] ;
  wire \r_reg_reg[29] ;
  wire \r_reg_reg[2] ;
  wire \r_reg_reg[30] ;
  wire \r_reg_reg[31] ;
  wire \r_reg_reg[3] ;
  wire \r_reg_reg[4] ;
  wire \r_reg_reg[5] ;
  wire \r_reg_reg[6] ;
  wire \r_reg_reg[7] ;
  wire \r_reg_reg[8] ;
  wire \r_reg_reg[9] ;
  wire s00_axi_aresetn;

  FDRE \data_out_reg[0]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[0] ),
        .Q(\data_out_reg[0]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[10]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[10] ),
        .Q(\data_out_reg[10]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[11]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[11] ),
        .Q(\data_out_reg[11]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[12]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[12] ),
        .Q(\data_out_reg[12]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[13]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[13] ),
        .Q(\data_out_reg[13]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[14]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[14] ),
        .Q(\data_out_reg[14]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[15]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[15] ),
        .Q(\data_out_reg[15]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[16]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[16] ),
        .Q(\data_out_reg[16]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[17]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[17] ),
        .Q(\data_out_reg[17]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[18]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[18] ),
        .Q(\data_out_reg[18]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[19]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[19] ),
        .Q(\data_out_reg[19]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[1]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[1] ),
        .Q(\data_out_reg[1]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[20]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[20] ),
        .Q(\data_out_reg[20]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[21]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[21] ),
        .Q(\data_out_reg[21]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[22]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[22] ),
        .Q(\data_out_reg[22]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[23]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[23] ),
        .Q(\data_out_reg[23]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[24]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[24] ),
        .Q(\data_out_reg[24]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[25]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[25] ),
        .Q(\data_out_reg[25]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[26]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[26] ),
        .Q(\data_out_reg[26]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[27]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[27] ),
        .Q(\data_out_reg[27]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[28]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[28] ),
        .Q(\data_out_reg[28]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[29]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[29] ),
        .Q(\data_out_reg[29]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[2]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[2] ),
        .Q(\data_out_reg[2]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[30]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[30] ),
        .Q(\data_out_reg[30]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[31]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[31] ),
        .Q(\data_out_reg[31]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[3]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[3] ),
        .Q(\data_out_reg[3]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[4]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[4] ),
        .Q(\data_out_reg[4]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[5]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[5] ),
        .Q(\data_out_reg[5]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[6]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[6] ),
        .Q(\data_out_reg[6]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[7]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[7] ),
        .Q(\data_out_reg[7]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[8]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[8] ),
        .Q(\data_out_reg[8]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[9]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\r_reg_reg[9] ),
        .Q(\data_out_reg[9]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDCE data_out_reg_c
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(data_out_reg_c_0),
        .Q(data_out_reg_c_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate
       (.I0(\data_out_reg[31]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[31] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__0
       (.I0(\data_out_reg[30]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[30] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__1
       (.I0(\data_out_reg[29]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[29] ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__10
       (.I0(\data_out_reg[20]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[20] ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__11
       (.I0(\data_out_reg[19]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[19] ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__12
       (.I0(\data_out_reg[18]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[18] ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__13
       (.I0(\data_out_reg[17]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[17] ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__14
       (.I0(\data_out_reg[16]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[16] ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__15
       (.I0(\data_out_reg[15]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__16
       (.I0(\data_out_reg[14]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[14] ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__17
       (.I0(\data_out_reg[13]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[13] ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__18
       (.I0(\data_out_reg[12]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[12] ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__19
       (.I0(\data_out_reg[11]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[11] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__2
       (.I0(\data_out_reg[28]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[28] ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__20
       (.I0(\data_out_reg[10]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[10] ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__21
       (.I0(\data_out_reg[9]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[9] ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__22
       (.I0(\data_out_reg[8]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__23
       (.I0(\data_out_reg[7]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__24
       (.I0(\data_out_reg[6]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__25
       (.I0(\data_out_reg[5]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__26
       (.I0(\data_out_reg[4]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__27
       (.I0(\data_out_reg[3]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__28
       (.I0(\data_out_reg[2]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__29
       (.I0(\data_out_reg[1]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__3
       (.I0(\data_out_reg[27]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[27] ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__30
       (.I0(\data_out_reg[0]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__4
       (.I0(\data_out_reg[26]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[26] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__5
       (.I0(\data_out_reg[25]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[25] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__6
       (.I0(\data_out_reg[24]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[24] ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__7
       (.I0(\data_out_reg[23]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[23] ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__8
       (.I0(\data_out_reg[22]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[22] ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__9
       (.I0(\data_out_reg[21]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[21] ));
endmodule

(* ORIG_REF_NAME = "register_32bits" *) 
module design_1_BiDirChannels_0_0_register_32bits_22
   (D,
    \data_out_reg[0]_0 ,
    \data_out_reg[31]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    debug_out_shift_int,
    \data_out_reg[30]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[29]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[28]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[27]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[26]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[25]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[24]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[23]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[22]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[21]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[20]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[19]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[18]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[17]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[16]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[15]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[14]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[13]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[12]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[11]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[10]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[9]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[8]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[7]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[6]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[5]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[4]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[3]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[2]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[1]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    \data_out_reg[0]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ,
    s00_axi_aresetn);
  output [31:0]D;
  output \data_out_reg[0]_0 ;
  input \data_out_reg[31]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input debug_out_shift_int;
  input \data_out_reg[30]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[29]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[28]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[27]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[26]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[25]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[24]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[23]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[22]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[21]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[20]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[19]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[18]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[17]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[16]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[15]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[14]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[13]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[12]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[11]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[10]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[9]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[8]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[7]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[6]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[5]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[4]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[3]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[2]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[1]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input \data_out_reg[0]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  input s00_axi_aresetn;

  wire [31:0]D;
  wire \data_out_reg[0]_0 ;
  wire \data_out_reg[0]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[10]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[11]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[12]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[13]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[14]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[15]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[16]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[17]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[18]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[19]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[1]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[20]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[21]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[22]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[23]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[24]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[25]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[26]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[27]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[28]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[29]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[2]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[30]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[31]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[3]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[4]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[5]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[6]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[7]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[8]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire \data_out_reg[9]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ;
  wire debug_out_shift_int;
  wire s00_axi_aresetn;

  LUT1 #(
    .INIT(2'h1)) 
    Q_i_2
       (.I0(s00_axi_aresetn),
        .O(\data_out_reg[0]_0 ));
  FDCE \data_out_reg[0] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[0]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[0]));
  FDCE \data_out_reg[10] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[10]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[10]));
  FDCE \data_out_reg[11] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[11]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[11]));
  FDCE \data_out_reg[12] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[12]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[12]));
  FDCE \data_out_reg[13] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[13]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[13]));
  FDCE \data_out_reg[14] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[14]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[14]));
  FDCE \data_out_reg[15] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[15]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[15]));
  FDCE \data_out_reg[16] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[16]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[16]));
  FDCE \data_out_reg[17] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[17]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[17]));
  FDCE \data_out_reg[18] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[18]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[18]));
  FDCE \data_out_reg[19] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[19]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[19]));
  FDCE \data_out_reg[1] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[1]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[1]));
  FDCE \data_out_reg[20] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[20]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[20]));
  FDCE \data_out_reg[21] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[21]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[21]));
  FDCE \data_out_reg[22] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[22]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[22]));
  FDCE \data_out_reg[23] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[23]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[23]));
  FDCE \data_out_reg[24] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[24]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[24]));
  FDCE \data_out_reg[25] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[25]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[25]));
  FDCE \data_out_reg[26] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[26]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[26]));
  FDCE \data_out_reg[27] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[27]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[27]));
  FDCE \data_out_reg[28] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[28]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[28]));
  FDCE \data_out_reg[29] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[29]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[29]));
  FDCE \data_out_reg[2] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[2]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[2]));
  FDCE \data_out_reg[30] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[30]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[30]));
  FDCE \data_out_reg[31] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[31]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[31]));
  FDCE \data_out_reg[3] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[3]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[3]));
  FDCE \data_out_reg[4] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[4]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[4]));
  FDCE \data_out_reg[5] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[5]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[5]));
  FDCE \data_out_reg[6] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[6]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[6]));
  FDCE \data_out_reg[7] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[7]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[7]));
  FDCE \data_out_reg[8] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[8]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[8]));
  FDCE \data_out_reg[9] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\data_out_reg[9]_inst_X0_BUFFERS_outputDelayLine_Reg6_data_out_reg_c ),
        .Q(D[9]));
endmodule

(* ORIG_REF_NAME = "register_32bits" *) 
module design_1_BiDirChannels_0_0_register_32bits_23
   (\data_out_reg[31]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[30]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[29]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[28]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[27]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[26]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[25]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[24]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[23]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[22]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[21]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[20]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[19]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[18]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[17]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[16]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[15]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[14]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[13]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[12]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[11]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[10]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[9]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[8]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[7]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[6]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[5]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[4]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[3]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[2]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[1]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[0]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    Q,
    debug_in_shift_int);
  output \data_out_reg[31]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[30]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[29]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[28]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[27]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[26]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[25]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[24]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[23]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[22]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[21]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[20]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[19]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[18]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[17]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[16]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[15]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[14]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[13]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[12]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[11]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[10]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[9]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[8]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[7]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[6]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[5]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[4]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[3]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[2]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[1]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  output \data_out_reg[0]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input [31:0]Q;
  input debug_in_shift_int;

  wire [31:0]Q;
  wire \data_out_reg[0]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[10]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[11]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[12]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[13]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[14]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[15]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[16]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[17]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[18]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[19]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[1]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[20]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[21]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[22]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[23]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[24]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[25]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[26]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[27]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[28]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[29]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[2]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[30]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[31]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[3]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[4]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[5]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[6]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[7]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[8]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[9]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire debug_in_shift_int;

  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[0]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[0]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[0]),
        .Q(\data_out_reg[0]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[10]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[10]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[10]),
        .Q(\data_out_reg[10]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[11]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[11]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[11]),
        .Q(\data_out_reg[11]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[12]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[12]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[12]),
        .Q(\data_out_reg[12]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[13]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[13]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[13]),
        .Q(\data_out_reg[13]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[14]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[14]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[14]),
        .Q(\data_out_reg[14]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[15]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[15]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[15]),
        .Q(\data_out_reg[15]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[16]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[16]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[16]),
        .Q(\data_out_reg[16]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[17]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[17]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[17]),
        .Q(\data_out_reg[17]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[18]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[18]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[18]),
        .Q(\data_out_reg[18]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[19]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[19]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[19]),
        .Q(\data_out_reg[19]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[1]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[1]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[1]),
        .Q(\data_out_reg[1]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[20]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[20]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[20]),
        .Q(\data_out_reg[20]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[21]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[21]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[21]),
        .Q(\data_out_reg[21]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[22]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[22]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[22]),
        .Q(\data_out_reg[22]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[23]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[23]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[23]),
        .Q(\data_out_reg[23]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[24]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[24]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[24]),
        .Q(\data_out_reg[24]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[25]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[25]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[25]),
        .Q(\data_out_reg[25]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[26]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[26]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[26]),
        .Q(\data_out_reg[26]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[27]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[27]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[27]),
        .Q(\data_out_reg[27]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[28]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[28]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[28]),
        .Q(\data_out_reg[28]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[29]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[29]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[29]),
        .Q(\data_out_reg[29]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[2]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[2]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[2]),
        .Q(\data_out_reg[2]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[30]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[30]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[30]),
        .Q(\data_out_reg[30]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[31]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[31]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[31]),
        .Q(\data_out_reg[31]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[3]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[3]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[3]),
        .Q(\data_out_reg[3]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[4]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[4]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[4]),
        .Q(\data_out_reg[4]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[5]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[5]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[5]),
        .Q(\data_out_reg[5]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[6]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[6]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[6]),
        .Q(\data_out_reg[6]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[7]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[7]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[7]),
        .Q(\data_out_reg[7]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[8]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[8]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[8]),
        .Q(\data_out_reg[8]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputDelayLine/Reg5/data_out_reg[9]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \data_out_reg[9]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q[9]),
        .Q(\data_out_reg[9]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ));
endmodule

(* ORIG_REF_NAME = "register_32bits" *) 
module design_1_BiDirChannels_0_0_register_32bits_24
   (\data_out_reg[31] ,
    \data_out_reg[30] ,
    \data_out_reg[29] ,
    \data_out_reg[28] ,
    \data_out_reg[27] ,
    \data_out_reg[26] ,
    \data_out_reg[25] ,
    \data_out_reg[24] ,
    \data_out_reg[23] ,
    \data_out_reg[22] ,
    \data_out_reg[21] ,
    \data_out_reg[20] ,
    \data_out_reg[19] ,
    \data_out_reg[18] ,
    \data_out_reg[17] ,
    \data_out_reg[16] ,
    \data_out_reg[15] ,
    \data_out_reg[14] ,
    \data_out_reg[13] ,
    \data_out_reg[12] ,
    \data_out_reg[11] ,
    \data_out_reg[10] ,
    \data_out_reg[9] ,
    \data_out_reg[8] ,
    \data_out_reg[7] ,
    \data_out_reg[6] ,
    \data_out_reg[5] ,
    \data_out_reg[4] ,
    \data_out_reg[3] ,
    \data_out_reg[2] ,
    \data_out_reg[1] ,
    \data_out_reg[0] ,
    \data_out_reg[31]_0 ,
    debug_in_shift_int,
    out_reg_c_5,
    \data_out_reg[30]_0 ,
    \data_out_reg[29]_0 ,
    \data_out_reg[28]_0 ,
    \data_out_reg[27]_0 ,
    \data_out_reg[26]_0 ,
    \data_out_reg[25]_0 ,
    \data_out_reg[24]_0 ,
    \data_out_reg[23]_0 ,
    \data_out_reg[22]_0 ,
    \data_out_reg[21]_0 ,
    \data_out_reg[20]_0 ,
    \data_out_reg[19]_0 ,
    \data_out_reg[18]_0 ,
    \data_out_reg[17]_0 ,
    \data_out_reg[16]_0 ,
    \data_out_reg[15]_0 ,
    \data_out_reg[14]_0 ,
    \data_out_reg[13]_0 ,
    \data_out_reg[12]_0 ,
    \data_out_reg[11]_0 ,
    \data_out_reg[10]_0 ,
    \data_out_reg[9]_0 ,
    \data_out_reg[8]_0 ,
    \data_out_reg[7]_0 ,
    \data_out_reg[6]_0 ,
    \data_out_reg[5]_0 ,
    \data_out_reg[4]_0 ,
    \data_out_reg[3]_0 ,
    \data_out_reg[2]_0 ,
    \data_out_reg[1]_0 ,
    \data_out_reg[0]_0 );
  output \data_out_reg[31] ;
  output \data_out_reg[30] ;
  output \data_out_reg[29] ;
  output \data_out_reg[28] ;
  output \data_out_reg[27] ;
  output \data_out_reg[26] ;
  output \data_out_reg[25] ;
  output \data_out_reg[24] ;
  output \data_out_reg[23] ;
  output \data_out_reg[22] ;
  output \data_out_reg[21] ;
  output \data_out_reg[20] ;
  output \data_out_reg[19] ;
  output \data_out_reg[18] ;
  output \data_out_reg[17] ;
  output \data_out_reg[16] ;
  output \data_out_reg[15] ;
  output \data_out_reg[14] ;
  output \data_out_reg[13] ;
  output \data_out_reg[12] ;
  output \data_out_reg[11] ;
  output \data_out_reg[10] ;
  output \data_out_reg[9] ;
  output \data_out_reg[8] ;
  output \data_out_reg[7] ;
  output \data_out_reg[6] ;
  output \data_out_reg[5] ;
  output \data_out_reg[4] ;
  output \data_out_reg[3] ;
  output \data_out_reg[2] ;
  output \data_out_reg[1] ;
  output \data_out_reg[0] ;
  input \data_out_reg[31]_0 ;
  input debug_in_shift_int;
  input out_reg_c_5;
  input \data_out_reg[30]_0 ;
  input \data_out_reg[29]_0 ;
  input \data_out_reg[28]_0 ;
  input \data_out_reg[27]_0 ;
  input \data_out_reg[26]_0 ;
  input \data_out_reg[25]_0 ;
  input \data_out_reg[24]_0 ;
  input \data_out_reg[23]_0 ;
  input \data_out_reg[22]_0 ;
  input \data_out_reg[21]_0 ;
  input \data_out_reg[20]_0 ;
  input \data_out_reg[19]_0 ;
  input \data_out_reg[18]_0 ;
  input \data_out_reg[17]_0 ;
  input \data_out_reg[16]_0 ;
  input \data_out_reg[15]_0 ;
  input \data_out_reg[14]_0 ;
  input \data_out_reg[13]_0 ;
  input \data_out_reg[12]_0 ;
  input \data_out_reg[11]_0 ;
  input \data_out_reg[10]_0 ;
  input \data_out_reg[9]_0 ;
  input \data_out_reg[8]_0 ;
  input \data_out_reg[7]_0 ;
  input \data_out_reg[6]_0 ;
  input \data_out_reg[5]_0 ;
  input \data_out_reg[4]_0 ;
  input \data_out_reg[3]_0 ;
  input \data_out_reg[2]_0 ;
  input \data_out_reg[1]_0 ;
  input \data_out_reg[0]_0 ;

  wire \data_out_reg[0] ;
  wire \data_out_reg[0]_0 ;
  wire \data_out_reg[0]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[10] ;
  wire \data_out_reg[10]_0 ;
  wire \data_out_reg[10]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[11] ;
  wire \data_out_reg[11]_0 ;
  wire \data_out_reg[11]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[12] ;
  wire \data_out_reg[12]_0 ;
  wire \data_out_reg[12]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[13] ;
  wire \data_out_reg[13]_0 ;
  wire \data_out_reg[13]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[14] ;
  wire \data_out_reg[14]_0 ;
  wire \data_out_reg[14]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[15] ;
  wire \data_out_reg[15]_0 ;
  wire \data_out_reg[15]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[16] ;
  wire \data_out_reg[16]_0 ;
  wire \data_out_reg[16]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[17] ;
  wire \data_out_reg[17]_0 ;
  wire \data_out_reg[17]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[18] ;
  wire \data_out_reg[18]_0 ;
  wire \data_out_reg[18]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[19] ;
  wire \data_out_reg[19]_0 ;
  wire \data_out_reg[19]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[1] ;
  wire \data_out_reg[1]_0 ;
  wire \data_out_reg[1]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[20] ;
  wire \data_out_reg[20]_0 ;
  wire \data_out_reg[20]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[21] ;
  wire \data_out_reg[21]_0 ;
  wire \data_out_reg[21]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[22] ;
  wire \data_out_reg[22]_0 ;
  wire \data_out_reg[22]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[23] ;
  wire \data_out_reg[23]_0 ;
  wire \data_out_reg[23]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[24] ;
  wire \data_out_reg[24]_0 ;
  wire \data_out_reg[24]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[25] ;
  wire \data_out_reg[25]_0 ;
  wire \data_out_reg[25]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[26] ;
  wire \data_out_reg[26]_0 ;
  wire \data_out_reg[26]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[27] ;
  wire \data_out_reg[27]_0 ;
  wire \data_out_reg[27]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[28] ;
  wire \data_out_reg[28]_0 ;
  wire \data_out_reg[28]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[29] ;
  wire \data_out_reg[29]_0 ;
  wire \data_out_reg[29]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[2] ;
  wire \data_out_reg[2]_0 ;
  wire \data_out_reg[2]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[30] ;
  wire \data_out_reg[30]_0 ;
  wire \data_out_reg[30]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[31] ;
  wire \data_out_reg[31]_0 ;
  wire \data_out_reg[31]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[3] ;
  wire \data_out_reg[3]_0 ;
  wire \data_out_reg[3]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[4] ;
  wire \data_out_reg[4]_0 ;
  wire \data_out_reg[4]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[5] ;
  wire \data_out_reg[5]_0 ;
  wire \data_out_reg[5]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[6] ;
  wire \data_out_reg[6]_0 ;
  wire \data_out_reg[6]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[7] ;
  wire \data_out_reg[7]_0 ;
  wire \data_out_reg[7]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[8] ;
  wire \data_out_reg[8]_0 ;
  wire \data_out_reg[8]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \data_out_reg[9] ;
  wire \data_out_reg[9]_0 ;
  wire \data_out_reg[9]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire debug_in_shift_int;
  wire out_reg_c_5;

  FDRE \data_out_reg[0]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[0]_0 ),
        .Q(\data_out_reg[0]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[10]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[10]_0 ),
        .Q(\data_out_reg[10]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[11]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[11]_0 ),
        .Q(\data_out_reg[11]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[12]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[12]_0 ),
        .Q(\data_out_reg[12]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[13]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[13]_0 ),
        .Q(\data_out_reg[13]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[14]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[14]_0 ),
        .Q(\data_out_reg[14]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[15]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[15]_0 ),
        .Q(\data_out_reg[15]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[16]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[16]_0 ),
        .Q(\data_out_reg[16]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[17]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[17]_0 ),
        .Q(\data_out_reg[17]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[18]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[18]_0 ),
        .Q(\data_out_reg[18]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[19]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[19]_0 ),
        .Q(\data_out_reg[19]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[1]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[1]_0 ),
        .Q(\data_out_reg[1]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[20]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[20]_0 ),
        .Q(\data_out_reg[20]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[21]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[21]_0 ),
        .Q(\data_out_reg[21]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[22]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[22]_0 ),
        .Q(\data_out_reg[22]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[23]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[23]_0 ),
        .Q(\data_out_reg[23]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[24]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[24]_0 ),
        .Q(\data_out_reg[24]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[25]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[25]_0 ),
        .Q(\data_out_reg[25]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[26]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[26]_0 ),
        .Q(\data_out_reg[26]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[27]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[27]_0 ),
        .Q(\data_out_reg[27]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[28]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[28]_0 ),
        .Q(\data_out_reg[28]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[29]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[29]_0 ),
        .Q(\data_out_reg[29]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[2]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[2]_0 ),
        .Q(\data_out_reg[2]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[30]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[30]_0 ),
        .Q(\data_out_reg[30]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[31]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[31]_0 ),
        .Q(\data_out_reg[31]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[3]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[3]_0 ),
        .Q(\data_out_reg[3]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[4]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[4]_0 ),
        .Q(\data_out_reg[4]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[5]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[5]_0 ),
        .Q(\data_out_reg[5]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[6]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[6]_0 ),
        .Q(\data_out_reg[6]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[7]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[7]_0 ),
        .Q(\data_out_reg[7]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[8]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[8]_0 ),
        .Q(\data_out_reg[8]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[9]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\data_out_reg[9]_0 ),
        .Q(\data_out_reg[9]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate
       (.I0(\data_out_reg[31]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[31] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__0
       (.I0(\data_out_reg[30]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[30] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__1
       (.I0(\data_out_reg[29]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[29] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__10
       (.I0(\data_out_reg[20]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[20] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__11
       (.I0(\data_out_reg[19]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[19] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__12
       (.I0(\data_out_reg[18]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[18] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__13
       (.I0(\data_out_reg[17]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[17] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__14
       (.I0(\data_out_reg[16]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[16] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__15
       (.I0(\data_out_reg[15]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__16
       (.I0(\data_out_reg[14]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[14] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__17
       (.I0(\data_out_reg[13]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[13] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__18
       (.I0(\data_out_reg[12]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[12] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__19
       (.I0(\data_out_reg[11]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[11] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__2
       (.I0(\data_out_reg[28]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[28] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__20
       (.I0(\data_out_reg[10]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[10] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__21
       (.I0(\data_out_reg[9]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[9] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__22
       (.I0(\data_out_reg[8]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__23
       (.I0(\data_out_reg[7]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__24
       (.I0(\data_out_reg[6]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__25
       (.I0(\data_out_reg[5]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__26
       (.I0(\data_out_reg[4]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__27
       (.I0(\data_out_reg[3]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__28
       (.I0(\data_out_reg[2]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__29
       (.I0(\data_out_reg[1]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__3
       (.I0(\data_out_reg[27]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[27] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__30
       (.I0(\data_out_reg[0]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__4
       (.I0(\data_out_reg[26]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[26] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__5
       (.I0(\data_out_reg[25]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[25] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__6
       (.I0(\data_out_reg[24]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[24] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__7
       (.I0(\data_out_reg[23]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[23] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__8
       (.I0(\data_out_reg[22]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[22] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__9
       (.I0(\data_out_reg[21]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5),
        .O(\data_out_reg[21] ));
endmodule

(* ORIG_REF_NAME = "register_32bits" *) 
module design_1_BiDirChannels_0_0_register_32bits_25
   (\r_reg_reg[31]_P ,
    \r_reg_reg[30]_P ,
    \r_reg_reg[29]_P ,
    \r_reg_reg[28]_P ,
    \r_reg_reg[27]_P ,
    \r_reg_reg[26]_P ,
    \r_reg_reg[25]_P ,
    \r_reg_reg[24]_P ,
    \r_reg_reg[23]_P ,
    \r_reg_reg[22]_P ,
    \r_reg_reg[21]_P ,
    \r_reg_reg[20]_P ,
    \r_reg_reg[19]_P ,
    \r_reg_reg[18]_P ,
    \r_reg_reg[17]_P ,
    \r_reg_reg[16]_P ,
    \r_reg_reg[15]_P ,
    \r_reg_reg[14]_P ,
    \r_reg_reg[13]_P ,
    \r_reg_reg[12]_P ,
    \r_reg_reg[11]_P ,
    \r_reg_reg[10]_P ,
    \r_reg_reg[9]_P ,
    \r_reg_reg[8]_P ,
    \r_reg_reg[7]_P ,
    \r_reg_reg[6]_P ,
    \r_reg_reg[5]_P ,
    \r_reg_reg[4]_P ,
    \r_reg_reg[3]_P ,
    \r_reg_reg[2]_P ,
    \r_reg_reg[1]_P ,
    \r_reg_reg[0]_P ,
    \data_out_reg[31]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    debug_in_shift_int,
    s00_axi_aresetn,
    \data_out_reg[30]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[29]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[28]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[27]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[26]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[25]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[24]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[23]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[22]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[21]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[20]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[19]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[18]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[17]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[16]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[15]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[14]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[13]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[12]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[11]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[10]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[9]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[8]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[7]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[6]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[5]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[4]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[3]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[2]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[1]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ,
    \data_out_reg[0]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 );
  output \r_reg_reg[31]_P ;
  output \r_reg_reg[30]_P ;
  output \r_reg_reg[29]_P ;
  output \r_reg_reg[28]_P ;
  output \r_reg_reg[27]_P ;
  output \r_reg_reg[26]_P ;
  output \r_reg_reg[25]_P ;
  output \r_reg_reg[24]_P ;
  output \r_reg_reg[23]_P ;
  output \r_reg_reg[22]_P ;
  output \r_reg_reg[21]_P ;
  output \r_reg_reg[20]_P ;
  output \r_reg_reg[19]_P ;
  output \r_reg_reg[18]_P ;
  output \r_reg_reg[17]_P ;
  output \r_reg_reg[16]_P ;
  output \r_reg_reg[15]_P ;
  output \r_reg_reg[14]_P ;
  output \r_reg_reg[13]_P ;
  output \r_reg_reg[12]_P ;
  output \r_reg_reg[11]_P ;
  output \r_reg_reg[10]_P ;
  output \r_reg_reg[9]_P ;
  output \r_reg_reg[8]_P ;
  output \r_reg_reg[7]_P ;
  output \r_reg_reg[6]_P ;
  output \r_reg_reg[5]_P ;
  output \r_reg_reg[4]_P ;
  output \r_reg_reg[3]_P ;
  output \r_reg_reg[2]_P ;
  output \r_reg_reg[1]_P ;
  output \r_reg_reg[0]_P ;
  input \data_out_reg[31]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input debug_in_shift_int;
  input s00_axi_aresetn;
  input \data_out_reg[30]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[29]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[28]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[27]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[26]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[25]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[24]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[23]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[22]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[21]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[20]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[19]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[18]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[17]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[16]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[15]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[14]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[13]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[12]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[11]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[10]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[9]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[8]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[7]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[6]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[5]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[4]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[3]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[2]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[1]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  input \data_out_reg[0]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;

  wire \data_out_reg[0]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[10]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[11]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[12]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[13]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[14]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[15]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[16]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[17]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[18]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[19]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[1]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[20]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[21]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[22]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[23]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[24]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[25]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[26]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[27]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[28]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[29]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[2]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[30]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[31]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[3]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[4]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[5]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[6]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[7]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[8]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire \data_out_reg[9]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ;
  wire debug_in_shift_int;
  wire \r_reg_reg[0]_P ;
  wire \r_reg_reg[10]_P ;
  wire \r_reg_reg[11]_P ;
  wire \r_reg_reg[12]_P ;
  wire \r_reg_reg[13]_P ;
  wire \r_reg_reg[14]_P ;
  wire \r_reg_reg[15]_P ;
  wire \r_reg_reg[16]_P ;
  wire \r_reg_reg[17]_P ;
  wire \r_reg_reg[18]_P ;
  wire \r_reg_reg[19]_P ;
  wire \r_reg_reg[1]_P ;
  wire \r_reg_reg[20]_P ;
  wire \r_reg_reg[21]_P ;
  wire \r_reg_reg[22]_P ;
  wire \r_reg_reg[23]_P ;
  wire \r_reg_reg[24]_P ;
  wire \r_reg_reg[25]_P ;
  wire \r_reg_reg[26]_P ;
  wire \r_reg_reg[27]_P ;
  wire \r_reg_reg[28]_P ;
  wire \r_reg_reg[29]_P ;
  wire \r_reg_reg[2]_P ;
  wire \r_reg_reg[30]_P ;
  wire \r_reg_reg[31]_P ;
  wire \r_reg_reg[3]_P ;
  wire \r_reg_reg[4]_P ;
  wire \r_reg_reg[5]_P ;
  wire \r_reg_reg[6]_P ;
  wire \r_reg_reg[7]_P ;
  wire \r_reg_reg[8]_P ;
  wire \r_reg_reg[9]_P ;
  wire s00_axi_aresetn;

  FDCE \data_out_reg[0] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[0]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[0]_P ));
  FDCE \data_out_reg[10] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[10]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[10]_P ));
  FDCE \data_out_reg[11] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[11]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[11]_P ));
  FDCE \data_out_reg[12] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[12]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[12]_P ));
  FDCE \data_out_reg[13] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[13]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[13]_P ));
  FDCE \data_out_reg[14] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[14]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[14]_P ));
  FDCE \data_out_reg[15] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[15]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[15]_P ));
  FDCE \data_out_reg[16] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[16]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[16]_P ));
  FDCE \data_out_reg[17] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[17]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[17]_P ));
  FDCE \data_out_reg[18] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[18]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[18]_P ));
  FDCE \data_out_reg[19] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[19]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[19]_P ));
  FDCE \data_out_reg[1] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[1]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[1]_P ));
  FDCE \data_out_reg[20] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[20]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[20]_P ));
  FDCE \data_out_reg[21] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[21]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[21]_P ));
  FDCE \data_out_reg[22] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[22]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[22]_P ));
  FDCE \data_out_reg[23] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[23]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[23]_P ));
  FDCE \data_out_reg[24] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[24]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[24]_P ));
  FDCE \data_out_reg[25] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[25]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[25]_P ));
  FDCE \data_out_reg[26] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[26]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[26]_P ));
  FDCE \data_out_reg[27] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[27]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[27]_P ));
  FDCE \data_out_reg[28] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[28]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[28]_P ));
  FDCE \data_out_reg[29] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[29]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[29]_P ));
  FDCE \data_out_reg[2] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[2]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[2]_P ));
  FDCE \data_out_reg[30] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[30]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[30]_P ));
  FDCE \data_out_reg[31] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[31]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[31]_P ));
  FDCE \data_out_reg[3] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[3]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[3]_P ));
  FDCE \data_out_reg[4] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[4]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[4]_P ));
  FDCE \data_out_reg[5] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[5]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[5]_P ));
  FDCE \data_out_reg[6] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[6]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[6]_P ));
  FDCE \data_out_reg[7] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[7]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[7]_P ));
  FDCE \data_out_reg[8] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[8]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[8]_P ));
  FDCE \data_out_reg[9] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\data_out_reg[9]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 ),
        .Q(\r_reg_reg[9]_P ));
endmodule

(* ORIG_REF_NAME = "register_32bits" *) 
module design_1_BiDirChannels_0_0_register_32bits_8
   (m00_axis_tdata,
    D,
    s00_axi_aclk,
    s00_axi_aresetn);
  output [31:0]m00_axis_tdata;
  input [31:0]D;
  input s00_axi_aclk;
  input s00_axi_aresetn;

  wire [31:0]D;
  wire [31:0]m00_axis_tdata;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;

  FDCE \data_out_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[0]),
        .Q(m00_axis_tdata[0]));
  FDCE \data_out_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[10]),
        .Q(m00_axis_tdata[10]));
  FDCE \data_out_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[11]),
        .Q(m00_axis_tdata[11]));
  FDCE \data_out_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[12]),
        .Q(m00_axis_tdata[12]));
  FDCE \data_out_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[13]),
        .Q(m00_axis_tdata[13]));
  FDCE \data_out_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[14]),
        .Q(m00_axis_tdata[14]));
  FDCE \data_out_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[15]),
        .Q(m00_axis_tdata[15]));
  FDCE \data_out_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[16]),
        .Q(m00_axis_tdata[16]));
  FDCE \data_out_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[17]),
        .Q(m00_axis_tdata[17]));
  FDCE \data_out_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[18]),
        .Q(m00_axis_tdata[18]));
  FDCE \data_out_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[19]),
        .Q(m00_axis_tdata[19]));
  FDCE \data_out_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[1]),
        .Q(m00_axis_tdata[1]));
  FDCE \data_out_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[20]),
        .Q(m00_axis_tdata[20]));
  FDCE \data_out_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[21]),
        .Q(m00_axis_tdata[21]));
  FDCE \data_out_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[22]),
        .Q(m00_axis_tdata[22]));
  FDCE \data_out_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[23]),
        .Q(m00_axis_tdata[23]));
  FDCE \data_out_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[24]),
        .Q(m00_axis_tdata[24]));
  FDCE \data_out_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[25]),
        .Q(m00_axis_tdata[25]));
  FDCE \data_out_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[26]),
        .Q(m00_axis_tdata[26]));
  FDCE \data_out_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[27]),
        .Q(m00_axis_tdata[27]));
  FDCE \data_out_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[28]),
        .Q(m00_axis_tdata[28]));
  FDCE \data_out_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[29]),
        .Q(m00_axis_tdata[29]));
  FDCE \data_out_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[2]),
        .Q(m00_axis_tdata[2]));
  FDCE \data_out_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[30]),
        .Q(m00_axis_tdata[30]));
  FDCE \data_out_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[31]),
        .Q(m00_axis_tdata[31]));
  FDCE \data_out_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[3]),
        .Q(m00_axis_tdata[3]));
  FDCE \data_out_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[4]),
        .Q(m00_axis_tdata[4]));
  FDCE \data_out_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[5]),
        .Q(m00_axis_tdata[5]));
  FDCE \data_out_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[6]),
        .Q(m00_axis_tdata[6]));
  FDCE \data_out_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[7]),
        .Q(m00_axis_tdata[7]));
  FDCE \data_out_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[8]),
        .Q(m00_axis_tdata[8]));
  FDCE \data_out_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D[9]),
        .Q(m00_axis_tdata[9]));
endmodule

(* ORIG_REF_NAME = "shift_reg_8bits" *) 
module design_1_BiDirChannels_0_0_shift_reg_8bits
   (\out_reg[7]_0 ,
    Q_reg,
    D0,
    debug_in_shift_int,
    s00_axi_aresetn,
    Q_reg_0);
  output \out_reg[7]_0 ;
  output Q_reg;
  output D0;
  input debug_in_shift_int;
  input s00_axi_aresetn;
  input Q_reg_0;

  wire D0;
  wire Q_reg;
  wire Q_reg_0;
  wire debug_in_shift_int;
  wire \out_reg[5]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4_n_0 ;
  wire \out_reg[6]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ;
  wire \out_reg[7]_0 ;
  wire out_reg_c_0_n_0;
  wire out_reg_c_1_n_0;
  wire out_reg_c_2_n_0;
  wire out_reg_c_3_n_0;
  wire out_reg_c_4_n_0;
  wire out_reg_c_n_0;
  wire out_reg_gate_n_0;
  wire s00_axi_aresetn;

  LUT1 #(
    .INIT(2'h1)) 
    Q_i_1__1
       (.I0(Q_reg),
        .O(D0));
  (* srl_bus_name = "\inst/X0/BUFFERS/inputShiftRegister/out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/inputShiftRegister/out_reg[5]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 " *) 
  SRL16E \out_reg[5]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_in_shift_int),
        .D(Q_reg_0),
        .Q(\out_reg[5]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4_n_0 ));
  FDRE \out_reg[6]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .D(\out_reg[5]_srl6_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_4_n_0 ),
        .Q(\out_reg[6]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDCE \out_reg[7] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(out_reg_gate_n_0),
        .Q(Q_reg));
  FDCE out_reg_c
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(1'b1),
        .Q(out_reg_c_n_0));
  FDCE out_reg_c_0
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(out_reg_c_n_0),
        .Q(out_reg_c_0_n_0));
  FDCE out_reg_c_1
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(out_reg_c_0_n_0),
        .Q(out_reg_c_1_n_0));
  FDCE out_reg_c_2
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(out_reg_c_1_n_0),
        .Q(out_reg_c_2_n_0));
  FDCE out_reg_c_3
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(out_reg_c_2_n_0),
        .Q(out_reg_c_3_n_0));
  FDCE out_reg_c_4
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(out_reg_c_3_n_0),
        .Q(out_reg_c_4_n_0));
  FDCE out_reg_c_5
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(out_reg_c_4_n_0),
        .Q(\out_reg[7]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    out_reg_gate
       (.I0(\out_reg[6]_inst_X0_BUFFERS_inputShiftRegister_out_reg_c_5_n_0 ),
        .I1(\out_reg[7]_0 ),
        .O(out_reg_gate_n_0));
endmodule

(* ORIG_REF_NAME = "shift_reg_8bits" *) 
module design_1_BiDirChannels_0_0_shift_reg_8bits_14
   (Q_reg,
    D0_0,
    debug_out_shift_int,
    s00_axi_aresetn,
    Q_reg_0,
    data_out_reg_c);
  output [0:0]Q_reg;
  output D0_0;
  input debug_out_shift_int;
  input s00_axi_aresetn;
  input Q_reg_0;
  input data_out_reg_c;

  wire D0_0;
  wire [0:0]Q_reg;
  wire Q_reg_0;
  wire data_out_reg_c;
  wire debug_out_shift_int;
  wire [6:6]out_full;
  wire \out_reg[4]_srl5_inst_X0_BUFFERS_outputDelayLine_Reg4_data_out_reg_c_n_0 ;
  wire \out_reg[5]_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c_n_0 ;
  wire out_reg_gate_n_0;
  wire s00_axi_aresetn;

  LUT2 #(
    .INIT(4'h2)) 
    Q_i_1__0
       (.I0(Q_reg),
        .I1(out_full),
        .O(D0_0));
  (* srl_bus_name = "\inst/X0/BUFFERS/outputShiftRegister/out_reg " *) 
  (* srl_name = "\inst/X0/BUFFERS/outputShiftRegister/out_reg[4]_srl5_inst_X0_BUFFERS_outputDelayLine_Reg4_data_out_reg_c " *) 
  SRL16E \out_reg[4]_srl5_inst_X0_BUFFERS_outputDelayLine_Reg4_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(debug_out_shift_int),
        .D(Q_reg_0),
        .Q(\out_reg[4]_srl5_inst_X0_BUFFERS_outputDelayLine_Reg4_data_out_reg_c_n_0 ));
  FDRE \out_reg[5]_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .D(\out_reg[4]_srl5_inst_X0_BUFFERS_outputDelayLine_Reg4_data_out_reg_c_n_0 ),
        .Q(\out_reg[5]_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDCE \out_reg[6] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(out_reg_gate_n_0),
        .Q(out_full));
  FDCE \out_reg[7] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(out_full),
        .Q(Q_reg));
  LUT2 #(
    .INIT(4'h8)) 
    out_reg_gate
       (.I0(\out_reg[5]_inst_X0_BUFFERS_outputDelayLine_Reg5_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c),
        .O(out_reg_gate_n_0));
endmodule

(* ORIG_REF_NAME = "upCounter8Bits" *) 
module design_1_BiDirChannels_0_0_upCounter8Bits
   (Q,
    CLK,
    \slv_reg0_reg[16] );
  output [7:0]Q;
  input CLK;
  input \slv_reg0_reg[16] ;

  wire CLK;
  wire [7:0]Q;
  wire [7:0]r_next;
  wire \r_reg[7]_i_4_n_0 ;
  wire \slv_reg0_reg[16] ;

  LUT1 #(
    .INIT(2'h1)) 
    \r_reg[0]_i_1 
       (.I0(Q[0]),
        .O(r_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_reg[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(r_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_reg[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(r_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_reg[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(r_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_reg[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(r_next[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \r_reg[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(r_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_reg[6]_i_1 
       (.I0(\r_reg[7]_i_4_n_0 ),
        .I1(Q[6]),
        .O(r_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_reg[7]_i_1 
       (.I0(\r_reg[7]_i_4_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(r_next[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_reg[7]_i_4 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\r_reg[7]_i_4_n_0 ));
  FDCE \r_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next[0]),
        .Q(Q[0]));
  FDCE \r_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next[1]),
        .Q(Q[1]));
  FDCE \r_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next[2]),
        .Q(Q[2]));
  FDCE \r_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next[3]),
        .Q(Q[3]));
  FDCE \r_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next[4]),
        .Q(Q[4]));
  FDCE \r_reg_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next[5]),
        .Q(Q[5]));
  FDCE \r_reg_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next[6]),
        .Q(Q[6]));
  FDCE \r_reg_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "upCounter8Bits" *) 
module design_1_BiDirChannels_0_0_upCounter8Bits_0
   (Q,
    Q_reg,
    \slv_reg0_reg[16] );
  output [7:0]Q;
  input Q_reg;
  input \slv_reg0_reg[16] ;

  wire [7:0]Q;
  wire Q_reg;
  wire [7:0]r_next__0;
  wire \r_reg[7]_i_3_n_0 ;
  wire \slv_reg0_reg[16] ;

  LUT1 #(
    .INIT(2'h1)) 
    \r_reg[0]_i_1__0 
       (.I0(Q[0]),
        .O(r_next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_reg[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(r_next__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_reg[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(r_next__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_reg[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(r_next__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_reg[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(r_next__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \r_reg[5]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(r_next__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_reg[6]_i_1__0 
       (.I0(\r_reg[7]_i_3_n_0 ),
        .I1(Q[6]),
        .O(r_next__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_reg[7]_i_1__0 
       (.I0(\r_reg[7]_i_3_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(r_next__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_reg[7]_i_3 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\r_reg[7]_i_3_n_0 ));
  FDCE \r_reg_reg[0] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__0[0]),
        .Q(Q[0]));
  FDCE \r_reg_reg[1] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__0[1]),
        .Q(Q[1]));
  FDCE \r_reg_reg[2] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__0[2]),
        .Q(Q[2]));
  FDCE \r_reg_reg[3] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__0[3]),
        .Q(Q[3]));
  FDCE \r_reg_reg[4] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__0[4]),
        .Q(Q[4]));
  FDCE \r_reg_reg[5] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__0[5]),
        .Q(Q[5]));
  FDCE \r_reg_reg[6] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__0[6]),
        .Q(Q[6]));
  FDCE \r_reg_reg[7] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__0[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "upCounter8Bits" *) 
module design_1_BiDirChannels_0_0_upCounter8Bits_1
   (Q,
    s00_axis_tlast,
    \slv_reg0_reg[16] );
  output [7:0]Q;
  input s00_axis_tlast;
  input \slv_reg0_reg[16] ;

  wire [7:0]Q;
  wire [7:0]r_next__1;
  wire \r_reg[7]_i_2__2_n_0 ;
  wire s00_axis_tlast;
  wire \slv_reg0_reg[16] ;

  LUT1 #(
    .INIT(2'h1)) 
    \r_reg[0]_i_1__1 
       (.I0(Q[0]),
        .O(r_next__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_reg[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(r_next__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_reg[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(r_next__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_reg[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(r_next__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_reg[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(r_next__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \r_reg[5]_i_1__1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(r_next__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_reg[6]_i_1__1 
       (.I0(\r_reg[7]_i_2__2_n_0 ),
        .I1(Q[6]),
        .O(r_next__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_reg[7]_i_1__1 
       (.I0(\r_reg[7]_i_2__2_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(r_next__1[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_reg[7]_i_2__2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\r_reg[7]_i_2__2_n_0 ));
  FDCE \r_reg_reg[0] 
       (.C(s00_axis_tlast),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__1[0]),
        .Q(Q[0]));
  FDCE \r_reg_reg[1] 
       (.C(s00_axis_tlast),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__1[1]),
        .Q(Q[1]));
  FDCE \r_reg_reg[2] 
       (.C(s00_axis_tlast),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__1[2]),
        .Q(Q[2]));
  FDCE \r_reg_reg[3] 
       (.C(s00_axis_tlast),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__1[3]),
        .Q(Q[3]));
  FDCE \r_reg_reg[4] 
       (.C(s00_axis_tlast),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__1[4]),
        .Q(Q[4]));
  FDCE \r_reg_reg[5] 
       (.C(s00_axis_tlast),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__1[5]),
        .Q(Q[5]));
  FDCE \r_reg_reg[6] 
       (.C(s00_axis_tlast),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__1[6]),
        .Q(Q[6]));
  FDCE \r_reg_reg[7] 
       (.C(s00_axis_tlast),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__1[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "upCounter8Bits" *) 
module design_1_BiDirChannels_0_0_upCounter8Bits_2
   (Q,
    Q_reg,
    \slv_reg0_reg[16] );
  output [7:0]Q;
  input Q_reg;
  input \slv_reg0_reg[16] ;

  wire [7:0]Q;
  wire Q_reg;
  wire [7:0]r_next__3;
  wire \r_reg[7]_i_2__4_n_0 ;
  wire \slv_reg0_reg[16] ;

  LUT1 #(
    .INIT(2'h1)) 
    \r_reg[0]_i_1__3 
       (.I0(Q[0]),
        .O(r_next__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_reg[1]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(r_next__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_reg[2]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(r_next__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_reg[3]_i_1__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(r_next__3[3]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_reg[4]_i_1__3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(r_next__3[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \r_reg[5]_i_1__3 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(r_next__3[5]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_reg[6]_i_1__3 
       (.I0(\r_reg[7]_i_2__4_n_0 ),
        .I1(Q[6]),
        .O(r_next__3[6]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_reg[7]_i_1__3 
       (.I0(\r_reg[7]_i_2__4_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(r_next__3[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_reg[7]_i_2__4 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\r_reg[7]_i_2__4_n_0 ));
  FDCE \r_reg_reg[0] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__3[0]),
        .Q(Q[0]));
  FDCE \r_reg_reg[1] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__3[1]),
        .Q(Q[1]));
  FDCE \r_reg_reg[2] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__3[2]),
        .Q(Q[2]));
  FDCE \r_reg_reg[3] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__3[3]),
        .Q(Q[3]));
  FDCE \r_reg_reg[4] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__3[4]),
        .Q(Q[4]));
  FDCE \r_reg_reg[5] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__3[5]),
        .Q(Q[5]));
  FDCE \r_reg_reg[6] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__3[6]),
        .Q(Q[6]));
  FDCE \r_reg_reg[7] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__3[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "upCounter8Bits" *) 
module design_1_BiDirChannels_0_0_upCounter8Bits_3
   (Q,
    debug_out_shift_int,
    \slv_reg0_reg[16] );
  output [7:0]Q;
  input debug_out_shift_int;
  input \slv_reg0_reg[16] ;

  wire [7:0]Q;
  wire debug_out_shift_int;
  wire [7:0]r_next__2;
  wire \r_reg[7]_i_2__3_n_0 ;
  wire \slv_reg0_reg[16] ;

  LUT1 #(
    .INIT(2'h1)) 
    \r_reg[0]_i_1__2 
       (.I0(Q[0]),
        .O(r_next__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_reg[1]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(r_next__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_reg[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(r_next__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_reg[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(r_next__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_reg[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(r_next__2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \r_reg[5]_i_1__2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(r_next__2[5]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_reg[6]_i_1__2 
       (.I0(\r_reg[7]_i_2__3_n_0 ),
        .I1(Q[6]),
        .O(r_next__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_reg[7]_i_1__2 
       (.I0(\r_reg[7]_i_2__3_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(r_next__2[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_reg[7]_i_2__3 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\r_reg[7]_i_2__3_n_0 ));
  FDCE \r_reg_reg[0] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__2[0]),
        .Q(Q[0]));
  FDCE \r_reg_reg[1] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__2[1]),
        .Q(Q[1]));
  FDCE \r_reg_reg[2] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__2[2]),
        .Q(Q[2]));
  FDCE \r_reg_reg[3] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__2[3]),
        .Q(Q[3]));
  FDCE \r_reg_reg[4] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__2[4]),
        .Q(Q[4]));
  FDCE \r_reg_reg[5] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__2[5]),
        .Q(Q[5]));
  FDCE \r_reg_reg[6] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__2[6]),
        .Q(Q[6]));
  FDCE \r_reg_reg[7] 
       (.C(debug_out_shift_int),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__2[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "upCounter8Bits" *) 
module design_1_BiDirChannels_0_0_upCounter8Bits_4
   (Q,
    debug_in_shift_int,
    \slv_reg0_reg[16] );
  output [7:0]Q;
  input debug_in_shift_int;
  input \slv_reg0_reg[16] ;

  wire [7:0]Q;
  wire debug_in_shift_int;
  wire [7:0]r_next__4;
  wire \r_reg[7]_i_3__0_n_0 ;
  wire \slv_reg0_reg[16] ;

  LUT1 #(
    .INIT(2'h1)) 
    \r_reg[0]_i_1__4 
       (.I0(Q[0]),
        .O(r_next__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_reg[1]_i_1__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(r_next__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_reg[2]_i_1__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(r_next__4[2]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_reg[3]_i_1__4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(r_next__4[3]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_reg[4]_i_1__4 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(r_next__4[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \r_reg[5]_i_1__4 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(r_next__4[5]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_reg[6]_i_1__4 
       (.I0(\r_reg[7]_i_3__0_n_0 ),
        .I1(Q[6]),
        .O(r_next__4[6]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_reg[7]_i_1__4 
       (.I0(\r_reg[7]_i_3__0_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(r_next__4[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_reg[7]_i_3__0 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\r_reg[7]_i_3__0_n_0 ));
  FDCE \r_reg_reg[0] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__4[0]),
        .Q(Q[0]));
  FDCE \r_reg_reg[1] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__4[1]),
        .Q(Q[1]));
  FDCE \r_reg_reg[2] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__4[2]),
        .Q(Q[2]));
  FDCE \r_reg_reg[3] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__4[3]),
        .Q(Q[3]));
  FDCE \r_reg_reg[4] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__4[4]),
        .Q(Q[4]));
  FDCE \r_reg_reg[5] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__4[5]),
        .Q(Q[5]));
  FDCE \r_reg_reg[6] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__4[6]),
        .Q(Q[6]));
  FDCE \r_reg_reg[7] 
       (.C(debug_in_shift_int),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[16] ),
        .D(r_next__4[7]),
        .Q(Q[7]));
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
