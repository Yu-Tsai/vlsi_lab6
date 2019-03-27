//*************************************************
//** 2019 spring iVCAD
//** Description: Random-access memory testbench
//** Mar. 2018 Henry authored
//** Mar. 2019 Kevin revised
//*************************************************

`timescale 1ns/10ps
`include "RAM.v"
`define ramsize 16
`define wordsize 24
module RAM_tb;

  reg        clk, read_enable, write_enable;
  reg [`wordsize-1:0] data_in;
  reg [`ramsize-1:0]  address;
  wire[`wordsize-1:0] data_out;
  integer    i;
  RAM ram1 (clk, address, write_enable, read_enable, data_in, data_out);
  initial clk=1'b0;
  always #10 clk=~clk;
  initial begin
        read_enable=1'b0;   write_enable=1'b0;
        address=16'd0;    data_in=24'h0;
    #20 read_enable=1'b0;   write_enable=1'b0;
    #20 write_enable=1'b1; address = 16'd0; data_in=24'h00_0afc;
    #20 write_enable=1'b1; address = 16'd1887; data_in=24'h00_b031;
    #20 write_enable=1'b1; address = 16'd22453; data_in=24'hf0_0005;
    #20 write_enable=1'b1; address = 16'd308; data_in=24'h00_0246;
    #20 write_enable=1'b1; address = 16'd74; data_in=24'h00_00a9;
    #20 write_enable=1'b1; address = 16'd299; data_in=24'h00_006e;
    #20 write_enable=1'b1; address = 16'd51; data_in=24'hff_ffff;
    #20 write_enable=1'b1; address = 16'd16388; data_in=24'h00_046a;
    #20 write_enable=1'b1; address = 16'd65535; data_in=24'hc1_0dd3;

    // Display result
    //#20 for(i=0;i<16;i=i+1)
        //$monitor($time, " RAM[%d]=%h, ", address, ram1.memory[i]);
    #20 $finish;
  end
  initial begin
    $monitor($time, " RAM[%d]=%h, ", address, ram1.memory[address]);
  end
  initial begin
    `ifdef FSDB
      $fsdbDumpfile("RAM.fsdb");
      $fsdbDumpvars;
    `endif
    #10000 $finish;
  end
endmodule

