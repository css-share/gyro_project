
`timescale 1 ns / 1 ps

	module axis_stream_fifo_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line
        parameter ADDR_WIDTH = 10,  
         parameter C_AXIS_TDATA_WIDTH = 32,

		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 4

	)
	(

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

    /* 
     * AXI slave interface (input to the FIFO)
     */  
    input  wire                   s00_axis_aclk,  
    input  wire                   s00_axis_aresetn,  
    input  wire [C_AXIS_TDATA_WIDTH-1:0]  s00_axis_tdata,  
    input  wire [(C_AXIS_TDATA_WIDTH/8)-1 : 0] s00_axis_tstrb,  
    input  wire                   s00_axis_tvalid,  
    output wire                   s00_axis_tready,  
    input  wire                   s00_axis_tlast,  
      
    /* 
       CUSTOM INTERFACE FOR GYRO HSI
    
    input  wire                   tclk,  
    input  wire                   tresetn,  
    input  wire [C_AXIS_TDATA_WIDTH-1:0]  tdata,  
    input  wire                   tvalid,  
    output wire                   tready,  
    input  wire                   tlast,  
    */
    /* 
     * AXI master interface (output of the FIFO) 
     */  
    input  wire                   m00_axis_aclk,  
    input  wire                   m00_axis_aresetn,  
    output wire [C_AXIS_TDATA_WIDTH-1:0]  m00_axis_tdata,  
    output wire [(C_AXIS_TDATA_WIDTH/8)-1 : 0] m00_axis_tstrb,  
    output wire                   m00_axis_tvalid,  
    input  wire                   m00_axis_tready,  
    output wire                   m00_axis_tlast  
	);
	
	wire [31:0] dbg_word0_int;
    wire [31:0] dbg_word1_int;
	wire [31:0] dbg_word2_int;
	wire [31:0] dbg_word3_int;
	
// Instantiation of Axi Bus Interface S00_AXI
	axis_stream_fifo_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) axis_stream_fifo_v1_0_S00_AXI_inst (
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
		.dbg_word0(dbg_word0_int),
		.dbg_word1(dbg_word1_int),
		.dbg_word2(dbg_word2_int),
		.dbg_word3(dbg_word3_int)
	);

reg [ADDR_WIDTH:0] wr_ptr_reg = {ADDR_WIDTH+1{1'b0}}, wr_ptr_next;  
reg [ADDR_WIDTH:0] wr_ptr_gray_reg = {ADDR_WIDTH+1{1'b0}}, wr_ptr_gray_next; 
reg [ADDR_WIDTH:0] wr_addr_reg = {ADDR_WIDTH{1'b0}}; 
reg [ADDR_WIDTH:0] rd_ptr_reg = {ADDR_WIDTH+1{1'b0}}, rd_ptr_next; 
reg [ADDR_WIDTH:0] rd_ptr_gray_reg = {ADDR_WIDTH+1{1'b0}}, rd_ptr_gray_next;  
reg [ADDR_WIDTH:0] rd_addr_reg = {ADDR_WIDTH+1{1'b0}}; 
 
reg [ADDR_WIDTH:0] wr_ptr_gray_sync1_reg = {ADDR_WIDTH+1{1'b0}};  
reg [ADDR_WIDTH:0] wr_ptr_gray_sync2_reg = {ADDR_WIDTH+1{1'b0}}; 
reg [ADDR_WIDTH:0] rd_ptr_gray_sync1_reg = {ADDR_WIDTH+1{1'b0}};  
reg [ADDR_WIDTH:0] rd_ptr_gray_sync2_reg = {ADDR_WIDTH+1{1'b0}}; 
 
reg s00_rst_sync1_reg = 1'b1;  
reg s00_rst_sync2_reg = 1'b1; 
reg s00_rst_sync3_reg = 1'b1;  
reg m00_rst_sync1_reg = 1'b1; 
reg m00_rst_sync2_reg = 1'b1;  
reg m00_rst_sync3_reg = 1'b1; 
 
reg [C_AXIS_TDATA_WIDTH+2-1:0] mem[(2**ADDR_WIDTH)-1:0]; 
reg [C_AXIS_TDATA_WIDTH+2-1:0] mem_read_data_reg = {C_AXIS_TDATA_WIDTH+2{1'b0}};  
reg mem_read_data_valid_reg = 1'b0, mem_read_data_valid_next; 
wire [C_AXIS_TDATA_WIDTH+2-1:0] mem_write_data; 
 
reg [C_AXIS_TDATA_WIDTH+2-1:0] m00_data_reg = {C_AXIS_TDATA_WIDTH+2{1'b0}};  
  
reg m00_axis_tvalid_reg = 1'b0, m00_axis_tvalid_next; 
 
// full when first TWO MSBs do NOT match, but rest matches 
// (gray code equivalent of first MSB different but rest same) 
wire full = ((wr_ptr_gray_reg[ADDR_WIDTH] != rd_ptr_gray_sync2_reg[ADDR_WIDTH]) && 
             (wr_ptr_gray_reg[ADDR_WIDTH-1] != rd_ptr_gray_sync2_reg[ADDR_WIDTH-1]) && 
             (wr_ptr_gray_reg[ADDR_WIDTH-2:0] == rd_ptr_gray_sync2_reg[ADDR_WIDTH-2:0])); 
// empty when pointers match exactly 
wire empty = rd_ptr_gray_reg == wr_ptr_gray_sync2_reg; 
 
// control signals 
reg write; 
reg read; 
reg store_output; 
 
assign s00_axis_tready = ~full & ~s00_rst_sync3_reg; // #### 
//assign tready = ~full & ~s00_rst_sync3_reg;
 
assign m00_axis_tvalid = m00_axis_tvalid_reg; 
 
assign mem_write_data = {s00_axis_tlast, s00_axis_tdata}; // ###
//assign mem_write_data = {tlast, tdata}; 
assign {m00_axis_tlast, m00_axis_tdata} = m00_data_reg; 
 
// reset synchronization 
//always @(posedge tclk or negedge tresetn) begin    
// was s00_axis_aclk and only posedge tclk
always @(posedge s00_axis_aclk) begin
    if (!s00_axis_aresetn) begin
        s00_rst_sync1_reg <= 1'b1;  
        s00_rst_sync2_reg <= 1'b1; 
        s00_rst_sync3_reg <= 1'b1;  
    end else begin  
        s00_rst_sync1_reg <= 1'b0; 
        s00_rst_sync2_reg <= s00_rst_sync1_reg | m00_rst_sync1_reg; 
        s00_rst_sync3_reg <= s00_rst_sync2_reg; 
    end 
end 
 
always @(posedge m00_axis_aclk) begin 
    if (!m00_axis_aresetn) begin 
        m00_rst_sync1_reg <= 1'b1;  
        m00_rst_sync2_reg <= 1'b1; 
        m00_rst_sync3_reg <= 1'b1;  
    end else begin  
        m00_rst_sync1_reg <= 1'b0; 
        m00_rst_sync2_reg <= s00_rst_sync1_reg | m00_rst_sync1_reg; 
        m00_rst_sync3_reg <= m00_rst_sync2_reg; 
    end 
end 
 
// Write logic 
always @* begin 
    write = 1'b0;  
  
    wr_ptr_next = wr_ptr_reg;  
    wr_ptr_gray_next = wr_ptr_gray_reg;  
  
   // if (tvalid) begin // was s00_axis_tvalid 
     if(s00_axis_tvalid) begin
        // input data valid  
        if (~full) begin  
            // not full, perform write  
            write = 1'b1; 
            wr_ptr_next = wr_ptr_reg + 1; 
            wr_ptr_gray_next = wr_ptr_next ^ (wr_ptr_next >> 1); 
        end 
    end 
end 
 
always @(posedge s00_axis_aclk) begin // was tclk 
    if (s00_rst_sync3_reg) begin 
        wr_ptr_reg <= {ADDR_WIDTH+1{1'b0}};  
        wr_ptr_gray_reg <= {ADDR_WIDTH+1{1'b0}}; 
    end else begin 
        wr_ptr_reg <= wr_ptr_next; 
        wr_ptr_gray_reg <= wr_ptr_gray_next; 
    end 
 
    wr_addr_reg <= wr_ptr_next; 
 
    if (write) begin 
        mem[wr_addr_reg[ADDR_WIDTH-1:0]] <= mem_write_data; 
    end 
end 
 
// pointer synchronization 
always @(posedge s00_axis_aclk) begin  // tclk
    if (s00_rst_sync3_reg) begin 
        rd_ptr_gray_sync1_reg <= {ADDR_WIDTH+1{1'b0}};  
        rd_ptr_gray_sync2_reg <= {ADDR_WIDTH+1{1'b0}}; 
    end else begin 
        rd_ptr_gray_sync1_reg <= rd_ptr_gray_reg; 
        rd_ptr_gray_sync2_reg <= rd_ptr_gray_sync1_reg; 
    end 
end 
 
always @(posedge m00_axis_aclk) begin 
    if (m00_rst_sync3_reg) begin 
        wr_ptr_gray_sync1_reg <= {ADDR_WIDTH+1{1'b0}};  
        wr_ptr_gray_sync2_reg <= {ADDR_WIDTH+1{1'b0}}; 
    end else begin 
        wr_ptr_gray_sync1_reg <= wr_ptr_gray_reg; 
        wr_ptr_gray_sync2_reg <= wr_ptr_gray_sync1_reg; 
    end 
end 
 
// Read logic 
always @* begin 
    read = 1'b0;  
  
    rd_ptr_next = rd_ptr_reg;  
    rd_ptr_gray_next = rd_ptr_gray_reg;  
  
    mem_read_data_valid_next = mem_read_data_valid_reg;  
  
    if (store_output | ~mem_read_data_valid_reg) begin  
        // output data not valid OR currently being transferred  
        if (~empty) begin  
            // not empty, perform read  
            read = 1'b1; 
            mem_read_data_valid_next = 1'b1;  
            rd_ptr_next = rd_ptr_reg + 1;  
            rd_ptr_gray_next = rd_ptr_next ^ (rd_ptr_next >> 1);  
        end else begin  
            // empty, invalidate  
            mem_read_data_valid_next = 1'b0; 
        end 
    end 
end 
 
always @(posedge m00_axis_aclk) begin 
    if (m00_rst_sync3_reg) begin 
        rd_ptr_reg <= {ADDR_WIDTH+1{1'b0}};  
        rd_ptr_gray_reg <= {ADDR_WIDTH+1{1'b0}}; 
        mem_read_data_valid_reg <= 1'b0;  
    end else begin  
        rd_ptr_reg <= rd_ptr_next;  
        rd_ptr_gray_reg <= rd_ptr_gray_next;  
        mem_read_data_valid_reg <= mem_read_data_valid_next;  
    end  
  
    rd_addr_reg <= rd_ptr_next;  
  
    if (read) begin  
        mem_read_data_reg <= mem[rd_addr_reg[ADDR_WIDTH-1:0]];  
    end  
end  
  
// Output register  
always @* begin  
    store_output = 1'b0; 
 
    m00_axis_tvalid_next = m00_axis_tvalid_reg; 
 
    if (m00_axis_tready | ~m00_axis_tvalid) begin 
        store_output = 1'b1;  
        m00_axis_tvalid_next = mem_read_data_valid_reg;  
    end  
end  
  
always @(posedge m00_axis_aclk) begin  
    if (m00_rst_sync3_reg) begin  
        m00_axis_tvalid_reg <= 1'b0;  
    end else begin  
        m00_axis_tvalid_reg <= m00_axis_tvalid_next;  
    end  
  
    if (store_output) begin  
        m00_data_reg <= mem_read_data_reg;  
    end  
end  

  assign dbg_word0_int = {m00_rst_sync1_reg,m00_rst_sync2_reg, m00_rst_sync3_reg,rd_ptr_reg,3'b000,rd_ptr_next};
  assign dbg_word1_int = {3'b000,rd_addr_reg, 3'b000, rd_ptr_gray_next};
  assign dbg_word2_int = {s00_rst_sync1_reg,s00_rst_sync2_reg, s00_rst_sync3_reg,wr_ptr_reg,3'b000,wr_ptr_next};
  assign dbg_word3_int = {4'b0000,wr_addr_reg, 3'b000, wr_ptr_gray_next};
  
	endmodule
