
// ----------------------------------------------------------------
module delay_line_8x32bits (  
  input  clock,           // input for clock to all flops in the shift register
  input  reset_n,         // input to reset the register to a default value
  input  [31:0] data_in,  // input for data to the first flop in the shift register
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

  assign data_out = s7;

endmodule

module Packetizer_fsm (
  input clock, 
  input reset_n,
  input full,
  input last,
  output reg inj,
  output reg shift_sel,
  output reg valid,
  output reg rst_sr
);
 
  parameter
    S0 = 2'b00,
    S1 = 2'b01,
    S2 = 2'b10,
    S3 = 2'b11;

  reg  [1:0] state;
  reg  [1:0] next_state;

//----------Seq Logic-----------------------------
 always @ (posedge (clock) or negedge(reset_n))
 begin
    if (reset_n == 1'b0)
     begin
      state <=  S0;
      end 
    else begin
      state <= next_state;
    end
 end

// Combinatorial Logic----------------------------- 
  always @(state or full or last)
    begin
      next_state = S0;
      case(state)
        S0: 
          begin
	    inj     <= 1'b1;
	    shift_sel     <= 1'b0;
	    rst_sr  <= 1'b1;
	valid <= 1'b0;
	    if(full == 1'b0)
	      begin
                next_state = S0; 
	      end
	    else
	      begin
                next_state = S1; 
	      end
	  end
        S1: 
	  begin
	    inj     <= 1'b0;
	    shift_sel <= 1'b1;
	    rst_sr  <= 1'b1;
valid <= 1'b0;
            next_state = S2; 
          end
	S2:
	  begin
	    inj     <= 1'b0;
	    shift_sel   <= 1'b1;
	    rst_sr  <= 1'b1;
valid <= 1'b1;
	    if(last == 1'b0)
	      begin
                next_state = S2; 
	      end
	    else
	      begin
                next_state = S3; 
	      end
          end
        S3:
	  begin
	    inj     <= 1'b0;
	    shift_sel    <= 1'b0;
	    rst_sr  <= 1'b0;
valid <= 1'b0;
	    next_state = S0;
	  end
	default:
	  begin
	    inj     <= 1'b0;
	    shift_sel     <= 1'b0;
valid <= 1'b0;
	    rst_sr  <= 1'b1;
	    next_state   = S0;
	  end     
       endcase
  end

endmodule

// ----------------------------------------------------------------
module Packetizer (
  input clock,
  input reset_n,
  input [31:0] data_in,
  input valid,
  output TCLK,
  output [31:0] TDATA,
  output TVALID,
  output TLAST
);
 
  wire [31:0]     s8;
  wire [31:0]     s9;
  wire [31:0]    s10;
  wire [8:0] ctl_out;

  wire last_delayed;
  wire valid_delayed;
 
  wire reset_sr;
 
  wire inj_bit;
  wire inj_bit_sync;
  wire last;
  wire full;
  wire shift;
  wire shift_sel;
  wire shift_sel_sync;
  wire valid_fsm;
 
  Packetizer_fsm FSM (
    .clock(clock),
    .reset_n(reset_n),
    .full(full),
    .last(last),
    .inj(inj_bit),
    .shift_sel(shift_sel),
    .valid(valid_fsm),
    .rst_sr(reset_sr)
  );
 
  delay_line_8x32bits delayLine (.clock(shift),.reset_n(reset_n),.data_in(data_in),.data_out(s8));
  register_32bits           Reg9(.clock(shift),.reset_n(reset_n),     .data_in(s8),.data_out(s9));
  register_32bits          Reg10(.clock(~clock),.reset_n(reset_n),     .data_in(s9),.data_out(s10));
  shift_reg_9bits            SR9(.clock(shift),.reset_n(reset_n & reset_sr),.en(1'b1),.d(inj_bit_sync),.out(ctl_out));
 
  mux_2x1_1bit        shiftMux(.in0(valid),.in1(clock),.sel(shift_sel_sync),.mux_out(shift));
 
  dff FF0(.clk(~clock), .rst_n(reset_n), .D(inj_bit), .Q(inj_bit_sync));
  dff FF1(.clk(~clock), .rst_n(reset_n), .D(shift_sel & ~last), .Q(shift_sel_sync));
  dff FF2(.clk(~clock), .rst_n(reset_n), .D(last), .Q(last_delayed));
  dff FF3(.clk(~clock), .rst_n(reset_n), .D(valid_fsm), .Q(valid_delayed));
 
  assign full   = ctl_out[7];
  assign last   = (ctl_out[8] & ~ctl_out[7]);

  assign TCLK   = clock;
  //assign TDATA  = s9;
  //assign TLAST  = last;
  //assign TVALID = valid_fsm;

  assign TDATA   = s10;
  assign TLAST   = last_delayed;
  assign TVALID  = valid_delayed;

 endmodule


module Packetizer_first (
  input clock,
  input reset_n,
  input [31:0] data_in,
  input valid,
  output TCLK,
  output [31:0] TDATA,
  output TVALID,
  output TLAST
);

  wire [31:0] s8;
  wire [31:0] s9;
  wire [8:0] ctl_out;

  // wire clock_sel;
  // wire sync_sel;
  wire reset_sr;

  wire inj_bit;
  wire inj_bit_sync;
  wire last;
  wire full;
  wire shift_sel;
  wire shift_sel_sync;
  wire valid_fsm;
  wire shift;

  Packetizer_fsm FSM (
    .clock(clock),
    .reset_n(reset_n),
    .full(full),
    .last(last),
    .inj(inj_bit),
    .shift_sel(shift_sel),
    .valid(valid_fsm),
    .rst_sr(reset_sr)
  );

  delay_line_8x32bits delayLine (.clock(shift),.reset_n(reset_n),.data_in(data_in),.data_out(s8));
  register_32bits           Reg9(.clock(shift),.reset_n(reset_n),     .data_in(s8),.data_out(s9));
  shift_reg_9bits            SR9(.clock(shift),.reset_n(reset_n & reset_sr),.en(1'b1),.d(inj_bit_sync),.out(ctl_out));

  mux_2x1_1bit	       shiftMux(.in0(valid),.in1(clock),.sel(shift_sel_sync),.mux_out(shift));

  dff FF0(.clk(~clock), .rst_n(reset_n), .D(inj_bit), .Q(inj_bit_sync)); 
  dff FF1(.clk(~clock), .rst_n(reset_n), .D(shift_sel & ~last), .Q(shift_sel_sync)); 

  // select_synchronizer syncMuxSel(.clock(clock),.reset_n(reset_n),.last(last), .sel(clock_sel),.sync_sel(sync_sel));

  assign full   = ctl_out[7];
  assign last   = (ctl_out[8] & ~ctl_out[7]);

  assign TCLK   = clock;
  assign TDATA  = s9;
  assign TLAST  = last;
  assign TVALID = valid_fsm;

 endmodule
