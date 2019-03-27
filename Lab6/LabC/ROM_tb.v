//*************************************************
//** 2019 spring iVCAD
//** Description: Read-only memory testbench
//** Mar. 2018 Henry authored
//** Mar. 2019 Kevin revised
//*************************************************

`timescale 1ns/10ps
`include "ROM.v"
module ROM_tb;

/*Please rewrite this example code according to the assignment*/

  reg         clk;
  reg         rst;
  reg         read_enable;
  reg  [3:0]  address;
  wire [15:0] data_out;

  ROM rom1 (clk, address, read_enable, data_out);

  initial clk=1'b0;
  always #10	clk=~clk;

  initial begin
        clk = 0; rst = 0;
        read_enable = 0; address = 4'd0;
    #20 rst = 1;
    #40 rst = 0; read_enable = 1;
    // Please add some test pattern to verify your module

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


