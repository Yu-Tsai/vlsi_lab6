//*************************************************
//** 2019 spring iVCAD
//** Description: Moore machine testbench
//** Mar. 2014 Tim revised
//** Mar. 2015 Jimmy revised
//** Mar. 2016 Yip revised
//** Mar. 2017 TimC revised
//** Mar. 2018 Henry revised
//** Mar. 2019 Kevin revised
//*************************************************

`timescale 1ns/10ps
`include "mealy.v"

module mealy_tb;

reg clk, rst, din;   //inputs
wire qout;           //outputs

mealy m0 (.qout(qout), .clk(clk), .rst(rst), .din(din));

initial $monitor($time, " clk=%d, rst=%d, din=%d, qout=%d", clk, rst, din, qout);

initial clk = 1'b0;
always #10 clk = ~clk;

initial begin
  rst=1'b1;
  #20 rst=1'b0; din=1'b1;
  #20 din=1'b1;
  #20 din=1'b0;
  #20 din=1'b1;
  #20 din=1'b0;
  #20 din=1'b0;
  #20 din=1'b0;

#20 $finish;

end

initial begin
  `ifdef FSDB
	$fsdbDumpfile("mealy.fsdb");
	$fsdbDumpvars;
  `endif
  #10000 $finish;
end

endmodule

