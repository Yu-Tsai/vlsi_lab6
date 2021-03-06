//*************************************************
//** 2019 spring iVCAD
//** Description: Random-access memory
//** Mar. 2018 Henry authored
//** Mar. 2019 Kevin revised
//*************************************************

`timescale 1ns/10ps
`define ramsize 16
`define wordsize 24

module RAM (CK, A, WE, OE, D, Q);

  input         CK;
  input  [`ramsize-1:0]  A;
  input         WE;
  input         OE;
  input  [`wordsize-1:0] D;
  output [`wordsize-1:0] Q;

  reg    [`wordsize-1:0] Q;
  reg    [`ramsize-1:0]  latched_A;
  reg    [`wordsize-1:0] memory [0:65536];

  always @(posedge CK) begin
    if (WE) begin
      memory[A] <= D;
    end
    latched_A <= A;
	
  end

  always @(*) begin
    if (OE) begin
      Q = memory[latched_A];
    end
    else begin
      Q = 24'hz; 
    end
  end

endmodule

