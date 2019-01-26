module mux_4_to_1(
  output mux_out,
  input [1:0] sel,
  input [3:0] mux_in
);

  assign mux_out = mux_in[sel];

endmodule

module mux_8_to_1(
  output mux_out,
  input [2:0] sel,
  input [7:0] mux_in
);

  assign mux_out = mux_in[sel];

endmodule

module demux_1_to_2_pol(
  input  mux_in,
  input  pol,
  input  sel,
  output [1:0] mux_out
);

  assign mux_out[0] = (mux_in & ~sel) ^ pol;
  assign mux_out[1] = (mux_in &  sel) ^ pol;

endmodule

module demux_1_to_4_pol(
  input  mux_in,
  input  pol,
  input  [1:0] sel,
  output [3:0] mux_out
);

  assign mux_out[0] = (mux_in &  ~sel[1] &~sel[0]) ^ pol;
  assign mux_out[1] = (mux_in &  ~sel[1] & sel[0]) ^ pol;
  assign mux_out[2] = (mux_in &   sel[1] &~sel[0]) ^ pol;
  assign mux_out[3] = (mux_in &   sel[1] & sel[0]) ^ pol;

endmodule

module demux_1_to_8_pol(
  input  mux_in,
  input  pol,
  input  [2:0] sel,
  output [7:0] mux_out
);

  assign mux_out[0] = (mux_in & ~sel[2] & ~sel[1] &~sel[0]) ^ pol;
  assign mux_out[1] = (mux_in & ~sel[2] & ~sel[1] & sel[0]) ^ pol;
  assign mux_out[2] = (mux_in & ~sel[2] &  sel[1] &~sel[0]) ^ pol;
  assign mux_out[3] = (mux_in & ~sel[2] &  sel[1] & sel[0]) ^ pol;
  assign mux_out[4] = (mux_in &  sel[2] & ~sel[1] &~sel[0]) ^ pol;
  assign mux_out[5] = (mux_in &  sel[2] & ~sel[1] & sel[0]) ^ pol;
  assign mux_out[6] = (mux_in &  sel[2] &  sel[1] &~sel[0]) ^ pol;
  assign mux_out[7] = (mux_in &  sel[2] &  sel[1] & sel[0]) ^ pol;

endmodule

module dff(
  input clk,
  input rst_n,
  input D,
  output reg Q
);
 
always @ (posedge(clk), negedge(rst_n))
  begin
    if (rst_n == 0)
      Q <= 1'b0;
    else
      Q <= D;
  end
 
endmodule

module clock_divider_by_2(
  input clk_in,
  input rst_n,
  output clk_out
);

  wire Q_int;

  dff ff0(.clk(clk_in),  .rst_n(rst_n),.D(~Q_int),.Q(Q_int));

  assign clk_out = Q_int;

endmodule

module clock_divider(
    input clk_in,
    input rst_n,
    input [2:0] div,
    output clk_out
  );

  wire [7:0] Q_int;

  dff ff0(.clk(clk_in),  .rst_n(rst_n),.D(~Q_int[0]),.Q(Q_int[0]));
  dff ff1(.clk(Q_int[0]),.rst_n(rst_n),.D(~Q_int[1]),.Q(Q_int[1]));
  dff ff2(.clk(Q_int[1]),.rst_n(rst_n),.D(~Q_int[2]),.Q(Q_int[2]));
  dff ff3(.clk(Q_int[2]),.rst_n(rst_n),.D(~Q_int[3]),.Q(Q_int[3]));
  dff ff4(.clk(Q_int[3]),.rst_n(rst_n),.D(~Q_int[4]),.Q(Q_int[4]));
  dff ff5(.clk(Q_int[4]),.rst_n(rst_n),.D(~Q_int[5]),.Q(Q_int[5]));
  dff ff6(.clk(Q_int[5]),.rst_n(rst_n),.D(~Q_int[6]),.Q(Q_int[6]));
  dff ff7(.clk(Q_int[6]),.rst_n(rst_n),.D(~Q_int[7]),.Q(Q_int[7]));

  mux_8_to_1 s0(
    .mux_out(clk_out),
    .sel(div),
    .mux_in(Q_int)
  );

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

// ----------------------------------------------------------------

module shift_reg_9bits (  
  input clock,           // input for clock to all flops in the shift register
  input reset_n,         // input to reset the register to a default value
  input en,              // input for enable to switch the shift register on/off
  input d,               // input for data to the first flop in the shift register
  output reg [8:0] out  // output to read out the current value of all register bits
);
 
  always @ (posedge (clock) or negedge(reset_n))
    begin
      if(reset_n == 1'b0)
        out = 9'b000000000;
      else 
        begin
          if(en == 1'b1)
            out = {out[7:0], d};
          else
            out = out;
        end
    end

endmodule

