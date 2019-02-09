// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Feb  7 23:09:16 2019
// Host        : DESKTOP-KC9HGNO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi_gyro_hsi_0_0_sim_netlist.v
// Design      : design_1_axi_gyro_hsi_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Packetizer
   (\data_out_reg[31] ,
    m00_axis_tdata,
    m00_axis_tlast,
    clock0,
    m00_axis_tvalid,
    s00_axi_aclk_0,
    Q,
    s00_axi_aclk,
    valid_out,
    s00_axi_aresetn);
  output \data_out_reg[31] ;
  output [31:0]m00_axis_tdata;
  output m00_axis_tlast;
  output clock0;
  output m00_axis_tvalid;
  input s00_axi_aclk_0;
  input [31:0]Q;
  input s00_axi_aclk;
  input valid_out;
  input s00_axi_aresetn;

  wire D0;
  wire FF0_n_0;
  wire FSM_n_0;
  wire FSM_n_1;
  wire FSM_n_5;
  wire [31:0]Q;
  wire clock0;
  wire \data_out_reg[31] ;
  wire delayLine_n_0;
  wire delayLine_n_1;
  wire delayLine_n_10;
  wire delayLine_n_11;
  wire delayLine_n_12;
  wire delayLine_n_13;
  wire delayLine_n_14;
  wire delayLine_n_15;
  wire delayLine_n_16;
  wire delayLine_n_17;
  wire delayLine_n_18;
  wire delayLine_n_19;
  wire delayLine_n_2;
  wire delayLine_n_20;
  wire delayLine_n_21;
  wire delayLine_n_22;
  wire delayLine_n_23;
  wire delayLine_n_24;
  wire delayLine_n_25;
  wire delayLine_n_26;
  wire delayLine_n_27;
  wire delayLine_n_28;
  wire delayLine_n_29;
  wire delayLine_n_3;
  wire delayLine_n_30;
  wire delayLine_n_31;
  wire delayLine_n_4;
  wire delayLine_n_5;
  wire delayLine_n_6;
  wire delayLine_n_7;
  wire delayLine_n_8;
  wire delayLine_n_9;
  wire inj_bit;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tvalid;
  wire [0:0]next_state;
  wire s00_axi_aclk;
  wire s00_axi_aclk_0;
  wire s00_axi_aresetn;
  wire shift;
  wire valid_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_4 FF0
       (.inj_bit(inj_bit),
        .\out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_5 (FF0_n_0),
        .s00_axi_aclk(s00_axi_aclk_0),
        .s00_axi_aresetn(\data_out_reg[31] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_5 FF1
       (.D0(D0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aclk_0(s00_axi_aclk_0),
        .s00_axi_aresetn(\data_out_reg[31] ),
        .shift(shift),
        .valid_out(valid_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Packetizer_fsm FSM
       (.D(next_state),
        .clock0(clock0),
        .inj_bit(inj_bit),
        .m00_axis_tvalid(m00_axis_tvalid),
        .out({FSM_n_0,FSM_n_1}),
        .\out_reg[8] (FSM_n_5),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(\data_out_reg[31] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_6 Reg9
       (.\data_out_reg[0]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_31),
        .\data_out_reg[10]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_21),
        .\data_out_reg[11]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_20),
        .\data_out_reg[12]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_19),
        .\data_out_reg[13]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_18),
        .\data_out_reg[14]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_17),
        .\data_out_reg[15]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_16),
        .\data_out_reg[16]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_15),
        .\data_out_reg[17]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_14),
        .\data_out_reg[18]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_13),
        .\data_out_reg[19]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_12),
        .\data_out_reg[1]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_30),
        .\data_out_reg[20]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_11),
        .\data_out_reg[21]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_10),
        .\data_out_reg[22]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_9),
        .\data_out_reg[23]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_8),
        .\data_out_reg[24]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_7),
        .\data_out_reg[25]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_6),
        .\data_out_reg[26]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_5),
        .\data_out_reg[27]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_4),
        .\data_out_reg[28]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_3),
        .\data_out_reg[29]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_2),
        .\data_out_reg[2]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_29),
        .\data_out_reg[30]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_1),
        .\data_out_reg[31]_0 (\data_out_reg[31] ),
        .\data_out_reg[31]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_0),
        .\data_out_reg[3]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_28),
        .\data_out_reg[4]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_27),
        .\data_out_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_26),
        .\data_out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_25),
        .\data_out_reg[7]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_24),
        .\data_out_reg[8]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_23),
        .\data_out_reg[9]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (delayLine_n_22),
        .m00_axis_tdata(m00_axis_tdata),
        .s00_axi_aresetn(s00_axi_aresetn),
        .shift(shift));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_reg_9bits SR9
       (.D(next_state),
        .D0(D0),
        .\FSM_sequential_state_reg[0] (FSM_n_5),
        .Q_reg(FF0_n_0),
        .m00_axis_tlast(m00_axis_tlast),
        .out({FSM_n_0,FSM_n_1}),
        .shift(shift));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay_line_8x32bits delayLine
       (.Q(Q),
        .\data_out_reg[0] (delayLine_n_31),
        .\data_out_reg[10] (delayLine_n_21),
        .\data_out_reg[11] (delayLine_n_20),
        .\data_out_reg[12] (delayLine_n_19),
        .\data_out_reg[13] (delayLine_n_18),
        .\data_out_reg[14] (delayLine_n_17),
        .\data_out_reg[15] (delayLine_n_16),
        .\data_out_reg[16] (delayLine_n_15),
        .\data_out_reg[17] (delayLine_n_14),
        .\data_out_reg[18] (delayLine_n_13),
        .\data_out_reg[19] (delayLine_n_12),
        .\data_out_reg[1] (delayLine_n_30),
        .\data_out_reg[20] (delayLine_n_11),
        .\data_out_reg[21] (delayLine_n_10),
        .\data_out_reg[22] (delayLine_n_9),
        .\data_out_reg[23] (delayLine_n_8),
        .\data_out_reg[24] (delayLine_n_7),
        .\data_out_reg[25] (delayLine_n_6),
        .\data_out_reg[26] (delayLine_n_5),
        .\data_out_reg[27] (delayLine_n_4),
        .\data_out_reg[28] (delayLine_n_3),
        .\data_out_reg[29] (delayLine_n_2),
        .\data_out_reg[2] (delayLine_n_29),
        .\data_out_reg[30] (delayLine_n_1),
        .\data_out_reg[31] (delayLine_n_0),
        .\data_out_reg[3] (delayLine_n_28),
        .\data_out_reg[4] (delayLine_n_27),
        .\data_out_reg[5] (delayLine_n_26),
        .\data_out_reg[6] (delayLine_n_25),
        .\data_out_reg[7] (delayLine_n_24),
        .\data_out_reg[8] (delayLine_n_23),
        .\data_out_reg[9] (delayLine_n_22),
        .s00_axi_aresetn(\data_out_reg[31] ),
        .shift(shift));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Packetizer_fsm
   (out,
    inj_bit,
    clock0,
    m00_axis_tvalid,
    \out_reg[8] ,
    D,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_aresetn_0);
  output [1:0]out;
  output inj_bit;
  output clock0;
  output m00_axis_tvalid;
  output \out_reg[8] ;
  input [0:0]D;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input s00_axi_aresetn_0;

  wire [0:0]D;
  wire clock0;
  wire inj_bit;
  wire m00_axis_tvalid;
  wire [1:1]next_state;
  (* RTL_KEEP = "yes" *) wire [1:0]out;
  wire \out_reg[8] ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;

  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .O(next_state));
  (* FSM_ENCODED_STATES = "S0:00,S1:01,S3:11,S2:10" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(D),
        .Q(out[0]));
  (* FSM_ENCODED_STATES = "S0:00,S1:01,S3:11,S2:10" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(next_state),
        .Q(out[1]));
  LUT2 #(
    .INIT(4'h1)) 
    Q_i_1__0
       (.I0(out[0]),
        .I1(out[1]),
        .O(inj_bit));
  LUT2 #(
    .INIT(4'h2)) 
    m00_axis_tvalid_INST_0
       (.I0(out[1]),
        .I1(out[0]),
        .O(m00_axis_tvalid));
  LUT3 #(
    .INIT(8'h8F)) 
    \out[8]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(s00_axi_aresetn),
        .O(\out_reg[8] ));
  LUT3 #(
    .INIT(8'h04)) 
    \r_reg[0]_i_2 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(s00_axi_aclk),
        .O(clock0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamDebugger
   (D,
    \out_reg[8] ,
    clock0,
    valid_out,
    \slv_reg2_reg[30] ,
    s00_axi_aresetn,
    \slv_reg3_reg[31] ,
    axi_araddr,
    out);
  output [31:0]D;
  input \out_reg[8] ;
  input clock0;
  input valid_out;
  input [30:0]\slv_reg2_reg[30] ;
  input s00_axi_aresetn;
  input [31:0]\slv_reg3_reg[31] ;
  input [1:0]axi_araddr;
  input [0:0]out;

  wire CNTR2_n_0;
  wire [31:0]D;
  wire [1:0]axi_araddr;
  wire clock0;
  wire [0:0]out;
  wire \out_reg[8] ;
  wire [15:0]r_reg_reg;
  wire s00_axi_aresetn;
  wire [30:0]\slv_reg2_reg[30] ;
  wire [31:0]\slv_reg3_reg[31] ;
  wire valid_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upCounter16Bits CNTR0
       (.D(D[15:0]),
        .axi_araddr(axi_araddr),
        .r_reg_reg(r_reg_reg),
        .\slv_reg2_reg[15] (\slv_reg2_reg[30] [15:0]),
        .\slv_reg2_reg[28] (CNTR2_n_0),
        .\slv_reg3_reg[15] (\slv_reg3_reg[31] [15:0]),
        .valid_out(valid_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upCounter16Bits_15 CNTR1
       (.\out_reg[8] (\out_reg[8] ),
        .r_reg_reg(r_reg_reg),
        .\slv_reg2_reg[28] (CNTR2_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upCounter16Bits_16 CNTR2
       (.D(D[31:16]),
        .axi_araddr(axi_araddr),
        .clock0(clock0),
        .out(out),
        .\r_reg_reg[15]_0 (CNTR2_n_0),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\slv_reg2_reg[30] (\slv_reg2_reg[30] [30:16]),
        .\slv_reg3_reg[31] (\slv_reg3_reg[31] [31:16]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamGenerator
   (out,
    HSICKA1,
    HSICKA0,
    D,
    CLK,
    \slv_reg2_reg[31] ,
    clk0,
    s00_axi_aresetn_0,
    \slv_reg3_reg[31] ,
    s00_axi_aresetn,
    Q_reg);
  output [0:0]out;
  output HSICKA1;
  output HSICKA0;
  output [0:0]D;
  output CLK;
  input [2:0]\slv_reg2_reg[31] ;
  input clk0;
  input s00_axi_aresetn_0;
  input [20:0]\slv_reg3_reg[31] ;
  input s00_axi_aresetn;
  input Q_reg;

  wire CLK;
  wire CNTR_DATA_n_0;
  wire CNTR_DATA_n_1;
  wire CNTR_DATA_n_2;
  wire CNTR_SAMPLES_n_0;
  wire [0:0]D;
  wire FSM_n_10;
  wire FSM_n_12;
  wire FSM_n_13;
  wire FSM_n_14;
  wire FSM_n_15;
  wire FSM_n_16;
  wire FSM_n_17;
  wire FSM_n_18;
  wire FSM_n_19;
  wire FSM_n_2;
  wire FSM_n_20;
  wire FSM_n_21;
  wire FSM_n_22;
  wire FSM_n_23;
  wire FSM_n_24;
  wire FSM_n_25;
  wire FSM_n_26;
  wire FSM_n_27;
  wire FSM_n_28;
  wire FSM_n_29;
  wire FSM_n_3;
  wire FSM_n_30;
  wire FSM_n_31;
  wire FSM_n_32;
  wire FSM_n_33;
  wire FSM_n_34;
  wire FSM_n_35;
  wire FSM_n_36;
  wire FSM_n_37;
  wire FSM_n_38;
  wire FSM_n_39;
  wire FSM_n_40;
  wire FSM_n_41;
  wire FSM_n_42;
  wire FSM_n_43;
  wire FSM_n_44;
  wire FSM_n_45;
  wire FSM_n_46;
  wire FSM_n_47;
  wire FSM_n_5;
  wire HSCK_int;
  wire HSICKA0;
  wire HSICKA1;
  wire NSAMPLES_REG_n_0;
  wire NSAMPLES_REG_n_1;
  wire NSAMPLES_REG_n_10;
  wire NSAMPLES_REG_n_11;
  wire NSAMPLES_REG_n_12;
  wire NSAMPLES_REG_n_13;
  wire NSAMPLES_REG_n_14;
  wire NSAMPLES_REG_n_15;
  wire NSAMPLES_REG_n_2;
  wire NSAMPLES_REG_n_3;
  wire NSAMPLES_REG_n_4;
  wire NSAMPLES_REG_n_5;
  wire NSAMPLES_REG_n_6;
  wire NSAMPLES_REG_n_7;
  wire NSAMPLES_REG_n_8;
  wire NSAMPLES_REG_n_9;
  wire Q;
  wire Q_reg;
  wire STATE_REG_n_0;
  wire STATE_REG_n_1;
  wire clk0;
  wire en_cntr_data;
  wire en_cntr_samples;
  wire ff0_n_1;
  wire ff1_n_1;
  wire load_state_data;
  wire [0:0]out;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire [2:0]\slv_reg2_reg[31] ;
  wire [20:0]\slv_reg3_reg[31] ;
  wire start_int;
  wire stop_int;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_downCounter8Bits CNTR_DATA
       (.D({CNTR_DATA_n_0,CNTR_DATA_n_1}),
        .\FSM_onehot_state_reg[3] (FSM_n_15),
        .\FSM_onehot_state_reg[3]_0 (FSM_n_14),
        .\FSM_onehot_state_reg[4] (CNTR_DATA_n_2),
        .clk0(clk0),
        .en_cntr_data(en_cntr_data),
        .out({FSM_n_2,FSM_n_3}),
        .s00_axi_aresetn(s00_axi_aresetn_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_downCounter16Bits CNTR_SAMPLES
       (.clk0(clk0),
        .\data_out_reg[0] (FSM_n_32),
        .\data_out_reg[0]_0 (FSM_n_16),
        .\data_out_reg[10] (FSM_n_42),
        .\data_out_reg[10]_0 (FSM_n_26),
        .\data_out_reg[11] (FSM_n_43),
        .\data_out_reg[11]_0 (FSM_n_27),
        .\data_out_reg[12] (FSM_n_44),
        .\data_out_reg[12]_0 (FSM_n_28),
        .\data_out_reg[13] (FSM_n_45),
        .\data_out_reg[13]_0 (FSM_n_29),
        .\data_out_reg[14] (FSM_n_46),
        .\data_out_reg[14]_0 (FSM_n_30),
        .\data_out_reg[15] (FSM_n_47),
        .\data_out_reg[15]_0 (FSM_n_31),
        .\data_out_reg[1] (FSM_n_33),
        .\data_out_reg[1]_0 (FSM_n_17),
        .\data_out_reg[2] (FSM_n_34),
        .\data_out_reg[2]_0 (FSM_n_18),
        .\data_out_reg[3] (FSM_n_35),
        .\data_out_reg[3]_0 (FSM_n_19),
        .\data_out_reg[4] (FSM_n_36),
        .\data_out_reg[4]_0 (FSM_n_20),
        .\data_out_reg[5] (FSM_n_37),
        .\data_out_reg[5]_0 (FSM_n_21),
        .\data_out_reg[6] (FSM_n_38),
        .\data_out_reg[6]_0 (FSM_n_22),
        .\data_out_reg[7] (FSM_n_39),
        .\data_out_reg[7]_0 (FSM_n_23),
        .\data_out_reg[8] (FSM_n_40),
        .\data_out_reg[8]_0 (FSM_n_24),
        .\data_out_reg[9] (FSM_n_41),
        .\data_out_reg[9]_0 (FSM_n_25),
        .out(en_cntr_samples),
        .\r_reg_reg[0]_P_0 (CNTR_SAMPLES_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamGenerator_fsm FSM
       (.CLK(load_state_data),
        .D({STATE_REG_n_0,CNTR_DATA_n_0,CNTR_DATA_n_1,ff1_n_1}),
        .\FSM_onehot_state_reg[4]_0 (FSM_n_10),
        .HSICKA0(HSICKA0),
        .HSICKA1(HSICKA1),
        .Q(Q),
        .Q_reg(Q_reg),
        .\data_out_reg[0] (STATE_REG_n_1),
        .\data_out_reg[15] ({NSAMPLES_REG_n_0,NSAMPLES_REG_n_1,NSAMPLES_REG_n_2,NSAMPLES_REG_n_3,NSAMPLES_REG_n_4,NSAMPLES_REG_n_5,NSAMPLES_REG_n_6,NSAMPLES_REG_n_7,NSAMPLES_REG_n_8,NSAMPLES_REG_n_9,NSAMPLES_REG_n_10,NSAMPLES_REG_n_11,NSAMPLES_REG_n_12,NSAMPLES_REG_n_13,NSAMPLES_REG_n_14,NSAMPLES_REG_n_15}),
        .en_cntr_data(en_cntr_data),
        .out({out,en_cntr_samples,FSM_n_2,FSM_n_3,HSCK_int,FSM_n_5}),
        .\r_reg_reg[0]_C (FSM_n_16),
        .\r_reg_reg[0]_P (FSM_n_12),
        .\r_reg_reg[0]_P_0 (FSM_n_32),
        .\r_reg_reg[10] (FSM_n_13),
        .\r_reg_reg[10]_C (FSM_n_26),
        .\r_reg_reg[10]_P (FSM_n_42),
        .\r_reg_reg[11]_C (FSM_n_27),
        .\r_reg_reg[11]_P (FSM_n_43),
        .\r_reg_reg[12]_C (FSM_n_28),
        .\r_reg_reg[12]_P (FSM_n_44),
        .\r_reg_reg[13]_C (FSM_n_29),
        .\r_reg_reg[13]_P (FSM_n_45),
        .\r_reg_reg[14]_C (FSM_n_30),
        .\r_reg_reg[14]_P (FSM_n_46),
        .\r_reg_reg[15]_C (FSM_n_31),
        .\r_reg_reg[15]_P (FSM_n_47),
        .\r_reg_reg[1]_C (FSM_n_17),
        .\r_reg_reg[1]_P (FSM_n_33),
        .\r_reg_reg[2]_C (FSM_n_18),
        .\r_reg_reg[2]_P (FSM_n_34),
        .\r_reg_reg[32] (CLK),
        .\r_reg_reg[3]_C (FSM_n_19),
        .\r_reg_reg[3]_P (FSM_n_35),
        .\r_reg_reg[4]_C (FSM_n_20),
        .\r_reg_reg[4]_P (FSM_n_15),
        .\r_reg_reg[4]_P_0 (FSM_n_36),
        .\r_reg_reg[4]_P_1 (CNTR_DATA_n_2),
        .\r_reg_reg[5]_C (FSM_n_21),
        .\r_reg_reg[5]_P (FSM_n_37),
        .\r_reg_reg[6] (FSM_n_14),
        .\r_reg_reg[6]_C (FSM_n_22),
        .\r_reg_reg[6]_P (FSM_n_38),
        .\r_reg_reg[6]_P_0 (CNTR_SAMPLES_n_0),
        .\r_reg_reg[7]_C (FSM_n_23),
        .\r_reg_reg[7]_P (FSM_n_39),
        .\r_reg_reg[8]_C (FSM_n_24),
        .\r_reg_reg[8]_P (FSM_n_40),
        .\r_reg_reg[9]_C (FSM_n_25),
        .\r_reg_reg[9]_P (FSM_n_41),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(s00_axi_aresetn_0),
        .\slv_reg3_reg[31] ({\slv_reg3_reg[31] [20],\slv_reg3_reg[31] [17:16]}),
        .start_int(start_int),
        .stop_int(stop_int));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_16bits NSAMPLES_REG
       (.CLK(load_state_data),
        .Q({NSAMPLES_REG_n_0,NSAMPLES_REG_n_1,NSAMPLES_REG_n_2,NSAMPLES_REG_n_3,NSAMPLES_REG_n_4,NSAMPLES_REG_n_5,NSAMPLES_REG_n_6,NSAMPLES_REG_n_7,NSAMPLES_REG_n_8,NSAMPLES_REG_n_9,NSAMPLES_REG_n_10,NSAMPLES_REG_n_11,NSAMPLES_REG_n_12,NSAMPLES_REG_n_13,NSAMPLES_REG_n_14,NSAMPLES_REG_n_15}),
        .s00_axi_aresetn(s00_axi_aresetn_0),
        .\slv_reg3_reg[15] (\slv_reg3_reg[31] [15:0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serializer17bits SR
       (.D(D),
        .\FSM_onehot_state_reg[2] (FSM_n_12),
        .\FSM_onehot_state_reg[2]_0 (FSM_n_13),
        .out(HSCK_int),
        .s00_axi_aresetn(s00_axi_aresetn_0),
        .\slv_reg3_reg[25] (\slv_reg3_reg[31] [17:16]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_2bits STATE_REG
       (.CLK(load_state_data),
        .D(STATE_REG_n_0),
        .\FSM_onehot_state_reg[10] (FSM_n_10),
        .\FSM_onehot_state_reg[4] (STATE_REG_n_1),
        .Q_reg(ff0_n_1),
        .\r_reg_reg[6]_P (CNTR_SAMPLES_n_0),
        .s00_axi_aresetn(s00_axi_aresetn_0),
        .\slv_reg3_reg[30] (\slv_reg3_reg[31] [19:18]),
        .stop_int(stop_int));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_1 ff0
       (.\FSM_onehot_state_reg[12] (ff0_n_1),
        .clk0(clk0),
        .out(out),
        .s00_axi_aresetn(s00_axi_aresetn_0),
        .\slv_reg2_reg[31] (\slv_reg2_reg[31] [2]),
        .start_int(start_int));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_2 ff1
       (.D(ff1_n_1),
        .clk0(clk0),
        .out(FSM_n_5),
        .s00_axi_aresetn(s00_axi_aresetn_0),
        .\slv_reg2_reg[30] (\slv_reg2_reg[31] [1]),
        .start_int(start_int),
        .stop_int(stop_int));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_3 ff2
       (.Q(Q),
        .clk0(clk0),
        .s00_axi_aresetn(s00_axi_aresetn_0),
        .\slv_reg2_reg[29] (\slv_reg2_reg[31] [0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamGenerator_fsm
   (out,
    CLK,
    HSICKA1,
    HSICKA0,
    en_cntr_data,
    \FSM_onehot_state_reg[4]_0 ,
    \r_reg_reg[32] ,
    \r_reg_reg[0]_P ,
    \r_reg_reg[10] ,
    \r_reg_reg[6] ,
    \r_reg_reg[4]_P ,
    \r_reg_reg[0]_C ,
    \r_reg_reg[1]_C ,
    \r_reg_reg[2]_C ,
    \r_reg_reg[3]_C ,
    \r_reg_reg[4]_C ,
    \r_reg_reg[5]_C ,
    \r_reg_reg[6]_C ,
    \r_reg_reg[7]_C ,
    \r_reg_reg[8]_C ,
    \r_reg_reg[9]_C ,
    \r_reg_reg[10]_C ,
    \r_reg_reg[11]_C ,
    \r_reg_reg[12]_C ,
    \r_reg_reg[13]_C ,
    \r_reg_reg[14]_C ,
    \r_reg_reg[15]_C ,
    \r_reg_reg[0]_P_0 ,
    \r_reg_reg[1]_P ,
    \r_reg_reg[2]_P ,
    \r_reg_reg[3]_P ,
    \r_reg_reg[4]_P_0 ,
    \r_reg_reg[5]_P ,
    \r_reg_reg[6]_P ,
    \r_reg_reg[7]_P ,
    \r_reg_reg[8]_P ,
    \r_reg_reg[9]_P ,
    \r_reg_reg[10]_P ,
    \r_reg_reg[11]_P ,
    \r_reg_reg[12]_P ,
    \r_reg_reg[13]_P ,
    \r_reg_reg[14]_P ,
    \r_reg_reg[15]_P ,
    \slv_reg3_reg[31] ,
    start_int,
    stop_int,
    \data_out_reg[0] ,
    \r_reg_reg[6]_P_0 ,
    \r_reg_reg[4]_P_1 ,
    Q,
    s00_axi_aresetn,
    \data_out_reg[15] ,
    s00_axi_aresetn_0,
    D,
    Q_reg);
  output [5:0]out;
  output CLK;
  output HSICKA1;
  output HSICKA0;
  output en_cntr_data;
  output \FSM_onehot_state_reg[4]_0 ;
  output \r_reg_reg[32] ;
  output \r_reg_reg[0]_P ;
  output \r_reg_reg[10] ;
  output \r_reg_reg[6] ;
  output \r_reg_reg[4]_P ;
  output \r_reg_reg[0]_C ;
  output \r_reg_reg[1]_C ;
  output \r_reg_reg[2]_C ;
  output \r_reg_reg[3]_C ;
  output \r_reg_reg[4]_C ;
  output \r_reg_reg[5]_C ;
  output \r_reg_reg[6]_C ;
  output \r_reg_reg[7]_C ;
  output \r_reg_reg[8]_C ;
  output \r_reg_reg[9]_C ;
  output \r_reg_reg[10]_C ;
  output \r_reg_reg[11]_C ;
  output \r_reg_reg[12]_C ;
  output \r_reg_reg[13]_C ;
  output \r_reg_reg[14]_C ;
  output \r_reg_reg[15]_C ;
  output \r_reg_reg[0]_P_0 ;
  output \r_reg_reg[1]_P ;
  output \r_reg_reg[2]_P ;
  output \r_reg_reg[3]_P ;
  output \r_reg_reg[4]_P_0 ;
  output \r_reg_reg[5]_P ;
  output \r_reg_reg[6]_P ;
  output \r_reg_reg[7]_P ;
  output \r_reg_reg[8]_P ;
  output \r_reg_reg[9]_P ;
  output \r_reg_reg[10]_P ;
  output \r_reg_reg[11]_P ;
  output \r_reg_reg[12]_P ;
  output \r_reg_reg[13]_P ;
  output \r_reg_reg[14]_P ;
  output \r_reg_reg[15]_P ;
  input [2:0]\slv_reg3_reg[31] ;
  input start_int;
  input stop_int;
  input \data_out_reg[0] ;
  input \r_reg_reg[6]_P_0 ;
  input \r_reg_reg[4]_P_1 ;
  input Q;
  input s00_axi_aresetn;
  input [15:0]\data_out_reg[15] ;
  input s00_axi_aresetn_0;
  input [3:0]D;
  input Q_reg;

  wire CLK;
  wire [3:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[10]_i_1_n_0 ;
  wire \FSM_onehot_state[11]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[4]_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[10] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[11] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[6] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[8] ;
  wire HSICKA0;
  wire HSICKA1;
  wire Q;
  wire Q_reg;
  wire \data_out_reg[0] ;
  wire [15:0]\data_out_reg[15] ;
  wire en_cntr_data;
  wire load_state_data_reg_i_1_n_0;
  wire load_state_data_reg_i_2_n_0;
  (* RTL_KEEP = "yes" *) wire [5:0]out;
  wire \r_reg_reg[0]_C ;
  wire \r_reg_reg[0]_P ;
  wire \r_reg_reg[0]_P_0 ;
  wire \r_reg_reg[10] ;
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
  wire \r_reg_reg[1]_C ;
  wire \r_reg_reg[1]_P ;
  wire \r_reg_reg[2]_C ;
  wire \r_reg_reg[2]_P ;
  wire \r_reg_reg[32] ;
  wire \r_reg_reg[3]_C ;
  wire \r_reg_reg[3]_P ;
  wire \r_reg_reg[4]_C ;
  wire \r_reg_reg[4]_P ;
  wire \r_reg_reg[4]_P_0 ;
  wire \r_reg_reg[4]_P_1 ;
  wire \r_reg_reg[5]_C ;
  wire \r_reg_reg[5]_P ;
  wire \r_reg_reg[6] ;
  wire \r_reg_reg[6]_C ;
  wire \r_reg_reg[6]_P ;
  wire \r_reg_reg[6]_P_0 ;
  wire \r_reg_reg[7]_C ;
  wire \r_reg_reg[7]_P ;
  wire \r_reg_reg[8]_C ;
  wire \r_reg_reg[8]_P ;
  wire \r_reg_reg[9]_C ;
  wire \r_reg_reg[9]_P ;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire [2:0]\slv_reg3_reg[31] ;
  wire start_int;
  wire stop_int;

  LUT4 #(
    .INIT(16'hF454)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(start_int),
        .I1(out[5]),
        .I2(out[0]),
        .I3(stop_int),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_state[10]_i_1 
       (.I0(Q),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(out[4]),
        .O(\FSM_onehot_state[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_state[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[11] ),
        .I1(Q),
        .I2(\FSM_onehot_state_reg_n_0_[10] ),
        .O(\FSM_onehot_state[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[12]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[10] ),
        .I1(Q),
        .O(\FSM_onehot_state_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAEEE)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg[4]_0 ),
        .I2(\data_out_reg[0] ),
        .I3(\r_reg_reg[6]_P_0 ),
        .I4(stop_int),
        .I5(\r_reg_reg[4]_P_1 ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S4:0000000100000,S3:0000000010000,S2:0000000001000,S11:0100000000000,S12:0000000000010,S10:1000000000000,S1:0000000000100,S0:0000000000001,S9:0010000000000,S7:0000100000000,S8:0001000000000,S6:0000010000000,S5:0000001000000" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(Q_reg),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(out[0]),
        .S(s00_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "S4:0000000100000,S3:0000000010000,S2:0000000001000,S11:0100000000000,S12:0000000000010,S10:1000000000000,S1:0000000000100,S0:0000000000001,S9:0010000000000,S7:0000100000000,S8:0001000000000,S6:0000010000000,S5:0000001000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(Q_reg),
        .CE(1'b1),
        .D(\FSM_onehot_state[10]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[10] ),
        .R(s00_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "S4:0000000100000,S3:0000000010000,S2:0000000001000,S11:0100000000000,S12:0000000000010,S10:1000000000000,S1:0000000000100,S0:0000000000001,S9:0010000000000,S7:0000100000000,S8:0001000000000,S6:0000010000000,S5:0000001000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[11] 
       (.C(Q_reg),
        .CE(1'b1),
        .D(\FSM_onehot_state[11]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[11] ),
        .R(s00_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "S4:0000000100000,S3:0000000010000,S2:0000000001000,S11:0100000000000,S12:0000000000010,S10:1000000000000,S1:0000000000100,S0:0000000000001,S9:0010000000000,S7:0000100000000,S8:0001000000000,S6:0000010000000,S5:0000001000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[12] 
       (.C(Q_reg),
        .CE(1'b1),
        .D(D[3]),
        .Q(out[5]),
        .R(s00_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "S4:0000000100000,S3:0000000010000,S2:0000000001000,S11:0100000000000,S12:0000000000010,S10:1000000000000,S1:0000000000100,S0:0000000000001,S9:0010000000000,S7:0000100000000,S8:0001000000000,S6:0000010000000,S5:0000001000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(Q_reg),
        .CE(1'b1),
        .D(D[0]),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(s00_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "S4:0000000100000,S3:0000000010000,S2:0000000001000,S11:0100000000000,S12:0000000000010,S10:1000000000000,S1:0000000000100,S0:0000000000001,S9:0010000000000,S7:0000100000000,S8:0001000000000,S6:0000010000000,S5:0000001000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(Q_reg),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(s00_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "S4:0000000100000,S3:0000000010000,S2:0000000001000,S11:0100000000000,S12:0000000000010,S10:1000000000000,S1:0000000000100,S0:0000000000001,S9:0010000000000,S7:0000100000000,S8:0001000000000,S6:0000010000000,S5:0000001000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(Q_reg),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(s00_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "S4:0000000100000,S3:0000000010000,S2:0000000001000,S11:0100000000000,S12:0000000000010,S10:1000000000000,S1:0000000000100,S0:0000000000001,S9:0010000000000,S7:0000100000000,S8:0001000000000,S6:0000010000000,S5:0000001000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(Q_reg),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(out[1]),
        .R(s00_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "S4:0000000100000,S3:0000000010000,S2:0000000001000,S11:0100000000000,S12:0000000000010,S10:1000000000000,S1:0000000000100,S0:0000000000001,S9:0010000000000,S7:0000100000000,S8:0001000000000,S6:0000010000000,S5:0000001000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(Q_reg),
        .CE(1'b1),
        .D(out[1]),
        .Q(out[2]),
        .R(s00_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "S4:0000000100000,S3:0000000010000,S2:0000000001000,S11:0100000000000,S12:0000000000010,S10:1000000000000,S1:0000000000100,S0:0000000000001,S9:0010000000000,S7:0000100000000,S8:0001000000000,S6:0000010000000,S5:0000001000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(Q_reg),
        .CE(1'b1),
        .D(D[1]),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(s00_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "S4:0000000100000,S3:0000000010000,S2:0000000001000,S11:0100000000000,S12:0000000000010,S10:1000000000000,S1:0000000000100,S0:0000000000001,S9:0010000000000,S7:0000100000000,S8:0001000000000,S6:0000010000000,S5:0000001000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(Q_reg),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[6] ),
        .Q(out[3]),
        .R(s00_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "S4:0000000100000,S3:0000000010000,S2:0000000001000,S11:0100000000000,S12:0000000000010,S10:1000000000000,S1:0000000000100,S0:0000000000001,S9:0010000000000,S7:0000100000000,S8:0001000000000,S6:0000010000000,S5:0000001000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(Q_reg),
        .CE(1'b1),
        .D(D[2]),
        .Q(\FSM_onehot_state_reg_n_0_[8] ),
        .R(s00_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "S4:0000000100000,S3:0000000010000,S2:0000000001000,S11:0100000000000,S12:0000000000010,S10:1000000000000,S1:0000000000100,S0:0000000000001,S9:0010000000000,S7:0000100000000,S8:0001000000000,S6:0000010000000,S5:0000001000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(Q_reg),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[8] ),
        .Q(out[4]),
        .R(s00_axi_aresetn_0));
  LUT4 #(
    .INIT(16'hFD20)) 
    HSICKA0_INST_0
       (.I0(\slv_reg3_reg[31] [0]),
        .I1(\slv_reg3_reg[31] [1]),
        .I2(out[1]),
        .I3(\slv_reg3_reg[31] [2]),
        .O(HSICKA0));
  LUT4 #(
    .INIT(16'hFE10)) 
    HSICKA1_INST_0
       (.I0(\slv_reg3_reg[31] [0]),
        .I1(\slv_reg3_reg[31] [1]),
        .I2(out[1]),
        .I3(\slv_reg3_reg[31] [2]),
        .O(HSICKA1));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    load_state_data_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .G(load_state_data_reg_i_1_n_0),
        .GE(1'b1),
        .Q(CLK));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    load_state_data_reg_i_1
       (.I0(load_state_data_reg_i_2_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(out[5]),
        .I3(out[0]),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(out[2]),
        .O(load_state_data_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    load_state_data_reg_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[10] ),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(out[1]),
        .I3(out[3]),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(load_state_data_reg_i_2_n_0));
  LUT3 #(
    .INIT(8'hEF)) 
    \r_reg[16]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(out[4]),
        .I2(s00_axi_aresetn),
        .O(\r_reg_reg[10] ));
  LUT1 #(
    .INIT(2'h1)) 
    \r_reg[32]_i_1 
       (.I0(out[1]),
        .O(\r_reg_reg[32] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_reg[7]_i_1 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[3]),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(en_cntr_data));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \r_reg[7]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(s00_axi_aresetn),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(out[4]),
        .O(\r_reg_reg[6] ));
  LUT4 #(
    .INIT(16'h8880)) 
    \r_reg_reg[0]_LDC_i_1 
       (.I0(\data_out_reg[15] [0]),
        .I1(s00_axi_aresetn),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(out[5]),
        .O(\r_reg_reg[0]_P_0 ));
  LUT4 #(
    .INIT(16'h54FF)) 
    \r_reg_reg[0]_LDC_i_2 
       (.I0(\data_out_reg[15] [0]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(out[5]),
        .I3(s00_axi_aresetn),
        .O(\r_reg_reg[0]_C ));
  LUT4 #(
    .INIT(16'h8880)) 
    \r_reg_reg[10]_LDC_i_1 
       (.I0(\data_out_reg[15] [10]),
        .I1(s00_axi_aresetn),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(out[5]),
        .O(\r_reg_reg[10]_P ));
  LUT4 #(
    .INIT(16'h54FF)) 
    \r_reg_reg[10]_LDC_i_2 
       (.I0(\data_out_reg[15] [10]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(out[5]),
        .I3(s00_axi_aresetn),
        .O(\r_reg_reg[10]_C ));
  LUT4 #(
    .INIT(16'h8880)) 
    \r_reg_reg[11]_LDC_i_1 
       (.I0(\data_out_reg[15] [11]),
        .I1(s00_axi_aresetn),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(out[5]),
        .O(\r_reg_reg[11]_P ));
  LUT4 #(
    .INIT(16'h54FF)) 
    \r_reg_reg[11]_LDC_i_2 
       (.I0(\data_out_reg[15] [11]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(out[5]),
        .I3(s00_axi_aresetn),
        .O(\r_reg_reg[11]_C ));
  LUT4 #(
    .INIT(16'h8880)) 
    \r_reg_reg[12]_LDC_i_1 
       (.I0(\data_out_reg[15] [12]),
        .I1(s00_axi_aresetn),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(out[5]),
        .O(\r_reg_reg[12]_P ));
  LUT4 #(
    .INIT(16'h54FF)) 
    \r_reg_reg[12]_LDC_i_2 
       (.I0(\data_out_reg[15] [12]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(out[5]),
        .I3(s00_axi_aresetn),
        .O(\r_reg_reg[12]_C ));
  LUT4 #(
    .INIT(16'h8880)) 
    \r_reg_reg[13]_LDC_i_1 
       (.I0(\data_out_reg[15] [13]),
        .I1(s00_axi_aresetn),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(out[5]),
        .O(\r_reg_reg[13]_P ));
  LUT4 #(
    .INIT(16'h54FF)) 
    \r_reg_reg[13]_LDC_i_2 
       (.I0(\data_out_reg[15] [13]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(out[5]),
        .I3(s00_axi_aresetn),
        .O(\r_reg_reg[13]_C ));
  LUT4 #(
    .INIT(16'h8880)) 
    \r_reg_reg[14]_LDC_i_1 
       (.I0(\data_out_reg[15] [14]),
        .I1(s00_axi_aresetn),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(out[5]),
        .O(\r_reg_reg[14]_P ));
  LUT4 #(
    .INIT(16'h54FF)) 
    \r_reg_reg[14]_LDC_i_2 
       (.I0(\data_out_reg[15] [14]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(out[5]),
        .I3(s00_axi_aresetn),
        .O(\r_reg_reg[14]_C ));
  LUT3 #(
    .INIT(8'hA8)) 
    \r_reg_reg[15]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(out[4]),
        .O(\r_reg_reg[0]_P ));
  LUT4 #(
    .INIT(16'h8880)) 
    \r_reg_reg[15]_LDC_i_1__0 
       (.I0(\data_out_reg[15] [15]),
        .I1(s00_axi_aresetn),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(out[5]),
        .O(\r_reg_reg[15]_P ));
  LUT4 #(
    .INIT(16'h54FF)) 
    \r_reg_reg[15]_LDC_i_2 
       (.I0(\data_out_reg[15] [15]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(out[5]),
        .I3(s00_axi_aresetn),
        .O(\r_reg_reg[15]_C ));
  LUT4 #(
    .INIT(16'h8880)) 
    \r_reg_reg[1]_LDC_i_1 
       (.I0(\data_out_reg[15] [1]),
        .I1(s00_axi_aresetn),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(out[5]),
        .O(\r_reg_reg[1]_P ));
  LUT4 #(
    .INIT(16'h54FF)) 
    \r_reg_reg[1]_LDC_i_2 
       (.I0(\data_out_reg[15] [1]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(out[5]),
        .I3(s00_axi_aresetn),
        .O(\r_reg_reg[1]_C ));
  LUT4 #(
    .INIT(16'h8880)) 
    \r_reg_reg[2]_LDC_i_1 
       (.I0(\data_out_reg[15] [2]),
        .I1(s00_axi_aresetn),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(out[5]),
        .O(\r_reg_reg[2]_P ));
  LUT4 #(
    .INIT(16'h54FF)) 
    \r_reg_reg[2]_LDC_i_2 
       (.I0(\data_out_reg[15] [2]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(out[5]),
        .I3(s00_axi_aresetn),
        .O(\r_reg_reg[2]_C ));
  LUT4 #(
    .INIT(16'h8880)) 
    \r_reg_reg[3]_LDC_i_1 
       (.I0(\data_out_reg[15] [3]),
        .I1(s00_axi_aresetn),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(out[5]),
        .O(\r_reg_reg[3]_P ));
  LUT4 #(
    .INIT(16'h54FF)) 
    \r_reg_reg[3]_LDC_i_2 
       (.I0(\data_out_reg[15] [3]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(out[5]),
        .I3(s00_axi_aresetn),
        .O(\r_reg_reg[3]_C ));
  LUT4 #(
    .INIT(16'h8880)) 
    \r_reg_reg[4]_LDC_i_1 
       (.I0(\data_out_reg[15] [4]),
        .I1(s00_axi_aresetn),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(out[5]),
        .O(\r_reg_reg[4]_P_0 ));
  LUT4 #(
    .INIT(16'h54FF)) 
    \r_reg_reg[4]_LDC_i_2 
       (.I0(\data_out_reg[15] [4]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(out[5]),
        .I3(s00_axi_aresetn),
        .O(\r_reg_reg[4]_C ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \r_reg_reg[5]_LDC_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(out[4]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\r_reg_reg[4]_P ));
  LUT4 #(
    .INIT(16'h8880)) 
    \r_reg_reg[5]_LDC_i_1__0 
       (.I0(\data_out_reg[15] [5]),
        .I1(s00_axi_aresetn),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(out[5]),
        .O(\r_reg_reg[5]_P ));
  LUT4 #(
    .INIT(16'h54FF)) 
    \r_reg_reg[5]_LDC_i_2 
       (.I0(\data_out_reg[15] [5]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(out[5]),
        .I3(s00_axi_aresetn),
        .O(\r_reg_reg[5]_C ));
  LUT4 #(
    .INIT(16'h8880)) 
    \r_reg_reg[6]_LDC_i_1 
       (.I0(\data_out_reg[15] [6]),
        .I1(s00_axi_aresetn),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(out[5]),
        .O(\r_reg_reg[6]_P ));
  LUT4 #(
    .INIT(16'h54FF)) 
    \r_reg_reg[6]_LDC_i_2 
       (.I0(\data_out_reg[15] [6]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(out[5]),
        .I3(s00_axi_aresetn),
        .O(\r_reg_reg[6]_C ));
  LUT4 #(
    .INIT(16'h8880)) 
    \r_reg_reg[7]_LDC_i_1 
       (.I0(\data_out_reg[15] [7]),
        .I1(s00_axi_aresetn),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(out[5]),
        .O(\r_reg_reg[7]_P ));
  LUT4 #(
    .INIT(16'h54FF)) 
    \r_reg_reg[7]_LDC_i_2 
       (.I0(\data_out_reg[15] [7]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(out[5]),
        .I3(s00_axi_aresetn),
        .O(\r_reg_reg[7]_C ));
  LUT4 #(
    .INIT(16'h8880)) 
    \r_reg_reg[8]_LDC_i_1 
       (.I0(\data_out_reg[15] [8]),
        .I1(s00_axi_aresetn),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(out[5]),
        .O(\r_reg_reg[8]_P ));
  LUT4 #(
    .INIT(16'h54FF)) 
    \r_reg_reg[8]_LDC_i_2 
       (.I0(\data_out_reg[15] [8]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(out[5]),
        .I3(s00_axi_aresetn),
        .O(\r_reg_reg[8]_C ));
  LUT4 #(
    .INIT(16'h8880)) 
    \r_reg_reg[9]_LDC_i_1 
       (.I0(\data_out_reg[15] [9]),
        .I1(s00_axi_aresetn),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(out[5]),
        .O(\r_reg_reg[9]_P ));
  LUT4 #(
    .INIT(16'h54FF)) 
    \r_reg_reg[9]_LDC_i_2 
       (.I0(\data_out_reg[15] [9]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(out[5]),
        .I3(s00_axi_aresetn),
        .O(\r_reg_reg[9]_C ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamPipeline
   (CLK,
    \data_out_reg[31] ,
    m00_axis_tlast,
    m00_axis_tdata,
    HSICKA1,
    HSICKA0,
    m00_axis_tvalid,
    D,
    clk0,
    s00_axi_aclk,
    \slv_reg2_reg[31] ,
    s00_axi_aclk_0,
    \slv_reg3_reg[31] ,
    s00_axi_aresetn,
    axi_araddr);
  output CLK;
  output \data_out_reg[31] ;
  output m00_axis_tlast;
  output [31:0]m00_axis_tdata;
  output HSICKA1;
  output HSICKA0;
  output m00_axis_tvalid;
  output [31:0]D;
  input clk0;
  input s00_axi_aclk;
  input [31:0]\slv_reg2_reg[31] ;
  input s00_axi_aclk_0;
  input [31:0]\slv_reg3_reg[31] ;
  input s00_axi_aresetn;
  input [1:0]axi_araddr;

  wire CLK;
  wire [31:0]D;
  wire GYRO_StreamGenerator_n_4;
  wire GYRO_Tokenizer_n_1;
  wire GYRO_Tokenizer_n_10;
  wire GYRO_Tokenizer_n_11;
  wire GYRO_Tokenizer_n_12;
  wire GYRO_Tokenizer_n_13;
  wire GYRO_Tokenizer_n_14;
  wire GYRO_Tokenizer_n_15;
  wire GYRO_Tokenizer_n_16;
  wire GYRO_Tokenizer_n_17;
  wire GYRO_Tokenizer_n_18;
  wire GYRO_Tokenizer_n_19;
  wire GYRO_Tokenizer_n_2;
  wire GYRO_Tokenizer_n_20;
  wire GYRO_Tokenizer_n_21;
  wire GYRO_Tokenizer_n_22;
  wire GYRO_Tokenizer_n_23;
  wire GYRO_Tokenizer_n_24;
  wire GYRO_Tokenizer_n_25;
  wire GYRO_Tokenizer_n_26;
  wire GYRO_Tokenizer_n_27;
  wire GYRO_Tokenizer_n_28;
  wire GYRO_Tokenizer_n_29;
  wire GYRO_Tokenizer_n_3;
  wire GYRO_Tokenizer_n_30;
  wire GYRO_Tokenizer_n_31;
  wire GYRO_Tokenizer_n_32;
  wire GYRO_Tokenizer_n_4;
  wire GYRO_Tokenizer_n_5;
  wire GYRO_Tokenizer_n_6;
  wire GYRO_Tokenizer_n_7;
  wire GYRO_Tokenizer_n_8;
  wire GYRO_Tokenizer_n_9;
  wire HSDATA_int;
  wire HSICKA0;
  wire HSICKA1;
  wire [1:0]axi_araddr;
  wire clk0;
  wire clock0;
  wire \data_out_reg[31] ;
  wire doneSamples;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tvalid;
  wire s00_axi_aclk;
  wire s00_axi_aclk_0;
  wire s00_axi_aresetn;
  wire [31:0]\slv_reg2_reg[31] ;
  wire [31:0]\slv_reg3_reg[31] ;
  wire valid_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider_by_2 CLK_DIV2
       (.MCK(CLK),
        .clk0(clk0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(\data_out_reg[31] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamDebugger GYRO_Debugger
       (.D(D),
        .axi_araddr(axi_araddr),
        .clock0(clock0),
        .out(doneSamples),
        .\out_reg[8] (m00_axis_tlast),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\slv_reg2_reg[30] (\slv_reg2_reg[31] [30:0]),
        .\slv_reg3_reg[31] (\slv_reg3_reg[31] ),
        .valid_out(valid_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Packetizer GYRO_Packetizer
       (.Q({GYRO_Tokenizer_n_1,GYRO_Tokenizer_n_2,GYRO_Tokenizer_n_3,GYRO_Tokenizer_n_4,GYRO_Tokenizer_n_5,GYRO_Tokenizer_n_6,GYRO_Tokenizer_n_7,GYRO_Tokenizer_n_8,GYRO_Tokenizer_n_9,GYRO_Tokenizer_n_10,GYRO_Tokenizer_n_11,GYRO_Tokenizer_n_12,GYRO_Tokenizer_n_13,GYRO_Tokenizer_n_14,GYRO_Tokenizer_n_15,GYRO_Tokenizer_n_16,GYRO_Tokenizer_n_17,GYRO_Tokenizer_n_18,GYRO_Tokenizer_n_19,GYRO_Tokenizer_n_20,GYRO_Tokenizer_n_21,GYRO_Tokenizer_n_22,GYRO_Tokenizer_n_23,GYRO_Tokenizer_n_24,GYRO_Tokenizer_n_25,GYRO_Tokenizer_n_26,GYRO_Tokenizer_n_27,GYRO_Tokenizer_n_28,GYRO_Tokenizer_n_29,GYRO_Tokenizer_n_30,GYRO_Tokenizer_n_31,GYRO_Tokenizer_n_32}),
        .clock0(clock0),
        .\data_out_reg[31] (\data_out_reg[31] ),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tvalid(m00_axis_tvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aclk_0(s00_axi_aclk_0),
        .s00_axi_aresetn(s00_axi_aresetn),
        .valid_out(valid_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamGenerator GYRO_StreamGenerator
       (.CLK(GYRO_StreamGenerator_n_4),
        .D(HSDATA_int),
        .HSICKA0(HSICKA0),
        .HSICKA1(HSICKA1),
        .Q_reg(CLK),
        .clk0(clk0),
        .out(doneSamples),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(\data_out_reg[31] ),
        .\slv_reg2_reg[31] (\slv_reg2_reg[31] [31:29]),
        .\slv_reg3_reg[31] ({\slv_reg3_reg[31] [31:29],\slv_reg3_reg[31] [25:24],\slv_reg3_reg[31] [15:0]}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Tokenizer GYRO_Tokenizer
       (.CLK(CLK),
        .D(HSDATA_int),
        .\FSM_onehot_state_reg[4] (GYRO_StreamGenerator_n_4),
        .Q({GYRO_Tokenizer_n_1,GYRO_Tokenizer_n_2,GYRO_Tokenizer_n_3,GYRO_Tokenizer_n_4,GYRO_Tokenizer_n_5,GYRO_Tokenizer_n_6,GYRO_Tokenizer_n_7,GYRO_Tokenizer_n_8,GYRO_Tokenizer_n_9,GYRO_Tokenizer_n_10,GYRO_Tokenizer_n_11,GYRO_Tokenizer_n_12,GYRO_Tokenizer_n_13,GYRO_Tokenizer_n_14,GYRO_Tokenizer_n_15,GYRO_Tokenizer_n_16,GYRO_Tokenizer_n_17,GYRO_Tokenizer_n_18,GYRO_Tokenizer_n_19,GYRO_Tokenizer_n_20,GYRO_Tokenizer_n_21,GYRO_Tokenizer_n_22,GYRO_Tokenizer_n_23,GYRO_Tokenizer_n_24,GYRO_Tokenizer_n_25,GYRO_Tokenizer_n_26,GYRO_Tokenizer_n_27,GYRO_Tokenizer_n_28,GYRO_Tokenizer_n_29,GYRO_Tokenizer_n_30,GYRO_Tokenizer_n_31,GYRO_Tokenizer_n_32}),
        .clk0(clk0),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(\data_out_reg[31] ),
        .valid_out(valid_out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Tokenizer
   (valid_out,
    Q,
    clk0,
    s00_axi_aresetn_0,
    CLK,
    s00_axi_aresetn,
    \FSM_onehot_state_reg[4] ,
    D);
  output valid_out;
  output [31:0]Q;
  input clk0;
  input s00_axi_aresetn_0;
  input CLK;
  input s00_axi_aresetn;
  input \FSM_onehot_state_reg[4] ;
  input [0:0]D;

  wire CLK;
  wire [0:0]D;
  wire FF0_n_0;
  wire FF1_n_1;
  wire \FSM_onehot_state_reg[4] ;
  wire [31:0]Q;
  wire SR_n_0;
  wire SR_n_1;
  wire SR_n_10;
  wire SR_n_11;
  wire SR_n_12;
  wire SR_n_13;
  wire SR_n_14;
  wire SR_n_15;
  wire SR_n_16;
  wire SR_n_17;
  wire SR_n_18;
  wire SR_n_19;
  wire SR_n_2;
  wire SR_n_20;
  wire SR_n_21;
  wire SR_n_22;
  wire SR_n_23;
  wire SR_n_24;
  wire SR_n_25;
  wire SR_n_26;
  wire SR_n_27;
  wire SR_n_28;
  wire SR_n_29;
  wire SR_n_3;
  wire SR_n_30;
  wire SR_n_31;
  wire SR_n_32;
  wire SR_n_4;
  wire SR_n_5;
  wire SR_n_6;
  wire SR_n_7;
  wire SR_n_8;
  wire SR_n_9;
  wire clk0;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire valid_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff FF0
       (.Q(SR_n_0),
        .clk0(clk0),
        .\data_out_reg[31] (FF0_n_0),
        .s00_axi_aresetn(s00_axi_aresetn_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_0 FF1
       (.CLK(CLK),
        .Q_reg_0(FF0_n_0),
        .\r_reg_reg[1] (FF1_n_1),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(s00_axi_aresetn_0),
        .valid_out(valid_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits R
       (.Q(Q),
        .Q_reg(FF0_n_0),
        .\r_reg_reg[31] ({SR_n_1,SR_n_2,SR_n_3,SR_n_4,SR_n_5,SR_n_6,SR_n_7,SR_n_8,SR_n_9,SR_n_10,SR_n_11,SR_n_12,SR_n_13,SR_n_14,SR_n_15,SR_n_16,SR_n_17,SR_n_18,SR_n_19,SR_n_20,SR_n_21,SR_n_22,SR_n_23,SR_n_24,SR_n_25,SR_n_26,SR_n_27,SR_n_28,SR_n_29,SR_n_30,SR_n_31,SR_n_32}),
        .s00_axi_aresetn(s00_axi_aresetn_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tokenizerShiftRegister32bits SR
       (.D(D),
        .\FSM_onehot_state_reg[4] (\FSM_onehot_state_reg[4] ),
        .Q({SR_n_0,SR_n_1,SR_n_2,SR_n_3,SR_n_4,SR_n_5,SR_n_6,SR_n_7,SR_n_8,SR_n_9,SR_n_10,SR_n_11,SR_n_12,SR_n_13,SR_n_14,SR_n_15,SR_n_16,SR_n_17,SR_n_18,SR_n_19,SR_n_20,SR_n_21,SR_n_22,SR_n_23,SR_n_24,SR_n_25,SR_n_26,SR_n_27,SR_n_28,SR_n_29,SR_n_30,SR_n_31,SR_n_32}),
        .Q_reg(FF1_n_1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gyro_hsi_v1_0
   (MCK,
    s00_axi_wready,
    s00_axi_awready,
    s00_axi_arready,
    m00_axis_tlast,
    s00_axi_bvalid,
    s00_axi_rvalid,
    m00_axis_tdata,
    HSICKA1,
    HSICKA0,
    m00_axis_tvalid,
    s00_axi_rdata,
    clk0,
    s00_axi_aclk,
    s00_axi_aclk_0,
    s00_axi_aresetn,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output MCK;
  output s00_axi_wready;
  output s00_axi_awready;
  output s00_axi_arready;
  output m00_axis_tlast;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [31:0]m00_axis_tdata;
  output HSICKA1;
  output HSICKA0;
  output m00_axis_tvalid;
  output [31:0]s00_axi_rdata;
  input clk0;
  input s00_axi_aclk;
  input s00_axi_aclk_0;
  input s00_axi_aresetn;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire HSICKA0;
  wire HSICKA1;
  wire MCK;
  wire clk0;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tvalid;
  wire s00_axi_aclk;
  wire s00_axi_aclk_0;
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gyro_hsi_v1_0_S00_AXI axi_gyro_hsi_v1_0_S00_AXI_inst
       (.HSICKA0(HSICKA0),
        .HSICKA1(HSICKA1),
        .MCK(MCK),
        .clk0(clk0),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tvalid(m00_axis_tvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aclk_0(s00_axi_aclk_0),
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
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gyro_hsi_v1_0_S00_AXI
   (MCK,
    s00_axi_wready,
    s00_axi_awready,
    s00_axi_arready,
    m00_axis_tlast,
    s00_axi_bvalid,
    s00_axi_rvalid,
    m00_axis_tdata,
    HSICKA1,
    HSICKA0,
    m00_axis_tvalid,
    s00_axi_rdata,
    clk0,
    s00_axi_aclk,
    s00_axi_aclk_0,
    s00_axi_aresetn,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output MCK;
  output s00_axi_wready;
  output s00_axi_awready;
  output s00_axi_arready;
  output m00_axis_tlast;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [31:0]m00_axis_tdata;
  output HSICKA1;
  output HSICKA0;
  output m00_axis_tvalid;
  output [31:0]s00_axi_rdata;
  input clk0;
  input s00_axi_aclk;
  input s00_axi_aclk_0;
  input s00_axi_aresetn;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire GYRO_ADC_OUT_STREAM_n_1;
  wire HSICKA0;
  wire HSICKA1;
  wire MCK;
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
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire clk0;
  wire [1:0]data_in;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tvalid;
  wire [1:0]p_0_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire s00_axi_aclk_0;
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
  wire [28:28]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg2_reg_n_0_[0] ;
  wire \slv_reg2_reg_n_0_[10] ;
  wire \slv_reg2_reg_n_0_[11] ;
  wire \slv_reg2_reg_n_0_[12] ;
  wire \slv_reg2_reg_n_0_[13] ;
  wire \slv_reg2_reg_n_0_[14] ;
  wire \slv_reg2_reg_n_0_[15] ;
  wire \slv_reg2_reg_n_0_[16] ;
  wire \slv_reg2_reg_n_0_[17] ;
  wire \slv_reg2_reg_n_0_[18] ;
  wire \slv_reg2_reg_n_0_[19] ;
  wire \slv_reg2_reg_n_0_[1] ;
  wire \slv_reg2_reg_n_0_[20] ;
  wire \slv_reg2_reg_n_0_[21] ;
  wire \slv_reg2_reg_n_0_[22] ;
  wire \slv_reg2_reg_n_0_[23] ;
  wire \slv_reg2_reg_n_0_[24] ;
  wire \slv_reg2_reg_n_0_[25] ;
  wire \slv_reg2_reg_n_0_[26] ;
  wire \slv_reg2_reg_n_0_[27] ;
  wire \slv_reg2_reg_n_0_[29] ;
  wire \slv_reg2_reg_n_0_[2] ;
  wire \slv_reg2_reg_n_0_[30] ;
  wire \slv_reg2_reg_n_0_[31] ;
  wire \slv_reg2_reg_n_0_[3] ;
  wire \slv_reg2_reg_n_0_[4] ;
  wire \slv_reg2_reg_n_0_[5] ;
  wire \slv_reg2_reg_n_0_[6] ;
  wire \slv_reg2_reg_n_0_[7] ;
  wire \slv_reg2_reg_n_0_[8] ;
  wire \slv_reg2_reg_n_0_[9] ;
  wire [31:24]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire \slv_reg3_reg_n_0_[0] ;
  wire \slv_reg3_reg_n_0_[10] ;
  wire \slv_reg3_reg_n_0_[11] ;
  wire \slv_reg3_reg_n_0_[12] ;
  wire \slv_reg3_reg_n_0_[13] ;
  wire \slv_reg3_reg_n_0_[14] ;
  wire \slv_reg3_reg_n_0_[15] ;
  wire \slv_reg3_reg_n_0_[16] ;
  wire \slv_reg3_reg_n_0_[17] ;
  wire \slv_reg3_reg_n_0_[18] ;
  wire \slv_reg3_reg_n_0_[19] ;
  wire \slv_reg3_reg_n_0_[1] ;
  wire \slv_reg3_reg_n_0_[20] ;
  wire \slv_reg3_reg_n_0_[21] ;
  wire \slv_reg3_reg_n_0_[22] ;
  wire \slv_reg3_reg_n_0_[23] ;
  wire \slv_reg3_reg_n_0_[26] ;
  wire \slv_reg3_reg_n_0_[27] ;
  wire \slv_reg3_reg_n_0_[28] ;
  wire \slv_reg3_reg_n_0_[2] ;
  wire \slv_reg3_reg_n_0_[3] ;
  wire \slv_reg3_reg_n_0_[4] ;
  wire \slv_reg3_reg_n_0_[5] ;
  wire \slv_reg3_reg_n_0_[6] ;
  wire \slv_reg3_reg_n_0_[7] ;
  wire \slv_reg3_reg_n_0_[8] ;
  wire \slv_reg3_reg_n_0_[9] ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamPipeline GYRO_ADC_OUT_STREAM
       (.CLK(MCK),
        .D(reg_data_out),
        .HSICKA0(HSICKA0),
        .HSICKA1(HSICKA1),
        .axi_araddr(axi_araddr),
        .clk0(clk0),
        .\data_out_reg[31] (GYRO_ADC_OUT_STREAM_n_1),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tvalid(m00_axis_tvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aclk_0(s00_axi_aclk_0),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\slv_reg2_reg[31] ({\slv_reg2_reg_n_0_[31] ,\slv_reg2_reg_n_0_[30] ,\slv_reg2_reg_n_0_[29] ,slv_reg2,\slv_reg2_reg_n_0_[27] ,\slv_reg2_reg_n_0_[26] ,\slv_reg2_reg_n_0_[25] ,\slv_reg2_reg_n_0_[24] ,\slv_reg2_reg_n_0_[23] ,\slv_reg2_reg_n_0_[22] ,\slv_reg2_reg_n_0_[21] ,\slv_reg2_reg_n_0_[20] ,\slv_reg2_reg_n_0_[19] ,\slv_reg2_reg_n_0_[18] ,\slv_reg2_reg_n_0_[17] ,\slv_reg2_reg_n_0_[16] ,\slv_reg2_reg_n_0_[15] ,\slv_reg2_reg_n_0_[14] ,\slv_reg2_reg_n_0_[13] ,\slv_reg2_reg_n_0_[12] ,\slv_reg2_reg_n_0_[11] ,\slv_reg2_reg_n_0_[10] ,\slv_reg2_reg_n_0_[9] ,\slv_reg2_reg_n_0_[8] ,\slv_reg2_reg_n_0_[7] ,\slv_reg2_reg_n_0_[6] ,\slv_reg2_reg_n_0_[5] ,\slv_reg2_reg_n_0_[4] ,\slv_reg2_reg_n_0_[3] ,\slv_reg2_reg_n_0_[2] ,\slv_reg2_reg_n_0_[1] ,\slv_reg2_reg_n_0_[0] }),
        .\slv_reg3_reg[31] ({slv_reg3[31],data_in,\slv_reg3_reg_n_0_[28] ,\slv_reg3_reg_n_0_[27] ,\slv_reg3_reg_n_0_[26] ,slv_reg3[25:24],\slv_reg3_reg_n_0_[23] ,\slv_reg3_reg_n_0_[22] ,\slv_reg3_reg_n_0_[21] ,\slv_reg3_reg_n_0_[20] ,\slv_reg3_reg_n_0_[19] ,\slv_reg3_reg_n_0_[18] ,\slv_reg3_reg_n_0_[17] ,\slv_reg3_reg_n_0_[16] ,\slv_reg3_reg_n_0_[15] ,\slv_reg3_reg_n_0_[14] ,\slv_reg3_reg_n_0_[13] ,\slv_reg3_reg_n_0_[12] ,\slv_reg3_reg_n_0_[11] ,\slv_reg3_reg_n_0_[10] ,\slv_reg3_reg_n_0_[9] ,\slv_reg3_reg_n_0_[8] ,\slv_reg3_reg_n_0_[7] ,\slv_reg3_reg_n_0_[6] ,\slv_reg3_reg_n_0_[5] ,\slv_reg3_reg_n_0_[4] ,\slv_reg3_reg_n_0_[3] ,\slv_reg3_reg_n_0_[2] ,\slv_reg3_reg_n_0_[1] ,\slv_reg3_reg_n_0_[0] }));
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
        .S(GYRO_ADC_OUT_STREAM_n_1));
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
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
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
        .R(GYRO_ADC_OUT_STREAM_n_1));
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
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
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
        .R(GYRO_ADC_OUT_STREAM_n_1));
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
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
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
        .R(GYRO_ADC_OUT_STREAM_n_1));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
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
        .R(GYRO_ADC_OUT_STREAM_n_1));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg2_reg_n_0_[0] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg2_reg_n_0_[10] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg2_reg_n_0_[11] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg2_reg_n_0_[12] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg2_reg_n_0_[13] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg2_reg_n_0_[14] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg2_reg_n_0_[15] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg2_reg_n_0_[16] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg2_reg_n_0_[17] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg2_reg_n_0_[18] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg2_reg_n_0_[19] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg2_reg_n_0_[1] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg2_reg_n_0_[20] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg2_reg_n_0_[21] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg2_reg_n_0_[22] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg2_reg_n_0_[23] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg2_reg_n_0_[24] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg2_reg_n_0_[25] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg2_reg_n_0_[26] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg2_reg_n_0_[27] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg2_reg_n_0_[29] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg2_reg_n_0_[2] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg2_reg_n_0_[30] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg2_reg_n_0_[31] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg2_reg_n_0_[3] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg2_reg_n_0_[4] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg2_reg_n_0_[5] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg2_reg_n_0_[6] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg2_reg_n_0_[7] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg2_reg_n_0_[8] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg2_reg_n_0_[9] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_2 
       (.I0(s00_axi_wready),
        .I1(s00_axi_awready),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg3_reg_n_0_[0] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg3_reg_n_0_[10] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg3_reg_n_0_[11] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg3_reg_n_0_[12] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg3_reg_n_0_[13] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg3_reg_n_0_[14] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg3_reg_n_0_[15] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg3_reg_n_0_[16] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg3_reg_n_0_[17] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg3_reg_n_0_[18] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg3_reg_n_0_[19] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg3_reg_n_0_[1] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg3_reg_n_0_[20] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg3_reg_n_0_[21] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg3_reg_n_0_[22] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg3_reg_n_0_[23] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg3_reg_n_0_[26] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg3_reg_n_0_[27] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg3_reg_n_0_[28] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(data_in[0]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg3_reg_n_0_[2] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(data_in[1]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg3_reg_n_0_[3] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg3_reg_n_0_[4] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg3_reg_n_0_[5] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg3_reg_n_0_[6] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg3_reg_n_0_[7] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg3_reg_n_0_[8] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg3_reg_n_0_[9] ),
        .R(GYRO_ADC_OUT_STREAM_n_1));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(s00_axi_arready),
        .O(slv_reg_rden__0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider_by_2
   (MCK,
    clk0,
    s00_axi_aclk,
    s00_axi_aresetn);
  output MCK;
  input clk0;
  input s00_axi_aclk;
  input s00_axi_aresetn;

  wire MCK;
  wire clk0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_17 ff0
       (.MCK(MCK),
        .clk0(clk0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay_line_8x32bits
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
    shift,
    s00_axi_aresetn,
    Q);
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
  input shift;
  input s00_axi_aresetn;
  input [31:0]Q;

  wire [31:0]Q;
  wire Reg0_n_0;
  wire Reg1_n_0;
  wire Reg2_n_0;
  wire Reg3_n_0;
  wire Reg4_n_0;
  wire Reg5_n_0;
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
  wire Reg6_n_32;
  wire Reg6_n_4;
  wire Reg6_n_5;
  wire Reg6_n_6;
  wire Reg6_n_7;
  wire Reg6_n_8;
  wire Reg6_n_9;
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
  wire s00_axi_aresetn;
  wire shift;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_7 Reg0
       (.data_out_reg_c_0(Reg0_n_0),
        .s00_axi_aresetn(s00_axi_aresetn),
        .shift(shift));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_8 Reg1
       (.data_out_reg_c_0(Reg1_n_0),
        .data_out_reg_c_1(Reg0_n_0),
        .s00_axi_aresetn(s00_axi_aresetn),
        .shift(shift));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_9 Reg2
       (.data_out_reg_c_0(Reg2_n_0),
        .data_out_reg_c_1(Reg1_n_0),
        .s00_axi_aresetn(s00_axi_aresetn),
        .shift(shift));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_10 Reg3
       (.data_out_reg_c_0(Reg3_n_0),
        .data_out_reg_c_1(Reg2_n_0),
        .s00_axi_aresetn(s00_axi_aresetn),
        .shift(shift));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_11 Reg4
       (.data_out_reg_c_0(Reg4_n_0),
        .data_out_reg_c_1(Reg3_n_0),
        .s00_axi_aresetn(s00_axi_aresetn),
        .shift(shift));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_12 Reg5
       (.data_out_reg_c_0(Reg5_n_0),
        .data_out_reg_c_1(Reg4_n_0),
        .s00_axi_aresetn(s00_axi_aresetn),
        .shift(shift));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_13 Reg6
       (.Q(Q),
        .\data_out_reg[0]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_32),
        .\data_out_reg[10]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_22),
        .\data_out_reg[11]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_21),
        .\data_out_reg[12]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_20),
        .\data_out_reg[13]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_19),
        .\data_out_reg[14]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_18),
        .\data_out_reg[15]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_17),
        .\data_out_reg[16]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_16),
        .\data_out_reg[17]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_15),
        .\data_out_reg[18]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_14),
        .\data_out_reg[19]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_13),
        .\data_out_reg[1]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_31),
        .\data_out_reg[20]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_12),
        .\data_out_reg[21]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_11),
        .\data_out_reg[22]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_10),
        .\data_out_reg[23]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_9),
        .\data_out_reg[24]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_8),
        .\data_out_reg[25]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_7),
        .\data_out_reg[26]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_6),
        .\data_out_reg[27]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_5),
        .\data_out_reg[28]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_4),
        .\data_out_reg[29]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_3),
        .\data_out_reg[2]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_30),
        .\data_out_reg[30]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_2),
        .\data_out_reg[31]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_1),
        .\data_out_reg[3]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_29),
        .\data_out_reg[4]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_28),
        .\data_out_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_27),
        .\data_out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_26),
        .\data_out_reg[7]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_25),
        .\data_out_reg[8]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_24),
        .\data_out_reg[9]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c (Reg6_n_23),
        .data_out_reg_c_0(Reg6_n_0),
        .data_out_reg_c_1(Reg5_n_0),
        .s00_axi_aresetn(s00_axi_aresetn),
        .shift(shift));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_14 Reg7
       (.\data_out_reg[0] (\data_out_reg[0] ),
        .\data_out_reg[0]_0 (Reg6_n_32),
        .\data_out_reg[10] (\data_out_reg[10] ),
        .\data_out_reg[10]_0 (Reg6_n_22),
        .\data_out_reg[11] (\data_out_reg[11] ),
        .\data_out_reg[11]_0 (Reg6_n_21),
        .\data_out_reg[12] (\data_out_reg[12] ),
        .\data_out_reg[12]_0 (Reg6_n_20),
        .\data_out_reg[13] (\data_out_reg[13] ),
        .\data_out_reg[13]_0 (Reg6_n_19),
        .\data_out_reg[14] (\data_out_reg[14] ),
        .\data_out_reg[14]_0 (Reg6_n_18),
        .\data_out_reg[15] (\data_out_reg[15] ),
        .\data_out_reg[15]_0 (Reg6_n_17),
        .\data_out_reg[16] (\data_out_reg[16] ),
        .\data_out_reg[16]_0 (Reg6_n_16),
        .\data_out_reg[17] (\data_out_reg[17] ),
        .\data_out_reg[17]_0 (Reg6_n_15),
        .\data_out_reg[18] (\data_out_reg[18] ),
        .\data_out_reg[18]_0 (Reg6_n_14),
        .\data_out_reg[19] (\data_out_reg[19] ),
        .\data_out_reg[19]_0 (Reg6_n_13),
        .\data_out_reg[1] (\data_out_reg[1] ),
        .\data_out_reg[1]_0 (Reg6_n_31),
        .\data_out_reg[20] (\data_out_reg[20] ),
        .\data_out_reg[20]_0 (Reg6_n_12),
        .\data_out_reg[21] (\data_out_reg[21] ),
        .\data_out_reg[21]_0 (Reg6_n_11),
        .\data_out_reg[22] (\data_out_reg[22] ),
        .\data_out_reg[22]_0 (Reg6_n_10),
        .\data_out_reg[23] (\data_out_reg[23] ),
        .\data_out_reg[23]_0 (Reg6_n_9),
        .\data_out_reg[24] (\data_out_reg[24] ),
        .\data_out_reg[24]_0 (Reg6_n_8),
        .\data_out_reg[25] (\data_out_reg[25] ),
        .\data_out_reg[25]_0 (Reg6_n_7),
        .\data_out_reg[26] (\data_out_reg[26] ),
        .\data_out_reg[26]_0 (Reg6_n_6),
        .\data_out_reg[27] (\data_out_reg[27] ),
        .\data_out_reg[27]_0 (Reg6_n_5),
        .\data_out_reg[28] (\data_out_reg[28] ),
        .\data_out_reg[28]_0 (Reg6_n_4),
        .\data_out_reg[29] (\data_out_reg[29] ),
        .\data_out_reg[29]_0 (Reg6_n_3),
        .\data_out_reg[2] (\data_out_reg[2] ),
        .\data_out_reg[2]_0 (Reg6_n_30),
        .\data_out_reg[30] (\data_out_reg[30] ),
        .\data_out_reg[30]_0 (Reg6_n_2),
        .\data_out_reg[31] (\data_out_reg[31] ),
        .\data_out_reg[31]_0 (Reg6_n_1),
        .\data_out_reg[3] (\data_out_reg[3] ),
        .\data_out_reg[3]_0 (Reg6_n_29),
        .\data_out_reg[4] (\data_out_reg[4] ),
        .\data_out_reg[4]_0 (Reg6_n_28),
        .\data_out_reg[5] (\data_out_reg[5] ),
        .\data_out_reg[5]_0 (Reg6_n_27),
        .\data_out_reg[6] (\data_out_reg[6] ),
        .\data_out_reg[6]_0 (Reg6_n_26),
        .\data_out_reg[7] (\data_out_reg[7] ),
        .\data_out_reg[7]_0 (Reg6_n_25),
        .\data_out_reg[8] (\data_out_reg[8] ),
        .\data_out_reg[8]_0 (Reg6_n_24),
        .\data_out_reg[9] (\data_out_reg[9] ),
        .\data_out_reg[9]_0 (Reg6_n_23),
        .data_out_reg_c_0(Reg6_n_0),
        .s00_axi_aresetn(s00_axi_aresetn),
        .shift(shift));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axi_gyro_hsi_0_0,axi_gyro_hsi_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_gyro_hsi_v1_0,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (MCK,
    HSICKA0,
    HSICKA1,
    HSIA0,
    HSIA1,
    m00_axis_aclk,
    m00_axis_aresetn,
    m00_axis_tdata,
    m00_axis_tstrb,
    m00_axis_tvalid,
    m00_axis_tready,
    m00_axis_tlast,
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
    s00_axi_aresetn);
  output MCK;
  output HSICKA0;
  output HSICKA1;
  input HSIA0;
  input HSIA1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_RESET m00_axis_aresetn, ASSOCIATED_BUSIF M00_AXIS, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input m00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW" *) input m00_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) output [31:0]m00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB" *) output [3:0]m00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) output m00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) input m00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef" *) output m00_axis_tlast;
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

  wire \<const0> ;
  wire HSICKA0;
  wire HSICKA1;
  wire MCK;
  wire Q_reg_i_2_n_0;
  wire clk0;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
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
        .O(clk0));
  LUT1 #(
    .INIT(2'h1)) 
    Q_reg_i_2
       (.I0(s00_axi_aclk),
        .O(Q_reg_i_2_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gyro_hsi_v1_0 inst
       (.HSICKA0(HSICKA0),
        .HSICKA1(HSICKA1),
        .MCK(MCK),
        .clk0(clk0),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tvalid(m00_axis_tvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aclk_0(Q_reg_i_2_n_0),
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
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff
   (\data_out_reg[31] ,
    Q,
    clk0,
    s00_axi_aresetn);
  output \data_out_reg[31] ;
  input [0:0]Q;
  input clk0;
  input s00_axi_aresetn;

  wire [0:0]Q;
  wire clk0;
  wire \data_out_reg[31] ;
  wire s00_axi_aresetn;

  FDCE Q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(Q),
        .Q(\data_out_reg[31] ));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_0
   (valid_out,
    \r_reg_reg[1] ,
    Q_reg_0,
    CLK,
    s00_axi_aresetn_0,
    s00_axi_aresetn);
  output valid_out;
  output \r_reg_reg[1] ;
  input Q_reg_0;
  input CLK;
  input s00_axi_aresetn_0;
  input s00_axi_aresetn;

  wire CLK;
  wire Q_reg_0;
  wire \r_reg_reg[1] ;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire valid_out;

  FDCE Q_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(Q_reg_0),
        .Q(valid_out));
  LUT2 #(
    .INIT(4'hB)) 
    \r_reg[32]_i_2 
       (.I0(valid_out),
        .I1(s00_axi_aresetn),
        .O(\r_reg_reg[1] ));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_1
   (start_int,
    \FSM_onehot_state_reg[12] ,
    \slv_reg2_reg[31] ,
    clk0,
    s00_axi_aresetn,
    out);
  output start_int;
  output \FSM_onehot_state_reg[12] ;
  input [0:0]\slv_reg2_reg[31] ;
  input clk0;
  input s00_axi_aresetn;
  input [0:0]out;

  wire \FSM_onehot_state_reg[12] ;
  wire clk0;
  wire [0:0]out;
  wire s00_axi_aresetn;
  wire [0:0]\slv_reg2_reg[31] ;
  wire start_int;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[12]_i_4 
       (.I0(start_int),
        .I1(out),
        .O(\FSM_onehot_state_reg[12] ));
  FDCE Q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\slv_reg2_reg[31] ),
        .Q(start_int));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_17
   (MCK,
    clk0,
    s00_axi_aclk,
    s00_axi_aresetn);
  output MCK;
  input clk0;
  input s00_axi_aclk;
  input s00_axi_aresetn;

  wire MCK;
  wire clk0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;

  FDCE Q_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(clk0),
        .Q(MCK));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_2
   (stop_int,
    D,
    \slv_reg2_reg[30] ,
    clk0,
    s00_axi_aresetn,
    start_int,
    out);
  output stop_int;
  output [0:0]D;
  input [0:0]\slv_reg2_reg[30] ;
  input clk0;
  input s00_axi_aresetn;
  input start_int;
  input [0:0]out;

  wire [0:0]D;
  wire clk0;
  wire [0:0]out;
  wire s00_axi_aresetn;
  wire [0:0]\slv_reg2_reg[30] ;
  wire start_int;
  wire stop_int;

  LUT3 #(
    .INIT(8'h40)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(stop_int),
        .I1(start_int),
        .I2(out),
        .O(D));
  FDCE Q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\slv_reg2_reg[30] ),
        .Q(stop_int));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_3
   (Q,
    \slv_reg2_reg[29] ,
    clk0,
    s00_axi_aresetn);
  output Q;
  input [0:0]\slv_reg2_reg[29] ;
  input clk0;
  input s00_axi_aresetn;

  wire Q;
  wire clk0;
  wire s00_axi_aresetn;
  wire [0:0]\slv_reg2_reg[29] ;

  FDCE Q_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\slv_reg2_reg[29] ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_4
   (\out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_5 ,
    inj_bit,
    s00_axi_aclk,
    s00_axi_aresetn);
  output \out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_5 ;
  input inj_bit;
  input s00_axi_aclk;
  input s00_axi_aresetn;

  wire inj_bit;
  wire \out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_5 ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;

  FDCE Q_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(inj_bit),
        .Q(\out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_5 ));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_5
   (shift,
    D0,
    s00_axi_aclk_0,
    s00_axi_aresetn,
    s00_axi_aclk,
    valid_out);
  output shift;
  input D0;
  input s00_axi_aclk_0;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input valid_out;

  wire D0;
  wire s00_axi_aclk;
  wire s00_axi_aclk_0;
  wire s00_axi_aresetn;
  wire shift;
  wire shift_sel_sync;
  wire valid_out;

  FDCE Q_reg
       (.C(s00_axi_aclk_0),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(D0),
        .Q(shift_sel_sync));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[31]_i_1 
       (.I0(s00_axi_aclk),
        .I1(shift_sel_sync),
        .I2(valid_out),
        .O(shift));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_downCounter16Bits
   (\r_reg_reg[0]_P_0 ,
    \data_out_reg[15] ,
    \data_out_reg[15]_0 ,
    out,
    clk0,
    \data_out_reg[14] ,
    \data_out_reg[14]_0 ,
    \data_out_reg[13] ,
    \data_out_reg[13]_0 ,
    \data_out_reg[12] ,
    \data_out_reg[12]_0 ,
    \data_out_reg[11] ,
    \data_out_reg[11]_0 ,
    \data_out_reg[10] ,
    \data_out_reg[10]_0 ,
    \data_out_reg[9] ,
    \data_out_reg[9]_0 ,
    \data_out_reg[8] ,
    \data_out_reg[8]_0 ,
    \data_out_reg[7] ,
    \data_out_reg[7]_0 ,
    \data_out_reg[6] ,
    \data_out_reg[6]_0 ,
    \data_out_reg[5] ,
    \data_out_reg[5]_0 ,
    \data_out_reg[4] ,
    \data_out_reg[4]_0 ,
    \data_out_reg[3] ,
    \data_out_reg[3]_0 ,
    \data_out_reg[2] ,
    \data_out_reg[2]_0 ,
    \data_out_reg[1] ,
    \data_out_reg[1]_0 ,
    \data_out_reg[0] ,
    \data_out_reg[0]_0 );
  output \r_reg_reg[0]_P_0 ;
  input \data_out_reg[15] ;
  input \data_out_reg[15]_0 ;
  input [0:0]out;
  input clk0;
  input \data_out_reg[14] ;
  input \data_out_reg[14]_0 ;
  input \data_out_reg[13] ;
  input \data_out_reg[13]_0 ;
  input \data_out_reg[12] ;
  input \data_out_reg[12]_0 ;
  input \data_out_reg[11] ;
  input \data_out_reg[11]_0 ;
  input \data_out_reg[10] ;
  input \data_out_reg[10]_0 ;
  input \data_out_reg[9] ;
  input \data_out_reg[9]_0 ;
  input \data_out_reg[8] ;
  input \data_out_reg[8]_0 ;
  input \data_out_reg[7] ;
  input \data_out_reg[7]_0 ;
  input \data_out_reg[6] ;
  input \data_out_reg[6]_0 ;
  input \data_out_reg[5] ;
  input \data_out_reg[5]_0 ;
  input \data_out_reg[4] ;
  input \data_out_reg[4]_0 ;
  input \data_out_reg[3] ;
  input \data_out_reg[3]_0 ;
  input \data_out_reg[2] ;
  input \data_out_reg[2]_0 ;
  input \data_out_reg[1] ;
  input \data_out_reg[1]_0 ;
  input \data_out_reg[0] ;
  input \data_out_reg[0]_0 ;

  wire \FSM_onehot_state[12]_i_15_n_0 ;
  wire \FSM_onehot_state[12]_i_16_n_0 ;
  wire \FSM_onehot_state[12]_i_5_n_0 ;
  wire \FSM_onehot_state[12]_i_9_n_0 ;
  wire clk0;
  wire [14:0]count_samples;
  wire [15:1]data0;
  wire \data_out_reg[0] ;
  wire \data_out_reg[0]_0 ;
  wire \data_out_reg[10] ;
  wire \data_out_reg[10]_0 ;
  wire \data_out_reg[11] ;
  wire \data_out_reg[11]_0 ;
  wire \data_out_reg[12] ;
  wire \data_out_reg[12]_0 ;
  wire \data_out_reg[13] ;
  wire \data_out_reg[13]_0 ;
  wire \data_out_reg[14] ;
  wire \data_out_reg[14]_0 ;
  wire \data_out_reg[15] ;
  wire \data_out_reg[15]_0 ;
  wire \data_out_reg[1] ;
  wire \data_out_reg[1]_0 ;
  wire \data_out_reg[2] ;
  wire \data_out_reg[2]_0 ;
  wire \data_out_reg[3] ;
  wire \data_out_reg[3]_0 ;
  wire \data_out_reg[4] ;
  wire \data_out_reg[4]_0 ;
  wire \data_out_reg[5] ;
  wire \data_out_reg[5]_0 ;
  wire \data_out_reg[6] ;
  wire \data_out_reg[6]_0 ;
  wire \data_out_reg[7] ;
  wire \data_out_reg[7]_0 ;
  wire \data_out_reg[8] ;
  wire \data_out_reg[8]_0 ;
  wire \data_out_reg[9] ;
  wire \data_out_reg[9]_0 ;
  wire [0:0]out;
  wire r_next_carry__0_i_2_n_0;
  wire r_next_carry__0_i_4_n_0;
  wire r_next_carry__0_i_5_n_0;
  wire r_next_carry__0_i_6_n_0;
  wire r_next_carry__0_i_7_n_0;
  wire r_next_carry__0_i_8_n_0;
  wire r_next_carry__0_n_0;
  wire r_next_carry__0_n_1;
  wire r_next_carry__0_n_2;
  wire r_next_carry__0_n_3;
  wire r_next_carry__1_i_1_n_0;
  wire r_next_carry__1_i_2_n_0;
  wire r_next_carry__1_i_3_n_0;
  wire r_next_carry__1_i_5_n_0;
  wire r_next_carry__1_i_6_n_0;
  wire r_next_carry__1_i_7_n_0;
  wire r_next_carry__1_i_8_n_0;
  wire r_next_carry__1_n_0;
  wire r_next_carry__1_n_1;
  wire r_next_carry__1_n_2;
  wire r_next_carry__1_n_3;
  wire r_next_carry__2_i_2_n_0;
  wire r_next_carry__2_i_3_n_0;
  wire r_next_carry__2_i_4_n_0;
  wire r_next_carry__2_i_5_n_0;
  wire r_next_carry__2_n_2;
  wire r_next_carry__2_n_3;
  wire r_next_carry_i_2_n_0;
  wire r_next_carry_i_3_n_0;
  wire r_next_carry_i_4_n_0;
  wire r_next_carry_i_5_n_0;
  wire r_next_carry_i_6_n_0;
  wire r_next_carry_i_7_n_0;
  wire r_next_carry_i_8_n_0;
  wire r_next_carry_i_9_n_0;
  wire r_next_carry_n_0;
  wire r_next_carry_n_1;
  wire r_next_carry_n_2;
  wire r_next_carry_n_3;
  wire [15:0]r_reg;
  wire \r_reg_reg[0]_C_n_0 ;
  wire \r_reg_reg[0]_LDC_n_0 ;
  wire \r_reg_reg[0]_P_0 ;
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
  wire \r_reg_reg[1]_C_n_0 ;
  wire \r_reg_reg[1]_LDC_n_0 ;
  wire \r_reg_reg[1]_P_n_0 ;
  wire \r_reg_reg[2]_C_n_0 ;
  wire \r_reg_reg[2]_LDC_n_0 ;
  wire \r_reg_reg[2]_P_n_0 ;
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
  wire [3:2]NLW_r_next_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_r_next_carry__2_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state[12]_i_10 
       (.I0(\r_reg_reg[7]_P_n_0 ),
        .I1(\r_reg_reg[7]_LDC_n_0 ),
        .I2(\r_reg_reg[7]_C_n_0 ),
        .O(count_samples[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state[12]_i_11 
       (.I0(\r_reg_reg[5]_P_n_0 ),
        .I1(\r_reg_reg[5]_LDC_n_0 ),
        .I2(\r_reg_reg[5]_C_n_0 ),
        .O(count_samples[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state[12]_i_12 
       (.I0(\r_reg_reg[4]_P_n_0 ),
        .I1(\r_reg_reg[4]_LDC_n_0 ),
        .I2(\r_reg_reg[4]_C_n_0 ),
        .O(count_samples[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state[12]_i_13 
       (.I0(\r_reg_reg[12]_P_n_0 ),
        .I1(\r_reg_reg[12]_LDC_n_0 ),
        .I2(\r_reg_reg[12]_C_n_0 ),
        .O(count_samples[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state[12]_i_14 
       (.I0(\r_reg_reg[13]_P_n_0 ),
        .I1(\r_reg_reg[13]_LDC_n_0 ),
        .I2(\r_reg_reg[13]_C_n_0 ),
        .O(count_samples[13]));
  LUT6 #(
    .INIT(64'h0000001D1D1D001D)) 
    \FSM_onehot_state[12]_i_15 
       (.I0(\r_reg_reg[14]_C_n_0 ),
        .I1(\r_reg_reg[14]_LDC_n_0 ),
        .I2(\r_reg_reg[14]_P_n_0 ),
        .I3(\r_reg_reg[15]_C_n_0 ),
        .I4(\r_reg_reg[15]_LDC_n_0 ),
        .I5(\r_reg_reg[15]_P_n_0 ),
        .O(\FSM_onehot_state[12]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000001D1D1D001D)) 
    \FSM_onehot_state[12]_i_16 
       (.I0(\r_reg_reg[8]_C_n_0 ),
        .I1(\r_reg_reg[8]_LDC_n_0 ),
        .I2(\r_reg_reg[8]_P_n_0 ),
        .I3(\r_reg_reg[9]_C_n_0 ),
        .I4(\r_reg_reg[9]_LDC_n_0 ),
        .I5(\r_reg_reg[9]_P_n_0 ),
        .O(\FSM_onehot_state[12]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state[12]_i_17 
       (.I0(\r_reg_reg[10]_P_n_0 ),
        .I1(\r_reg_reg[10]_LDC_n_0 ),
        .I2(\r_reg_reg[10]_C_n_0 ),
        .O(count_samples[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state[12]_i_18 
       (.I0(\r_reg_reg[11]_P_n_0 ),
        .I1(\r_reg_reg[11]_LDC_n_0 ),
        .I2(\r_reg_reg[11]_C_n_0 ),
        .O(count_samples[11]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \FSM_onehot_state[12]_i_2 
       (.I0(\FSM_onehot_state[12]_i_5_n_0 ),
        .I1(count_samples[1]),
        .I2(count_samples[0]),
        .I3(count_samples[3]),
        .I4(count_samples[2]),
        .I5(\FSM_onehot_state[12]_i_9_n_0 ),
        .O(\r_reg_reg[0]_P_0 ));
  LUT6 #(
    .INIT(64'h0000000000001015)) 
    \FSM_onehot_state[12]_i_5 
       (.I0(count_samples[7]),
        .I1(\r_reg_reg[6]_P_n_0 ),
        .I2(\r_reg_reg[6]_LDC_n_0 ),
        .I3(\r_reg_reg[6]_C_n_0 ),
        .I4(count_samples[5]),
        .I5(count_samples[4]),
        .O(\FSM_onehot_state[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state[12]_i_6 
       (.I0(\r_reg_reg[1]_P_n_0 ),
        .I1(\r_reg_reg[1]_LDC_n_0 ),
        .I2(\r_reg_reg[1]_C_n_0 ),
        .O(count_samples[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state[12]_i_7 
       (.I0(\r_reg_reg[3]_P_n_0 ),
        .I1(\r_reg_reg[3]_LDC_n_0 ),
        .I2(\r_reg_reg[3]_C_n_0 ),
        .O(count_samples[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state[12]_i_8 
       (.I0(\r_reg_reg[2]_P_n_0 ),
        .I1(\r_reg_reg[2]_LDC_n_0 ),
        .I2(\r_reg_reg[2]_C_n_0 ),
        .O(count_samples[2]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \FSM_onehot_state[12]_i_9 
       (.I0(count_samples[12]),
        .I1(count_samples[13]),
        .I2(\FSM_onehot_state[12]_i_15_n_0 ),
        .I3(\FSM_onehot_state[12]_i_16_n_0 ),
        .I4(count_samples[10]),
        .I5(count_samples[11]),
        .O(\FSM_onehot_state[12]_i_9_n_0 ));
  CARRY4 r_next_carry
       (.CI(1'b0),
        .CO({r_next_carry_n_0,r_next_carry_n_1,r_next_carry_n_2,r_next_carry_n_3}),
        .CYINIT(count_samples[0]),
        .DI({r_next_carry_i_2_n_0,r_next_carry_i_3_n_0,r_next_carry_i_4_n_0,r_next_carry_i_5_n_0}),
        .O(data0[4:1]),
        .S({r_next_carry_i_6_n_0,r_next_carry_i_7_n_0,r_next_carry_i_8_n_0,r_next_carry_i_9_n_0}));
  CARRY4 r_next_carry__0
       (.CI(r_next_carry_n_0),
        .CO({r_next_carry__0_n_0,r_next_carry__0_n_1,r_next_carry__0_n_2,r_next_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({count_samples[8],r_next_carry__0_i_2_n_0,count_samples[6],r_next_carry__0_i_4_n_0}),
        .O(data0[8:5]),
        .S({r_next_carry__0_i_5_n_0,r_next_carry__0_i_6_n_0,r_next_carry__0_i_7_n_0,r_next_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB8)) 
    r_next_carry__0_i_1
       (.I0(\r_reg_reg[8]_P_n_0 ),
        .I1(\r_reg_reg[8]_LDC_n_0 ),
        .I2(\r_reg_reg[8]_C_n_0 ),
        .O(count_samples[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    r_next_carry__0_i_2
       (.I0(\r_reg_reg[7]_P_n_0 ),
        .I1(\r_reg_reg[7]_LDC_n_0 ),
        .I2(\r_reg_reg[7]_C_n_0 ),
        .O(r_next_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    r_next_carry__0_i_3
       (.I0(\r_reg_reg[6]_P_n_0 ),
        .I1(\r_reg_reg[6]_LDC_n_0 ),
        .I2(\r_reg_reg[6]_C_n_0 ),
        .O(count_samples[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    r_next_carry__0_i_4
       (.I0(\r_reg_reg[5]_P_n_0 ),
        .I1(\r_reg_reg[5]_LDC_n_0 ),
        .I2(\r_reg_reg[5]_C_n_0 ),
        .O(r_next_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    r_next_carry__0_i_5
       (.I0(\r_reg_reg[8]_C_n_0 ),
        .I1(\r_reg_reg[8]_LDC_n_0 ),
        .I2(\r_reg_reg[8]_P_n_0 ),
        .O(r_next_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    r_next_carry__0_i_6
       (.I0(\r_reg_reg[7]_C_n_0 ),
        .I1(\r_reg_reg[7]_LDC_n_0 ),
        .I2(\r_reg_reg[7]_P_n_0 ),
        .O(r_next_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    r_next_carry__0_i_7
       (.I0(\r_reg_reg[6]_C_n_0 ),
        .I1(\r_reg_reg[6]_LDC_n_0 ),
        .I2(\r_reg_reg[6]_P_n_0 ),
        .O(r_next_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    r_next_carry__0_i_8
       (.I0(\r_reg_reg[5]_C_n_0 ),
        .I1(\r_reg_reg[5]_LDC_n_0 ),
        .I2(\r_reg_reg[5]_P_n_0 ),
        .O(r_next_carry__0_i_8_n_0));
  CARRY4 r_next_carry__1
       (.CI(r_next_carry__0_n_0),
        .CO({r_next_carry__1_n_0,r_next_carry__1_n_1,r_next_carry__1_n_2,r_next_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({r_next_carry__1_i_1_n_0,r_next_carry__1_i_2_n_0,r_next_carry__1_i_3_n_0,count_samples[9]}),
        .O(data0[12:9]),
        .S({r_next_carry__1_i_5_n_0,r_next_carry__1_i_6_n_0,r_next_carry__1_i_7_n_0,r_next_carry__1_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB8)) 
    r_next_carry__1_i_1
       (.I0(\r_reg_reg[12]_P_n_0 ),
        .I1(\r_reg_reg[12]_LDC_n_0 ),
        .I2(\r_reg_reg[12]_C_n_0 ),
        .O(r_next_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    r_next_carry__1_i_2
       (.I0(\r_reg_reg[11]_P_n_0 ),
        .I1(\r_reg_reg[11]_LDC_n_0 ),
        .I2(\r_reg_reg[11]_C_n_0 ),
        .O(r_next_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    r_next_carry__1_i_3
       (.I0(\r_reg_reg[10]_P_n_0 ),
        .I1(\r_reg_reg[10]_LDC_n_0 ),
        .I2(\r_reg_reg[10]_C_n_0 ),
        .O(r_next_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    r_next_carry__1_i_4
       (.I0(\r_reg_reg[9]_P_n_0 ),
        .I1(\r_reg_reg[9]_LDC_n_0 ),
        .I2(\r_reg_reg[9]_C_n_0 ),
        .O(count_samples[9]));
  LUT3 #(
    .INIT(8'h1D)) 
    r_next_carry__1_i_5
       (.I0(\r_reg_reg[12]_C_n_0 ),
        .I1(\r_reg_reg[12]_LDC_n_0 ),
        .I2(\r_reg_reg[12]_P_n_0 ),
        .O(r_next_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    r_next_carry__1_i_6
       (.I0(\r_reg_reg[11]_C_n_0 ),
        .I1(\r_reg_reg[11]_LDC_n_0 ),
        .I2(\r_reg_reg[11]_P_n_0 ),
        .O(r_next_carry__1_i_6_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    r_next_carry__1_i_7
       (.I0(\r_reg_reg[10]_C_n_0 ),
        .I1(\r_reg_reg[10]_LDC_n_0 ),
        .I2(\r_reg_reg[10]_P_n_0 ),
        .O(r_next_carry__1_i_7_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    r_next_carry__1_i_8
       (.I0(\r_reg_reg[9]_C_n_0 ),
        .I1(\r_reg_reg[9]_LDC_n_0 ),
        .I2(\r_reg_reg[9]_P_n_0 ),
        .O(r_next_carry__1_i_8_n_0));
  CARRY4 r_next_carry__2
       (.CI(r_next_carry__1_n_0),
        .CO({NLW_r_next_carry__2_CO_UNCONNECTED[3:2],r_next_carry__2_n_2,r_next_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,count_samples[14],r_next_carry__2_i_2_n_0}),
        .O({NLW_r_next_carry__2_O_UNCONNECTED[3],data0[15:13]}),
        .S({1'b0,r_next_carry__2_i_3_n_0,r_next_carry__2_i_4_n_0,r_next_carry__2_i_5_n_0}));
  LUT3 #(
    .INIT(8'hB8)) 
    r_next_carry__2_i_1
       (.I0(\r_reg_reg[14]_P_n_0 ),
        .I1(\r_reg_reg[14]_LDC_n_0 ),
        .I2(\r_reg_reg[14]_C_n_0 ),
        .O(count_samples[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    r_next_carry__2_i_2
       (.I0(\r_reg_reg[13]_P_n_0 ),
        .I1(\r_reg_reg[13]_LDC_n_0 ),
        .I2(\r_reg_reg[13]_C_n_0 ),
        .O(r_next_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    r_next_carry__2_i_3
       (.I0(\r_reg_reg[15]_C_n_0 ),
        .I1(\r_reg_reg[15]_LDC_n_0 ),
        .I2(\r_reg_reg[15]_P_n_0 ),
        .O(r_next_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    r_next_carry__2_i_4
       (.I0(\r_reg_reg[14]_C_n_0 ),
        .I1(\r_reg_reg[14]_LDC_n_0 ),
        .I2(\r_reg_reg[14]_P_n_0 ),
        .O(r_next_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    r_next_carry__2_i_5
       (.I0(\r_reg_reg[13]_C_n_0 ),
        .I1(\r_reg_reg[13]_LDC_n_0 ),
        .I2(\r_reg_reg[13]_P_n_0 ),
        .O(r_next_carry__2_i_5_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    r_next_carry_i_1
       (.I0(\r_reg_reg[0]_P_n_0 ),
        .I1(\r_reg_reg[0]_LDC_n_0 ),
        .I2(\r_reg_reg[0]_C_n_0 ),
        .O(count_samples[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    r_next_carry_i_2
       (.I0(\r_reg_reg[4]_P_n_0 ),
        .I1(\r_reg_reg[4]_LDC_n_0 ),
        .I2(\r_reg_reg[4]_C_n_0 ),
        .O(r_next_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    r_next_carry_i_3
       (.I0(\r_reg_reg[3]_P_n_0 ),
        .I1(\r_reg_reg[3]_LDC_n_0 ),
        .I2(\r_reg_reg[3]_C_n_0 ),
        .O(r_next_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    r_next_carry_i_4
       (.I0(\r_reg_reg[2]_P_n_0 ),
        .I1(\r_reg_reg[2]_LDC_n_0 ),
        .I2(\r_reg_reg[2]_C_n_0 ),
        .O(r_next_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    r_next_carry_i_5
       (.I0(\r_reg_reg[1]_P_n_0 ),
        .I1(\r_reg_reg[1]_LDC_n_0 ),
        .I2(\r_reg_reg[1]_C_n_0 ),
        .O(r_next_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    r_next_carry_i_6
       (.I0(\r_reg_reg[4]_C_n_0 ),
        .I1(\r_reg_reg[4]_LDC_n_0 ),
        .I2(\r_reg_reg[4]_P_n_0 ),
        .O(r_next_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    r_next_carry_i_7
       (.I0(\r_reg_reg[3]_C_n_0 ),
        .I1(\r_reg_reg[3]_LDC_n_0 ),
        .I2(\r_reg_reg[3]_P_n_0 ),
        .O(r_next_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    r_next_carry_i_8
       (.I0(\r_reg_reg[2]_C_n_0 ),
        .I1(\r_reg_reg[2]_LDC_n_0 ),
        .I2(\r_reg_reg[2]_P_n_0 ),
        .O(r_next_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    r_next_carry_i_9
       (.I0(\r_reg_reg[1]_C_n_0 ),
        .I1(\r_reg_reg[1]_LDC_n_0 ),
        .I2(\r_reg_reg[1]_P_n_0 ),
        .O(r_next_carry_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0151)) 
    \r_reg[0]_C_i_1 
       (.I0(\r_reg_reg[0]_P_0 ),
        .I1(\r_reg_reg[0]_C_n_0 ),
        .I2(\r_reg_reg[0]_LDC_n_0 ),
        .I3(\r_reg_reg[0]_P_n_0 ),
        .O(r_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg[10]_C_i_1 
       (.I0(data0[10]),
        .I1(\r_reg_reg[0]_P_0 ),
        .O(r_reg[10]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg[11]_C_i_1 
       (.I0(data0[11]),
        .I1(\r_reg_reg[0]_P_0 ),
        .O(r_reg[11]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg[12]_C_i_1 
       (.I0(data0[12]),
        .I1(\r_reg_reg[0]_P_0 ),
        .O(r_reg[12]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg[13]_C_i_1 
       (.I0(data0[13]),
        .I1(\r_reg_reg[0]_P_0 ),
        .O(r_reg[13]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg[14]_C_i_1 
       (.I0(data0[14]),
        .I1(\r_reg_reg[0]_P_0 ),
        .O(r_reg[14]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg[15]_C_i_1 
       (.I0(data0[15]),
        .I1(\r_reg_reg[0]_P_0 ),
        .O(r_reg[15]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg[1]_C_i_1 
       (.I0(data0[1]),
        .I1(\r_reg_reg[0]_P_0 ),
        .O(r_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg[2]_C_i_1 
       (.I0(data0[2]),
        .I1(\r_reg_reg[0]_P_0 ),
        .O(r_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg[3]_C_i_1 
       (.I0(data0[3]),
        .I1(\r_reg_reg[0]_P_0 ),
        .O(r_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg[4]_C_i_1 
       (.I0(data0[4]),
        .I1(\r_reg_reg[0]_P_0 ),
        .O(r_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg[5]_C_i_1 
       (.I0(data0[5]),
        .I1(\r_reg_reg[0]_P_0 ),
        .O(r_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg[6]_C_i_1 
       (.I0(data0[6]),
        .I1(\r_reg_reg[0]_P_0 ),
        .O(r_reg[6]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg[7]_C_i_1 
       (.I0(data0[7]),
        .I1(\r_reg_reg[0]_P_0 ),
        .O(r_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg[8]_C_i_1 
       (.I0(data0[8]),
        .I1(\r_reg_reg[0]_P_0 ),
        .O(r_reg[8]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg[9]_C_i_1 
       (.I0(data0[9]),
        .I1(\r_reg_reg[0]_P_0 ),
        .O(r_reg[9]));
  FDCE \r_reg_reg[0]_C 
       (.C(clk0),
        .CE(out),
        .CLR(\data_out_reg[0]_0 ),
        .D(r_reg[0]),
        .Q(\r_reg_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[0]_LDC 
       (.CLR(\data_out_reg[0]_0 ),
        .D(1'b1),
        .G(\data_out_reg[0] ),
        .GE(1'b1),
        .Q(\r_reg_reg[0]_LDC_n_0 ));
  FDPE \r_reg_reg[0]_P 
       (.C(clk0),
        .CE(out),
        .D(r_reg[0]),
        .PRE(\data_out_reg[0] ),
        .Q(\r_reg_reg[0]_P_n_0 ));
  FDCE \r_reg_reg[10]_C 
       (.C(clk0),
        .CE(out),
        .CLR(\data_out_reg[10]_0 ),
        .D(r_reg[10]),
        .Q(\r_reg_reg[10]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[10]_LDC 
       (.CLR(\data_out_reg[10]_0 ),
        .D(1'b1),
        .G(\data_out_reg[10] ),
        .GE(1'b1),
        .Q(\r_reg_reg[10]_LDC_n_0 ));
  FDPE \r_reg_reg[10]_P 
       (.C(clk0),
        .CE(out),
        .D(r_reg[10]),
        .PRE(\data_out_reg[10] ),
        .Q(\r_reg_reg[10]_P_n_0 ));
  FDCE \r_reg_reg[11]_C 
       (.C(clk0),
        .CE(out),
        .CLR(\data_out_reg[11]_0 ),
        .D(r_reg[11]),
        .Q(\r_reg_reg[11]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[11]_LDC 
       (.CLR(\data_out_reg[11]_0 ),
        .D(1'b1),
        .G(\data_out_reg[11] ),
        .GE(1'b1),
        .Q(\r_reg_reg[11]_LDC_n_0 ));
  FDPE \r_reg_reg[11]_P 
       (.C(clk0),
        .CE(out),
        .D(r_reg[11]),
        .PRE(\data_out_reg[11] ),
        .Q(\r_reg_reg[11]_P_n_0 ));
  FDCE \r_reg_reg[12]_C 
       (.C(clk0),
        .CE(out),
        .CLR(\data_out_reg[12]_0 ),
        .D(r_reg[12]),
        .Q(\r_reg_reg[12]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[12]_LDC 
       (.CLR(\data_out_reg[12]_0 ),
        .D(1'b1),
        .G(\data_out_reg[12] ),
        .GE(1'b1),
        .Q(\r_reg_reg[12]_LDC_n_0 ));
  FDPE \r_reg_reg[12]_P 
       (.C(clk0),
        .CE(out),
        .D(r_reg[12]),
        .PRE(\data_out_reg[12] ),
        .Q(\r_reg_reg[12]_P_n_0 ));
  FDCE \r_reg_reg[13]_C 
       (.C(clk0),
        .CE(out),
        .CLR(\data_out_reg[13]_0 ),
        .D(r_reg[13]),
        .Q(\r_reg_reg[13]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[13]_LDC 
       (.CLR(\data_out_reg[13]_0 ),
        .D(1'b1),
        .G(\data_out_reg[13] ),
        .GE(1'b1),
        .Q(\r_reg_reg[13]_LDC_n_0 ));
  FDPE \r_reg_reg[13]_P 
       (.C(clk0),
        .CE(out),
        .D(r_reg[13]),
        .PRE(\data_out_reg[13] ),
        .Q(\r_reg_reg[13]_P_n_0 ));
  FDCE \r_reg_reg[14]_C 
       (.C(clk0),
        .CE(out),
        .CLR(\data_out_reg[14]_0 ),
        .D(r_reg[14]),
        .Q(\r_reg_reg[14]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[14]_LDC 
       (.CLR(\data_out_reg[14]_0 ),
        .D(1'b1),
        .G(\data_out_reg[14] ),
        .GE(1'b1),
        .Q(\r_reg_reg[14]_LDC_n_0 ));
  FDPE \r_reg_reg[14]_P 
       (.C(clk0),
        .CE(out),
        .D(r_reg[14]),
        .PRE(\data_out_reg[14] ),
        .Q(\r_reg_reg[14]_P_n_0 ));
  FDCE \r_reg_reg[15]_C 
       (.C(clk0),
        .CE(out),
        .CLR(\data_out_reg[15]_0 ),
        .D(r_reg[15]),
        .Q(\r_reg_reg[15]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[15]_LDC 
       (.CLR(\data_out_reg[15]_0 ),
        .D(1'b1),
        .G(\data_out_reg[15] ),
        .GE(1'b1),
        .Q(\r_reg_reg[15]_LDC_n_0 ));
  FDPE \r_reg_reg[15]_P 
       (.C(clk0),
        .CE(out),
        .D(r_reg[15]),
        .PRE(\data_out_reg[15] ),
        .Q(\r_reg_reg[15]_P_n_0 ));
  FDCE \r_reg_reg[1]_C 
       (.C(clk0),
        .CE(out),
        .CLR(\data_out_reg[1]_0 ),
        .D(r_reg[1]),
        .Q(\r_reg_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[1]_LDC 
       (.CLR(\data_out_reg[1]_0 ),
        .D(1'b1),
        .G(\data_out_reg[1] ),
        .GE(1'b1),
        .Q(\r_reg_reg[1]_LDC_n_0 ));
  FDPE \r_reg_reg[1]_P 
       (.C(clk0),
        .CE(out),
        .D(r_reg[1]),
        .PRE(\data_out_reg[1] ),
        .Q(\r_reg_reg[1]_P_n_0 ));
  FDCE \r_reg_reg[2]_C 
       (.C(clk0),
        .CE(out),
        .CLR(\data_out_reg[2]_0 ),
        .D(r_reg[2]),
        .Q(\r_reg_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[2]_LDC 
       (.CLR(\data_out_reg[2]_0 ),
        .D(1'b1),
        .G(\data_out_reg[2] ),
        .GE(1'b1),
        .Q(\r_reg_reg[2]_LDC_n_0 ));
  FDPE \r_reg_reg[2]_P 
       (.C(clk0),
        .CE(out),
        .D(r_reg[2]),
        .PRE(\data_out_reg[2] ),
        .Q(\r_reg_reg[2]_P_n_0 ));
  FDCE \r_reg_reg[3]_C 
       (.C(clk0),
        .CE(out),
        .CLR(\data_out_reg[3]_0 ),
        .D(r_reg[3]),
        .Q(\r_reg_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[3]_LDC 
       (.CLR(\data_out_reg[3]_0 ),
        .D(1'b1),
        .G(\data_out_reg[3] ),
        .GE(1'b1),
        .Q(\r_reg_reg[3]_LDC_n_0 ));
  FDPE \r_reg_reg[3]_P 
       (.C(clk0),
        .CE(out),
        .D(r_reg[3]),
        .PRE(\data_out_reg[3] ),
        .Q(\r_reg_reg[3]_P_n_0 ));
  FDCE \r_reg_reg[4]_C 
       (.C(clk0),
        .CE(out),
        .CLR(\data_out_reg[4]_0 ),
        .D(r_reg[4]),
        .Q(\r_reg_reg[4]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[4]_LDC 
       (.CLR(\data_out_reg[4]_0 ),
        .D(1'b1),
        .G(\data_out_reg[4] ),
        .GE(1'b1),
        .Q(\r_reg_reg[4]_LDC_n_0 ));
  FDPE \r_reg_reg[4]_P 
       (.C(clk0),
        .CE(out),
        .D(r_reg[4]),
        .PRE(\data_out_reg[4] ),
        .Q(\r_reg_reg[4]_P_n_0 ));
  FDCE \r_reg_reg[5]_C 
       (.C(clk0),
        .CE(out),
        .CLR(\data_out_reg[5]_0 ),
        .D(r_reg[5]),
        .Q(\r_reg_reg[5]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[5]_LDC 
       (.CLR(\data_out_reg[5]_0 ),
        .D(1'b1),
        .G(\data_out_reg[5] ),
        .GE(1'b1),
        .Q(\r_reg_reg[5]_LDC_n_0 ));
  FDPE \r_reg_reg[5]_P 
       (.C(clk0),
        .CE(out),
        .D(r_reg[5]),
        .PRE(\data_out_reg[5] ),
        .Q(\r_reg_reg[5]_P_n_0 ));
  FDCE \r_reg_reg[6]_C 
       (.C(clk0),
        .CE(out),
        .CLR(\data_out_reg[6]_0 ),
        .D(r_reg[6]),
        .Q(\r_reg_reg[6]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[6]_LDC 
       (.CLR(\data_out_reg[6]_0 ),
        .D(1'b1),
        .G(\data_out_reg[6] ),
        .GE(1'b1),
        .Q(\r_reg_reg[6]_LDC_n_0 ));
  FDPE \r_reg_reg[6]_P 
       (.C(clk0),
        .CE(out),
        .D(r_reg[6]),
        .PRE(\data_out_reg[6] ),
        .Q(\r_reg_reg[6]_P_n_0 ));
  FDCE \r_reg_reg[7]_C 
       (.C(clk0),
        .CE(out),
        .CLR(\data_out_reg[7]_0 ),
        .D(r_reg[7]),
        .Q(\r_reg_reg[7]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[7]_LDC 
       (.CLR(\data_out_reg[7]_0 ),
        .D(1'b1),
        .G(\data_out_reg[7] ),
        .GE(1'b1),
        .Q(\r_reg_reg[7]_LDC_n_0 ));
  FDPE \r_reg_reg[7]_P 
       (.C(clk0),
        .CE(out),
        .D(r_reg[7]),
        .PRE(\data_out_reg[7] ),
        .Q(\r_reg_reg[7]_P_n_0 ));
  FDCE \r_reg_reg[8]_C 
       (.C(clk0),
        .CE(out),
        .CLR(\data_out_reg[8]_0 ),
        .D(r_reg[8]),
        .Q(\r_reg_reg[8]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[8]_LDC 
       (.CLR(\data_out_reg[8]_0 ),
        .D(1'b1),
        .G(\data_out_reg[8] ),
        .GE(1'b1),
        .Q(\r_reg_reg[8]_LDC_n_0 ));
  FDPE \r_reg_reg[8]_P 
       (.C(clk0),
        .CE(out),
        .D(r_reg[8]),
        .PRE(\data_out_reg[8] ),
        .Q(\r_reg_reg[8]_P_n_0 ));
  FDCE \r_reg_reg[9]_C 
       (.C(clk0),
        .CE(out),
        .CLR(\data_out_reg[9]_0 ),
        .D(r_reg[9]),
        .Q(\r_reg_reg[9]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[9]_LDC 
       (.CLR(\data_out_reg[9]_0 ),
        .D(1'b1),
        .G(\data_out_reg[9] ),
        .GE(1'b1),
        .Q(\r_reg_reg[9]_LDC_n_0 ));
  FDPE \r_reg_reg[9]_P 
       (.C(clk0),
        .CE(out),
        .D(r_reg[9]),
        .PRE(\data_out_reg[9] ),
        .Q(\r_reg_reg[9]_P_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_downCounter8Bits
   (D,
    \FSM_onehot_state_reg[4] ,
    \FSM_onehot_state_reg[3] ,
    s00_axi_aresetn,
    en_cntr_data,
    clk0,
    out,
    \FSM_onehot_state_reg[3]_0 );
  output [1:0]D;
  output \FSM_onehot_state_reg[4] ;
  input \FSM_onehot_state_reg[3] ;
  input s00_axi_aresetn;
  input en_cntr_data;
  input clk0;
  input [1:0]out;
  input \FSM_onehot_state_reg[3]_0 ;

  wire [1:0]D;
  wire \FSM_onehot_state[8]_i_2_n_0 ;
  wire \FSM_onehot_state_reg[3] ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[4] ;
  wire clk0;
  wire en_cntr_data;
  wire [1:0]out;
  wire [7:0]r_reg;
  wire \r_reg[4]_C_i_1__0_n_0 ;
  wire \r_reg[4]_C_i_2_n_0 ;
  wire \r_reg[5]_C_i_1__0_n_0 ;
  wire \r_reg[7]_i_4_n_0 ;
  wire \r_reg[7]_i_5_n_0 ;
  wire [7:0]r_reg_0;
  wire \r_reg_reg[4]_C_n_0 ;
  wire \r_reg_reg[4]_P_n_0 ;
  wire \r_reg_reg[5]_C_n_0 ;
  wire \r_reg_reg[5]_LDC_n_0 ;
  wire \r_reg_reg[5]_P_n_0 ;
  wire s00_axi_aresetn;

  LUT6 #(
    .INIT(64'hFFFFFF4700000000)) 
    \FSM_onehot_state[4]_i_3 
       (.I0(\r_reg_reg[4]_P_n_0 ),
        .I1(\r_reg_reg[5]_LDC_n_0 ),
        .I2(\r_reg_reg[4]_C_n_0 ),
        .I3(\FSM_onehot_state[8]_i_2_n_0 ),
        .I4(r_reg[2]),
        .I5(out[0]),
        .O(\FSM_onehot_state_reg[4] ));
  LUT5 #(
    .INIT(32'hABA2AAA2)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(out[1]),
        .I1(r_reg[2]),
        .I2(\FSM_onehot_state[8]_i_2_n_0 ),
        .I3(r_reg[4]),
        .I4(out[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(\r_reg_reg[4]_P_n_0 ),
        .I1(\r_reg_reg[5]_LDC_n_0 ),
        .I2(\r_reg_reg[4]_C_n_0 ),
        .O(r_reg[4]));
  LUT6 #(
    .INIT(64'h0002220200000000)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(out[1]),
        .I1(\FSM_onehot_state[8]_i_2_n_0 ),
        .I2(\r_reg_reg[4]_C_n_0 ),
        .I3(\r_reg_reg[5]_LDC_n_0 ),
        .I4(\r_reg_reg[4]_P_n_0 ),
        .I5(r_reg[2]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[8]_i_2 
       (.I0(r_reg[3]),
        .I1(r_reg[0]),
        .I2(r_reg[1]),
        .I3(r_reg[7]),
        .I4(r_reg[5]),
        .I5(r_reg[6]),
        .O(\FSM_onehot_state[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg[0]_i_1__0 
       (.I0(\r_reg[7]_i_4_n_0 ),
        .I1(r_reg[0]),
        .O(r_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \r_reg[1]_i_1 
       (.I0(r_reg[0]),
        .I1(r_reg[1]),
        .I2(\r_reg[7]_i_4_n_0 ),
        .O(r_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hE100)) 
    \r_reg[2]_i_1 
       (.I0(r_reg[1]),
        .I1(r_reg[0]),
        .I2(r_reg[2]),
        .I3(\r_reg[7]_i_4_n_0 ),
        .O(r_reg_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFE010000)) 
    \r_reg[3]_i_1 
       (.I0(r_reg[2]),
        .I1(r_reg[0]),
        .I2(r_reg[1]),
        .I3(r_reg[3]),
        .I4(\r_reg[7]_i_4_n_0 ),
        .O(r_reg_0[3]));
  LUT6 #(
    .INIT(64'hA600FFFF95000000)) 
    \r_reg[4]_C_i_1__0 
       (.I0(\r_reg[4]_C_i_2_n_0 ),
        .I1(\r_reg_reg[5]_LDC_n_0 ),
        .I2(\r_reg_reg[4]_P_n_0 ),
        .I3(\r_reg[7]_i_4_n_0 ),
        .I4(en_cntr_data),
        .I5(\r_reg_reg[4]_C_n_0 ),
        .O(\r_reg[4]_C_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_reg[4]_C_i_2 
       (.I0(r_reg[2]),
        .I1(r_reg[0]),
        .I2(r_reg[1]),
        .I3(r_reg[3]),
        .O(\r_reg[4]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000100000000)) 
    \r_reg[4]_P_i_1 
       (.I0(r_reg[3]),
        .I1(r_reg[1]),
        .I2(r_reg[0]),
        .I3(r_reg[2]),
        .I4(r_reg[4]),
        .I5(\r_reg[7]_i_4_n_0 ),
        .O(r_reg_0[4]));
  LUT6 #(
    .INIT(64'hA600FFFF95000000)) 
    \r_reg[5]_C_i_1__0 
       (.I0(\r_reg[7]_i_5_n_0 ),
        .I1(\r_reg_reg[5]_LDC_n_0 ),
        .I2(\r_reg_reg[5]_P_n_0 ),
        .I3(\r_reg[7]_i_4_n_0 ),
        .I4(en_cntr_data),
        .I5(\r_reg_reg[5]_C_n_0 ),
        .O(\r_reg[5]_C_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hA9590000)) 
    \r_reg[5]_P_i_1 
       (.I0(\r_reg[7]_i_5_n_0 ),
        .I1(\r_reg_reg[5]_C_n_0 ),
        .I2(\r_reg_reg[5]_LDC_n_0 ),
        .I3(\r_reg_reg[5]_P_n_0 ),
        .I4(\r_reg[7]_i_4_n_0 ),
        .O(r_reg_0[5]));
  LUT6 #(
    .INIT(64'hAAAA9A9500000000)) 
    \r_reg[6]_i_1 
       (.I0(r_reg[6]),
        .I1(\r_reg_reg[5]_P_n_0 ),
        .I2(\r_reg_reg[5]_LDC_n_0 ),
        .I3(\r_reg_reg[5]_C_n_0 ),
        .I4(\r_reg[7]_i_5_n_0 ),
        .I5(\r_reg[7]_i_4_n_0 ),
        .O(r_reg_0[6]));
  LUT5 #(
    .INIT(32'hA0A0A082)) 
    \r_reg[7]_i_2 
       (.I0(\r_reg[7]_i_4_n_0 ),
        .I1(\r_reg[7]_i_5_n_0 ),
        .I2(r_reg[7]),
        .I3(r_reg[5]),
        .I4(r_reg[6]),
        .O(r_reg_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFEEEFE)) 
    \r_reg[7]_i_4 
       (.I0(r_reg[2]),
        .I1(\FSM_onehot_state[8]_i_2_n_0 ),
        .I2(\r_reg_reg[4]_C_n_0 ),
        .I3(\r_reg_reg[5]_LDC_n_0 ),
        .I4(\r_reg_reg[4]_P_n_0 ),
        .O(\r_reg[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r_reg[7]_i_5 
       (.I0(r_reg[3]),
        .I1(r_reg[1]),
        .I2(r_reg[0]),
        .I3(r_reg[2]),
        .I4(r_reg[4]),
        .O(\r_reg[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[7]_i_6 
       (.I0(\r_reg_reg[5]_P_n_0 ),
        .I1(\r_reg_reg[5]_LDC_n_0 ),
        .I2(\r_reg_reg[5]_C_n_0 ),
        .O(r_reg[5]));
  FDCE \r_reg_reg[0] 
       (.C(clk0),
        .CE(en_cntr_data),
        .CLR(\FSM_onehot_state_reg[3]_0 ),
        .D(r_reg_0[0]),
        .Q(r_reg[0]));
  FDCE \r_reg_reg[1] 
       (.C(clk0),
        .CE(en_cntr_data),
        .CLR(\FSM_onehot_state_reg[3]_0 ),
        .D(r_reg_0[1]),
        .Q(r_reg[1]));
  FDCE \r_reg_reg[2] 
       (.C(clk0),
        .CE(en_cntr_data),
        .CLR(\FSM_onehot_state_reg[3]_0 ),
        .D(r_reg_0[2]),
        .Q(r_reg[2]));
  FDCE \r_reg_reg[3] 
       (.C(clk0),
        .CE(en_cntr_data),
        .CLR(\FSM_onehot_state_reg[3]_0 ),
        .D(r_reg_0[3]),
        .Q(r_reg[3]));
  FDCE \r_reg_reg[4]_C 
       (.C(clk0),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg[4]_C_i_1__0_n_0 ),
        .Q(\r_reg_reg[4]_C_n_0 ));
  FDPE \r_reg_reg[4]_P 
       (.C(clk0),
        .CE(en_cntr_data),
        .D(r_reg_0[4]),
        .PRE(\FSM_onehot_state_reg[3] ),
        .Q(\r_reg_reg[4]_P_n_0 ));
  FDCE \r_reg_reg[5]_C 
       (.C(clk0),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg[5]_C_i_1__0_n_0 ),
        .Q(\r_reg_reg[5]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[5]_LDC 
       (.CLR(s00_axi_aresetn),
        .D(1'b1),
        .G(\FSM_onehot_state_reg[3] ),
        .GE(1'b1),
        .Q(\r_reg_reg[5]_LDC_n_0 ));
  FDPE \r_reg_reg[5]_P 
       (.C(clk0),
        .CE(en_cntr_data),
        .D(r_reg_0[5]),
        .PRE(\FSM_onehot_state_reg[3] ),
        .Q(\r_reg_reg[5]_P_n_0 ));
  FDCE \r_reg_reg[6] 
       (.C(clk0),
        .CE(en_cntr_data),
        .CLR(\FSM_onehot_state_reg[3]_0 ),
        .D(r_reg_0[6]),
        .Q(r_reg[6]));
  FDCE \r_reg_reg[7] 
       (.C(clk0),
        .CE(en_cntr_data),
        .CLR(\FSM_onehot_state_reg[3]_0 ),
        .D(r_reg_0[7]),
        .Q(r_reg[7]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_16bits
   (Q,
    \slv_reg3_reg[15] ,
    CLK,
    s00_axi_aresetn);
  output [15:0]Q;
  input [15:0]\slv_reg3_reg[15] ;
  input CLK;
  input s00_axi_aresetn;

  wire CLK;
  wire [15:0]Q;
  wire s00_axi_aresetn;
  wire [15:0]\slv_reg3_reg[15] ;

  FDCE \data_out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\slv_reg3_reg[15] [0]),
        .Q(Q[0]));
  FDCE \data_out_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\slv_reg3_reg[15] [10]),
        .Q(Q[10]));
  FDCE \data_out_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\slv_reg3_reg[15] [11]),
        .Q(Q[11]));
  FDCE \data_out_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\slv_reg3_reg[15] [12]),
        .Q(Q[12]));
  FDCE \data_out_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\slv_reg3_reg[15] [13]),
        .Q(Q[13]));
  FDCE \data_out_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\slv_reg3_reg[15] [14]),
        .Q(Q[14]));
  FDCE \data_out_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\slv_reg3_reg[15] [15]),
        .Q(Q[15]));
  FDCE \data_out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\slv_reg3_reg[15] [1]),
        .Q(Q[1]));
  FDCE \data_out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\slv_reg3_reg[15] [2]),
        .Q(Q[2]));
  FDCE \data_out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\slv_reg3_reg[15] [3]),
        .Q(Q[3]));
  FDCE \data_out_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\slv_reg3_reg[15] [4]),
        .Q(Q[4]));
  FDCE \data_out_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\slv_reg3_reg[15] [5]),
        .Q(Q[5]));
  FDCE \data_out_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\slv_reg3_reg[15] [6]),
        .Q(Q[6]));
  FDCE \data_out_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\slv_reg3_reg[15] [7]),
        .Q(Q[7]));
  FDCE \data_out_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\slv_reg3_reg[15] [8]),
        .Q(Q[8]));
  FDCE \data_out_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\slv_reg3_reg[15] [9]),
        .Q(Q[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_2bits
   (D,
    \FSM_onehot_state_reg[4] ,
    stop_int,
    \r_reg_reg[6]_P ,
    \FSM_onehot_state_reg[10] ,
    Q_reg,
    \slv_reg3_reg[30] ,
    CLK,
    s00_axi_aresetn);
  output [0:0]D;
  output \FSM_onehot_state_reg[4] ;
  input stop_int;
  input \r_reg_reg[6]_P ;
  input \FSM_onehot_state_reg[10] ;
  input Q_reg;
  input [1:0]\slv_reg3_reg[30] ;
  input CLK;
  input s00_axi_aresetn;

  wire CLK;
  wire [0:0]D;
  wire \FSM_onehot_state_reg[10] ;
  wire \FSM_onehot_state_reg[4] ;
  wire Q_reg;
  wire [1:0]mode_int;
  wire \r_reg_reg[6]_P ;
  wire s00_axi_aresetn;
  wire [1:0]\slv_reg3_reg[30] ;
  wire stop_int;

  LUT6 #(
    .INIT(64'hFFFFFFFFEEEA0000)) 
    \FSM_onehot_state[12]_i_1 
       (.I0(stop_int),
        .I1(\r_reg_reg[6]_P ),
        .I2(mode_int[0]),
        .I3(mode_int[1]),
        .I4(\FSM_onehot_state_reg[10] ),
        .I5(Q_reg),
        .O(D));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(mode_int[0]),
        .I1(mode_int[1]),
        .O(\FSM_onehot_state_reg[4] ));
  FDCE \data_out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\slv_reg3_reg[30] [0]),
        .Q(mode_int[0]));
  FDCE \data_out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\slv_reg3_reg[30] [1]),
        .Q(mode_int[1]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits
   (Q,
    \r_reg_reg[31] ,
    Q_reg,
    s00_axi_aresetn);
  output [31:0]Q;
  input [31:0]\r_reg_reg[31] ;
  input Q_reg;
  input s00_axi_aresetn;

  wire [31:0]Q;
  wire Q_reg;
  wire [31:0]\r_reg_reg[31] ;
  wire s00_axi_aresetn;

  FDCE \data_out_reg[0] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [0]),
        .Q(Q[0]));
  FDCE \data_out_reg[10] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [10]),
        .Q(Q[10]));
  FDCE \data_out_reg[11] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [11]),
        .Q(Q[11]));
  FDCE \data_out_reg[12] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [12]),
        .Q(Q[12]));
  FDCE \data_out_reg[13] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [13]),
        .Q(Q[13]));
  FDCE \data_out_reg[14] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [14]),
        .Q(Q[14]));
  FDCE \data_out_reg[15] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [15]),
        .Q(Q[15]));
  FDCE \data_out_reg[16] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [16]),
        .Q(Q[16]));
  FDCE \data_out_reg[17] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [17]),
        .Q(Q[17]));
  FDCE \data_out_reg[18] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [18]),
        .Q(Q[18]));
  FDCE \data_out_reg[19] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [19]),
        .Q(Q[19]));
  FDCE \data_out_reg[1] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [1]),
        .Q(Q[1]));
  FDCE \data_out_reg[20] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [20]),
        .Q(Q[20]));
  FDCE \data_out_reg[21] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [21]),
        .Q(Q[21]));
  FDCE \data_out_reg[22] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [22]),
        .Q(Q[22]));
  FDCE \data_out_reg[23] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [23]),
        .Q(Q[23]));
  FDCE \data_out_reg[24] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [24]),
        .Q(Q[24]));
  FDCE \data_out_reg[25] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [25]),
        .Q(Q[25]));
  FDCE \data_out_reg[26] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [26]),
        .Q(Q[26]));
  FDCE \data_out_reg[27] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [27]),
        .Q(Q[27]));
  FDCE \data_out_reg[28] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [28]),
        .Q(Q[28]));
  FDCE \data_out_reg[29] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [29]),
        .Q(Q[29]));
  FDCE \data_out_reg[2] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [2]),
        .Q(Q[2]));
  FDCE \data_out_reg[30] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [30]),
        .Q(Q[30]));
  FDCE \data_out_reg[31] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [31]),
        .Q(Q[31]));
  FDCE \data_out_reg[3] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [3]),
        .Q(Q[3]));
  FDCE \data_out_reg[4] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [4]),
        .Q(Q[4]));
  FDCE \data_out_reg[5] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [5]),
        .Q(Q[5]));
  FDCE \data_out_reg[6] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [6]),
        .Q(Q[6]));
  FDCE \data_out_reg[7] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [7]),
        .Q(Q[7]));
  FDCE \data_out_reg[8] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [8]),
        .Q(Q[8]));
  FDCE \data_out_reg[9] 
       (.C(Q_reg),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg[31] [9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "register_32bits" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_10
   (data_out_reg_c_0,
    data_out_reg_c_1,
    shift,
    s00_axi_aresetn);
  output data_out_reg_c_0;
  input data_out_reg_c_1;
  input shift;
  input s00_axi_aresetn;

  wire data_out_reg_c_0;
  wire data_out_reg_c_1;
  wire s00_axi_aresetn;
  wire shift;

  FDCE data_out_reg_c
       (.C(shift),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(data_out_reg_c_1),
        .Q(data_out_reg_c_0));
endmodule

(* ORIG_REF_NAME = "register_32bits" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_11
   (data_out_reg_c_0,
    data_out_reg_c_1,
    shift,
    s00_axi_aresetn);
  output data_out_reg_c_0;
  input data_out_reg_c_1;
  input shift;
  input s00_axi_aresetn;

  wire data_out_reg_c_0;
  wire data_out_reg_c_1;
  wire s00_axi_aresetn;
  wire shift;

  FDCE data_out_reg_c
       (.C(shift),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(data_out_reg_c_1),
        .Q(data_out_reg_c_0));
endmodule

(* ORIG_REF_NAME = "register_32bits" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_12
   (data_out_reg_c_0,
    data_out_reg_c_1,
    shift,
    s00_axi_aresetn);
  output data_out_reg_c_0;
  input data_out_reg_c_1;
  input shift;
  input s00_axi_aresetn;

  wire data_out_reg_c_0;
  wire data_out_reg_c_1;
  wire s00_axi_aresetn;
  wire shift;

  FDCE data_out_reg_c
       (.C(shift),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(data_out_reg_c_1),
        .Q(data_out_reg_c_0));
endmodule

(* ORIG_REF_NAME = "register_32bits" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_13
   (data_out_reg_c_0,
    \data_out_reg[31]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[30]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[29]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[28]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[27]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[26]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[25]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[24]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[23]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[22]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[21]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[20]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[19]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[18]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[17]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[16]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[15]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[14]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[13]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[12]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[11]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[10]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[9]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[8]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[7]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[4]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[3]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[2]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[1]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[0]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    data_out_reg_c_1,
    shift,
    s00_axi_aresetn,
    Q);
  output data_out_reg_c_0;
  output \data_out_reg[31]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[30]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[29]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[28]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[27]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[26]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[25]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[24]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[23]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[22]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[21]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[20]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[19]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[18]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[17]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[16]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[15]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[14]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[13]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[12]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[11]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[10]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[9]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[8]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[7]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[4]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[3]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[2]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[1]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  output \data_out_reg[0]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input data_out_reg_c_1;
  input shift;
  input s00_axi_aresetn;
  input [31:0]Q;

  wire [31:0]Q;
  wire \data_out_reg[0]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[10]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[11]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[12]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[13]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[14]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[15]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[16]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[17]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[18]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[19]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[1]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[20]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[21]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[22]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[23]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[24]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[25]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[26]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[27]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[28]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[29]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[2]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[30]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[31]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[3]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[4]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[7]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[8]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[9]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire data_out_reg_c_0;
  wire data_out_reg_c_1;
  wire s00_axi_aresetn;
  wire shift;

  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[0]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[0]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[0]),
        .Q(\data_out_reg[0]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[10]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[10]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[10]),
        .Q(\data_out_reg[10]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[11]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[11]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[11]),
        .Q(\data_out_reg[11]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[12]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[12]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[12]),
        .Q(\data_out_reg[12]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[13]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[13]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[13]),
        .Q(\data_out_reg[13]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[14]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[14]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[14]),
        .Q(\data_out_reg[14]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[15]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[15]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[15]),
        .Q(\data_out_reg[15]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[16]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[16]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[16]),
        .Q(\data_out_reg[16]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[17]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[17]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[17]),
        .Q(\data_out_reg[17]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[18]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[18]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[18]),
        .Q(\data_out_reg[18]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[19]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[19]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[19]),
        .Q(\data_out_reg[19]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[1]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[1]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[1]),
        .Q(\data_out_reg[1]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[20]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[20]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[20]),
        .Q(\data_out_reg[20]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[21]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[21]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[21]),
        .Q(\data_out_reg[21]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[22]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[22]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[22]),
        .Q(\data_out_reg[22]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[23]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[23]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[23]),
        .Q(\data_out_reg[23]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[24]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[24]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[24]),
        .Q(\data_out_reg[24]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[25]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[25]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[25]),
        .Q(\data_out_reg[25]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[26]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[26]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[26]),
        .Q(\data_out_reg[26]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[27]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[27]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[27]),
        .Q(\data_out_reg[27]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[28]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[28]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[28]),
        .Q(\data_out_reg[28]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[29]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[29]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[29]),
        .Q(\data_out_reg[29]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[2]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[2]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[2]),
        .Q(\data_out_reg[2]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[30]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[30]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[30]),
        .Q(\data_out_reg[30]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[31]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[31]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[31]),
        .Q(\data_out_reg[31]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[3]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[3]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[3]),
        .Q(\data_out_reg[3]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[4]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[4]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[4]),
        .Q(\data_out_reg[4]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[5]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[5]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[5]),
        .Q(\data_out_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[6]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[6]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[6]),
        .Q(\data_out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[7]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[7]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[7]),
        .Q(\data_out_reg[7]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[8]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[8]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[8]),
        .Q(\data_out_reg[8]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[9]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c " *) 
  SRL16E \data_out_reg[9]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q[9]),
        .Q(\data_out_reg[9]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ));
  FDCE data_out_reg_c
       (.C(shift),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(data_out_reg_c_1),
        .Q(data_out_reg_c_0));
endmodule

(* ORIG_REF_NAME = "register_32bits" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_14
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
    shift,
    s00_axi_aresetn,
    \data_out_reg[31]_0 ,
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
  input data_out_reg_c_0;
  input shift;
  input s00_axi_aresetn;
  input \data_out_reg[31]_0 ;
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
  wire \data_out_reg[0]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[10] ;
  wire \data_out_reg[10]_0 ;
  wire \data_out_reg[10]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[11] ;
  wire \data_out_reg[11]_0 ;
  wire \data_out_reg[11]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[12] ;
  wire \data_out_reg[12]_0 ;
  wire \data_out_reg[12]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[13] ;
  wire \data_out_reg[13]_0 ;
  wire \data_out_reg[13]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[14] ;
  wire \data_out_reg[14]_0 ;
  wire \data_out_reg[14]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[15] ;
  wire \data_out_reg[15]_0 ;
  wire \data_out_reg[15]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[16] ;
  wire \data_out_reg[16]_0 ;
  wire \data_out_reg[16]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[17] ;
  wire \data_out_reg[17]_0 ;
  wire \data_out_reg[17]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[18] ;
  wire \data_out_reg[18]_0 ;
  wire \data_out_reg[18]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[19] ;
  wire \data_out_reg[19]_0 ;
  wire \data_out_reg[19]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[1] ;
  wire \data_out_reg[1]_0 ;
  wire \data_out_reg[1]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[20] ;
  wire \data_out_reg[20]_0 ;
  wire \data_out_reg[20]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[21] ;
  wire \data_out_reg[21]_0 ;
  wire \data_out_reg[21]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[22] ;
  wire \data_out_reg[22]_0 ;
  wire \data_out_reg[22]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[23] ;
  wire \data_out_reg[23]_0 ;
  wire \data_out_reg[23]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[24] ;
  wire \data_out_reg[24]_0 ;
  wire \data_out_reg[24]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[25] ;
  wire \data_out_reg[25]_0 ;
  wire \data_out_reg[25]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[26] ;
  wire \data_out_reg[26]_0 ;
  wire \data_out_reg[26]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[27] ;
  wire \data_out_reg[27]_0 ;
  wire \data_out_reg[27]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[28] ;
  wire \data_out_reg[28]_0 ;
  wire \data_out_reg[28]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[29] ;
  wire \data_out_reg[29]_0 ;
  wire \data_out_reg[29]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[2] ;
  wire \data_out_reg[2]_0 ;
  wire \data_out_reg[2]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[30] ;
  wire \data_out_reg[30]_0 ;
  wire \data_out_reg[30]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[31] ;
  wire \data_out_reg[31]_0 ;
  wire \data_out_reg[31]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[3] ;
  wire \data_out_reg[3]_0 ;
  wire \data_out_reg[3]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[4] ;
  wire \data_out_reg[4]_0 ;
  wire \data_out_reg[4]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[5] ;
  wire \data_out_reg[5]_0 ;
  wire \data_out_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[6] ;
  wire \data_out_reg[6]_0 ;
  wire \data_out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[7] ;
  wire \data_out_reg[7]_0 ;
  wire \data_out_reg[7]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[8] ;
  wire \data_out_reg[8]_0 ;
  wire \data_out_reg[8]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire \data_out_reg[9] ;
  wire \data_out_reg[9]_0 ;
  wire \data_out_reg[9]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ;
  wire data_out_reg_c_0;
  wire data_out_reg_c_n_0;
  wire s00_axi_aresetn;
  wire shift;

  FDRE \data_out_reg[0]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[0]_0 ),
        .Q(\data_out_reg[0]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[10]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[10]_0 ),
        .Q(\data_out_reg[10]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[11]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[11]_0 ),
        .Q(\data_out_reg[11]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[12]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[12]_0 ),
        .Q(\data_out_reg[12]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[13]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[13]_0 ),
        .Q(\data_out_reg[13]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[14]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[14]_0 ),
        .Q(\data_out_reg[14]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[15]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[15]_0 ),
        .Q(\data_out_reg[15]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[16]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[16]_0 ),
        .Q(\data_out_reg[16]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[17]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[17]_0 ),
        .Q(\data_out_reg[17]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[18]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[18]_0 ),
        .Q(\data_out_reg[18]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[19]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[19]_0 ),
        .Q(\data_out_reg[19]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[1]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[1]_0 ),
        .Q(\data_out_reg[1]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[20]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[20]_0 ),
        .Q(\data_out_reg[20]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[21]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[21]_0 ),
        .Q(\data_out_reg[21]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[22]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[22]_0 ),
        .Q(\data_out_reg[22]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[23]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[23]_0 ),
        .Q(\data_out_reg[23]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[24]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[24]_0 ),
        .Q(\data_out_reg[24]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[25]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[25]_0 ),
        .Q(\data_out_reg[25]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[26]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[26]_0 ),
        .Q(\data_out_reg[26]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[27]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[27]_0 ),
        .Q(\data_out_reg[27]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[28]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[28]_0 ),
        .Q(\data_out_reg[28]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[29]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[29]_0 ),
        .Q(\data_out_reg[29]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[2]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[2]_0 ),
        .Q(\data_out_reg[2]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[30]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[30]_0 ),
        .Q(\data_out_reg[30]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[31]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[31]_0 ),
        .Q(\data_out_reg[31]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[3]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[3]_0 ),
        .Q(\data_out_reg[3]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[4]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[4]_0 ),
        .Q(\data_out_reg[4]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[5]_0 ),
        .Q(\data_out_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[6]_0 ),
        .Q(\data_out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[7]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[7]_0 ),
        .Q(\data_out_reg[7]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[8]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[8]_0 ),
        .Q(\data_out_reg[8]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_out_reg[9]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c 
       (.C(shift),
        .CE(1'b1),
        .D(\data_out_reg[9]_0 ),
        .Q(\data_out_reg[9]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .R(1'b0));
  FDCE data_out_reg_c
       (.C(shift),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(data_out_reg_c_0),
        .Q(data_out_reg_c_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate
       (.I0(\data_out_reg[31]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[31] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__0
       (.I0(\data_out_reg[30]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[30] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__1
       (.I0(\data_out_reg[29]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[29] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__10
       (.I0(\data_out_reg[20]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[20] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__11
       (.I0(\data_out_reg[19]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[19] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__12
       (.I0(\data_out_reg[18]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[18] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__13
       (.I0(\data_out_reg[17]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[17] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__14
       (.I0(\data_out_reg[16]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[16] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__15
       (.I0(\data_out_reg[15]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__16
       (.I0(\data_out_reg[14]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[14] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__17
       (.I0(\data_out_reg[13]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[13] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__18
       (.I0(\data_out_reg[12]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[12] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__19
       (.I0(\data_out_reg[11]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[11] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__2
       (.I0(\data_out_reg[28]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[28] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__20
       (.I0(\data_out_reg[10]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[10] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__21
       (.I0(\data_out_reg[9]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[9] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__22
       (.I0(\data_out_reg[8]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__23
       (.I0(\data_out_reg[7]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__24
       (.I0(\data_out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__25
       (.I0(\data_out_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__26
       (.I0(\data_out_reg[4]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__27
       (.I0(\data_out_reg[3]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__28
       (.I0(\data_out_reg[2]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__29
       (.I0(\data_out_reg[1]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__3
       (.I0(\data_out_reg[27]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[27] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__30
       (.I0(\data_out_reg[0]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__4
       (.I0(\data_out_reg[26]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[26] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__5
       (.I0(\data_out_reg[25]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[25] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__6
       (.I0(\data_out_reg[24]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[24] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__7
       (.I0(\data_out_reg[23]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[23] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__8
       (.I0(\data_out_reg[22]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[22] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_reg_gate__9
       (.I0(\data_out_reg[21]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0 ),
        .I1(data_out_reg_c_n_0),
        .O(\data_out_reg[21] ));
endmodule

(* ORIG_REF_NAME = "register_32bits" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_6
   (m00_axis_tdata,
    \data_out_reg[31]_0 ,
    \data_out_reg[31]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    shift,
    \data_out_reg[30]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[29]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[28]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[27]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[26]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[25]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[24]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[23]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[22]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[21]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[20]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[19]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[18]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[17]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[16]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[15]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[14]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[13]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[12]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[11]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[10]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[9]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[8]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[7]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[4]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[3]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[2]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[1]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    \data_out_reg[0]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ,
    s00_axi_aresetn);
  output [31:0]m00_axis_tdata;
  output \data_out_reg[31]_0 ;
  input \data_out_reg[31]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input shift;
  input \data_out_reg[30]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[29]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[28]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[27]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[26]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[25]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[24]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[23]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[22]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[21]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[20]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[19]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[18]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[17]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[16]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[15]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[14]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[13]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[12]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[11]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[10]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[9]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[8]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[7]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[4]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[3]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[2]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[1]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input \data_out_reg[0]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  input s00_axi_aresetn;

  wire \data_out_reg[0]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[10]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[11]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[12]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[13]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[14]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[15]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[16]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[17]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[18]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[19]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[1]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[20]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[21]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[22]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[23]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[24]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[25]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[26]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[27]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[28]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[29]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[2]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[30]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[31]_0 ;
  wire \data_out_reg[31]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[3]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[4]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[7]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[8]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire \data_out_reg[9]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ;
  wire [31:0]m00_axis_tdata;
  wire s00_axi_aresetn;
  wire shift;

  LUT1 #(
    .INIT(2'h1)) 
    Q_i_2
       (.I0(s00_axi_aresetn),
        .O(\data_out_reg[31]_0 ));
  FDCE \data_out_reg[0] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[0]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[0]));
  FDCE \data_out_reg[10] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[10]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[10]));
  FDCE \data_out_reg[11] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[11]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[11]));
  FDCE \data_out_reg[12] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[12]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[12]));
  FDCE \data_out_reg[13] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[13]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[13]));
  FDCE \data_out_reg[14] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[14]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[14]));
  FDCE \data_out_reg[15] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[15]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[15]));
  FDCE \data_out_reg[16] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[16]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[16]));
  FDCE \data_out_reg[17] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[17]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[17]));
  FDCE \data_out_reg[18] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[18]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[18]));
  FDCE \data_out_reg[19] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[19]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[19]));
  FDCE \data_out_reg[1] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[1]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[1]));
  FDCE \data_out_reg[20] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[20]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[20]));
  FDCE \data_out_reg[21] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[21]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[21]));
  FDCE \data_out_reg[22] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[22]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[22]));
  FDCE \data_out_reg[23] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[23]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[23]));
  FDCE \data_out_reg[24] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[24]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[24]));
  FDCE \data_out_reg[25] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[25]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[25]));
  FDCE \data_out_reg[26] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[26]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[26]));
  FDCE \data_out_reg[27] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[27]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[27]));
  FDCE \data_out_reg[28] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[28]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[28]));
  FDCE \data_out_reg[29] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[29]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[29]));
  FDCE \data_out_reg[2] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[2]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[2]));
  FDCE \data_out_reg[30] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[30]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[30]));
  FDCE \data_out_reg[31] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[31]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[31]));
  FDCE \data_out_reg[3] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[3]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[3]));
  FDCE \data_out_reg[4] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[4]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[4]));
  FDCE \data_out_reg[5] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[5]));
  FDCE \data_out_reg[6] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[6]));
  FDCE \data_out_reg[7] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[7]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[7]));
  FDCE \data_out_reg[8] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[8]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[8]));
  FDCE \data_out_reg[9] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(\data_out_reg[9]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c ),
        .Q(m00_axis_tdata[9]));
endmodule

(* ORIG_REF_NAME = "register_32bits" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_7
   (data_out_reg_c_0,
    shift,
    s00_axi_aresetn);
  output data_out_reg_c_0;
  input shift;
  input s00_axi_aresetn;

  wire data_out_reg_c_0;
  wire s00_axi_aresetn;
  wire shift;

  FDCE data_out_reg_c
       (.C(shift),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(1'b1),
        .Q(data_out_reg_c_0));
endmodule

(* ORIG_REF_NAME = "register_32bits" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_8
   (data_out_reg_c_0,
    data_out_reg_c_1,
    shift,
    s00_axi_aresetn);
  output data_out_reg_c_0;
  input data_out_reg_c_1;
  input shift;
  input s00_axi_aresetn;

  wire data_out_reg_c_0;
  wire data_out_reg_c_1;
  wire s00_axi_aresetn;
  wire shift;

  FDCE data_out_reg_c
       (.C(shift),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(data_out_reg_c_1),
        .Q(data_out_reg_c_0));
endmodule

(* ORIG_REF_NAME = "register_32bits" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_9
   (data_out_reg_c_0,
    data_out_reg_c_1,
    shift,
    s00_axi_aresetn);
  output data_out_reg_c_0;
  input data_out_reg_c_1;
  input shift;
  input s00_axi_aresetn;

  wire data_out_reg_c_0;
  wire data_out_reg_c_1;
  wire s00_axi_aresetn;
  wire shift;

  FDCE data_out_reg_c
       (.C(shift),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(data_out_reg_c_1),
        .Q(data_out_reg_c_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serializer17bits
   (D,
    \FSM_onehot_state_reg[2] ,
    s00_axi_aresetn,
    out,
    \FSM_onehot_state_reg[2]_0 ,
    \slv_reg3_reg[25] );
  output [0:0]D;
  input \FSM_onehot_state_reg[2] ;
  input s00_axi_aresetn;
  input [0:0]out;
  input \FSM_onehot_state_reg[2]_0 ;
  input [1:0]\slv_reg3_reg[25] ;

  wire [0:0]D;
  wire \FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire HSDATA_int;
  wire [0:0]out;
  wire \r_reg[10]_i_1_n_0 ;
  wire \r_reg[13]_i_1_n_0 ;
  wire \r_reg[16]_i_1_n_0 ;
  wire \r_reg[8]_C_i_1__0_n_0 ;
  wire \r_reg[9]_C_i_1__0_n_0 ;
  wire \r_reg_reg[0]_P_n_0 ;
  wire \r_reg_reg[12]_C_n_0 ;
  wire \r_reg_reg[12]_P_n_0 ;
  wire \r_reg_reg[15]_C_n_0 ;
  wire \r_reg_reg[15]_LDC_n_0 ;
  wire \r_reg_reg[15]_P_n_0 ;
  wire \r_reg_reg[4]_srl4_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_StreamGenerator_SR_r_reg_reg_c_8_i_1_n_0 ;
  wire \r_reg_reg[4]_srl4_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_StreamGenerator_SR_r_reg_reg_c_8_n_0 ;
  wire \r_reg_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_StreamGenerator_SR_r_reg_reg_c_9_n_0 ;
  wire \r_reg_reg[7]_C_n_0 ;
  wire \r_reg_reg[7]_P_n_0 ;
  wire \r_reg_reg[8]_C_n_0 ;
  wire \r_reg_reg[8]_P_n_0 ;
  wire \r_reg_reg[9]_C_n_0 ;
  wire \r_reg_reg[9]_P_n_0 ;
  wire r_reg_reg_c_6_n_0;
  wire r_reg_reg_c_7_n_0;
  wire r_reg_reg_c_8_n_0;
  wire r_reg_reg_c_9_n_0;
  wire r_reg_reg_c_n_0;
  wire r_reg_reg_gate_n_0;
  wire \r_reg_reg_n_0_[10] ;
  wire \r_reg_reg_n_0_[11] ;
  wire \r_reg_reg_n_0_[13] ;
  wire \r_reg_reg_n_0_[14] ;
  wire \r_reg_reg_n_0_[6] ;
  wire s00_axi_aresetn;
  wire [1:0]\slv_reg3_reg[25] ;

  LUT3 #(
    .INIT(8'h80)) 
    \r_reg[0]_i_1 
       (.I0(\slv_reg3_reg[25] [1]),
        .I1(\slv_reg3_reg[25] [0]),
        .I2(HSDATA_int),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[10]_i_1 
       (.I0(\r_reg_reg[9]_P_n_0 ),
        .I1(\r_reg_reg[15]_LDC_n_0 ),
        .I2(\r_reg_reg[9]_C_n_0 ),
        .O(\r_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[13]_i_1 
       (.I0(\r_reg_reg[12]_P_n_0 ),
        .I1(\r_reg_reg[15]_LDC_n_0 ),
        .I2(\r_reg_reg[12]_C_n_0 ),
        .O(\r_reg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[16]_i_1 
       (.I0(\r_reg_reg[15]_P_n_0 ),
        .I1(\r_reg_reg[15]_LDC_n_0 ),
        .I2(\r_reg_reg[15]_C_n_0 ),
        .O(\r_reg[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[8]_C_i_1__0 
       (.I0(\r_reg_reg[7]_P_n_0 ),
        .I1(\r_reg_reg[15]_LDC_n_0 ),
        .I2(\r_reg_reg[7]_C_n_0 ),
        .O(\r_reg[8]_C_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_reg[9]_C_i_1__0 
       (.I0(\r_reg_reg[8]_P_n_0 ),
        .I1(\r_reg_reg[15]_LDC_n_0 ),
        .I2(\r_reg_reg[8]_C_n_0 ),
        .O(\r_reg[9]_C_i_1__0_n_0 ));
  FDPE \r_reg_reg[0]_P 
       (.C(out),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\FSM_onehot_state_reg[2] ),
        .Q(\r_reg_reg[0]_P_n_0 ));
  FDCE \r_reg_reg[10] 
       (.C(out),
        .CE(1'b1),
        .CLR(\FSM_onehot_state_reg[2]_0 ),
        .D(\r_reg[10]_i_1_n_0 ),
        .Q(\r_reg_reg_n_0_[10] ));
  FDCE \r_reg_reg[11] 
       (.C(out),
        .CE(1'b1),
        .CLR(\FSM_onehot_state_reg[2]_0 ),
        .D(\r_reg_reg_n_0_[10] ),
        .Q(\r_reg_reg_n_0_[11] ));
  FDCE \r_reg_reg[12]_C 
       (.C(out),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg_n_0_[11] ),
        .Q(\r_reg_reg[12]_C_n_0 ));
  FDPE \r_reg_reg[12]_P 
       (.C(out),
        .CE(1'b1),
        .D(\r_reg_reg_n_0_[11] ),
        .PRE(\FSM_onehot_state_reg[2] ),
        .Q(\r_reg_reg[12]_P_n_0 ));
  FDCE \r_reg_reg[13] 
       (.C(out),
        .CE(1'b1),
        .CLR(\FSM_onehot_state_reg[2]_0 ),
        .D(\r_reg[13]_i_1_n_0 ),
        .Q(\r_reg_reg_n_0_[13] ));
  FDCE \r_reg_reg[14] 
       (.C(out),
        .CE(1'b1),
        .CLR(\FSM_onehot_state_reg[2]_0 ),
        .D(\r_reg_reg_n_0_[13] ),
        .Q(\r_reg_reg_n_0_[14] ));
  FDCE \r_reg_reg[15]_C 
       (.C(out),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg_n_0_[14] ),
        .Q(\r_reg_reg[15]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[15]_LDC 
       (.CLR(s00_axi_aresetn),
        .D(1'b1),
        .G(\FSM_onehot_state_reg[2] ),
        .GE(1'b1),
        .Q(\r_reg_reg[15]_LDC_n_0 ));
  FDPE \r_reg_reg[15]_P 
       (.C(out),
        .CE(1'b1),
        .D(\r_reg_reg_n_0_[14] ),
        .PRE(\FSM_onehot_state_reg[2] ),
        .Q(\r_reg_reg[15]_P_n_0 ));
  FDCE \r_reg_reg[16] 
       (.C(out),
        .CE(1'b1),
        .CLR(\FSM_onehot_state_reg[2]_0 ),
        .D(\r_reg[16]_i_1_n_0 ),
        .Q(HSDATA_int));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_StreamGenerator/SR/r_reg_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_StreamGenerator/SR/r_reg_reg[4]_srl4_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_StreamGenerator_SR_r_reg_reg_c_8 " *) 
  SRL16E \r_reg_reg[4]_srl4_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_StreamGenerator_SR_r_reg_reg_c_8 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(out),
        .D(\r_reg_reg[4]_srl4_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_StreamGenerator_SR_r_reg_reg_c_8_i_1_n_0 ),
        .Q(\r_reg_reg[4]_srl4_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_StreamGenerator_SR_r_reg_reg_c_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_reg_reg[4]_srl4_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_StreamGenerator_SR_r_reg_reg_c_8_i_1 
       (.I0(\r_reg_reg[15]_LDC_n_0 ),
        .I1(\r_reg_reg[0]_P_n_0 ),
        .O(\r_reg_reg[4]_srl4_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_StreamGenerator_SR_r_reg_reg_c_8_i_1_n_0 ));
  FDRE \r_reg_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_StreamGenerator_SR_r_reg_reg_c_9 
       (.C(out),
        .CE(1'b1),
        .D(\r_reg_reg[4]_srl4_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_StreamGenerator_SR_r_reg_reg_c_8_n_0 ),
        .Q(\r_reg_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_StreamGenerator_SR_r_reg_reg_c_9_n_0 ),
        .R(1'b0));
  FDCE \r_reg_reg[6] 
       (.C(out),
        .CE(1'b1),
        .CLR(\FSM_onehot_state_reg[2]_0 ),
        .D(r_reg_reg_gate_n_0),
        .Q(\r_reg_reg_n_0_[6] ));
  FDCE \r_reg_reg[7]_C 
       (.C(out),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg_reg_n_0_[6] ),
        .Q(\r_reg_reg[7]_C_n_0 ));
  FDPE \r_reg_reg[7]_P 
       (.C(out),
        .CE(1'b1),
        .D(\r_reg_reg_n_0_[6] ),
        .PRE(\FSM_onehot_state_reg[2] ),
        .Q(\r_reg_reg[7]_P_n_0 ));
  FDCE \r_reg_reg[8]_C 
       (.C(out),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg[8]_C_i_1__0_n_0 ),
        .Q(\r_reg_reg[8]_C_n_0 ));
  FDPE \r_reg_reg[8]_P 
       (.C(out),
        .CE(1'b1),
        .D(\r_reg[8]_C_i_1__0_n_0 ),
        .PRE(\FSM_onehot_state_reg[2] ),
        .Q(\r_reg_reg[8]_P_n_0 ));
  FDCE \r_reg_reg[9]_C 
       (.C(out),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\r_reg[9]_C_i_1__0_n_0 ),
        .Q(\r_reg_reg[9]_C_n_0 ));
  FDPE \r_reg_reg[9]_P 
       (.C(out),
        .CE(1'b1),
        .D(\r_reg[9]_C_i_1__0_n_0 ),
        .PRE(\FSM_onehot_state_reg[2] ),
        .Q(\r_reg_reg[9]_P_n_0 ));
  FDCE r_reg_reg_c
       (.C(out),
        .CE(1'b1),
        .CLR(\FSM_onehot_state_reg[2]_0 ),
        .D(1'b1),
        .Q(r_reg_reg_c_n_0));
  FDCE r_reg_reg_c_6
       (.C(out),
        .CE(1'b1),
        .CLR(\FSM_onehot_state_reg[2]_0 ),
        .D(r_reg_reg_c_n_0),
        .Q(r_reg_reg_c_6_n_0));
  FDCE r_reg_reg_c_7
       (.C(out),
        .CE(1'b1),
        .CLR(\FSM_onehot_state_reg[2]_0 ),
        .D(r_reg_reg_c_6_n_0),
        .Q(r_reg_reg_c_7_n_0));
  FDCE r_reg_reg_c_8
       (.C(out),
        .CE(1'b1),
        .CLR(\FSM_onehot_state_reg[2]_0 ),
        .D(r_reg_reg_c_7_n_0),
        .Q(r_reg_reg_c_8_n_0));
  FDCE r_reg_reg_c_9
       (.C(out),
        .CE(1'b1),
        .CLR(\FSM_onehot_state_reg[2]_0 ),
        .D(r_reg_reg_c_8_n_0),
        .Q(r_reg_reg_c_9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    r_reg_reg_gate
       (.I0(\r_reg_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_StreamGenerator_SR_r_reg_reg_c_9_n_0 ),
        .I1(r_reg_reg_c_9_n_0),
        .O(r_reg_reg_gate_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_reg_9bits
   (D0,
    m00_axis_tlast,
    D,
    shift,
    \FSM_sequential_state_reg[0] ,
    Q_reg,
    out);
  output D0;
  output m00_axis_tlast;
  output [0:0]D;
  input shift;
  input \FSM_sequential_state_reg[0] ;
  input Q_reg;
  input [1:0]out;

  wire [0:0]D;
  wire D0;
  wire \FSM_sequential_state_reg[0] ;
  wire Q_reg;
  wire [8:7]ctl_out;
  wire m00_axis_tlast;
  wire [1:0]out;
  wire \out_reg[5]_srl6_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_4_n_0 ;
  wire \out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_5_n_0 ;
  wire out_reg_c_0_n_0;
  wire out_reg_c_1_n_0;
  wire out_reg_c_2_n_0;
  wire out_reg_c_3_n_0;
  wire out_reg_c_4_n_0;
  wire out_reg_c_5_n_0;
  wire out_reg_c_n_0;
  wire out_reg_gate_n_0;
  wire shift;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h004A)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(ctl_out[7]),
        .I1(ctl_out[8]),
        .I2(out[1]),
        .I3(out[0]),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0DD0)) 
    Q_i_1
       (.I0(ctl_out[8]),
        .I1(ctl_out[7]),
        .I2(out[1]),
        .I3(out[0]),
        .O(D0));
  LUT2 #(
    .INIT(4'h2)) 
    m00_axis_tlast_INST_0
       (.I0(ctl_out[8]),
        .I1(ctl_out[7]),
        .O(m00_axis_tlast));
  (* srl_bus_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/SR9/out_reg " *) 
  (* srl_name = "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/SR9/out_reg[5]_srl6_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_4 " *) 
  SRL16E \out_reg[5]_srl6_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(shift),
        .D(Q_reg),
        .Q(\out_reg[5]_srl6_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_4_n_0 ));
  FDRE \out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_5 
       (.C(shift),
        .CE(1'b1),
        .D(\out_reg[5]_srl6_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_4_n_0 ),
        .Q(\out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_5_n_0 ),
        .R(1'b0));
  FDCE \out_reg[7] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[0] ),
        .D(out_reg_gate_n_0),
        .Q(ctl_out[7]));
  FDCE \out_reg[8] 
       (.C(shift),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[0] ),
        .D(ctl_out[7]),
        .Q(ctl_out[8]));
  FDCE out_reg_c
       (.C(shift),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[0] ),
        .D(1'b1),
        .Q(out_reg_c_n_0));
  FDCE out_reg_c_0
       (.C(shift),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[0] ),
        .D(out_reg_c_n_0),
        .Q(out_reg_c_0_n_0));
  FDCE out_reg_c_1
       (.C(shift),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[0] ),
        .D(out_reg_c_0_n_0),
        .Q(out_reg_c_1_n_0));
  FDCE out_reg_c_2
       (.C(shift),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[0] ),
        .D(out_reg_c_1_n_0),
        .Q(out_reg_c_2_n_0));
  FDCE out_reg_c_3
       (.C(shift),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[0] ),
        .D(out_reg_c_2_n_0),
        .Q(out_reg_c_3_n_0));
  FDCE out_reg_c_4
       (.C(shift),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[0] ),
        .D(out_reg_c_3_n_0),
        .Q(out_reg_c_4_n_0));
  FDCE out_reg_c_5
       (.C(shift),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[0] ),
        .D(out_reg_c_4_n_0),
        .Q(out_reg_c_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    out_reg_gate
       (.I0(\out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_5_n_0 ),
        .I1(out_reg_c_5_n_0),
        .O(out_reg_gate_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tokenizerShiftRegister32bits
   (Q,
    \FSM_onehot_state_reg[4] ,
    Q_reg,
    D);
  output [32:0]Q;
  input \FSM_onehot_state_reg[4] ;
  input Q_reg;
  input [0:0]D;

  wire [0:0]D;
  wire \FSM_onehot_state_reg[4] ;
  wire [32:0]Q;
  wire Q_reg;

  FDPE \r_reg_reg[0] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .D(D),
        .PRE(Q_reg),
        .Q(Q[0]));
  FDCE \r_reg_reg[10] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[9]),
        .Q(Q[10]));
  FDCE \r_reg_reg[11] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[10]),
        .Q(Q[11]));
  FDCE \r_reg_reg[12] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[11]),
        .Q(Q[12]));
  FDCE \r_reg_reg[13] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[12]),
        .Q(Q[13]));
  FDCE \r_reg_reg[14] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[13]),
        .Q(Q[14]));
  FDCE \r_reg_reg[15] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[14]),
        .Q(Q[15]));
  FDCE \r_reg_reg[16] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[15]),
        .Q(Q[16]));
  FDCE \r_reg_reg[17] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[16]),
        .Q(Q[17]));
  FDCE \r_reg_reg[18] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[17]),
        .Q(Q[18]));
  FDCE \r_reg_reg[19] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[18]),
        .Q(Q[19]));
  FDCE \r_reg_reg[1] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[0]),
        .Q(Q[1]));
  FDCE \r_reg_reg[20] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[19]),
        .Q(Q[20]));
  FDCE \r_reg_reg[21] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[20]),
        .Q(Q[21]));
  FDCE \r_reg_reg[22] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[21]),
        .Q(Q[22]));
  FDCE \r_reg_reg[23] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[22]),
        .Q(Q[23]));
  FDCE \r_reg_reg[24] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[23]),
        .Q(Q[24]));
  FDCE \r_reg_reg[25] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[24]),
        .Q(Q[25]));
  FDCE \r_reg_reg[26] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[25]),
        .Q(Q[26]));
  FDCE \r_reg_reg[27] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[26]),
        .Q(Q[27]));
  FDCE \r_reg_reg[28] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[27]),
        .Q(Q[28]));
  FDCE \r_reg_reg[29] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[28]),
        .Q(Q[29]));
  FDCE \r_reg_reg[2] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[1]),
        .Q(Q[2]));
  FDCE \r_reg_reg[30] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[29]),
        .Q(Q[30]));
  FDCE \r_reg_reg[31] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[30]),
        .Q(Q[31]));
  FDCE \r_reg_reg[32] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[31]),
        .Q(Q[32]));
  FDCE \r_reg_reg[3] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[2]),
        .Q(Q[3]));
  FDCE \r_reg_reg[4] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[3]),
        .Q(Q[4]));
  FDCE \r_reg_reg[5] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[4]),
        .Q(Q[5]));
  FDCE \r_reg_reg[6] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[5]),
        .Q(Q[6]));
  FDCE \r_reg_reg[7] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[6]),
        .Q(Q[7]));
  FDCE \r_reg_reg[8] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[7]),
        .Q(Q[8]));
  FDCE \r_reg_reg[9] 
       (.C(\FSM_onehot_state_reg[4] ),
        .CE(1'b1),
        .CLR(Q_reg),
        .D(Q[8]),
        .Q(Q[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upCounter16Bits
   (D,
    valid_out,
    \slv_reg2_reg[28] ,
    \slv_reg2_reg[15] ,
    \slv_reg3_reg[15] ,
    axi_araddr,
    r_reg_reg);
  output [15:0]D;
  input valid_out;
  input \slv_reg2_reg[28] ;
  input [15:0]\slv_reg2_reg[15] ;
  input [15:0]\slv_reg3_reg[15] ;
  input [1:0]axi_araddr;
  input [15:0]r_reg_reg;

  wire [15:0]D;
  wire [1:0]axi_araddr;
  wire \r_reg[0]_i_2__0_n_0 ;
  wire [15:0]r_reg_reg;
  wire \r_reg_reg[0]_i_1__1_n_0 ;
  wire \r_reg_reg[0]_i_1__1_n_1 ;
  wire \r_reg_reg[0]_i_1__1_n_2 ;
  wire \r_reg_reg[0]_i_1__1_n_3 ;
  wire \r_reg_reg[0]_i_1__1_n_4 ;
  wire \r_reg_reg[0]_i_1__1_n_5 ;
  wire \r_reg_reg[0]_i_1__1_n_6 ;
  wire \r_reg_reg[0]_i_1__1_n_7 ;
  wire \r_reg_reg[12]_i_1__1_n_1 ;
  wire \r_reg_reg[12]_i_1__1_n_2 ;
  wire \r_reg_reg[12]_i_1__1_n_3 ;
  wire \r_reg_reg[12]_i_1__1_n_4 ;
  wire \r_reg_reg[12]_i_1__1_n_5 ;
  wire \r_reg_reg[12]_i_1__1_n_6 ;
  wire \r_reg_reg[12]_i_1__1_n_7 ;
  wire \r_reg_reg[4]_i_1__1_n_0 ;
  wire \r_reg_reg[4]_i_1__1_n_1 ;
  wire \r_reg_reg[4]_i_1__1_n_2 ;
  wire \r_reg_reg[4]_i_1__1_n_3 ;
  wire \r_reg_reg[4]_i_1__1_n_4 ;
  wire \r_reg_reg[4]_i_1__1_n_5 ;
  wire \r_reg_reg[4]_i_1__1_n_6 ;
  wire \r_reg_reg[4]_i_1__1_n_7 ;
  wire \r_reg_reg[8]_i_1__1_n_0 ;
  wire \r_reg_reg[8]_i_1__1_n_1 ;
  wire \r_reg_reg[8]_i_1__1_n_2 ;
  wire \r_reg_reg[8]_i_1__1_n_3 ;
  wire \r_reg_reg[8]_i_1__1_n_4 ;
  wire \r_reg_reg[8]_i_1__1_n_5 ;
  wire \r_reg_reg[8]_i_1__1_n_6 ;
  wire \r_reg_reg[8]_i_1__1_n_7 ;
  wire [15:0]r_reg_reg_0;
  wire [15:0]\slv_reg2_reg[15] ;
  wire \slv_reg2_reg[28] ;
  wire [15:0]\slv_reg3_reg[15] ;
  wire valid_out;
  wire [3:3]\NLW_r_reg_reg[12]_i_1__1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[0]_i_1 
       (.I0(\slv_reg2_reg[15] [0]),
        .I1(\slv_reg3_reg[15] [0]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(r_reg_reg_0[0]),
        .I5(r_reg_reg[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[10]_i_1 
       (.I0(\slv_reg2_reg[15] [10]),
        .I1(\slv_reg3_reg[15] [10]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(r_reg_reg_0[10]),
        .I5(r_reg_reg[10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[11]_i_1 
       (.I0(\slv_reg2_reg[15] [11]),
        .I1(\slv_reg3_reg[15] [11]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(r_reg_reg_0[11]),
        .I5(r_reg_reg[11]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[12]_i_1 
       (.I0(\slv_reg2_reg[15] [12]),
        .I1(\slv_reg3_reg[15] [12]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(r_reg_reg_0[12]),
        .I5(r_reg_reg[12]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[13]_i_1 
       (.I0(\slv_reg2_reg[15] [13]),
        .I1(\slv_reg3_reg[15] [13]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(r_reg_reg_0[13]),
        .I5(r_reg_reg[13]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[14]_i_1 
       (.I0(\slv_reg2_reg[15] [14]),
        .I1(\slv_reg3_reg[15] [14]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(r_reg_reg_0[14]),
        .I5(r_reg_reg[14]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[15]_i_1 
       (.I0(\slv_reg2_reg[15] [15]),
        .I1(\slv_reg3_reg[15] [15]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(r_reg_reg_0[15]),
        .I5(r_reg_reg[15]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[1]_i_1 
       (.I0(\slv_reg2_reg[15] [1]),
        .I1(\slv_reg3_reg[15] [1]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(r_reg_reg_0[1]),
        .I5(r_reg_reg[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[2]_i_1 
       (.I0(\slv_reg2_reg[15] [2]),
        .I1(\slv_reg3_reg[15] [2]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(r_reg_reg_0[2]),
        .I5(r_reg_reg[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[3]_i_1 
       (.I0(\slv_reg2_reg[15] [3]),
        .I1(\slv_reg3_reg[15] [3]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(r_reg_reg_0[3]),
        .I5(r_reg_reg[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[4]_i_1 
       (.I0(\slv_reg2_reg[15] [4]),
        .I1(\slv_reg3_reg[15] [4]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(r_reg_reg_0[4]),
        .I5(r_reg_reg[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[5]_i_1 
       (.I0(\slv_reg2_reg[15] [5]),
        .I1(\slv_reg3_reg[15] [5]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(r_reg_reg_0[5]),
        .I5(r_reg_reg[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[6]_i_1 
       (.I0(\slv_reg2_reg[15] [6]),
        .I1(\slv_reg3_reg[15] [6]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(r_reg_reg_0[6]),
        .I5(r_reg_reg[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[7]_i_1 
       (.I0(\slv_reg2_reg[15] [7]),
        .I1(\slv_reg3_reg[15] [7]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(r_reg_reg_0[7]),
        .I5(r_reg_reg[7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[8]_i_1 
       (.I0(\slv_reg2_reg[15] [8]),
        .I1(\slv_reg3_reg[15] [8]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(r_reg_reg_0[8]),
        .I5(r_reg_reg[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[9]_i_1 
       (.I0(\slv_reg2_reg[15] [9]),
        .I1(\slv_reg3_reg[15] [9]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(r_reg_reg_0[9]),
        .I5(r_reg_reg[9]),
        .O(D[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \r_reg[0]_i_2__0 
       (.I0(r_reg_reg_0[0]),
        .O(\r_reg[0]_i_2__0_n_0 ));
  FDCE \r_reg_reg[0] 
       (.C(valid_out),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[0]_i_1__1_n_7 ),
        .Q(r_reg_reg_0[0]));
  CARRY4 \r_reg_reg[0]_i_1__1 
       (.CI(1'b0),
        .CO({\r_reg_reg[0]_i_1__1_n_0 ,\r_reg_reg[0]_i_1__1_n_1 ,\r_reg_reg[0]_i_1__1_n_2 ,\r_reg_reg[0]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\r_reg_reg[0]_i_1__1_n_4 ,\r_reg_reg[0]_i_1__1_n_5 ,\r_reg_reg[0]_i_1__1_n_6 ,\r_reg_reg[0]_i_1__1_n_7 }),
        .S({r_reg_reg_0[3:1],\r_reg[0]_i_2__0_n_0 }));
  FDCE \r_reg_reg[10] 
       (.C(valid_out),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[8]_i_1__1_n_5 ),
        .Q(r_reg_reg_0[10]));
  FDCE \r_reg_reg[11] 
       (.C(valid_out),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[8]_i_1__1_n_4 ),
        .Q(r_reg_reg_0[11]));
  FDCE \r_reg_reg[12] 
       (.C(valid_out),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[12]_i_1__1_n_7 ),
        .Q(r_reg_reg_0[12]));
  CARRY4 \r_reg_reg[12]_i_1__1 
       (.CI(\r_reg_reg[8]_i_1__1_n_0 ),
        .CO({\NLW_r_reg_reg[12]_i_1__1_CO_UNCONNECTED [3],\r_reg_reg[12]_i_1__1_n_1 ,\r_reg_reg[12]_i_1__1_n_2 ,\r_reg_reg[12]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_reg_reg[12]_i_1__1_n_4 ,\r_reg_reg[12]_i_1__1_n_5 ,\r_reg_reg[12]_i_1__1_n_6 ,\r_reg_reg[12]_i_1__1_n_7 }),
        .S(r_reg_reg_0[15:12]));
  FDCE \r_reg_reg[13] 
       (.C(valid_out),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[12]_i_1__1_n_6 ),
        .Q(r_reg_reg_0[13]));
  FDCE \r_reg_reg[14] 
       (.C(valid_out),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[12]_i_1__1_n_5 ),
        .Q(r_reg_reg_0[14]));
  FDCE \r_reg_reg[15] 
       (.C(valid_out),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[12]_i_1__1_n_4 ),
        .Q(r_reg_reg_0[15]));
  FDCE \r_reg_reg[1] 
       (.C(valid_out),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[0]_i_1__1_n_6 ),
        .Q(r_reg_reg_0[1]));
  FDCE \r_reg_reg[2] 
       (.C(valid_out),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[0]_i_1__1_n_5 ),
        .Q(r_reg_reg_0[2]));
  FDCE \r_reg_reg[3] 
       (.C(valid_out),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[0]_i_1__1_n_4 ),
        .Q(r_reg_reg_0[3]));
  FDCE \r_reg_reg[4] 
       (.C(valid_out),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[4]_i_1__1_n_7 ),
        .Q(r_reg_reg_0[4]));
  CARRY4 \r_reg_reg[4]_i_1__1 
       (.CI(\r_reg_reg[0]_i_1__1_n_0 ),
        .CO({\r_reg_reg[4]_i_1__1_n_0 ,\r_reg_reg[4]_i_1__1_n_1 ,\r_reg_reg[4]_i_1__1_n_2 ,\r_reg_reg[4]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_reg_reg[4]_i_1__1_n_4 ,\r_reg_reg[4]_i_1__1_n_5 ,\r_reg_reg[4]_i_1__1_n_6 ,\r_reg_reg[4]_i_1__1_n_7 }),
        .S(r_reg_reg_0[7:4]));
  FDCE \r_reg_reg[5] 
       (.C(valid_out),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[4]_i_1__1_n_6 ),
        .Q(r_reg_reg_0[5]));
  FDCE \r_reg_reg[6] 
       (.C(valid_out),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[4]_i_1__1_n_5 ),
        .Q(r_reg_reg_0[6]));
  FDCE \r_reg_reg[7] 
       (.C(valid_out),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[4]_i_1__1_n_4 ),
        .Q(r_reg_reg_0[7]));
  FDCE \r_reg_reg[8] 
       (.C(valid_out),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[8]_i_1__1_n_7 ),
        .Q(r_reg_reg_0[8]));
  CARRY4 \r_reg_reg[8]_i_1__1 
       (.CI(\r_reg_reg[4]_i_1__1_n_0 ),
        .CO({\r_reg_reg[8]_i_1__1_n_0 ,\r_reg_reg[8]_i_1__1_n_1 ,\r_reg_reg[8]_i_1__1_n_2 ,\r_reg_reg[8]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_reg_reg[8]_i_1__1_n_4 ,\r_reg_reg[8]_i_1__1_n_5 ,\r_reg_reg[8]_i_1__1_n_6 ,\r_reg_reg[8]_i_1__1_n_7 }),
        .S(r_reg_reg_0[11:8]));
  FDCE \r_reg_reg[9] 
       (.C(valid_out),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[8]_i_1__1_n_6 ),
        .Q(r_reg_reg_0[9]));
endmodule

(* ORIG_REF_NAME = "upCounter16Bits" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upCounter16Bits_15
   (r_reg_reg,
    \out_reg[8] ,
    \slv_reg2_reg[28] );
  output [15:0]r_reg_reg;
  input \out_reg[8] ;
  input \slv_reg2_reg[28] ;

  wire \out_reg[8] ;
  wire \r_reg[0]_i_3_n_0 ;
  wire [15:0]r_reg_reg;
  wire \r_reg_reg[0]_i_1_n_0 ;
  wire \r_reg_reg[0]_i_1_n_1 ;
  wire \r_reg_reg[0]_i_1_n_2 ;
  wire \r_reg_reg[0]_i_1_n_3 ;
  wire \r_reg_reg[0]_i_1_n_4 ;
  wire \r_reg_reg[0]_i_1_n_5 ;
  wire \r_reg_reg[0]_i_1_n_6 ;
  wire \r_reg_reg[0]_i_1_n_7 ;
  wire \r_reg_reg[12]_i_1_n_1 ;
  wire \r_reg_reg[12]_i_1_n_2 ;
  wire \r_reg_reg[12]_i_1_n_3 ;
  wire \r_reg_reg[12]_i_1_n_4 ;
  wire \r_reg_reg[12]_i_1_n_5 ;
  wire \r_reg_reg[12]_i_1_n_6 ;
  wire \r_reg_reg[12]_i_1_n_7 ;
  wire \r_reg_reg[4]_i_1_n_0 ;
  wire \r_reg_reg[4]_i_1_n_1 ;
  wire \r_reg_reg[4]_i_1_n_2 ;
  wire \r_reg_reg[4]_i_1_n_3 ;
  wire \r_reg_reg[4]_i_1_n_4 ;
  wire \r_reg_reg[4]_i_1_n_5 ;
  wire \r_reg_reg[4]_i_1_n_6 ;
  wire \r_reg_reg[4]_i_1_n_7 ;
  wire \r_reg_reg[8]_i_1_n_0 ;
  wire \r_reg_reg[8]_i_1_n_1 ;
  wire \r_reg_reg[8]_i_1_n_2 ;
  wire \r_reg_reg[8]_i_1_n_3 ;
  wire \r_reg_reg[8]_i_1_n_4 ;
  wire \r_reg_reg[8]_i_1_n_5 ;
  wire \r_reg_reg[8]_i_1_n_6 ;
  wire \r_reg_reg[8]_i_1_n_7 ;
  wire \slv_reg2_reg[28] ;
  wire [3:3]\NLW_r_reg_reg[12]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \r_reg[0]_i_3 
       (.I0(r_reg_reg[0]),
        .O(\r_reg[0]_i_3_n_0 ));
  FDCE \r_reg_reg[0] 
       (.C(\out_reg[8] ),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[0]_i_1_n_7 ),
        .Q(r_reg_reg[0]));
  CARRY4 \r_reg_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\r_reg_reg[0]_i_1_n_0 ,\r_reg_reg[0]_i_1_n_1 ,\r_reg_reg[0]_i_1_n_2 ,\r_reg_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\r_reg_reg[0]_i_1_n_4 ,\r_reg_reg[0]_i_1_n_5 ,\r_reg_reg[0]_i_1_n_6 ,\r_reg_reg[0]_i_1_n_7 }),
        .S({r_reg_reg[3:1],\r_reg[0]_i_3_n_0 }));
  FDCE \r_reg_reg[10] 
       (.C(\out_reg[8] ),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[8]_i_1_n_5 ),
        .Q(r_reg_reg[10]));
  FDCE \r_reg_reg[11] 
       (.C(\out_reg[8] ),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[8]_i_1_n_4 ),
        .Q(r_reg_reg[11]));
  FDCE \r_reg_reg[12] 
       (.C(\out_reg[8] ),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[12]_i_1_n_7 ),
        .Q(r_reg_reg[12]));
  CARRY4 \r_reg_reg[12]_i_1 
       (.CI(\r_reg_reg[8]_i_1_n_0 ),
        .CO({\NLW_r_reg_reg[12]_i_1_CO_UNCONNECTED [3],\r_reg_reg[12]_i_1_n_1 ,\r_reg_reg[12]_i_1_n_2 ,\r_reg_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_reg_reg[12]_i_1_n_4 ,\r_reg_reg[12]_i_1_n_5 ,\r_reg_reg[12]_i_1_n_6 ,\r_reg_reg[12]_i_1_n_7 }),
        .S(r_reg_reg[15:12]));
  FDCE \r_reg_reg[13] 
       (.C(\out_reg[8] ),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[12]_i_1_n_6 ),
        .Q(r_reg_reg[13]));
  FDCE \r_reg_reg[14] 
       (.C(\out_reg[8] ),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[12]_i_1_n_5 ),
        .Q(r_reg_reg[14]));
  FDCE \r_reg_reg[15] 
       (.C(\out_reg[8] ),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[12]_i_1_n_4 ),
        .Q(r_reg_reg[15]));
  FDCE \r_reg_reg[1] 
       (.C(\out_reg[8] ),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[0]_i_1_n_6 ),
        .Q(r_reg_reg[1]));
  FDCE \r_reg_reg[2] 
       (.C(\out_reg[8] ),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[0]_i_1_n_5 ),
        .Q(r_reg_reg[2]));
  FDCE \r_reg_reg[3] 
       (.C(\out_reg[8] ),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[0]_i_1_n_4 ),
        .Q(r_reg_reg[3]));
  FDCE \r_reg_reg[4] 
       (.C(\out_reg[8] ),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[4]_i_1_n_7 ),
        .Q(r_reg_reg[4]));
  CARRY4 \r_reg_reg[4]_i_1 
       (.CI(\r_reg_reg[0]_i_1_n_0 ),
        .CO({\r_reg_reg[4]_i_1_n_0 ,\r_reg_reg[4]_i_1_n_1 ,\r_reg_reg[4]_i_1_n_2 ,\r_reg_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_reg_reg[4]_i_1_n_4 ,\r_reg_reg[4]_i_1_n_5 ,\r_reg_reg[4]_i_1_n_6 ,\r_reg_reg[4]_i_1_n_7 }),
        .S(r_reg_reg[7:4]));
  FDCE \r_reg_reg[5] 
       (.C(\out_reg[8] ),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[4]_i_1_n_6 ),
        .Q(r_reg_reg[5]));
  FDCE \r_reg_reg[6] 
       (.C(\out_reg[8] ),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[4]_i_1_n_5 ),
        .Q(r_reg_reg[6]));
  FDCE \r_reg_reg[7] 
       (.C(\out_reg[8] ),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[4]_i_1_n_4 ),
        .Q(r_reg_reg[7]));
  FDCE \r_reg_reg[8] 
       (.C(\out_reg[8] ),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[8]_i_1_n_7 ),
        .Q(r_reg_reg[8]));
  CARRY4 \r_reg_reg[8]_i_1 
       (.CI(\r_reg_reg[4]_i_1_n_0 ),
        .CO({\r_reg_reg[8]_i_1_n_0 ,\r_reg_reg[8]_i_1_n_1 ,\r_reg_reg[8]_i_1_n_2 ,\r_reg_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_reg_reg[8]_i_1_n_4 ,\r_reg_reg[8]_i_1_n_5 ,\r_reg_reg[8]_i_1_n_6 ,\r_reg_reg[8]_i_1_n_7 }),
        .S(r_reg_reg[11:8]));
  FDCE \r_reg_reg[9] 
       (.C(\out_reg[8] ),
        .CE(1'b1),
        .CLR(\slv_reg2_reg[28] ),
        .D(\r_reg_reg[8]_i_1_n_6 ),
        .Q(r_reg_reg[9]));
endmodule

(* ORIG_REF_NAME = "upCounter16Bits" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upCounter16Bits_16
   (\r_reg_reg[15]_0 ,
    D,
    clock0,
    \slv_reg2_reg[30] ,
    s00_axi_aresetn,
    \slv_reg3_reg[31] ,
    axi_araddr,
    out);
  output \r_reg_reg[15]_0 ;
  output [15:0]D;
  input clock0;
  input [14:0]\slv_reg2_reg[30] ;
  input s00_axi_aresetn;
  input [15:0]\slv_reg3_reg[31] ;
  input [1:0]axi_araddr;
  input [0:0]out;

  wire [15:0]D;
  wire [1:0]axi_araddr;
  wire clock0;
  wire [0:0]out;
  wire \r_reg[0]_i_3__0_n_0 ;
  wire [15:0]r_reg_reg;
  wire \r_reg_reg[0]_i_1__0_n_0 ;
  wire \r_reg_reg[0]_i_1__0_n_1 ;
  wire \r_reg_reg[0]_i_1__0_n_2 ;
  wire \r_reg_reg[0]_i_1__0_n_3 ;
  wire \r_reg_reg[0]_i_1__0_n_4 ;
  wire \r_reg_reg[0]_i_1__0_n_5 ;
  wire \r_reg_reg[0]_i_1__0_n_6 ;
  wire \r_reg_reg[0]_i_1__0_n_7 ;
  wire \r_reg_reg[12]_i_1__0_n_1 ;
  wire \r_reg_reg[12]_i_1__0_n_2 ;
  wire \r_reg_reg[12]_i_1__0_n_3 ;
  wire \r_reg_reg[12]_i_1__0_n_4 ;
  wire \r_reg_reg[12]_i_1__0_n_5 ;
  wire \r_reg_reg[12]_i_1__0_n_6 ;
  wire \r_reg_reg[12]_i_1__0_n_7 ;
  wire \r_reg_reg[15]_0 ;
  wire \r_reg_reg[4]_i_1__0_n_0 ;
  wire \r_reg_reg[4]_i_1__0_n_1 ;
  wire \r_reg_reg[4]_i_1__0_n_2 ;
  wire \r_reg_reg[4]_i_1__0_n_3 ;
  wire \r_reg_reg[4]_i_1__0_n_4 ;
  wire \r_reg_reg[4]_i_1__0_n_5 ;
  wire \r_reg_reg[4]_i_1__0_n_6 ;
  wire \r_reg_reg[4]_i_1__0_n_7 ;
  wire \r_reg_reg[8]_i_1__0_n_0 ;
  wire \r_reg_reg[8]_i_1__0_n_1 ;
  wire \r_reg_reg[8]_i_1__0_n_2 ;
  wire \r_reg_reg[8]_i_1__0_n_3 ;
  wire \r_reg_reg[8]_i_1__0_n_4 ;
  wire \r_reg_reg[8]_i_1__0_n_5 ;
  wire \r_reg_reg[8]_i_1__0_n_6 ;
  wire \r_reg_reg[8]_i_1__0_n_7 ;
  wire s00_axi_aresetn;
  wire [14:0]\slv_reg2_reg[30] ;
  wire [15:0]\slv_reg3_reg[31] ;
  wire [3:3]\NLW_r_reg_reg[12]_i_1__0_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[16]_i_1 
       (.I0(r_reg_reg[0]),
        .I1(\slv_reg2_reg[30] [0]),
        .I2(\slv_reg3_reg[31] [0]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[17]_i_1 
       (.I0(r_reg_reg[1]),
        .I1(\slv_reg2_reg[30] [1]),
        .I2(\slv_reg3_reg[31] [1]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[18]_i_1 
       (.I0(r_reg_reg[2]),
        .I1(\slv_reg2_reg[30] [2]),
        .I2(\slv_reg3_reg[31] [2]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[19]_i_1 
       (.I0(r_reg_reg[3]),
        .I1(\slv_reg2_reg[30] [3]),
        .I2(\slv_reg3_reg[31] [3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[20]_i_1 
       (.I0(r_reg_reg[4]),
        .I1(\slv_reg2_reg[30] [4]),
        .I2(\slv_reg3_reg[31] [4]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[21]_i_1 
       (.I0(r_reg_reg[5]),
        .I1(\slv_reg2_reg[30] [5]),
        .I2(\slv_reg3_reg[31] [5]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[22]_i_1 
       (.I0(r_reg_reg[6]),
        .I1(\slv_reg2_reg[30] [6]),
        .I2(\slv_reg3_reg[31] [6]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[23]_i_1 
       (.I0(r_reg_reg[7]),
        .I1(\slv_reg2_reg[30] [7]),
        .I2(\slv_reg3_reg[31] [7]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[24]_i_1 
       (.I0(r_reg_reg[8]),
        .I1(\slv_reg2_reg[30] [8]),
        .I2(\slv_reg3_reg[31] [8]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[25]_i_1 
       (.I0(r_reg_reg[9]),
        .I1(\slv_reg2_reg[30] [9]),
        .I2(\slv_reg3_reg[31] [9]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[26]_i_1 
       (.I0(r_reg_reg[10]),
        .I1(\slv_reg2_reg[30] [10]),
        .I2(\slv_reg3_reg[31] [10]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[27]_i_1 
       (.I0(r_reg_reg[11]),
        .I1(\slv_reg2_reg[30] [11]),
        .I2(\slv_reg3_reg[31] [11]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[28]_i_1 
       (.I0(r_reg_reg[12]),
        .I1(\slv_reg2_reg[30] [12]),
        .I2(\slv_reg3_reg[31] [12]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[29]_i_1 
       (.I0(r_reg_reg[13]),
        .I1(\slv_reg2_reg[30] [13]),
        .I2(\slv_reg3_reg[31] [13]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[30]_i_1 
       (.I0(r_reg_reg[14]),
        .I1(\slv_reg2_reg[30] [14]),
        .I2(\slv_reg3_reg[31] [14]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[31]_i_1 
       (.I0(r_reg_reg[15]),
        .I1(out),
        .I2(\slv_reg3_reg[31] [15]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[15]));
  LUT2 #(
    .INIT(4'hB)) 
    \r_reg[0]_i_2__1 
       (.I0(\slv_reg2_reg[30] [12]),
        .I1(s00_axi_aresetn),
        .O(\r_reg_reg[15]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r_reg[0]_i_3__0 
       (.I0(r_reg_reg[0]),
        .O(\r_reg[0]_i_3__0_n_0 ));
  FDCE \r_reg_reg[0] 
       (.C(clock0),
        .CE(1'b1),
        .CLR(\r_reg_reg[15]_0 ),
        .D(\r_reg_reg[0]_i_1__0_n_7 ),
        .Q(r_reg_reg[0]));
  CARRY4 \r_reg_reg[0]_i_1__0 
       (.CI(1'b0),
        .CO({\r_reg_reg[0]_i_1__0_n_0 ,\r_reg_reg[0]_i_1__0_n_1 ,\r_reg_reg[0]_i_1__0_n_2 ,\r_reg_reg[0]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\r_reg_reg[0]_i_1__0_n_4 ,\r_reg_reg[0]_i_1__0_n_5 ,\r_reg_reg[0]_i_1__0_n_6 ,\r_reg_reg[0]_i_1__0_n_7 }),
        .S({r_reg_reg[3:1],\r_reg[0]_i_3__0_n_0 }));
  FDCE \r_reg_reg[10] 
       (.C(clock0),
        .CE(1'b1),
        .CLR(\r_reg_reg[15]_0 ),
        .D(\r_reg_reg[8]_i_1__0_n_5 ),
        .Q(r_reg_reg[10]));
  FDCE \r_reg_reg[11] 
       (.C(clock0),
        .CE(1'b1),
        .CLR(\r_reg_reg[15]_0 ),
        .D(\r_reg_reg[8]_i_1__0_n_4 ),
        .Q(r_reg_reg[11]));
  FDCE \r_reg_reg[12] 
       (.C(clock0),
        .CE(1'b1),
        .CLR(\r_reg_reg[15]_0 ),
        .D(\r_reg_reg[12]_i_1__0_n_7 ),
        .Q(r_reg_reg[12]));
  CARRY4 \r_reg_reg[12]_i_1__0 
       (.CI(\r_reg_reg[8]_i_1__0_n_0 ),
        .CO({\NLW_r_reg_reg[12]_i_1__0_CO_UNCONNECTED [3],\r_reg_reg[12]_i_1__0_n_1 ,\r_reg_reg[12]_i_1__0_n_2 ,\r_reg_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_reg_reg[12]_i_1__0_n_4 ,\r_reg_reg[12]_i_1__0_n_5 ,\r_reg_reg[12]_i_1__0_n_6 ,\r_reg_reg[12]_i_1__0_n_7 }),
        .S(r_reg_reg[15:12]));
  FDCE \r_reg_reg[13] 
       (.C(clock0),
        .CE(1'b1),
        .CLR(\r_reg_reg[15]_0 ),
        .D(\r_reg_reg[12]_i_1__0_n_6 ),
        .Q(r_reg_reg[13]));
  FDCE \r_reg_reg[14] 
       (.C(clock0),
        .CE(1'b1),
        .CLR(\r_reg_reg[15]_0 ),
        .D(\r_reg_reg[12]_i_1__0_n_5 ),
        .Q(r_reg_reg[14]));
  FDCE \r_reg_reg[15] 
       (.C(clock0),
        .CE(1'b1),
        .CLR(\r_reg_reg[15]_0 ),
        .D(\r_reg_reg[12]_i_1__0_n_4 ),
        .Q(r_reg_reg[15]));
  FDCE \r_reg_reg[1] 
       (.C(clock0),
        .CE(1'b1),
        .CLR(\r_reg_reg[15]_0 ),
        .D(\r_reg_reg[0]_i_1__0_n_6 ),
        .Q(r_reg_reg[1]));
  FDCE \r_reg_reg[2] 
       (.C(clock0),
        .CE(1'b1),
        .CLR(\r_reg_reg[15]_0 ),
        .D(\r_reg_reg[0]_i_1__0_n_5 ),
        .Q(r_reg_reg[2]));
  FDCE \r_reg_reg[3] 
       (.C(clock0),
        .CE(1'b1),
        .CLR(\r_reg_reg[15]_0 ),
        .D(\r_reg_reg[0]_i_1__0_n_4 ),
        .Q(r_reg_reg[3]));
  FDCE \r_reg_reg[4] 
       (.C(clock0),
        .CE(1'b1),
        .CLR(\r_reg_reg[15]_0 ),
        .D(\r_reg_reg[4]_i_1__0_n_7 ),
        .Q(r_reg_reg[4]));
  CARRY4 \r_reg_reg[4]_i_1__0 
       (.CI(\r_reg_reg[0]_i_1__0_n_0 ),
        .CO({\r_reg_reg[4]_i_1__0_n_0 ,\r_reg_reg[4]_i_1__0_n_1 ,\r_reg_reg[4]_i_1__0_n_2 ,\r_reg_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_reg_reg[4]_i_1__0_n_4 ,\r_reg_reg[4]_i_1__0_n_5 ,\r_reg_reg[4]_i_1__0_n_6 ,\r_reg_reg[4]_i_1__0_n_7 }),
        .S(r_reg_reg[7:4]));
  FDCE \r_reg_reg[5] 
       (.C(clock0),
        .CE(1'b1),
        .CLR(\r_reg_reg[15]_0 ),
        .D(\r_reg_reg[4]_i_1__0_n_6 ),
        .Q(r_reg_reg[5]));
  FDCE \r_reg_reg[6] 
       (.C(clock0),
        .CE(1'b1),
        .CLR(\r_reg_reg[15]_0 ),
        .D(\r_reg_reg[4]_i_1__0_n_5 ),
        .Q(r_reg_reg[6]));
  FDCE \r_reg_reg[7] 
       (.C(clock0),
        .CE(1'b1),
        .CLR(\r_reg_reg[15]_0 ),
        .D(\r_reg_reg[4]_i_1__0_n_4 ),
        .Q(r_reg_reg[7]));
  FDCE \r_reg_reg[8] 
       (.C(clock0),
        .CE(1'b1),
        .CLR(\r_reg_reg[15]_0 ),
        .D(\r_reg_reg[8]_i_1__0_n_7 ),
        .Q(r_reg_reg[8]));
  CARRY4 \r_reg_reg[8]_i_1__0 
       (.CI(\r_reg_reg[4]_i_1__0_n_0 ),
        .CO({\r_reg_reg[8]_i_1__0_n_0 ,\r_reg_reg[8]_i_1__0_n_1 ,\r_reg_reg[8]_i_1__0_n_2 ,\r_reg_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_reg_reg[8]_i_1__0_n_4 ,\r_reg_reg[8]_i_1__0_n_5 ,\r_reg_reg[8]_i_1__0_n_6 ,\r_reg_reg[8]_i_1__0_n_7 }),
        .S(r_reg_reg[11:8]));
  FDCE \r_reg_reg[9] 
       (.C(clock0),
        .CE(1'b1),
        .CLR(\r_reg_reg[15]_0 ),
        .D(\r_reg_reg[8]_i_1__0_n_6 ),
        .Q(r_reg_reg[9]));
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
