//*************************************************
//** 2019 spring iVCAD
//** Description: Moore machine
//** Mar. 2014 Tim revised
//** Mar. 2015 Jimmy revised
//** Mar. 2016 Yip revised
//** Mar. 2017 TimC revised
//** Mar. 2018 Henry revised
//** Mar. 2019 Kevin revised
//*************************************************

module moore (clk, rst, din, qout);


  input clk, rst, din;
  output qout;

  reg qout;
  reg [1:0] cs, ns;

  parameter s0 = 2'b00,
            s1 = 2'b01,
            s2 = 2'b10,
            s3 = 2'b11;

  always @(posedge clk or posedge rst) begin
    if (rst)
      cs <= s0;
    else
      cs <= ns;
  end

  always @(cs or din) begin//ns case
    case (cs)
      s0: ns = din?s2:s1;
      s1: ns = din?s1:s0;
      s2: ns = din?s3:s2;
      s3: ns = din?s3:s1;
    endcase
  end

  always @(cs) begin//qout case
    case (cs)
      s0: qout = 1'b0;
      s1: qout = 1'b0;
      s2: qout = 1'b1;
      s3: qout = 1'b1;
    endcase
  end

endmodule

