
`timescale 1 ns / 1 ps

// -------------------
// Base module for Gyro BiDirectional Channels
// ----------------------------------------------------------------
module dff(
   input clk,
   input rst_n,
   input D,
   output reg Q
  );
 
  always @ (posedge(clk) or negedge(rst_n))
    begin
      if (rst_n == 1'b0)
        Q <= 1'b0;
      else
        Q <= D;
    end
 
endmodule

// ----------------------------------------------------------------
module clock_divider_by_2(
    input clk_in,
    input rst_n,
    output clk_out
  );

  wire Q_int;

  dff ff0(.clk(clk_in),  .rst_n(rst_n),.D(~Q_int),.Q(Q_int));

  assign clk_out = Q_int;

endmodule


// ----------------------------------------------------------------
module upCounter8Bits (
    input  wire clock,
    input  wire reset_n,
    input  wire enable,
    output wire [7:0] count
  );
 
  reg  [7:0] r_reg;
  wire [7:0] r_next;
  
  always @(posedge (clock) or negedge(reset_n))
    begin
      if (reset_n == 1'b0)
        r_reg <= 8'h00;
      else
        if(enable == 1'b0)
          r_reg <= r_reg;
        else
          r_reg <= r_next;
    end
  
    assign count  = r_reg;
    assign r_next = r_reg + 1;
  
endmodule

// ----------------------------------------------------------------
module counter48Cycles (
  input  wire clock,
  input  wire reset_n,
  input  wire en,
  output wire [5:0] count
);
 
  reg  [5:0] r_reg;
  wire [5:0] r_next;
 
  always @(posedge (clock) or negedge(reset_n))
    begin
      if (reset_n == 1'b0)
        r_reg <= 6'b000000;
      else
	if(en == 1'b0)
          r_reg <= r_reg;
        else
          if(r_reg == 6'b000000)
            r_reg <= 6'b101111;
          else
            r_reg <= r_next;
    end 

  assign count  = r_reg;
  assign r_next = r_reg-1;

endmodule

// ----------------------------------------------------------------
module maskHSCK(
  input  clock,
  input  reset_n,
  input  in_start_stop,
  input  out_start_stop,
  input  wire [5:0] count,
  output wire       last,
  output wire       masked_hsck,
  output wire	    out_next,
  output wire	    in_next,
  output wire	    out_shift,
  output wire	    in_shift
);

  wire masked_hsck_int;
  wire in_start_stop_int;
  wire out_start_stop_int;

  //wire spike_mask;
  //wire spike_mask_clocked;
  //dff mask_spike_ff(.clk(clock), .rst_n(reset_n), .D(spike_mask), .Q(spike_mask_clocked));
  // assign spike_mask = ((count[5] & ~count[4] & ~count[3] & ~count[2] & ~count[1] & ~count[0]) | 
  //		       (~count[5] & ~count[4] & count[3] & ~count[2] & ~count[1] & ~count[0]));

  dff ff0(.clk(last),  .rst_n(reset_n),.D(in_start_stop), .Q(in_start_stop_int));
  dff ff1(.clk(last),  .rst_n(reset_n),.D(out_start_stop),.Q(out_start_stop_int));

  assign mask 	         = ((count[5] & ~count[4]) | ( ~count[5] & (count[4] ^ count[3])));
  assign last            = (~count[5] & ~count[4] & ~count[3] & ~count[2] & ~count[1] & ~count[0]);
  assign masked_hsck_int = (clock & mask);
  assign masked_hsck     = (masked_hsck_int);
  assign out_shift	 = (out_start_stop_int & masked_hsck_int);
  assign in_shift	 = ( in_start_stop_int & masked_hsck_int);
  assign in_next	 = (last & in_start_stop_int);
  assign out_next	 = (last & out_start_stop_int);

endmodule

// ----------------------------------------------------------------
module register_2bits (
  input clock, 
  input reset_n, 
  input [1:0] data_in,
  output reg [1:0] data_out
);

  always @(posedge(clock) or negedge(reset_n)) 
    begin 
      if (reset_n == 1'b0) 
        data_out <= 2'b00; 
      else 
        data_out <= data_in; 
    end 
endmodule

// ----------------------------------------------------------------
module register_4bits (
  input clock, 
  input reset_n, 
  input [3:0] data_in,
  output reg [3:0] data_out
);

  always @(posedge(clock) or negedge(reset_n)) 
    begin 
      if (reset_n == 1'b0) 
        data_out <= 4'b0000; 
      else 
        data_out <= data_in; 
    end 
endmodule

// ----------------------------------------------------------------
module register_16bits (
    input clock, 
    input reset_n, 
    input [15:0] data_in,
    output reg [15:0] data_out
  ); 
 
  always @(posedge(clock) or negedge(reset_n)) 
    begin 
      if (reset_n == 1'b0) 
        data_out <= 16'h0000; 
      else 
        data_out <= data_in; 
    end 
endmodule 


// ----------------------------------------------------------------
module outputShiftRegister32Bits(
  input  shift,
  input  reset_n,
  input  load,
  input  [31:0] d_in,
  output d_out
);

  reg  [32:0] r_reg;
  wire [32:0] r_next;

  always @(posedge shift, posedge load, negedge reset_n)
    begin
      if (reset_n == 1'b0)
        r_reg <= 33'b000000000000000000000000000000000;
      else
	if(load == 1'b1)
          r_reg <= {1'b0, d_in};
	else
          r_reg <= r_next;
    end 
 
    assign r_next = {r_reg[31:0], 1'b0};
    assign d_out  = r_reg[32];
 
endmodule

// ----------------------------------------------------------------
// Note: changed the edge for shifting to be the negative edge.
//
module inputShiftRegister32Bits(
  input  shift,
  input  reset_n,
  input  d_in,
  output [31:0] d_out
);

  reg  [31:0] r_reg;
  wire [31:0] r_next;

  always @(negedge shift, negedge reset_n)
    begin
      if (reset_n == 1'b0)
        r_reg <= 32'h00000000;
      else
        r_reg <= r_next;
    end 
 
    assign r_next = {r_reg[30:0], d_in};
    assign d_out  = r_reg;
 
endmodule

// ----------------------------------------------------------------
module  mux_2x1_1bit(
   input  in0,  // Mux first input
   input  in1,  // Mux Second input
   input  sel,    // Select input
   output wire mux_out // Mux output
);

  assign mux_out = (sel) ? in1 : in0;
endmodule 


// ----------------------------------------------------------------
module register_32bits (
    input clock, 
    input reset_n, 
    input [31:0] data_in,
    output reg [31:0] data_out
  ); 
 
  always @(posedge(clock) or negedge(reset_n)) 
    begin 
      if (reset_n == 1'b0) 
        data_out <= 32'h00000000; 
      else 
        data_out <= data_in; 
    end 
endmodule 

//
// ----------------------------------------------------------------
module shift_reg_8bits (  
  input clock,           // input for clock to all flops in the shift register
  input reset_n,         // input to reset the register to a default value
  input en,              // input for enable to switch the shift register on/off
  input d,               // input for data to the first flop in the shift register
  output reg [7:0] out  // output to read out the current value of all register bits
);
 
  always @ (posedge (clock) or negedge(reset_n))
    begin
      if(reset_n == 1'b0)
        out <= 0;
      else 
        begin
          if(en == 1'b1)
            out <= {out[6:0], d};
          else
            out <= out;
        end
    end
endmodule
// ----------------------------------------------------------------
module delay_line_8x32bits ( 
  input  clock,           // input for clock to all flops in the shift register
  input  reset_n,         // input to reset the register to a default value
  input  [31:0] data_in,  // input for data to the first flop in the shift register
  output [31:0] data_prev,
  output [31:0] data_out  // output to read out the current value of all register bits
);
 
  wire [31:0] s0;
  wire [31:0] s1;
  wire [31:0] s2;
  wire [31:0] s3;
  wire [31:0] s4;
  wire [31:0] s5;
  wire [31:0] s6;
  wire [31:0] s7;
 
  register_32bits Reg0(.clock(clock),.reset_n(reset_n),.data_in(data_in),.data_out(s0));
  register_32bits Reg1(.clock(clock),.reset_n(reset_n),     .data_in(s0),.data_out(s1));
  register_32bits Reg2(.clock(clock),.reset_n(reset_n),     .data_in(s1),.data_out(s2));
  register_32bits Reg3(.clock(clock),.reset_n(reset_n),     .data_in(s2),.data_out(s3));
  register_32bits Reg4(.clock(clock),.reset_n(reset_n),     .data_in(s3),.data_out(s4));
  register_32bits Reg5(.clock(clock),.reset_n(reset_n),     .data_in(s4),.data_out(s5));
  register_32bits Reg6(.clock(clock),.reset_n(reset_n),     .data_in(s5),.data_out(s6));
  register_32bits Reg7(.clock(clock),.reset_n(reset_n),     .data_in(s6),.data_out(s7));
 
  assign data_prev = s6;
  assign data_out = s7;
 
endmodule

//
// -----------------------------------------------------------------------
//

module GyroChannelDebugger(
    input reset_n,
    input debug_clear,
    input tx_token_next,
    input rx_token_next,
    input tclk,
    input tx_fifo_valid,
    input tx_fifo_last,
    input rx_fifo_valid,
    input rx_fifo_last,
    input  debug_in_shift,
   input debug_out_shift,
    output [31:0] debug_word_generator,
    output [31:0] debug_word_buffer
  );

  // -----------------------------------------------------

  wire [7:0] data0_int;
  wire [7:0] data1_int;
  wire [7:0] data2_int;
  wire [7:0] data3_int;
  wire [7:0] data4_int;
  wire [7:0] data5_int;

  wire rx_fifo_last_delayed;

  
  // -----------------------------------------------------

  dff		InLastReg( 
    .clk(tclk), .rst_n(reset_n),
    .D(rx_fifo_last),
    .Q(rx_fifo_last_delayed)
  );
  
  // -----------------------------------------------------

  upCounter8Bits CNTR0(.clock(rx_token_next),.reset_n(reset_n & ~debug_clear),    .enable(1'b1),.count(data0_int));
  upCounter8Bits CNTR1(.clock(tx_token_next),.reset_n(reset_n & ~debug_clear),    .enable(1'b1),.count(data1_int));

  upCounter8Bits CNTR2(.clock(rx_fifo_last), .reset_n(reset_n & ~debug_clear),    .enable(1'b1),.count(data2_int));
  upCounter8Bits CNTR3(.clock(tx_fifo_last), .reset_n(reset_n & ~debug_clear),    .enable(1'b1),.count(data3_int));

  //upCounter8Bits CNTR4(.clock((rx_fifo_valid & ~rx_fifo_last_delayed) & (~tclk)),.reset_n(reset_n & ~debug_clear),.enable(1'b1),.count(data4_int));
  //upCounter8Bits CNTR5(.clock(tx_fifo_valid & (tclk)),.reset_n(reset_n & ~debug_clear),.enable(1'b1),.count(data5_int));

  upCounter8Bits CNTR4(.clock(debug_out_shift),.reset_n(reset_n & ~debug_clear),.enable(1'b1),.count(data4_int));
  upCounter8Bits CNTR5(.clock( debug_in_shift),.reset_n(reset_n & ~debug_clear),.enable(1'b1),.count(data5_int));

  assign debug_word_generator = { data1_int, 16'h0000, data0_int};
  assign debug_word_buffer    = { data5_int, data3_int, data4_int, data2_int};

endmodule

module GyroBiDirTokenBuffer(
  input  wire         clock,
  input  wire         reset_n,
  // --- input data in parallel from FIFO
  input  wire [31:0]  rx_fifo_data,
  output wire         rx_fifo_ready,
  input  wire         rx_fifo_valid,
  input  wire         rx_fifo_last,
  output wire [31:0]  tx_token_data,
  output wire         tx_token_valid,
  input  wire         tx_token_next,
  // --- output data in parallel to FIFO
  output  wire [31:0] tx_fifo_data,
  input   wire        tx_fifo_ready,
  output  wire        tx_fifo_valid,
  output  wire        tx_fifo_last,
  input   wire [31:0] rx_token_data,
  input   wire        rx_token_next,

  output  wire        debug_in_shift,
  output  wire        debug_out_shift,
  output  wire [31:0] debug_in_prev_data,
  output  wire [31:0] debug_out_prev_data
);

  // ----------------
  
  wire [31:0] in_prev_data;
  wire [31:0] out_prev_data;

  wire out_shift;
  wire  in_shift;

  wire        rx_fifo_valid_masked;
  wire        rx_fifo_ready_int;

  wire [7:0] out_full;
  wire [7:0]  in_full;

  wire out_shift_sel;
  wire  in_shift_sel;

  wire out_inj_bit;
  wire  in_inj_bit;

  // --- INPUT SECTION: output of the FIFO into the GYRO chip

  delay_line_8x32bits inputDelayLine (.clock(in_shift),.reset_n(reset_n),
    .data_in(rx_fifo_data),
    .data_prev(in_prev_data),
    .data_out(tx_token_data)
  );

  shift_reg_8bits  inputShiftRegister(.clock(in_shift),.reset_n(reset_n),
    .en(1'b1),
    .d(in_inj_bit),
    .out(in_full)
  );

  mux_2x1_1bit  inputShiftMux(
    .in0((rx_fifo_valid_masked) & ~clock),
    .in1(tx_token_next),
    .sel(in_shift_sel),
    .mux_out(in_shift)
  );

  dff  inputFF( .clk(clock), .rst_n(reset_n),
    .D(in_full[7]),
    .Q(in_shift_sel)
  );

  // --- OUTPUT SECTION: input into the FIFO and output from the GYRO chip

  delay_line_8x32bits outputDelayLine (.clock(out_shift),.reset_n(reset_n),
    .data_in(rx_token_data),
    .data_prev(out_prev_data),
    .data_out(tx_fifo_data)
  );

  shift_reg_8bits  outputShiftRegister(.clock(out_shift),.reset_n(reset_n),
    .en(1'b1),
    .d(out_inj_bit),
    .out(out_full));

  mux_2x1_1bit          outputShiftMux(
    .in0(rx_token_next),
//    .in1(tx_fifo_ready & clock),
    .in1((tx_fifo_ready) & ~out_full[7]),
    .sel(out_shift_sel),
    .mux_out(out_shift)
  );

  dff                   outputFF( .clk(clock), .rst_n(reset_n), 
    .D(out_full[7]), 
    .Q(out_shift_sel)
  );

  assign out_inj_bit     = ~out_shift_sel;
  assign  in_inj_bit     = ~in_shift_sel;

  assign tx_fifo_valid   = out_full[7];
  assign tx_token_valid  =  in_shift_sel;

  assign tx_fifo_last        = (out_full[7] & ~out_full[6]);
  //assign rx_fifo_ready_int   = ~in_shift_sel;
  assign rx_fifo_ready       = ~in_full[7];   // ~in_shift_sel;

  assign rx_fifo_valid_masked = (rx_fifo_valid & ~in_shift_sel);

  assign debug_in_shift  = in_shift;
  assign debug_out_shift = out_shift;
  assign debug_in_prev_data  = in_prev_data;
  assign debug_out_prev_data = out_prev_data;

endmodule


// ----------------------------------------------------------------
module GyroInputOutputChannel (
  input  clock, 
  input  reset_n,
  input  in_start_stop,		// control the in-bound channel
  input  out_start_stop,	// controls the out-bound channel
  input  [1:0] mode,		// 00: normal operation; 01: loopback
  input  [2:0] in_channel,
  input  [2:0] out_channel,
  input  HSCK_POL,		// 0: HSCK rest at 0, 1: HSCK rest at 1.
  output  HS_DATA_OUT,
  input  [31:0] tx_token_data,
  output [31:0] rx_token_data,
  input  tx_token_valid,
  output tx_token_next,
  output rx_token_next,
  input  HS_DATA_IN,
  output HSCK,
  output MCK
);

  // --- 

  wire clock_div_2;
  wire clock_div_4;
  wire [1:0] mode_int;

  wire in_next_int;
  wire out_next_int;
  wire tx_token_next_int;
  wire last_int;
  wire masked_hsck_int;

  wire hs_data_out_int;
  wire inSR_shift;
  wire outSR_shift;
  wire hs_data_in_int;
  wire masked_in_hsck_int;
  wire [5:0] count_pulses;

  clock_divider_by_2 CLK_DIV2(
    .clk_in(clock),
    .rst_n(reset_n),
    .clk_out(clock_div_2)
  );
  
    clock_divider_by_2 CLK_DIV4(
    .clk_in(clock_div_2),
    .rst_n(reset_n),
    .clk_out(clock_div_4)
  );

  register_2bits STATE_REG(
    .clock(~clock_div_2),
    .reset_n(reset_n),
    .data_in(mode),
    .data_out(mode_int)
  );

  counter48Cycles PULSE_CNTR(
    .clock(~clock_div_4),
    .reset_n(reset_n),
    .en(1'b1),
    .count(count_pulses)
  );

  maskHSCK MASK_HSCK(
    .clock(clock_div_4),
    .reset_n(reset_n),
    .in_start_stop(in_start_stop),
    .out_start_stop(out_start_stop),
    .count(count_pulses),
    .last(last_int),
    .masked_hsck(masked_hsck_int),
    .out_shift(outSR_shift),
    .in_shift(inSR_shift),
    .out_next(out_next_int),
    .in_next(in_next_int)
  );

  inputShiftRegister32Bits IN_SHIFT_REG(
    .shift(inSR_shift),
    .reset_n(reset_n),
    .d_in(hs_data_in_int),
    .d_out(rx_token_data)
  );

 outputShiftRegister32Bits OUT_SHIFT_REG(
    .shift(outSR_shift),
    .reset_n(reset_n),
    .load(out_next_int & tx_token_valid),
    .d_in(tx_token_data),
    .d_out(hs_data_out_int)
  );

  mux_2x1_1bit          loopbackMux(
    .in0(HS_DATA_IN),
    .in1(hs_data_out_int),
    .sel(mode[0]),
    .mux_out(hs_data_in_int)
  );

  dff  FF1(
    .clk(clock_div_4), .rst_n(reset_n), 
    .D(out_next_int), 
    .Q(tx_token_next_int)
  );


  assign HSCK           = (masked_hsck_int ^ HSCK_POL);
  assign MCK            = clock_div_2;
  assign HS_DATA_OUT    = hs_data_out_int;
  assign rx_token_next  = in_next_int;
  assign tx_token_next  = tx_token_next_int;

endmodule

// -----------------------------------------------------------------
module GyroBiDirChannelController(
  input  wire 	      clock,
  input  wire 	      reset_n,
  input  wire         in_start_stop,
  input  wire	      out_start_stop,
  input  wire	      debug_clear,
  input  wire [1:0]   mode,
  input  wire [2:0]   in_channel,
  input  wire [2:0]   out_channel,
  input  wire [31:0]  rx_fifo_data,
  output wire         rx_fifo_ready,
  input  wire         rx_fifo_valid,
  input  wire         rx_fifo_last,
  output  wire [31:0] tx_fifo_data,
  input   wire        tx_fifo_ready,
  output  wire        tx_fifo_valid,
  output  wire        tx_fifo_last,
  input  wire HSCK_POL,
  output wire HS_DATA_OUT,
  input  wire HS_DATA_IN,
  output wire HSCK,
  output wire MCK,
  output wire [31:0] debug_word_tx_token_data,
  output wire [31:0] debug_word_tx_fifo_data,
  output  wire [31:0] debug_word_generator,
  output  wire [31:0] debug_word_buffer,
  output  wire [31:0] debug_in_prev_data,
  output  wire [31:0] debug_out_prev_data
);

  wire [31:0] rx_token_data_int;
  wire        rx_token_next_int;

  wire [31:0] tx_token_data_int;
  wire        tx_token_valid_int;
  wire        tx_token_next_int;

  wire [31:0] rx_fifo_data_int;
  wire        rx_fifo_ready_int;
  wire        rx_fifo_valid_int;
  wire        rx_fifo_last_int;

  wire [31:0] tx_fifo_data_int;
  wire        tx_fifo_ready_int;
  wire        tx_fifo_valid_int;
  wire        tx_fifo_last_int;

  wire HS_DATA_OUT_int;
  wire HS_DATA_IN_int;
  wire HSCK_int;
  wire MCK_int;

  wire [31:0] debug_word_generator_int;
  wire [31:0] debug_word_buffer_int;
  wire [31:0] debug_in_prev_data_int;
  wire [31:0] debug_out_prev_data_int;

  wire debug_in_shift_int;
  wire debug_out_shift_int;

  // ---------------------------------------------

  GyroBiDirTokenBuffer BUFFERS(
    .clock(clock),
    .reset_n(reset_n),
    .rx_fifo_data(rx_fifo_data_int),
    .rx_fifo_ready(rx_fifo_ready_int),
    .rx_fifo_valid(rx_fifo_valid_int),
    .rx_fifo_last(rx_fifo_last_int),
    .tx_token_data(tx_token_data_int),
    .tx_token_valid(tx_token_valid_int),
    .tx_token_next(tx_token_next_int),
    .tx_fifo_data(tx_fifo_data_int),
    .tx_fifo_ready(tx_fifo_ready_int),
    .tx_fifo_valid(tx_fifo_valid_int),
    .tx_fifo_last(tx_fifo_last_int),
    .rx_token_data(rx_token_data_int),
    .rx_token_next(rx_token_next_int),
    .debug_in_shift(debug_in_shift_int),
    .debug_out_shift(debug_out_shift_int),
    .debug_in_prev_data(debug_in_prev_data_int),
    .debug_out_prev_data(debug_out_prev_data_int)
  );

  GyroInputOutputChannel CHANNELS(
    .clock(clock),
    .reset_n(reset_n),
    .in_start_stop(in_start_stop),
    .out_start_stop(out_start_stop),
    .mode(mode),
    .in_channel(in_channel),
    .out_channel(out_channel),
    .HSCK_POL(HSCK_POL),
    .HS_DATA_OUT(HS_DATA_OUT_int),
    .tx_token_data(tx_token_data_int),
    .rx_token_data(rx_token_data_int),
    .tx_token_valid(tx_token_valid_int),
    .tx_token_next(tx_token_next_int),
    .rx_token_next(rx_token_next_int),
    .HS_DATA_IN(HS_DATA_IN_int),
    .HSCK(HSCK_int),
    .MCK(MCK_int)
  );

  GyroChannelDebugger DEBUGGER(
    .reset_n(reset_n),
    .debug_clear(debug_clear),
    .tx_token_next(tx_token_next_int),
    .rx_token_next(rx_token_next_int),
    .tclk(clock),
    .tx_fifo_valid(tx_fifo_valid_int),
    .tx_fifo_last(tx_fifo_last_int),
    .rx_fifo_valid(rx_fifo_valid_int),
    .rx_fifo_last(rx_fifo_last_int),
    .debug_word_generator(debug_word_generator_int),
    .debug_word_buffer(debug_word_buffer_int),
    .debug_in_shift(debug_in_shift_int),
    .debug_out_shift(debug_out_shift_int)
  );

  assign HSCK           = HSCK_int;
  assign MCK            = MCK_int;
  assign HS_DATA_IN_int = HS_DATA_IN;
  assign HS_DATA_OUT    = HS_DATA_OUT_int;

  assign rx_fifo_data_int  = rx_fifo_data;
  assign rx_fifo_ready     = rx_fifo_ready_int;
  assign rx_fifo_valid_int = rx_fifo_valid;
  assign rx_fifo_last_int  = rx_fifo_last;

  assign tx_fifo_data      = tx_fifo_data_int;
  assign tx_fifo_ready_int = tx_fifo_ready;
  assign tx_fifo_valid     = tx_fifo_valid_int;
  assign tx_fifo_last      = tx_fifo_last_int;

  assign debug_word_generator = debug_word_generator_int;
  assign debug_word_buffer    = debug_word_buffer_int;
  assign debug_word_tx_token_data = tx_token_data_int;
  assign debug_word_tx_fifo_data = tx_fifo_data_int;
  
  assign debug_in_prev_data = tx_fifo_data_int; // debug_in_prev_data_int;
  assign debug_out_prev_data = debug_out_prev_data_int;

endmodule


// #####################################################################

	module BiDirChannels_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 4,

		// Parameters of Axi Slave Bus Interface S00_AXIS
		parameter integer C_S00_AXIS_TDATA_WIDTH	= 32,

		// Parameters of Axi Master Bus Interface M00_AXIS
		parameter integer C_M00_AXIS_TDATA_WIDTH	= 32,
		parameter integer C_M00_AXIS_START_COUNT	= 32
	)
	(
		// Users to add ports here
        input wire HS_DataIn,
        output wire HS_DataOut,
        output wire HS_Clock,
        output wire MCK,
		// User ports ends

		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready,

		// Ports of Axi Slave Bus Interface S00_AXIS
		input wire  s00_axis_aclk,
		input wire  s00_axis_aresetn,
		output wire  s00_axis_tready,
		input wire [C_S00_AXIS_TDATA_WIDTH-1 : 0] s00_axis_tdata,
		input wire [(C_S00_AXIS_TDATA_WIDTH/8)-1 : 0] s00_axis_tstrb,
		input wire  s00_axis_tlast,
		input wire  s00_axis_tvalid,

		// Ports of Axi Master Bus Interface M00_AXIS
		input wire  m00_axis_aclk,
		input wire  m00_axis_aresetn,
		output wire  m00_axis_tvalid,
		output wire [C_M00_AXIS_TDATA_WIDTH-1 : 0] m00_axis_tdata,
		output wire [(C_M00_AXIS_TDATA_WIDTH/8)-1 : 0] m00_axis_tstrb,
		output wire  m00_axis_tlast,
		input wire  m00_axis_tready
	);
	
	// --- Local wires for connection between AXI-LITE and other modules
	
	wire [31:0] data_word_0;
	wire [31:0] data_word_1;
	wire [31:0] data_word_2;
	wire [31:0] data_word_3;
	wire [31:0] data_word_4;
	wire [31:0] data_word_5;
    wire [31:0] data_word_6;
    wire [31:0] data_word_7;
	
    // Instantiation of Axi Bus Interface S00_AXI
	BiDirChannels_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) BiDirChannels_v1_0_S00_AXI_inst (
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready),
		.DATA_WORD_0(data_word_0),        // --- 
		.DATA_WORD_1(data_word_1),        // --- 
		.DATA_WORD_2(data_word_2),        // --- read register for debug of BUFFER sub-module
		.DATA_WORD_3(data_word_3),         // --- read register for debug of GENERATOR sub-module
	    .DATA_WORD_4(data_word_4),        // --- write register for configuration and reset of debugger
        .DATA_WORD_5(data_word_5),        // --- write register for control-flow
        .DATA_WORD_6(data_word_6),
        .DATA_WORD_7(data_word_7)
	);

// Instantiation of Axi Bus Interface S00_AXIS
//	BiDirChannels_v1_0_S00_AXIS # ( 
//		.C_S_AXIS_TDATA_WIDTH(C_S00_AXIS_TDATA_WIDTH)
//	) BiDirChannels_v1_0_S00_AXIS_inst (
//		.S_AXIS_ACLK(s00_axis_aclk),
//		.S_AXIS_ARESETN(s00_axis_aresetn),
//		.S_AXIS_TREADY(s00_axis_tready),
//		.S_AXIS_TDATA(s00_axis_tdata),
//		.S_AXIS_TSTRB(s00_axis_tstrb),
//		.S_AXIS_TLAST(s00_axis_tlast),
//		.S_AXIS_TVALID(s00_axis_tvalid)
//	);

// Instantiation of Axi Bus Interface M00_AXIS
//	BiDirChannels_v1_0_M00_AXIS # ( 
//		.C_M_AXIS_TDATA_WIDTH(C_M00_AXIS_TDATA_WIDTH),
//		.C_M_START_COUNT(C_M00_AXIS_START_COUNT)
//	) BiDirChannels_v1_0_M00_AXIS_inst (
//		.M_AXIS_ACLK(m00_axis_aclk),
//		.M_AXIS_ARESETN(m00_axis_aresetn),
//		.M_AXIS_TVALID(m00_axis_tvalid),
//		.M_AXIS_TDATA(m00_axis_tdata),
//		.M_AXIS_TSTRB(m00_axis_tstrb),
//		.M_AXIS_TLAST(m00_axis_tlast),
//		.M_AXIS_TREADY(m00_axis_tready)
//	);

	// Add user logic here
  // ------------------------------------------
  
    GyroBiDirChannelController X1(
      .clock(s00_axi_aclk),
      .reset_n(s00_axi_aresetn & ~data_word_4[31]),
      
      .HSCK_POL(data_word_4[28]),
      .mode(data_word_4[25:24]),
      .debug_clear(data_word_4[16]),
      .in_channel(data_word_4[6:4]),
      .out_channel(data_word_4[2:0]),
      .in_start_stop(data_word_5[4]),
      .out_start_stop(data_word_5[0]),

      .rx_fifo_data(s00_axis_tdata),
      .rx_fifo_ready(s00_axis_tready),
      .rx_fifo_valid(s00_axis_tvalid),
      .rx_fifo_last(s00_axis_tlast),
  
      .tx_fifo_data(m00_axis_tdata),
      .tx_fifo_ready(m00_axis_tready),
      .tx_fifo_valid(m00_axis_tvalid),
      .tx_fifo_last(m00_axis_tlast),
  
      .HS_DATA_OUT(HS_DataOut),
      .HS_DATA_IN(HS_DataIn),
      .HSCK(HS_Clock),
      .MCK(MCK),
      .debug_word_tx_token_data(data_word_0),
      .debug_word_tx_fifo_data(data_word_1),
      .debug_word_buffer(data_word_2),
      .debug_word_generator(data_word_3),
      .debug_in_prev_data(data_word_6),
      .debug_out_prev_data(data_word_7)
    );

    assign m00_axis_tstrb = 4'b0000;
	// User logic ends

	endmodule
