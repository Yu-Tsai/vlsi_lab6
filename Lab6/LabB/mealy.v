//*************************************************
//** 2019 spring iVCAD
//** Description: Mealy machine
//** Mar. 2014 Tim revised
//** Mar. 2015 Jimmy revised
//** Mar. 2016 Yip revised
//** Mar. 2017 TimC revised
//** Mar. 2018 Henry revised
//** Mar. 2019 Kevin revised
//*************************************************

module mealy (clk, rst, din, qout);

  input clk, rst, din;
  output qout;
  
  reg qout;
  reg [1:0] cs, ns;

  parameter s0 = 2'b00,
            s1 = 2'b01,
            s2 = 2'b10;

  always @(posedge clk or posedge rst) begin
    if (rst)
	
      cs <= s0;
	  
    else
	
      cs <= ns;
	  
  end

  always @(cs or din) begin//ns case
  
    case (cs)
      s0: ns = din?s1:s2;
      s1: ns = din?s1:s2;
      s2: ns = din?s2:s0;
    endcase
  end

  always @(cs or din) begin//qout case
  
    case (cs)
      s0: qout = 1'b0;
      s1: qout = din? 1'b1:1'b0;
      s2: qout = din? 1'b0:1'b1;
    endcase
  end

endmodule
