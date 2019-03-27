//*************************************************
//** 2019 spring iVCAD
//** Description: Random-access memory testbench
//** Mar. 2018 Henry authored
//** Mar. 2019 Kevin revised
//*************************************************

`timescale 1ns/10ps
`include "RAM.v"
module RAM_tb;

/*Please rewrite this example code according to the assignment*/

  reg        clk, read_enable, write_enable;
  reg [15:0] data_in;
  reg [3:0]  address;
  wire[15:0] data_out;
  integer    i;
  RAM ram1 (clk, address, write_enable, read_enable, data_in, data_out);
  initial clk=1'b0;
  always #10 clk=~clk;
  initial begin
        read_enable=0;   write_enable=0;
        address=4'd0;    data_in=16'd0;
    #20 read_enable=0;   write_enable=0;
    #20 write_enable=1;
        address = 4'd0;  data_in=16'h0;
    // Please add some test pattern to verify your module

    // Display result
    #20 for(i=0;i<16;i=i+1)
        $display($time, " RAM[%d]=%h, ", i, ram1.memory[i]);
    #20 $finish;
  end
  initial begin
    `ifdef FSDB
      $fsdbDumpfile("RAM.fsdb");
      $fsdbDumpvars;
    `endif
    #10000 $finish;
  end
endmodule

