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
module downCounter8Bits (
  input  wire clock,
  input  wire reset_n,
  input  wire load,
  input  wire en,
  input  wire [7:0] data_in,
  output wire [7:0] count
);
 
  reg  [7:0] r_reg;
  wire [7:0] r_next;
 
  always @(posedge clock, posedge load, negedge reset_n)
    begin
      if (reset_n == 1'b0)
        r_reg <= 8'b000000;
      else
	if(load == 1'b1)
          r_reg <= data_in;
	else
	  if(en == 1'b0)
            r_reg <= r_reg;
          else
            if(r_reg == 8'b00000000)
              r_reg <= 8'b00000000;
            else
              r_reg <= r_next;
    end 

  assign count  = r_reg;
  assign r_next = r_reg-1;

endmodule

// ----------------------------------------------------------------
module downCounter16Bits (
  input  wire clock,
  input  wire reset_n,
  input  wire load,
  input  wire en,
  input  wire [15:0] data_in,
  output wire [15:0] count
);
 
  reg  [15:0] r_reg;
  wire [15:0] r_next;
 
  always @(posedge clock, posedge load, negedge reset_n)
    begin
      if (reset_n == 1'b0)
        r_reg <= 16'b00000000000000;
      else
	if(load == 1'b1)
          r_reg <= data_in;
	else
	  if(en == 1'b0)
            r_reg <= r_reg;
          else
            if(r_reg == 16'b0000000000000000)
              r_reg <= 16'b0000000000000000;
            else
              r_reg <= r_next;
    end 

  assign count  = r_reg;
  assign r_next = r_reg-1;

endmodule


// ----------------------------------------------------------------
module serializer17bits (
  input  shift,
  input  reset_n,
  input  load,
  input  [16:0] data_in,
  output d_out
);

  reg  [16:0] r_reg;
  wire [16:0] r_next;

  always @(posedge shift, posedge load, negedge reset_n)
    begin
      if (reset_n == 1'b0)
        r_reg <= 17'b00000000000000000;
      else
	if(load == 1'b1)
          r_reg <= data_in;
	else
          r_reg <= r_next;
    end 
 
    assign r_next = {r_reg[15:0], 1'b0};
    assign d_out  = r_reg[16];
 
endmodule

// ----------------------------------------------------------------
module StreamGenerator_fsm (
  input  clock, 
  input  reset_n,
  input  start,
  input  stop,
  input  hold,
  input  free_run,
  input  [7:0] count_data,
  input  [15:0] count_samples,
  output reg load_cntr_data,
  output reg load_cntr_samples,
  output reg en_cntr_data,
  output reg en_cntr_samples,
  output reg shift_data,
  output reg load_data,
  output reg load_state_data,
  output reg done,
  output reg HSCK
);
 
  parameter
    S0  = 4'b0000,
    S1  = 4'b0001,
    S2  = 4'b0010,
    S3  = 4'b0011,
    S4  = 4'b0100,
    S5  = 4'b0101,
    S6  = 4'b0110,
    S7  = 4'b0111,
    S8  = 4'b1000,
    S9  = 4'b1001,
    S10 = 4'b1010,
    S11 = 4'b1011,
    S12 = 4'b1100,
    S13 = 4'b1101,
    S14 = 4'b1110,
    S15 = 4'b1111;

  reg  [3:0] state;
  reg  [3:0] next_state;

//----------Seq Logic-----------------------------
  always @(posedge(clock)) 
  begin
    if (reset_n == 1'b0)
      begin
        state <=  S0;
      end 
    else 
      begin
        state <= next_state;
      end
  end

// Combinatorial Logic----------------------------- 
  always @(state or start or stop or hold or free_run or count_data or count_samples)
   begin
     next_state = S0;
     case(state)
       S0: 
         begin
         load_cntr_data    = 1'b0;
         load_cntr_samples = 1'b0;
       en_cntr_data      = 1'b0;
       en_cntr_samples   = 1'b0;
       shift_data           = 1'b0;
       load_data           = 1'b0;
       load_state_data   = 1'b0;
       HSCK           = 1'b0;
      done           = 1'b0;
       if((start == 1'b0) || (stop == 1'b1))
             next_state = S0; 
       else
             next_state = S12; 
     end
      S12:
     begin
         load_cntr_data    = 1'b0;
         load_cntr_samples = 1'b0;
       en_cntr_data      = 1'b0;
       en_cntr_samples   = 1'b0;
       load_data           = 1'b0;
       load_state_data   = 1'b1;
       shift_data           = 1'b0;
       HSCK           = 1'b0;
       done           = 1'b0;
           next_state = S1; 
         end
       S1:     
     begin
         load_cntr_data    = 1'b1;
         load_cntr_samples = 1'b1;
       en_cntr_data      = 1'b0;
       en_cntr_samples   = 1'b0;
       load_data           = 1'b1;
       load_state_data   = 1'b0;
       shift_data           = 1'b0;
       HSCK           = 1'b0;
       done           = 1'b0;
           next_state = S2; 
         end
   S2:
     begin
         load_cntr_data    = 1'b1;
         load_cntr_samples = 1'b0;
       en_cntr_data      = 1'b0;
       en_cntr_samples   = 1'b0;
       load_data           = 1'b0;
       load_state_data   = 1'b0;
       shift_data           = 1'b0;
       HSCK           = 1'b0;
       done           = 1'b0;
           next_state = S3; 
         end
       S3:
     begin
         load_cntr_data    = 1'b0;
         load_cntr_samples = 1'b0;
       en_cntr_data      = 1'b1;
       en_cntr_samples   = 1'b0;
       shift_data           = 1'b0;
       load_data           = 1'b0;
       load_state_data   = 1'b0;
       HSCK           = 1'b1;
       done           = 1'b0;
       next_state = S4;
     end
       S4:
     begin
         load_cntr_data    = 1'b0;
         load_cntr_samples = 1'b0;
       en_cntr_data      = 1'b1;
       en_cntr_samples   = 1'b0;
       shift_data           = 1'b0;
       load_data           = 1'b0;
       load_state_data   = 1'b0;
       HSCK           = 1'b0;
       done           = 1'b0;
       if(count_data == 8'b00010000)
         next_state = S5;
       else
         next_state = S3;
     end
       S5:
     begin
         load_cntr_data    = 1'b0;
         load_cntr_samples = 1'b0;
       en_cntr_data      = 1'b1;
       en_cntr_samples   = 1'b0;
       en_cntr_samples   = 1'b0;
       shift_data           = 1'b0;
       load_data           = 1'b0;
       load_state_data   = 1'b0;
       HSCK           = 1'b0;
       done           = 1'b0;
       next_state = S6;
     end
       S6:
     begin
         load_cntr_data    = 1'b0;
         load_cntr_samples = 1'b0;
       en_cntr_data      = 1'b1;
       en_cntr_samples   = 1'b0;
       shift_data           = 1'b0;
       load_data           = 1'b0;
       load_state_data   = 1'b0;
       HSCK           = 1'b0;
       done           = 1'b0;
       if(count_data == 8'b00000100)
         next_state = S7;
       else
         next_state = S5;
     end
       S7:
     begin
         load_cntr_data    = 1'b0;
         load_cntr_samples = 1'b0;
       en_cntr_data      = 1'b0;
       en_cntr_samples   = 1'b0;
       shift_data           = 1'b0;
       load_data           = 1'b0;
       load_state_data   = 1'b0;
       HSCK           = 1'b0;
       done           = 1'b0;
         next_state = S8;
     end
       S8:
     begin
         load_cntr_data    = 1'b1;
         load_cntr_samples = 1'b0;
       en_cntr_data      = 1'b0;
       en_cntr_samples   = 1'b1;
       shift_data           = 1'b0;
       load_data           = 1'b1;
       HSCK           = 1'b0;
       done           = 1'b0;
       next_state = S9;
     end
       S9:
     begin
         load_cntr_data    = 1'b0;
         load_cntr_samples = 1'b0;
       en_cntr_data      = 1'b0;
       en_cntr_samples   = 1'b0;
       shift_data           = 1'b0;
       load_data           = 1'b0;
       load_state_data   = 1'b0;
       HSCK           = 1'b0;
       done           = 1'b0;
       if(hold == 1'b1)
         next_state = S11;
       else 
         if(stop == 1'b1)
           next_state = S10;
         else 
           if((free_run == 1'b0) && (count_samples == 16'b0000000000000000))
             next_state = S10;
           else
             next_state = S3;
     end
       S10:
     begin
         load_cntr_data    = 1'b0;
         load_cntr_samples = 1'b1;
       en_cntr_data      = 1'b0;
       en_cntr_samples   = 1'b0;
       en_cntr_samples   = 1'b0;
       shift_data           = 1'b0;
       load_data           = 1'b0;
       load_state_data   = 1'b0;
       HSCK           = 1'b0;
       done           = 1'b1;
       if(start == 1'b1)
         next_state = S10;
       else
         next_state = S0;
     end
       S11:
     begin
         load_cntr_data    = 1'b0;
         load_cntr_samples = 1'b0;
       en_cntr_data      = 1'b0;
       en_cntr_samples   = 1'b0;
       shift_data           = 1'b0;
       load_data           = 1'b0;
       HSCK           = 1'b0;
       done           = 1'b0;
       if(hold == 1'b1)
         next_state = S11;
       else
         next_state = S9;
     end
   default:
     begin
         load_cntr_data    = 1'b0;
         load_cntr_samples = 1'b0;
       en_cntr_data      = 1'b0;
       en_cntr_samples   = 1'b0;
       shift_data           = 1'b0;
       load_data           = 1'b0;
       load_state_data   = 1'b0;
       HSCK           = 1'b0;
       done           = 1'b0;
       next_state   = S0;
     end     
      endcase
 end

endmodule

// ----------------------------------------------------------------

module StreamGenerator (
  input clock,
  input reset_n,
  input start,
  input stop,
  input hold,
  input HSCK_POL,
  input [1:0] mode,
  input [15:0] numberSamples,
  input  [1:0] channel,
  output done,
  output MCK,
  output HSCK,
  output HSDATA
);

  wire        en_cntr_data;
  wire        en_cntr_samples;
  wire        load_cntr_data;
  wire        load_cntr_samples;
  wire  [7:0] count_data;
  wire [15:0] count_samples;
  wire [15:0] number_samples;
  wire        load_data;
  wire        load_state_data;
  wire        shift_data;
  wire  [1:0] mode_int;		// mode state to be registered
  wire        free_run;		// set to 1 when mode == 00
  wire        start_int;
  wire        stop_int;
  wire        hold_int;
  wire        done_int;
  wire        HSDATA_int;
  
   dff ff0(.clk(~clock),  .rst_n(reset_n), .D(start), .Q(start_int));
   dff ff1(.clk(~clock),  .rst_n(reset_n), .D(stop),  .Q(stop_int));
   dff ff2(.clk(~clock),  .rst_n(reset_n), .D(hold),  .Q(hold_int));
 
   register_2bits STATE_REG(
     .clock(load_state_data),
     .reset_n(reset_n), 
     .data_in(mode),
     .data_out(mode_int)
   );
 
   register_16bits NSAMPLES_REG(
     .clock(load_state_data),
     .reset_n(reset_n), 
     .data_in(numberSamples),
     .data_out(number_samples)
   );
 
   downCounter16Bits CNTR_SAMPLES(
     .clock(~clock),
     .reset_n(reset_n),
     .load(load_cntr_samples),
     .en(en_cntr_samples),
     .data_in(number_samples),
     .count(count_samples)
   );
 
   downCounter8Bits CNTR_DATA(
     .clock(~clock),
     .reset_n(reset_n),
     .load(load_cntr_data),
     .en(en_cntr_data),
     .data_in(8'b00110000),
     .count(count_data)
   );
 
   serializer17bits SR (
     .shift(HSCK_int),
     .reset_n(reset_n),
     .load(load_data),
     .data_in({1'b0,16'h9381}),
     .d_out(HSDATA_int)
   );
 
   StreamGenerator_fsm FSM (
     .clock(clock),
     .reset_n(reset_n),
     .free_run(free_run),
     .start(start_int),
     .stop(stop_int),
     .hold(hold_int),
     .done(done_int),
     .load_cntr_data(load_cntr_data),
     .load_cntr_samples(load_cntr_samples),
     .en_cntr_data(en_cntr_data),
     .en_cntr_samples(en_cntr_samples),
     .shift_data(shift_data),
     .load_data(load_data),
     .load_state_data(load_state_data),
     .count_data(count_data),
     .count_samples(count_samples),
     .HSCK(HSCK_int)
   );
 
   assign HSCK     = (HSCK_int ^ HSCK_POL);
   assign HSDATA   = ((channel == 2'b11) ? HSDATA_int : 1'b0);
   assign done     = done_int;
   assign free_run = ((mode_int == 2'b00) ? 1'b1 : 1'b0);
   assign MCK      = clock;
   
 endmodule
