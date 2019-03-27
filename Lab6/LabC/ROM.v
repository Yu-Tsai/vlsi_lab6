//*************************************************
//** 2019 spring iVCAD
//** Description: Read-only memory
//** Mar. 2018 Henry authored
//** Mar. 2019 Kevin revised
//*************************************************

`timescale 1ns/10ps
`define romsize 14
`define wordsize 24

module ROM (CK, A, OE, Q);

  input         CK;
  input  [`romsize-1:0]  A;
  input         OE;
  output [`wordsize-1:0] Q;

  reg    [`wordsize-1:0] Q;
  reg    [`romsize-1:0]  latched_A;
  reg    [`wordsize-1:0] memory [0:`romsize-1];

  always @(posedge CK) begin
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
