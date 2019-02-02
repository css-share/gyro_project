module Tokenizer_fsm (
  input clock, 
  input reset_n,
  input valid,
  output reg enable_HSCK,
  output reg load_n,
  output reg valid_out
);
 
  parameter
    S0 = 2'b00,
    S1 = 2'b01,
    S2 = 2'b10,
    S3 = 2'b11;

  reg  [1:0] state;
  reg  [1:0] next_state;

//----------Seq Logic-----------------------------
always @ (posedge(clock))
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
  always @(state or valid)
    begin
      next_state = S0;
      case(state)
        S0: 
          begin
	    load_n       = 1'b1;
	    enable_HSCK  = 1'b0;	
	    valid_out    = 1'b0;
            next_state = S1;
	  end
        S1: 
	  begin
	    load_n       = 1'b1;
	    enable_HSCK  = 1'b1;
	    valid_out  = 1'b0;
            next_state = S2; 
	    if(valid == 1'b1)
	      begin
                next_state = S2; 
	      end
	    else
	      begin
                next_state = S1; 
	      end
          end
        S2: 
	  begin
	    load_n       = 1'b1;
	    enable_HSCK  = 1'b0;
		valid_out  = 1'b1;
            next_state = S3; 
          end
        S3: 
          begin
	    load_n       = 1'b0;
	    enable_HSCK  = 1'b0;
	    valid_out  = 1'b0;
	    next_state = S0; 
	  end
	default:
	  begin
	    load_n       = 1'b1;
	    enable_HSCK  = 1'b0;
	    next_state   = S0;
	  end     
       endcase
  end

endmodule

module tokenizerShiftRegister32bits (
  input  clock,
  input  reset_n,
  input  s_in,
  output [32:0] d_out
);

  reg  [32:0] r_reg;
  wire [32:0] r_next;

  always @(posedge clock, negedge reset_n)
    begin
      if (reset_n == 1'b0)
        r_reg <= 33'b0000000000000000000000001;
      else
        r_reg <= r_next;
    end 
 
    assign r_next = {r_reg[31:0], s_in};
    assign d_out  = r_reg;
 
endmodule


module Tokenizer (
  input  wire clock,
  input  wire reset_n,
  input  wire HSCK_POL,
  input  wire HSCK,
  input  wire HSDATA,
  output wire [31:0] data_out,
  output wire valid_out
);

  wire [32:0] data_out_int;
  wire load_int;

  tokenizerShiftRegister32bits SR(
    .clock(~HSCK_POL ^ (HSCK)),
    .reset_n(reset_n & ~valid_out),
    .s_in(HSDATA),
    .d_out(data_out_int)
  );

  register_32bits R(
    .clock(load_int),
    .reset_n(reset_n),
    .data_in(data_out_int[31:0]),
    .data_out(data_out)
  );

  dff FF0(.clk(~clock), .rst_n(reset_n),.D(data_out_int[32]),.Q(load_int));
  dff FF1(.clk(clock),  .rst_n(reset_n),.D(load_int),.Q(valid_out));

// OLD CODE below

// wire [32:0] data_out_int;
// wire load_n;
//  wire enable_HSCK;

// tokenizerShiftRegister32bits SR(
//    .clock(~HSCK_POL ^ (HSCK & enable_HSCK)),
//    .reset_n(reset_n & load_n),
//    .s_in(HSDATA),
//    .d_out(data_out_int)
// );


//  Tokenizer_fsm FSM (
//    .clock(clock),
//    .reset_n(reset_n),
//    .valid(data_out_int[32]),
//    .enable_HSCK(enable_HSCK),
//    .load_n(load_n),
//    .valid_out(valid_out)
//  );

//  assign data_out = data_out_int[31:0];
//  assign valid    = data_out_int[32];

endmodule
