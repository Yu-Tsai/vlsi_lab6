/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Mon Apr  8 10:42:23 2019
/////////////////////////////////////////////////////////////


module Controller_DW01_inc_0 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;

  wire   [13:2] carry;

  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[13]), .B(A[13]), .Y(SUM[13]) );
endmodule


module Controller_DW01_inc_1 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[15]), .B(A[15]), .Y(SUM[15]) );
endmodule


module Controller ( clk, rst, ROM_A, ROM_OE, RAM_A, RAM_WE, RAM_OE, done );
  output [13:0] ROM_A;
  output [15:0] RAM_A;
  input clk, rst;
  output ROM_OE, RAM_WE, RAM_OE, done;
  wire   RAM_OE, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26,
         N27, N28, N29, N30, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, N45, N46, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58,
         N59, N60, N61, n3, n4, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, \sub_87/carry[2] , \sub_87/carry[3] ,
         \sub_87/carry[4] , \sub_87/carry[5] , \sub_87/carry[6] ,
         \sub_87/carry[7] , \sub_87/carry[8] , \sub_87/carry[9] ,
         \sub_87/carry[10] , \sub_87/carry[11] , \sub_87/carry[12] ,
         \sub_87/carry[13] , n93, n94, n95, n96, n97, n98, n99, n100, n101;
  wire   [1:0] nstate;
  assign ROM_OE = RAM_OE;

  Controller_DW01_inc_0 add_87 ( .A(ROM_A), .SUM({N61, N60, N59, N58, N57, N56, 
        N55, N54, N53, N52, N51, N50, N49, N48}) );
  Controller_DW01_inc_1 add_86 ( .A(RAM_A), .SUM({N30, N29, N28, N27, N26, N25, 
        N24, N23, N22, N21, N20, N19, N18, N17, N16, N15}) );
  DFFRX1 \cstate_reg[1]  ( .D(nstate[1]), .CK(clk), .RN(n97), .Q(n93), .QN(n59) );
  DFFRX1 \cstate_reg[0]  ( .D(nstate[0]), .CK(clk), .RN(n98), .QN(n60) );
  DFFRX1 \RAM_A_reg[15]  ( .D(n77), .CK(clk), .RN(n98), .Q(RAM_A[15]), .QN(n44) );
  DFFRX1 \ROM_A_reg[13]  ( .D(n75), .CK(clk), .RN(n98), .Q(ROM_A[13]), .QN(n42) );
  DFFRX1 \RAM_A_reg[1]  ( .D(n91), .CK(clk), .RN(n97), .Q(RAM_A[1]), .QN(n58)
         );
  DFFRX1 \RAM_A_reg[2]  ( .D(n90), .CK(clk), .RN(n97), .Q(RAM_A[2]), .QN(n57)
         );
  DFFRX1 \RAM_A_reg[3]  ( .D(n89), .CK(clk), .RN(n97), .Q(RAM_A[3]), .QN(n56)
         );
  DFFRX1 \RAM_A_reg[4]  ( .D(n88), .CK(clk), .RN(n97), .Q(RAM_A[4]), .QN(n55)
         );
  DFFRX1 \RAM_A_reg[5]  ( .D(n87), .CK(clk), .RN(n97), .Q(RAM_A[5]), .QN(n54)
         );
  DFFRX1 \RAM_A_reg[6]  ( .D(n86), .CK(clk), .RN(n97), .Q(RAM_A[6]), .QN(n53)
         );
  DFFRX1 \RAM_A_reg[7]  ( .D(n85), .CK(clk), .RN(n97), .Q(RAM_A[7]), .QN(n52)
         );
  DFFRX1 \RAM_A_reg[8]  ( .D(n84), .CK(clk), .RN(n97), .Q(RAM_A[8]), .QN(n51)
         );
  DFFRX1 \RAM_A_reg[9]  ( .D(n83), .CK(clk), .RN(n97), .Q(RAM_A[9]), .QN(n50)
         );
  DFFRX1 \RAM_A_reg[10]  ( .D(n82), .CK(clk), .RN(n97), .Q(RAM_A[10]), .QN(n49) );
  DFFRX1 \RAM_A_reg[11]  ( .D(n81), .CK(clk), .RN(n97), .Q(RAM_A[11]), .QN(n48) );
  DFFRX1 \RAM_A_reg[12]  ( .D(n80), .CK(clk), .RN(n98), .Q(RAM_A[12]), .QN(n47) );
  DFFRX1 \RAM_A_reg[13]  ( .D(n79), .CK(clk), .RN(n98), .Q(RAM_A[13]), .QN(n46) );
  DFFRX1 \RAM_A_reg[14]  ( .D(n78), .CK(clk), .RN(n98), .Q(RAM_A[14]), .QN(n45) );
  DFFRX1 \RAM_A_reg[0]  ( .D(n92), .CK(clk), .RN(n97), .Q(RAM_A[0]), .QN(n61)
         );
  DFFRX1 \ROM_A_reg[7]  ( .D(n68), .CK(clk), .RN(n97), .Q(ROM_A[7]), .QN(n35)
         );
  DFFRX1 \ROM_A_reg[8]  ( .D(n67), .CK(clk), .RN(n98), .Q(ROM_A[8]), .QN(n34)
         );
  DFFRX1 \ROM_A_reg[9]  ( .D(n66), .CK(clk), .RN(n101), .Q(ROM_A[9]), .QN(n33)
         );
  DFFRX1 \ROM_A_reg[10]  ( .D(n65), .CK(clk), .RN(n101), .Q(ROM_A[10]), .QN(
        n32) );
  DFFRX1 \ROM_A_reg[11]  ( .D(n64), .CK(clk), .RN(n101), .Q(ROM_A[11]), .QN(
        n31) );
  DFFRX1 \ROM_A_reg[12]  ( .D(n63), .CK(clk), .RN(n101), .Q(ROM_A[12]), .QN(
        n30) );
  DFFRX1 \ROM_A_reg[1]  ( .D(n74), .CK(clk), .RN(n98), .Q(ROM_A[1]), .QN(n41)
         );
  DFFRX1 \ROM_A_reg[2]  ( .D(n73), .CK(clk), .RN(n98), .Q(ROM_A[2]), .QN(n40)
         );
  DFFRX1 \ROM_A_reg[3]  ( .D(n72), .CK(clk), .RN(n98), .Q(ROM_A[3]), .QN(n39)
         );
  DFFRX1 \ROM_A_reg[4]  ( .D(n71), .CK(clk), .RN(n98), .Q(ROM_A[4]), .QN(n38)
         );
  DFFRX1 \ROM_A_reg[5]  ( .D(n70), .CK(clk), .RN(n98), .Q(ROM_A[5]), .QN(n37)
         );
  DFFRX1 \ROM_A_reg[6]  ( .D(n69), .CK(clk), .RN(n98), .Q(ROM_A[6]), .QN(n36)
         );
  DFFRX1 \ROM_A_reg[0]  ( .D(n76), .CK(clk), .RN(n98), .Q(ROM_A[0]), .QN(n43)
         );
  CLKBUFX2 U67 ( .A(n9), .Y(n94) );
  CLKINVX1 U68 ( .A(n27), .Y(RAM_WE) );
  CLKINVX1 U69 ( .A(rst), .Y(n101) );
  CLKBUFX3 U70 ( .A(RAM_WE), .Y(n100) );
  CLKBUFX3 U71 ( .A(RAM_WE), .Y(n99) );
  CLKBUFX3 U72 ( .A(n11), .Y(n95) );
  NOR2X1 U73 ( .A(n27), .B(n26), .Y(n11) );
  CLKBUFX3 U74 ( .A(n12), .Y(n96) );
  AND2X2 U75 ( .A(n94), .B(n26), .Y(n12) );
  NAND2X1 U76 ( .A(nstate[0]), .B(n27), .Y(RAM_OE) );
  CLKBUFX3 U77 ( .A(n101), .Y(n98) );
  CLKBUFX3 U78 ( .A(n101), .Y(n97) );
  NAND2X1 U79 ( .A(n60), .B(n93), .Y(n27) );
  NOR2X1 U80 ( .A(n27), .B(n61), .Y(n9) );
  NAND2X1 U81 ( .A(n51), .B(n4), .Y(n26) );
  NAND2BX1 U82 ( .AN(n60), .B(n59), .Y(nstate[0]) );
  OAI2BB2XL U83 ( .B0(n61), .B1(n99), .A0N(N15), .A1N(n100), .Y(n92) );
  OAI2BB2XL U84 ( .B0(n51), .B1(n99), .A0N(N23), .A1N(RAM_WE), .Y(n84) );
  OAI2BB2XL U85 ( .B0(n45), .B1(n99), .A0N(N29), .A1N(n100), .Y(n78) );
  OAI2BB2XL U86 ( .B0(n55), .B1(n99), .A0N(N19), .A1N(n100), .Y(n88) );
  OAI2BB2XL U87 ( .B0(n44), .B1(n100), .A0N(N30), .A1N(n100), .Y(n77) );
  OAI2BB2XL U88 ( .B0(n54), .B1(n99), .A0N(N20), .A1N(RAM_WE), .Y(n87) );
  OAI2BB2XL U89 ( .B0(n58), .B1(n100), .A0N(N16), .A1N(n100), .Y(n91) );
  OAI2BB2XL U90 ( .B0(n46), .B1(n99), .A0N(N28), .A1N(n100), .Y(n79) );
  OAI2BB2XL U91 ( .B0(n53), .B1(n99), .A0N(N21), .A1N(n100), .Y(n86) );
  OAI2BB2XL U92 ( .B0(n57), .B1(n100), .A0N(N17), .A1N(n100), .Y(n90) );
  OAI2BB2XL U93 ( .B0(n52), .B1(n99), .A0N(N22), .A1N(RAM_WE), .Y(n85) );
  OAI2BB2XL U94 ( .B0(n56), .B1(n99), .A0N(N18), .A1N(n100), .Y(n89) );
  OAI2BB2XL U95 ( .B0(n50), .B1(n99), .A0N(N24), .A1N(n100), .Y(n83) );
  OAI2BB2XL U96 ( .B0(n49), .B1(n99), .A0N(N25), .A1N(n100), .Y(n82) );
  OAI2BB2XL U97 ( .B0(n47), .B1(n100), .A0N(N27), .A1N(n100), .Y(n80) );
  OAI2BB2XL U98 ( .B0(n48), .B1(n99), .A0N(N26), .A1N(n100), .Y(n81) );
  OAI21XL U99 ( .A0(n33), .A1(n9), .B0(n10), .Y(n66) );
  AOI22X1 U100 ( .A0(N42), .A1(n95), .B0(N57), .B1(n96), .Y(n10) );
  OAI21XL U101 ( .A0(n34), .A1(n9), .B0(n13), .Y(n67) );
  AOI22X1 U102 ( .A0(N41), .A1(n95), .B0(N56), .B1(n96), .Y(n13) );
  OAI21XL U103 ( .A0(n35), .A1(n9), .B0(n14), .Y(n68) );
  AOI22X1 U104 ( .A0(N40), .A1(n95), .B0(N55), .B1(n96), .Y(n14) );
  OAI21XL U105 ( .A0(n36), .A1(n9), .B0(n15), .Y(n69) );
  AOI22X1 U106 ( .A0(N39), .A1(n95), .B0(N54), .B1(n96), .Y(n15) );
  OAI21XL U107 ( .A0(n37), .A1(n9), .B0(n16), .Y(n70) );
  AOI22X1 U108 ( .A0(N38), .A1(n95), .B0(N53), .B1(n96), .Y(n16) );
  OAI21XL U109 ( .A0(n38), .A1(n94), .B0(n17), .Y(n71) );
  AOI22X1 U110 ( .A0(N37), .A1(n95), .B0(N52), .B1(n96), .Y(n17) );
  OAI21XL U111 ( .A0(n39), .A1(n94), .B0(n18), .Y(n72) );
  AOI22X1 U112 ( .A0(N36), .A1(n95), .B0(N51), .B1(n96), .Y(n18) );
  OAI21XL U113 ( .A0(n30), .A1(n94), .B0(n22), .Y(n63) );
  AOI22X1 U114 ( .A0(N45), .A1(n95), .B0(N60), .B1(n96), .Y(n22) );
  OAI21XL U115 ( .A0(n31), .A1(n94), .B0(n23), .Y(n64) );
  AOI22X1 U116 ( .A0(N44), .A1(n95), .B0(N59), .B1(n96), .Y(n23) );
  OAI21XL U117 ( .A0(n32), .A1(n94), .B0(n24), .Y(n65) );
  AOI22X1 U118 ( .A0(N43), .A1(n95), .B0(N58), .B1(n96), .Y(n24) );
  OAI21XL U119 ( .A0(n40), .A1(n94), .B0(n19), .Y(n73) );
  AOI22X1 U120 ( .A0(N35), .A1(n95), .B0(N50), .B1(n96), .Y(n19) );
  OAI21XL U121 ( .A0(n41), .A1(n94), .B0(n20), .Y(n74) );
  AOI22X1 U122 ( .A0(N34), .A1(n95), .B0(N49), .B1(n96), .Y(n20) );
  OAI21XL U123 ( .A0(n42), .A1(n94), .B0(n21), .Y(n75) );
  AOI22X1 U124 ( .A0(N46), .A1(n95), .B0(N61), .B1(n96), .Y(n21) );
  OAI21XL U125 ( .A0(n43), .A1(n94), .B0(n25), .Y(n76) );
  AOI22X1 U126 ( .A0(n43), .A1(n95), .B0(N48), .B1(n96), .Y(n25) );
  NAND2X1 U127 ( .A(n60), .B(n3), .Y(nstate[1]) );
  NAND4X1 U128 ( .A(n4), .B(n93), .C(n6), .D(n7), .Y(n3) );
  NOR3X1 U129 ( .A(n51), .B(n49), .C(n50), .Y(n6) );
  NOR4X1 U130 ( .A(n8), .B(n46), .C(n44), .D(n45), .Y(n7) );
  NOR2X1 U131 ( .A(n59), .B(n60), .Y(done) );
  AND2X2 U132 ( .A(n28), .B(n29), .Y(n4) );
  NOR4X1 U133 ( .A(n56), .B(n57), .C(n58), .D(n61), .Y(n28) );
  NOR4X1 U134 ( .A(n52), .B(n53), .C(n54), .D(n55), .Y(n29) );
  OR2X1 U135 ( .A(n48), .B(n47), .Y(n8) );
  XNOR2X1 U136 ( .A(ROM_A[13]), .B(\sub_87/carry[13] ), .Y(N46) );
  OR2X1 U137 ( .A(ROM_A[12]), .B(\sub_87/carry[12] ), .Y(\sub_87/carry[13] )
         );
  XNOR2X1 U138 ( .A(\sub_87/carry[12] ), .B(ROM_A[12]), .Y(N45) );
  OR2X1 U139 ( .A(ROM_A[11]), .B(\sub_87/carry[11] ), .Y(\sub_87/carry[12] )
         );
  XNOR2X1 U140 ( .A(\sub_87/carry[11] ), .B(ROM_A[11]), .Y(N44) );
  OR2X1 U141 ( .A(ROM_A[10]), .B(\sub_87/carry[10] ), .Y(\sub_87/carry[11] )
         );
  XNOR2X1 U142 ( .A(\sub_87/carry[10] ), .B(ROM_A[10]), .Y(N43) );
  OR2X1 U143 ( .A(ROM_A[9]), .B(\sub_87/carry[9] ), .Y(\sub_87/carry[10] ) );
  XNOR2X1 U144 ( .A(\sub_87/carry[9] ), .B(ROM_A[9]), .Y(N42) );
  OR2X1 U145 ( .A(ROM_A[8]), .B(\sub_87/carry[8] ), .Y(\sub_87/carry[9] ) );
  XNOR2X1 U146 ( .A(\sub_87/carry[8] ), .B(ROM_A[8]), .Y(N41) );
  OR2X1 U147 ( .A(ROM_A[7]), .B(\sub_87/carry[7] ), .Y(\sub_87/carry[8] ) );
  XNOR2X1 U148 ( .A(\sub_87/carry[7] ), .B(ROM_A[7]), .Y(N40) );
  AND2X1 U149 ( .A(\sub_87/carry[6] ), .B(ROM_A[6]), .Y(\sub_87/carry[7] ) );
  XOR2X1 U150 ( .A(ROM_A[6]), .B(\sub_87/carry[6] ), .Y(N39) );
  AND2X1 U151 ( .A(\sub_87/carry[5] ), .B(ROM_A[5]), .Y(\sub_87/carry[6] ) );
  XOR2X1 U152 ( .A(ROM_A[5]), .B(\sub_87/carry[5] ), .Y(N38) );
  AND2X1 U153 ( .A(\sub_87/carry[4] ), .B(ROM_A[4]), .Y(\sub_87/carry[5] ) );
  XOR2X1 U154 ( .A(ROM_A[4]), .B(\sub_87/carry[4] ), .Y(N37) );
  AND2X1 U155 ( .A(\sub_87/carry[3] ), .B(ROM_A[3]), .Y(\sub_87/carry[4] ) );
  XOR2X1 U156 ( .A(ROM_A[3]), .B(\sub_87/carry[3] ), .Y(N36) );
  AND2X1 U157 ( .A(\sub_87/carry[2] ), .B(ROM_A[2]), .Y(\sub_87/carry[3] ) );
  XOR2X1 U158 ( .A(ROM_A[2]), .B(\sub_87/carry[2] ), .Y(N35) );
  AND2X1 U159 ( .A(ROM_A[0]), .B(ROM_A[1]), .Y(\sub_87/carry[2] ) );
  XOR2X1 U160 ( .A(ROM_A[1]), .B(ROM_A[0]), .Y(N34) );
endmodule

