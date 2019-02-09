// -----------------------------------------------------------------------
// ----------------------------------------------------------------
module upCounter16Bits (
    input  wire clock,
    input  wire reset_n,
    input  wire enable,
    output wire [15:0] count
  );
 
  reg  [15:0] r_reg;
  wire [15:0] r_next;
  
  always @(posedge clock, negedge reset_n)
    begin
      if (reset_n == 1'b0)
        r_reg <= 16'h0000;
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
module StreamDebugger(
  input clock,
  input reset_n,
  input clear,
  input valid_token,
  input tclk,
  input tvalid,
  input tlast,
  output [31:0] word0,
  output [31:0] word1
);

  // -----------------------------------------------------

  wire [15:0] data0_int;
  wire [15:0] data1_int;
  wire [15:0] data2_int;

  // -----------------------------------------------------

  upCounter16Bits CNTR0(.clock(valid_token),.reset_n(reset_n & ~clear),.enable(1'b1),.count(data0_int));
  upCounter16Bits CNTR1(.clock(tlast),.reset_n(reset_n & ~clear),.enable(1'b1),.count(data1_int));
  upCounter16Bits CNTR2(.clock(tvalid & (~tclk)),.reset_n(reset_n & ~clear),.enable(1'b1),.count(data2_int));

  assign word0 = { 16'h0000, data0_int};
  assign word1 = { data2_int, data1_int};

endmodule

// -----------------------------------------------------------------------

module StreamPipeline(
    input clock,
    input reset_n,
    input startSamples,
    input stopSamples,
    input holdSamples,
    input clearDebugRegisters,
    input [15:0] numSamples,
    input [1:0] mode,
    output doneSamples,
    input [1:0] channelSelect,
    input HSCK_POL,
    input [1:0] HSDATA,
    output MCK,
    output [1:0] HSCK,
    output [31:0] dbg_word0,
    output [31:0] dbg_word1,
    // output HSCK_dbg,
    // output HSDATA_dbg,
    // output validToken,
    output TCLK,
    output [31:0] TDATA,
    output TVALID,
    output TLAST
  );

  // ---------------------------------------------------------------------

  wire MCK_int;
  wire tclk_int;
  wire tvalid_int;
  wire tlast_int;
  wire HSCK_int;
  wire HSDATA_int;
  wire HSDATA_gen;

  wire [31:0] data_out;

  wire [31:0] dbg_word0_int;
  wire [31:0] dbg_word1_int;

  wire valid_out;
  wire clock_int;

  wire nc3, nc2;

  // ---------------------------------------------------------------------
  // TODO: fix all the output HSK and its genberation and control flow.
  // ---------------------------------------------------------------------

  demux_1_to_4_pol HSSCKdemux(
    .mux_in(HSCK_int),
    .pol(HSCK_POL),
    .sel(channelSelect),
    .mux_out({nc3, nc2, HSCK[1:0]})
  );

  mux_4_to_1 HSDATAmux(
    .mux_out(HSDATA_int),
    .sel(channelSelect),
    .mux_in({HSDATA_gen, 1'b0, HSDATA[1:0]})
  );

clock_divider_by_2 CLK_DIV2(
  .clk_in(clock),
  .rst_n(reset_n),
  .clk_out(clock_int)
);

  StreamGenerator GYRO_StreamGenerator(
    .clock(clock_int),
    .reset_n(reset_n),
    .start(startSamples),
    .stop(stopSamples),
    .hold(holdSamples),
    .mode(mode),
    .HSCK_POL(HSCK_POL),
    .channel(channelSelect),
    .numberSamples(numSamples),
    .done(doneSamples),
    .MCK(MCK_int),
    .HSCK(HSCK_int),
    .HSDATA(HSDATA_gen)
  );

 Tokenizer GYRO_Tokenizer(
  .clock(clock_int),
  .reset_n(reset_n),
  .HSCK_POL(HSCK_POL),
  .HSCK(HSCK_int),
  .HSDATA(HSDATA_int),
  .data_out(data_out),
  .valid_out(valid_out)
);

 Packetizer GYRO_Packetizer(
    .clock(clock_int),
    .reset_n(reset_n),
    .data_in(data_out),
    .valid(valid_out),
    .TCLK(tclk_int),
    .TDATA(TDATA),
    .TVALID(tvalid_int),
    .TLAST(tlast_int)
  );

 StreamDebugger GYRO_Debugger(
   .clock(clock_int),
   .reset_n(reset_n),
   .clear(clearDebugRegisters),
   .valid_token(valid_out),
   .tclk(clock_int),
   .tvalid(tvalid_int),
   .tlast(tlast_int),
   .word0(dbg_word0_int),
   .word1(dbg_word1_int)
 );

  // assign validToken = valid_out;
  assign MCK    = clock_int;
  assign TCLK   = tclk_int;
  assign TVALID = tvalid_int;
  assign TLAST  = tlast_int;

  assign dbg_word0 = dbg_word0_int;
  assign dbg_word1 = dbg_word1_int;

  // assign HSCK_dbg = HSCK_int;
  // assign HSDATA_dbg = HSDATA_int;

endmodule