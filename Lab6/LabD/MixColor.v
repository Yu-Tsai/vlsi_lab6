//*************************************************
//** 2019 spring iVCAD
//** Description: Mix color of two pixels
//** Mar. 2018 Henry authored
//** Mar. 2019 Kevin revised
//*************************************************

`timescale 1ns/10ps
module MixColor (color_in1, color_in2, color_out);

  input  [23:0] color_in1;
  input  [23:0] color_in2;
  output [23:0] color_out;

  //reg    [23:0] color_out;

  /*always @(*) begin
    color_out = 
  end*/
  
  assign color_out = color_in1 ^ color_in2

endmodule
