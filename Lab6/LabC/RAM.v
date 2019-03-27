//*************************************************
//** 2019 spring iVCAD
//** Description: Random-access memory
//** Mar. 2018 Henry authored
//** Mar. 2019 Kevin revised
//*************************************************

`timescale 1ns/10ps

module RAM (CK, A, WE, OE, D, Q);

/*Please rewrite this example code according to the assignment*/

  input         CK;
  input  [3:0]  A;
  input         WE;
  input         OE;
  input  [15:0] D;
  output [15:0] Q;

  reg    [15:0] Q;
  reg    [3:0]  latched_A;
  reg    [15:0] memory [0:15];

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
      Q = 16'hz; 
    end
  end

endmodule

