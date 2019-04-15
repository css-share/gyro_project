
`timescale 1 ns / 1 ps

	module SPI_ip_v1_0_S00_AXI #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 4
	)
	(
		// Users to add ports here
       input wire SPI_MISO,
       output wire SPI_MOSI,
       output wire SPI_SCK,
       output wire SPI_CS,
       output wire FSM_START,
       output wire FSM_DONE,
       
		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal
		input wire  S_AXI_ACLK,
		// Global Reset Signal. This Signal is Active LOW
		input wire  S_AXI_ARESETN,
		// Write address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		// Write channel Protection type. This signal indicates the
    		// privilege and security level of the transaction, and whether
    		// the transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_AWPROT,
		// Write address valid. This signal indicates that the master signaling
    		// valid write address and control information.
		input wire  S_AXI_AWVALID,
		// Write address ready. This signal indicates that the slave is ready
    		// to accept an address and associated control signals.
		output wire  S_AXI_AWREADY,
		// Write data (issued by master, acceped by Slave) 
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		// Write strobes. This signal indicates which byte lanes hold
    		// valid data. There is one write strobe bit for each eight
    		// bits of the write data bus.    
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		// Write valid. This signal indicates that valid write
    		// data and strobes are available.
		input wire  S_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    		// can accept the write data.
		output wire  S_AXI_WREADY,
		// Write response. This signal indicates the status
    		// of the write transaction.
		output wire [1 : 0] S_AXI_BRESP,
		// Write response valid. This signal indicates that the channel
    		// is signaling a valid write response.
		output wire  S_AXI_BVALID,
		// Response ready. This signal indicates that the master
    		// can accept a write response.
		input wire  S_AXI_BREADY,
		// Read address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		// Protection type. This signal indicates the privilege
    		// and security level of the transaction, and whether the
    		// transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_ARPROT,
		// Read address valid. This signal indicates that the channel
    		// is signaling valid read address and control information.
		input wire  S_AXI_ARVALID,
		// Read address ready. This signal indicates that the slave is
    		// ready to accept an address and associated control signals.
		output wire  S_AXI_ARREADY,
		// Read data (issued by slave)
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		// Read response. This signal indicates the status of the
    		// read transfer.
		output wire [1 : 0] S_AXI_RRESP,
		// Read valid. This signal indicates that the channel is
    		// signaling the required read data.
		output wire  S_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    		// accept the read data and response information.
		input wire  S_AXI_RREADY
	);

    //
    // SPI Master Internal Signals
    // 
    wire SPI_done_int;
    wire [23:0] SPI_data_out_int;
    
	// AXI4LITE signals
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awready;
	reg  	axi_wready;
	reg [1 : 0] 	axi_bresp;
	reg  	axi_bvalid;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arready;
	reg [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata;
	reg [1 : 0] 	axi_rresp;
	reg  	axi_rvalid;

	// Example-specific design signals
	// local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	// ADDR_LSB is used for addressing 32/64 bit registers/memories
	// ADDR_LSB = 2 for 32 bits (n downto 2)
	// ADDR_LSB = 3 for 64 bits (n downto 3)
	localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
	localparam integer OPT_MEM_ADDR_BITS = 1;
	//----------------------------------------------
	//-- Signals for user logic register space example
	//------------------------------------------------
	//-- Number of Slave Registers 4
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg0;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg1;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg2;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg3;
	wire	 slv_reg_rden;
	wire	 slv_reg_wren;
	reg [C_S_AXI_DATA_WIDTH-1:0]	 reg_data_out;
	integer	 byte_index;
	reg	 aw_en;

	// I/O Connections assignments

	assign S_AXI_AWREADY	= axi_awready;
	assign S_AXI_WREADY	= axi_wready;
	assign S_AXI_BRESP	= axi_bresp;
	assign S_AXI_BVALID	= axi_bvalid;
	assign S_AXI_ARREADY	= axi_arready;
	assign S_AXI_RDATA	= axi_rdata;
	assign S_AXI_RRESP	= axi_rresp;
	assign S_AXI_RVALID	= axi_rvalid;
	// Implement axi_awready generation
	// axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	// de-asserted when reset is low.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awready <= 1'b0;
	      aw_en <= 1'b1;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // slave is ready to accept write address when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_awready <= 1'b1;
	          aw_en <= 1'b0;
	        end
	        else if (S_AXI_BREADY && axi_bvalid)
	            begin
	              aw_en <= 1'b1;
	              axi_awready <= 1'b0;
	            end
	      else           
	        begin
	          axi_awready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_awaddr latching
	// This process is used to latch the address when both 
	// S_AXI_AWVALID and S_AXI_WVALID are valid. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awaddr <= 0;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // Write Address latching 
	          axi_awaddr <= S_AXI_AWADDR;
	        end
	    end 
	end       

	// Implement axi_wready generation
	// axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	// de-asserted when reset is low. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_wready <= 1'b0;
	    end 
	  else
	    begin    
	      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en )
	        begin
	          // slave is ready to accept write data when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_wready <= 1'b1;
	        end
	      else
	        begin
	          axi_wready <= 1'b0;
	        end
	    end 
	end       

	// Implement memory mapped register select and write logic generation
	// The write data is accepted and written to memory mapped registers when
	// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	// select byte enables of slave registers while writing.
	// These registers are cleared when reset (active low) is applied.
	// Slave register write enable is asserted when valid address and data are available
	// and the slave is ready to accept the write address and write data.
	assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      slv_reg0 <= 0;
	      slv_reg1 <= 0;
	      slv_reg2 <= 0;
	      slv_reg3 <= 0;
	    end 
	  else begin
	    if (slv_reg_wren)
	      begin
	        case ( axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	          2'h0:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 0
	                slv_reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          2'h1:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 1
	                slv_reg1[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          2'h2:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 2
	                slv_reg2[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          2'h3:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 3
	                slv_reg3[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          default : begin
	                      slv_reg0 <= slv_reg0;
	                      slv_reg1 <= slv_reg1;
	                      slv_reg2 <= slv_reg2;
	                      slv_reg3 <= slv_reg3;
	                    end
	        endcase
	      end
	  end
	end    

	// Implement write response logic generation
	// The write response and response valid signals are asserted by the slave 
	// when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	// This marks the acceptance of address and indicates the status of 
	// write transaction.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_bvalid  <= 0;
	      axi_bresp   <= 2'b0;
	    end 
	  else
	    begin    
	      if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
	        begin
	          // indicates a valid write response is available
	          axi_bvalid <= 1'b1;
	          axi_bresp  <= 2'b0; // 'OKAY' response 
	        end                   // work error responses in future
	      else
	        begin
	          if (S_AXI_BREADY && axi_bvalid) 
	            //check if bready is asserted while bvalid is high) 
	            //(there is a possibility that bready is always asserted high)   
	            begin
	              axi_bvalid <= 1'b0; 
	            end  
	        end
	    end
	end   

	// Implement axi_arready generation
	// axi_arready is asserted for one S_AXI_ACLK clock cycle when
	// S_AXI_ARVALID is asserted. axi_awready is 
	// de-asserted when reset (active low) is asserted. 
	// The read address is also latched when S_AXI_ARVALID is 
	// asserted. axi_araddr is reset to zero on reset assertion.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_arready <= 1'b0;
	      axi_araddr  <= 32'b0;
	    end 
	  else
	    begin    
	      if (~axi_arready && S_AXI_ARVALID)
	        begin
	          // indicates that the slave has acceped the valid read address
	          axi_arready <= 1'b1;
	          // Read address latching
	          axi_araddr  <= S_AXI_ARADDR;
	        end
	      else
	        begin
	          axi_arready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_arvalid generation
	// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	// S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	// data are available on the axi_rdata bus at this instance. The 
	// assertion of axi_rvalid marks the validity of read data on the 
	// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	// is deasserted on reset (active low). axi_rresp and axi_rdata are 
	// cleared to zero on reset (active low).  
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rvalid <= 0;
	      axi_rresp  <= 0;
	    end 
	  else
	    begin    
	      if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
	        begin
	          // Valid read data is available at the read data bus
	          axi_rvalid <= 1'b1;
	          axi_rresp  <= 2'b0; // 'OKAY' response
	        end   
	      else if (axi_rvalid && S_AXI_RREADY)
	        begin
	          // Read data is accepted by the master
	          axi_rvalid <= 1'b0;
	        end                
	    end
	end    

	// Implement memory mapped register select and read logic generation
	// Slave register read enable is asserted when valid address is available
	// and the slave is ready to accept the read address.
	assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
	always @(*)
	begin
	      // Address decoding for reading registers
	      case ( axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	        2'h0   : reg_data_out <= slv_reg0;
	        2'h1   : reg_data_out <= {SPI_done_int, 7'b0000000, SPI_data_out_int};
	        2'h2   : reg_data_out <= slv_reg2;
	        2'h3   : reg_data_out <= slv_reg3;
	        default : reg_data_out <= 0;
	      endcase
	end

	// Output register or memory read data
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rdata  <= 0;
	    end 
	  else
	    begin    
	      // When there is a valid read address (S_AXI_ARVALID) with 
	      // acceptance of read address by the slave (axi_arready), 
	      // output the read dada 
	      if (slv_reg_rden)
	        begin
	          axi_rdata <= reg_data_out;     // register read data
	        end   
	    end
	end    

	// Add user logic here
    SPI_Master user_SPI_Block(
      .clock(S_AXI_ACLK), 
      .clock_div(slv_reg3[2:0]),
      .reset_n(S_AXI_ARESETN),
      .start(slv_reg0[31]),
      .done(SPI_done_int),
      .data_in(slv_reg0[23:0]),
      .data_out(SPI_data_out_int),
      .SCK_POL(slv_reg3[31]),
      .SCK(SPI_SCK),
      .CS(SPI_CS),
      .MOSI(SPI_MOSI),
      .MISO(SPI_MISO)
    );
    
    assign FSM_START = slv_reg0[31];
    assign FSM_DONE = SPI_done_int;
	// User logic ends

	endmodule
	
// -----------------------------------------------------------
// Module: SPI_Master
// -----------------------------------------------------------
// Description:
//   GYRO project hardware SPI interface used for testing.
//
// Date: Jan. 19, 2019
//
// -----------------------------------------------------------
//
// Notes: 
//   -  fixed the FSM to include an extra state for the
//      correct decoupling of the load and shift signals.
//    resulting in a cleaner ShiftRegister operation.
//
// -----------------------------------------------------------
    
// -----------------------------------------------------------
    module mux_8_to_1(
      output mux_out,
      input [2:0] sel,
      input [7:0] mux_in
    );
    
      assign mux_out = mux_in[sel];
    
    endmodule
    
    // -----------------------------------------------------------
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
    
    // -----------------------------------------------------------
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
    
    // -----------------------------------------------------------
    module downCounter6Bits (
      input wire clock, reset_n,
      input wire load,
      input wire [5:0] data_in,
      output wire [5:0] count
    );
     
      reg  [5:0] r_reg;
      wire [5:0] r_next;
     
      always @(posedge(clock) , negedge(reset_n) , posedge(load))
        begin
          if (reset_n == 1'b0)
            r_reg <= 6'b000000;
          else
        if(load == 1'b1)
          r_reg <= data_in;
        else
            if(r_reg == 6'b000000)
              r_reg <= 6'b000000;
            else
              r_reg <= r_next;
        end    
    
      assign count  = r_reg;
      assign r_next = r_reg-1;
    
    endmodule
    
    // -----------------------------------------------------------
    module downCounter5Bits (
      input wire clock, reset_n,
      input wire load,
      input wire [4:0] data_in,
      output wire [4:0] count
    );
     
      reg  [4:0] r_reg;
      wire [4:0] r_next;
     
      always @(posedge(clock) , negedge(reset_n) , posedge(load))
        begin
          if (reset_n == 1'b0)
            r_reg <= 5'b00000;
          else
        if(load == 1'b1)
          r_reg <= data_in;
        else
              if(r_reg == 5'b00000)
                r_reg <= 5'b00000;
              else
                r_reg <= r_next;
        end    
    
      assign count  = r_reg;
      assign r_next = r_reg-1;
    
    endmodule
    
    // ------------------------------------------
    module leftShiftRegister25bits (
      input  clock,
      input  reset_n,
      input  load,
      input  [24:0] d_in,
      input  s_in,
      output s_out,
      output [24:0] d_out
    );
     
      reg  [24:0] r_reg;
      wire [24:0] r_next;
    
     always @(posedge(clock) , negedge(reset_n) , posedge(load))
        begin
          if (reset_n == 1'b0)
              r_reg <= 25'b0000000000000000000000000;
          else
            if(load == 1'b1)
            r_reg <= d_in;
            else
             r_reg <= r_next;
        end    
     
        assign r_next = {r_reg[23:0], s_in};
        assign s_out  = r_reg[24];
        assign d_out  = r_reg;
     
    endmodule
    
    
    // -----------------------------------------------------------
    module SPI_fsm (
      input clock, reset_n,
      input start,
      input [4:0] count,
      output reg SCK,
      output reg CS,
      output reg load,
      output reg shift,
      output reg done
    );
     
      parameter
        S0 = 3'b000,
        S1 = 3'b001,
        S2 = 3'b010,
        S3 = 3'b011,
        S4 = 3'b100,
        S5 = 3'b101,
        S6 = 3'b110,
        S7 = 3'b111;
    
      reg  [2:0] state;
      reg  [2:0] next_state;
    
    //----------Seq Logic-----------------------------
     always @(posedge(clock))
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
      always @(state or start or count)
        begin
          next_state = S0;
          case(state)
            S0: 
              begin
            load         = 1'b0;
                shift    = 1'b0;
            CS           = 1'b1;
            SCK          = 1'b0;
            done         = 1'b0;
                if(start == 1'b1)  
                  begin
                    next_state = S1;
                  end
                else
              begin
                  next_state = S0;
              end
              end
            S1: 
          begin
            load      = 1'b1;
            shift      = 1'b0;
            CS           = 1'b1;
            SCK          = 1'b0;
            done      = 1'b0;
                next_state = S2; 
              end
        S2:
          begin
            load      = 1'b0;
            shift      = 1'b0;
            CS           = 1'b0;
            SCK          = 1'b0;
            done      = 1'b0;
            next_state = S3;
          end
            S3: 
          begin
            load     = 1'b0;
            shift      = 1'b1;
            CS           = 1'b0;
            SCK          = 1'b0;
            done      = 1'b0;
            if(count == 5'b00000)
              begin
                    next_state = S5; 
              end
            else
              begin
                next_state = S4; 
              end
              end
            S4: 
          begin
            load      = 1'b0;
            shift      = 1'b0;
            CS           = 1'b0;
            SCK          = 1'b1;
            done      = 1'b0;
            next_state = S3; 
         end
        S5:
          begin
            load      = 1'b0;
            shift      = 1'b0;
            CS           = 1'b1;
            SCK          = 1'b0;
            done      = 1'b1;
                if(start == 1'b1)  
                  begin
                    next_state = S5;
                  end
                else
              begin
                  next_state = S0;
              end
          end
        default:
          begin
            load      = 1'b0;
            shift      = 1'b0;
            done      = 1'b0;
            CS           = 1'b1;
            SCK          = 1'b0;
            next_state   = S0;
          end     
           endcase
      end
    
    endmodule
    
    // ------------------------------------------
module SPI_Master(
      input clock, 
      input [2:0] clock_div,
      input reset_n,
      input start,
      output done,
      input [23:0] data_in,
      output [23:0] data_out,
      input  SCK_POL,
      output SCK,
      output CS,
      output MOSI,
      input MISO
    );
    
    // ------------------------------------------
    
      wire [4:0] count;
      wire [24:0] data_in_int;
      wire [24:0] data_out_int;
      wire load;
      wire shift;
      wire MOSI_int;
      wire SCK_int;
      wire done_int;
    
      wire clock_int;
    
    // ------------------------------------------
    
    clock_divider CLOCKDIV(
        .clk_in(clock),
        .rst_n(reset_n),
        .div(clock_div),
        .clk_out(clock_int)
      );
    
    leftShiftRegister25bits  SR25Bits  (
      .clock(shift), 
      .reset_n(reset_n),
      .load(load),
      .d_in(data_in_int), 
      .d_out(data_out_int),
      .s_in(MISO),
      .s_out(MOSI_int)
    );
    
    downCounter5Bits DWCNTR (
      .clock(SCK_int), 
      .reset_n(reset_n),
      .load(load),
      .data_in(5'b11000), 
      .count(count)
    );
    
    SPI_fsm FSM (
      .clock(clock_int), 
      .reset_n(reset_n),
      .start(start),
      .done(done_int),
      .count(count),
      .SCK(SCK_int),
      .CS(CS),
      .load(load),
      .shift(shift)
    );
    
     assign MOSI = MOSI_int & (~CS);
     assign data_in_int = { 1'b0, data_in };
     assign data_out = data_out_int[23:0];
     assign SCK = SCK_POL ^ SCK_int;
     assign done = done_int;
    
endmodule