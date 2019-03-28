//*************************************************
//** 2019 spring iVCAD
//** Description: Read-only memory testbench
//** Mar. 2018 Henry authored
//** Mar. 2019 Kevin revised
//*************************************************

`timescale 1ns/10ps
`include "ROM.v"
`define romsize 14
`define wordsize 24

module ROM_tb;

/*Please rewrite this example code according to the assignment*/

  reg         clk;
  reg         rst;
  reg         read_enable;
  reg  [`romsize-1:0]  address;
  wire [`wordsize-1:0] data_out;

  ROM rom1 (clk, address, read_enable, data_out);

  initial clk=1'b0;
  always #10	clk=~clk;

  initial begin
        clk = 0; rst = 0;
        read_enable = 0; address = 4'd0;
    #20 rst = 1;
    #40 rst = 0; read_enable = 1;
    #20;
	for(i=16368;i<16384;i=i+1) begin
	  address=i;
	  #20;
	end

  end

  initial begin
    $readmemh("ROM_data.dat",rom1.memory);
  end

  initial begin
    `ifdef FSDB
    $fsdbDumpfile("ROM.fsdb");
    $fsdbDumpvars();
    #1000 $finish;
    `endif
  end
endmodule


