// -----------------------------------------------------------------------

module StreamPipeline(
    input clock,
    input reset_n,
    input startSamples,
    input stopSamples,
    input holdSamples,
    input [15:0] numSamples,
    input [1:0] mode,
    output doneSamples,
    input [1:0] channelSelect,
    input HSCK_POL,
    input [1:0] HSDATA,
    output MCK,
    output [1:0] HSCK,
    output HSCK_dbg,
    output HSDATA_dbg,
    output validToken,
    output TCLK,
    output [31:0] TDATA,
    output TVALID,
    output TLAST
  );

  // ---------------------------------------------------------------------

  wire MCK_int;
  wire HSCK_int;
  wire HSDATA_int;
  wire HSDATA_gen;

  wire [31:0] data_out;
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
    .TCLK(TCLK),
    .TDATA(TDATA),
    .TVALID(TVALID),
    .TLAST(TLAST)
  );

  assign validToken = valid_out;
  assign MCK = clock_int;
  assign HSCK_dbg = HSCK_int;
  assign HSDATA_dbg = HSDATA_int;

endmodule
