//*************************************************
//** 2019 spring iVCAD
//** Description: System controller
//** Mar. 2018 Henry authored
//** Mar. 2019 Kevin revised
//*************************************************

`timescale 1ns/10ps

module Controller (clk, rst, ROM_A, ROM_OE,
  RAM_A, RAM_WE, RAM_OE, done);

  parameter INIT  = 2'b00,
  // You should complete this part

  input         clk;
  input         rst;
  output [13:0] ROM_A;
  output        ROM_OE;
  output [15:0] RAM_A;
  output        RAM_WE;
  output        RAM_OE;
  output        done;

  reg    [13:0] ROM_A;
  reg           ROM_OE;
  reg    [15:0] RAM_A;
  reg           RAM_WE;
  reg           RAM_OE;
  reg           done;
  reg    [1:0]  cstate;
  reg    [1:0]  nstate;

  always @(posedge clk or posedge rst) begin
    if (rst)
      cstate <= INIT;
    else
      cstate <= nstate;
  end

  always @(*) begin
    case (cstate)
      INIT:
      begin
        nstate = READ;
        ROM_OE = 1'b0;
        RAM_WE = 1'b0;
        RAM_OE = 1'b0;
        done = 1'b0;
      end
      // You should complete this part
    endcase
  end

  // You should complete this part

endmodule

