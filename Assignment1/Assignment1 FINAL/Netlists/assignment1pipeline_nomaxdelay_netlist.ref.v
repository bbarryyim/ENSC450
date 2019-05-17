
module assignment1pip_DW01_sub_2 ( A, B, DIFF, CI, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   \DIFF[15] , n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n17, n18, n19, n20, n21, n22, n23, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65;
  assign DIFF[14] = \DIFF[15] ;
  assign DIFF[15] = \DIFF[15] ;

  FA_X1 U3 ( .A(n52), .B(A[13]), .CI(n10), .CO(n9), .S(DIFF[13]) );
  FA_X1 U4 ( .A(n53), .B(A[12]), .CI(n11), .CO(n10), .S(DIFF[12]) );
  FA_X1 U5 ( .A(n54), .B(A[11]), .CI(n12), .CO(n11), .S(DIFF[11]) );
  FA_X1 U6 ( .A(n55), .B(A[10]), .CI(n13), .CO(n12), .S(DIFF[10]) );
  FA_X1 U7 ( .A(n56), .B(A[9]), .CI(n14), .CO(n13), .S(DIFF[9]) );
  FA_X1 U8 ( .A(n57), .B(A[8]), .CI(n44), .CO(n14), .S(DIFF[8]) );
  XNOR2_X2 U10 ( .A(n20), .B(n2), .ZN(DIFF[7]) );
  AOI21_X4 U11 ( .B1(n20), .B2(n45), .A(n17), .ZN(n15) );
  NAND2_X4 U14 ( .A1(n45), .A2(n19), .ZN(n2) );
  NOR2_X4 U16 ( .A1(n58), .A2(A[7]), .ZN(n18) );
  NAND2_X4 U17 ( .A1(n58), .A2(A[7]), .ZN(n19) );
  XOR2_X2 U18 ( .A(n23), .B(n3), .Z(DIFF[6]) );
  NAND2_X4 U20 ( .A1(n46), .A2(n22), .ZN(n3) );
  NOR2_X4 U22 ( .A1(n59), .A2(A[6]), .ZN(n21) );
  NAND2_X4 U23 ( .A1(n59), .A2(A[6]), .ZN(n22) );
  XNOR2_X2 U24 ( .A(n28), .B(n4), .ZN(DIFF[5]) );
  AOI21_X4 U25 ( .B1(n28), .B2(n47), .A(n25), .ZN(n23) );
  NAND2_X4 U28 ( .A1(n47), .A2(n27), .ZN(n4) );
  NOR2_X4 U30 ( .A1(n60), .A2(A[5]), .ZN(n26) );
  NAND2_X4 U31 ( .A1(n60), .A2(A[5]), .ZN(n27) );
  NAND2_X4 U34 ( .A1(n48), .A2(n30), .ZN(n5) );
  NOR2_X4 U36 ( .A1(n61), .A2(A[4]), .ZN(n29) );
  NAND2_X4 U37 ( .A1(n61), .A2(A[4]), .ZN(n30) );
  XNOR2_X2 U38 ( .A(n36), .B(n6), .ZN(DIFF[3]) );
  AOI21_X4 U39 ( .B1(n32), .B2(n40), .A(n33), .ZN(n31) );
  NAND2_X4 U42 ( .A1(n49), .A2(n35), .ZN(n6) );
  NOR2_X4 U44 ( .A1(n62), .A2(A[3]), .ZN(n34) );
  NAND2_X4 U45 ( .A1(n62), .A2(A[3]), .ZN(n35) );
  XOR2_X2 U46 ( .A(n39), .B(n7), .Z(DIFF[2]) );
  OAI21_X4 U47 ( .B1(n39), .B2(n37), .A(n38), .ZN(n36) );
  NAND2_X4 U48 ( .A1(n50), .A2(n38), .ZN(n7) );
  NOR2_X4 U50 ( .A1(n63), .A2(A[2]), .ZN(n37) );
  NAND2_X4 U51 ( .A1(n63), .A2(A[2]), .ZN(n38) );
  XOR2_X2 U52 ( .A(n8), .B(n43), .Z(DIFF[1]) );
  OAI21_X4 U54 ( .B1(n41), .B2(n43), .A(n42), .ZN(n40) );
  NAND2_X4 U55 ( .A1(n51), .A2(n42), .ZN(n8) );
  NOR2_X4 U57 ( .A1(n64), .A2(A[1]), .ZN(n41) );
  NAND2_X4 U58 ( .A1(n64), .A2(A[1]), .ZN(n42) );
  XNOR2_X2 U59 ( .A(n65), .B(A[0]), .ZN(DIFF[0]) );
  NOR2_X4 U60 ( .A1(n65), .A2(A[0]), .ZN(n43) );
  OAI21_X2 U78 ( .B1(n23), .B2(n21), .A(n22), .ZN(n20) );
  INV_X4 U79 ( .A(n9), .ZN(\DIFF[15] ) );
  XOR2_X1 U80 ( .A(n31), .B(n5), .Z(DIFF[4]) );
  INV_X1 U81 ( .A(n34), .ZN(n49) );
  OAI21_X2 U82 ( .B1(n31), .B2(n29), .A(n30), .ZN(n28) );
  NOR2_X1 U83 ( .A1(n37), .A2(n34), .ZN(n32) );
  OAI21_X1 U84 ( .B1(n34), .B2(n38), .A(n35), .ZN(n33) );
  INV_X2 U85 ( .A(B[0]), .ZN(n65) );
  INV_X2 U86 ( .A(B[1]), .ZN(n64) );
  INV_X2 U87 ( .A(B[2]), .ZN(n63) );
  INV_X2 U88 ( .A(B[3]), .ZN(n62) );
  INV_X2 U89 ( .A(B[4]), .ZN(n61) );
  INV_X2 U90 ( .A(B[5]), .ZN(n60) );
  INV_X2 U91 ( .A(B[6]), .ZN(n59) );
  INV_X2 U92 ( .A(B[7]), .ZN(n58) );
  INV_X2 U93 ( .A(B[8]), .ZN(n57) );
  INV_X2 U94 ( .A(B[9]), .ZN(n56) );
  INV_X2 U95 ( .A(B[10]), .ZN(n55) );
  INV_X2 U96 ( .A(B[11]), .ZN(n54) );
  INV_X2 U97 ( .A(B[12]), .ZN(n53) );
  INV_X2 U98 ( .A(B[13]), .ZN(n52) );
  INV_X2 U99 ( .A(n41), .ZN(n51) );
  INV_X2 U100 ( .A(n37), .ZN(n50) );
  INV_X2 U101 ( .A(n29), .ZN(n48) );
  INV_X2 U102 ( .A(n21), .ZN(n46) );
  INV_X2 U103 ( .A(n15), .ZN(n44) );
  INV_X2 U104 ( .A(n40), .ZN(n39) );
  INV_X2 U105 ( .A(n27), .ZN(n25) );
  INV_X2 U106 ( .A(n26), .ZN(n47) );
  INV_X2 U107 ( .A(n19), .ZN(n17) );
  INV_X2 U108 ( .A(n18), .ZN(n45) );
endmodule


module assignment1pip_DW01_add_1 ( A, B, SUM, CI, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n60, n61, n62,
         n63, n64, n65, n68, n69, n70, n71, n72, n73, n74, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n88, n89, n90, n91, n92, n93, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n120, n121,
         n122, n123, n124, n126, n127, n128, n130, n131, n132, n133;

  NAND2_X4 U3 ( .A1(n118), .A2(n21), .ZN(n4) );
  NOR2_X4 U5 ( .A1(A[15]), .A2(B[15]), .ZN(n20) );
  NAND2_X4 U6 ( .A1(A[15]), .A2(B[15]), .ZN(n21) );
  XOR2_X2 U7 ( .A(n31), .B(n5), .Z(SUM[14]) );
  NOR2_X4 U9 ( .A1(n3), .A2(n25), .ZN(n23) );
  NAND2_X4 U11 ( .A1(n36), .A2(n27), .ZN(n25) );
  AOI21_X4 U12 ( .B1(n37), .B2(n27), .A(n28), .ZN(n26) );
  NAND2_X4 U15 ( .A1(n27), .A2(n30), .ZN(n5) );
  NOR2_X4 U17 ( .A1(A[14]), .A2(B[14]), .ZN(n29) );
  NAND2_X4 U18 ( .A1(A[14]), .A2(B[14]), .ZN(n30) );
  NOR2_X4 U21 ( .A1(n3), .A2(n34), .ZN(n32) );
  NOR2_X4 U25 ( .A1(n43), .A2(n38), .ZN(n36) );
  OAI21_X4 U26 ( .B1(n38), .B2(n46), .A(n39), .ZN(n37) );
  NAND2_X4 U27 ( .A1(n120), .A2(n39), .ZN(n6) );
  NOR2_X4 U29 ( .A1(A[13]), .A2(B[13]), .ZN(n38) );
  NAND2_X4 U30 ( .A1(A[13]), .A2(B[13]), .ZN(n39) );
  XOR2_X2 U31 ( .A(n47), .B(n7), .Z(SUM[12]) );
  NOR2_X4 U33 ( .A1(n3), .A2(n43), .ZN(n41) );
  NAND2_X4 U37 ( .A1(n121), .A2(n46), .ZN(n7) );
  NOR2_X4 U39 ( .A1(A[12]), .A2(B[12]), .ZN(n43) );
  NAND2_X4 U40 ( .A1(A[12]), .A2(B[12]), .ZN(n46) );
  XOR2_X2 U41 ( .A(n54), .B(n8), .Z(SUM[11]) );
  NAND2_X4 U45 ( .A1(n62), .A2(n50), .ZN(n3) );
  AOI21_X4 U46 ( .B1(n50), .B2(n63), .A(n51), .ZN(n2) );
  NOR2_X4 U47 ( .A1(n57), .A2(n52), .ZN(n50) );
  OAI21_X4 U48 ( .B1(n52), .B2(n60), .A(n53), .ZN(n51) );
  NAND2_X4 U49 ( .A1(n122), .A2(n53), .ZN(n8) );
  NOR2_X4 U51 ( .A1(A[11]), .A2(B[11]), .ZN(n52) );
  NAND2_X4 U52 ( .A1(A[11]), .A2(B[11]), .ZN(n53) );
  XOR2_X2 U53 ( .A(n61), .B(n9), .Z(SUM[10]) );
  NOR2_X4 U55 ( .A1(n64), .A2(n57), .ZN(n55) );
  OAI21_X4 U56 ( .B1(n65), .B2(n57), .A(n60), .ZN(n56) );
  NAND2_X4 U59 ( .A1(n123), .A2(n60), .ZN(n9) );
  NOR2_X4 U61 ( .A1(A[10]), .A2(B[10]), .ZN(n57) );
  NAND2_X4 U62 ( .A1(A[10]), .A2(B[10]), .ZN(n60) );
  XOR2_X2 U63 ( .A(n70), .B(n10), .Z(SUM[9]) );
  NOR2_X4 U69 ( .A1(n73), .A2(n68), .ZN(n62) );
  OAI21_X4 U70 ( .B1(n68), .B2(n74), .A(n69), .ZN(n63) );
  NAND2_X4 U71 ( .A1(n124), .A2(n69), .ZN(n10) );
  NOR2_X4 U73 ( .A1(A[9]), .A2(B[9]), .ZN(n68) );
  NAND2_X4 U74 ( .A1(A[9]), .A2(B[9]), .ZN(n69) );
  NAND2_X4 U79 ( .A1(n71), .A2(n74), .ZN(n11) );
  NOR2_X4 U81 ( .A1(A[8]), .A2(B[8]), .ZN(n73) );
  NAND2_X4 U82 ( .A1(A[8]), .A2(B[8]), .ZN(n74) );
  XOR2_X2 U83 ( .A(n82), .B(n12), .Z(SUM[7]) );
  NAND2_X4 U85 ( .A1(n90), .A2(n78), .ZN(n76) );
  AOI21_X4 U86 ( .B1(n78), .B2(n91), .A(n79), .ZN(n77) );
  NOR2_X4 U87 ( .A1(n85), .A2(n80), .ZN(n78) );
  OAI21_X4 U88 ( .B1(n80), .B2(n88), .A(n81), .ZN(n79) );
  NAND2_X4 U89 ( .A1(n126), .A2(n81), .ZN(n12) );
  NOR2_X4 U91 ( .A1(A[7]), .A2(B[7]), .ZN(n80) );
  NAND2_X4 U92 ( .A1(A[7]), .A2(B[7]), .ZN(n81) );
  XOR2_X2 U93 ( .A(n89), .B(n13), .Z(SUM[6]) );
  AOI21_X4 U94 ( .B1(n83), .B2(n103), .A(n84), .ZN(n82) );
  NOR2_X4 U95 ( .A1(n92), .A2(n85), .ZN(n83) );
  OAI21_X4 U96 ( .B1(n93), .B2(n85), .A(n88), .ZN(n84) );
  NAND2_X4 U99 ( .A1(n127), .A2(n88), .ZN(n13) );
  NOR2_X4 U101 ( .A1(A[6]), .A2(B[6]), .ZN(n85) );
  NAND2_X4 U102 ( .A1(A[6]), .A2(B[6]), .ZN(n88) );
  XOR2_X2 U103 ( .A(n98), .B(n14), .Z(SUM[5]) );
  AOI21_X4 U104 ( .B1(n103), .B2(n90), .A(n91), .ZN(n89) );
  NOR2_X4 U109 ( .A1(n101), .A2(n96), .ZN(n90) );
  OAI21_X4 U110 ( .B1(n96), .B2(n102), .A(n97), .ZN(n91) );
  NAND2_X4 U111 ( .A1(n128), .A2(n97), .ZN(n14) );
  NOR2_X4 U113 ( .A1(A[5]), .A2(B[5]), .ZN(n96) );
  NAND2_X4 U114 ( .A1(A[5]), .A2(B[5]), .ZN(n97) );
  XNOR2_X2 U115 ( .A(n103), .B(n15), .ZN(SUM[4]) );
  AOI21_X4 U116 ( .B1(n103), .B2(n99), .A(n100), .ZN(n98) );
  NAND2_X4 U119 ( .A1(n99), .A2(n102), .ZN(n15) );
  NOR2_X4 U121 ( .A1(A[4]), .A2(B[4]), .ZN(n101) );
  NAND2_X4 U122 ( .A1(A[4]), .A2(B[4]), .ZN(n102) );
  XNOR2_X2 U123 ( .A(n109), .B(n16), .ZN(SUM[3]) );
  AOI21_X4 U125 ( .B1(n105), .B2(n113), .A(n106), .ZN(n104) );
  NOR2_X4 U126 ( .A1(n110), .A2(n107), .ZN(n105) );
  OAI21_X4 U127 ( .B1(n107), .B2(n111), .A(n108), .ZN(n106) );
  NAND2_X4 U128 ( .A1(n130), .A2(n108), .ZN(n16) );
  NOR2_X4 U130 ( .A1(A[3]), .A2(B[3]), .ZN(n107) );
  NAND2_X4 U131 ( .A1(A[3]), .A2(B[3]), .ZN(n108) );
  XOR2_X2 U132 ( .A(n112), .B(n17), .Z(SUM[2]) );
  OAI21_X4 U133 ( .B1(n112), .B2(n110), .A(n111), .ZN(n109) );
  NAND2_X4 U134 ( .A1(n131), .A2(n111), .ZN(n17) );
  NOR2_X4 U136 ( .A1(A[2]), .A2(B[2]), .ZN(n110) );
  NAND2_X4 U137 ( .A1(A[2]), .A2(B[2]), .ZN(n111) );
  XOR2_X2 U138 ( .A(n18), .B(n117), .Z(SUM[1]) );
  OAI21_X4 U140 ( .B1(n114), .B2(n117), .A(n115), .ZN(n113) );
  NAND2_X4 U141 ( .A1(n132), .A2(n115), .ZN(n18) );
  NOR2_X4 U143 ( .A1(A[1]), .A2(B[1]), .ZN(n114) );
  NAND2_X4 U144 ( .A1(A[1]), .A2(B[1]), .ZN(n115) );
  NAND2_X4 U146 ( .A1(n133), .A2(n117), .ZN(n19) );
  NOR2_X4 U148 ( .A1(A[0]), .A2(B[0]), .ZN(n116) );
  NAND2_X4 U149 ( .A1(A[0]), .A2(B[0]), .ZN(n117) );
  XOR2_X1 U153 ( .A(n22), .B(n4), .Z(SUM[15]) );
  OAI21_X2 U154 ( .B1(n104), .B2(n76), .A(n77), .ZN(n1) );
  XNOR2_X1 U155 ( .A(n1), .B(n11), .ZN(SUM[8]) );
  XOR2_X1 U156 ( .A(n40), .B(n6), .Z(SUM[13]) );
  AOI21_X1 U157 ( .B1(n1), .B2(n71), .A(n72), .ZN(n70) );
  AOI21_X1 U158 ( .B1(n1), .B2(n62), .A(n63), .ZN(n61) );
  AOI21_X1 U159 ( .B1(n1), .B2(n48), .A(n49), .ZN(n47) );
  AOI21_X1 U160 ( .B1(n1), .B2(n55), .A(n56), .ZN(n54) );
  AOI21_X1 U161 ( .B1(n1), .B2(n32), .A(n33), .ZN(n31) );
  AOI21_X1 U162 ( .B1(n1), .B2(n23), .A(n24), .ZN(n22) );
  AOI21_X1 U163 ( .B1(n1), .B2(n41), .A(n42), .ZN(n40) );
  OAI21_X1 U164 ( .B1(n2), .B2(n43), .A(n46), .ZN(n42) );
  OAI21_X1 U165 ( .B1(n2), .B2(n25), .A(n26), .ZN(n24) );
  OAI21_X1 U166 ( .B1(n2), .B2(n34), .A(n35), .ZN(n33) );
  INV_X2 U167 ( .A(n91), .ZN(n93) );
  INV_X2 U168 ( .A(n90), .ZN(n92) );
  INV_X2 U169 ( .A(n74), .ZN(n72) );
  INV_X2 U170 ( .A(n63), .ZN(n65) );
  INV_X2 U171 ( .A(n62), .ZN(n64) );
  INV_X2 U172 ( .A(n2), .ZN(n49) );
  INV_X2 U173 ( .A(n3), .ZN(n48) );
  INV_X2 U174 ( .A(n37), .ZN(n35) );
  INV_X2 U175 ( .A(n36), .ZN(n34) );
  INV_X2 U176 ( .A(n30), .ZN(n28) );
  INV_X2 U177 ( .A(n116), .ZN(n133) );
  INV_X2 U178 ( .A(n114), .ZN(n132) );
  INV_X2 U179 ( .A(n110), .ZN(n131) );
  INV_X2 U180 ( .A(n107), .ZN(n130) );
  INV_X2 U181 ( .A(n101), .ZN(n99) );
  INV_X2 U182 ( .A(n96), .ZN(n128) );
  INV_X2 U183 ( .A(n85), .ZN(n127) );
  INV_X2 U184 ( .A(n80), .ZN(n126) );
  INV_X2 U185 ( .A(n73), .ZN(n71) );
  INV_X2 U186 ( .A(n68), .ZN(n124) );
  INV_X2 U187 ( .A(n57), .ZN(n123) );
  INV_X2 U188 ( .A(n52), .ZN(n122) );
  INV_X2 U189 ( .A(n43), .ZN(n121) );
  INV_X2 U190 ( .A(n38), .ZN(n120) );
  INV_X2 U191 ( .A(n29), .ZN(n27) );
  INV_X2 U192 ( .A(n20), .ZN(n118) );
  INV_X2 U193 ( .A(n113), .ZN(n112) );
  INV_X2 U194 ( .A(n104), .ZN(n103) );
  INV_X2 U195 ( .A(n102), .ZN(n100) );
  INV_X2 U196 ( .A(n19), .ZN(SUM[0]) );
endmodule


module assignment1pip_DW_mult_uns_0 ( a, b, product );
  input [5:0] a;
  input [7:0] b;
  output [13:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, \b[0] , n67;
  assign product[0] = \b[0] ;
  assign \b[0]  = b[0];

  FA_X1 U4 ( .A(n14), .B(b[5]), .CI(n3), .CO(n2), .S(product[11]) );
  FA_X1 U5 ( .A(n16), .B(n15), .CI(n4), .CO(n3), .S(product[10]) );
  FA_X1 U6 ( .A(n18), .B(n17), .CI(n5), .CO(n4), .S(product[9]) );
  FA_X1 U7 ( .A(n20), .B(n19), .CI(n6), .CO(n5), .S(product[8]) );
  FA_X1 U8 ( .A(n21), .B(n22), .CI(n7), .CO(n6), .S(product[7]) );
  FA_X1 U9 ( .A(n23), .B(n24), .CI(n8), .CO(n7), .S(product[6]) );
  FA_X1 U10 ( .A(n25), .B(n26), .CI(n9), .CO(n8), .S(product[5]) );
  FA_X1 U11 ( .A(n27), .B(n32), .CI(n10), .CO(n9), .S(product[4]) );
  FA_X1 U12 ( .A(n13), .B(b[3]), .CI(n11), .CO(n10), .S(product[3]) );
  HA_X1 U13 ( .A(n33), .B(n12), .CO(n11), .S(product[2]) );
  HA_X1 U14 ( .A(n34), .B(n13), .CO(n12), .S(product[1]) );
  FA_X1 U22 ( .A(n31), .B(n28), .CI(b[1]), .CO(n20), .S(n21) );
  FA_X1 U23 ( .A(n32), .B(n29), .CI(\b[0] ), .CO(n22), .S(n23) );
  HA_X1 U24 ( .A(n30), .B(n33), .CO(n24), .S(n25) );
  HA_X1 U25 ( .A(n31), .B(n34), .CO(n26), .S(n27) );
  XNOR2_X1 U38 ( .A(n28), .B(n67), .ZN(product[13]) );
  NOR2_X1 U39 ( .A1(b[6]), .A2(n2), .ZN(n67) );
  XNOR2_X1 U40 ( .A(n2), .B(b[6]), .ZN(product[12]) );
  INV_X1 U41 ( .A(b[1]), .ZN(n34) );
  XNOR2_X1 U42 ( .A(n30), .B(b[2]), .ZN(n19) );
  INV_X1 U43 ( .A(b[5]), .ZN(n30) );
  NAND2_X1 U44 ( .A1(b[5]), .A2(n33), .ZN(n18) );
  INV_X1 U45 ( .A(b[2]), .ZN(n33) );
  XNOR2_X1 U46 ( .A(n29), .B(b[3]), .ZN(n17) );
  INV_X1 U47 ( .A(b[6]), .ZN(n29) );
  NAND2_X1 U48 ( .A1(b[6]), .A2(n32), .ZN(n16) );
  INV_X1 U49 ( .A(b[3]), .ZN(n32) );
  XNOR2_X1 U50 ( .A(n28), .B(b[4]), .ZN(n15) );
  INV_X1 U51 ( .A(b[7]), .ZN(n28) );
  NAND2_X1 U52 ( .A1(b[7]), .A2(n31), .ZN(n14) );
  INV_X1 U53 ( .A(b[4]), .ZN(n31) );
  INV_X1 U54 ( .A(\b[0] ), .ZN(n13) );
endmodule


module assignment1pip_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   \B[0] , \carry[15] , \carry[14] , \carry[13] , \carry[12] ,
         \carry[11] , \carry[10] , \carry[9] , \carry[8] , \carry[7] ,
         \carry[6] , \carry[5] , \carry[4] , \carry[3] , \carry[2] ,
         \carry[1] , \B_not[15] , \B_not[14] , \B_not[13] , \B_not[12] ,
         \B_not[11] , \B_not[10] , \B_not[9] , \B_not[8] , \B_not[7] ,
         \B_not[6] , \B_not[5] , \B_not[4] , \B_not[3] , \B_not[2] ,
         \B_not[1] ;
  assign DIFF[0] = \B[0] ;
  assign \B[0]  = B[0];

  XOR2_X1 U1 ( .A(\B_not[15] ), .B(\carry[15] ), .Z(DIFF[15]) );
  AND2_X1 U2 ( .A1(\carry[14] ), .A2(\B_not[14] ), .ZN(\carry[15] ) );
  XOR2_X1 U3 ( .A(\B_not[14] ), .B(\carry[14] ), .Z(DIFF[14]) );
  AND2_X1 U4 ( .A1(\carry[13] ), .A2(\B_not[13] ), .ZN(\carry[14] ) );
  XOR2_X1 U5 ( .A(\B_not[13] ), .B(\carry[13] ), .Z(DIFF[13]) );
  AND2_X1 U6 ( .A1(\carry[12] ), .A2(\B_not[12] ), .ZN(\carry[13] ) );
  XOR2_X1 U7 ( .A(\B_not[12] ), .B(\carry[12] ), .Z(DIFF[12]) );
  AND2_X1 U8 ( .A1(\carry[11] ), .A2(\B_not[11] ), .ZN(\carry[12] ) );
  XOR2_X1 U9 ( .A(\B_not[11] ), .B(\carry[11] ), .Z(DIFF[11]) );
  AND2_X1 U10 ( .A1(\carry[10] ), .A2(\B_not[10] ), .ZN(\carry[11] ) );
  XOR2_X1 U11 ( .A(\B_not[10] ), .B(\carry[10] ), .Z(DIFF[10]) );
  AND2_X1 U12 ( .A1(\carry[9] ), .A2(\B_not[9] ), .ZN(\carry[10] ) );
  XOR2_X1 U13 ( .A(\B_not[9] ), .B(\carry[9] ), .Z(DIFF[9]) );
  AND2_X1 U14 ( .A1(\carry[8] ), .A2(\B_not[8] ), .ZN(\carry[9] ) );
  XOR2_X1 U15 ( .A(\B_not[8] ), .B(\carry[8] ), .Z(DIFF[8]) );
  AND2_X1 U16 ( .A1(\carry[7] ), .A2(\B_not[7] ), .ZN(\carry[8] ) );
  XOR2_X1 U17 ( .A(\B_not[7] ), .B(\carry[7] ), .Z(DIFF[7]) );
  AND2_X1 U18 ( .A1(\carry[6] ), .A2(\B_not[6] ), .ZN(\carry[7] ) );
  XOR2_X1 U19 ( .A(\B_not[6] ), .B(\carry[6] ), .Z(DIFF[6]) );
  AND2_X1 U20 ( .A1(\carry[5] ), .A2(\B_not[5] ), .ZN(\carry[6] ) );
  XOR2_X1 U21 ( .A(\B_not[5] ), .B(\carry[5] ), .Z(DIFF[5]) );
  AND2_X1 U22 ( .A1(\carry[4] ), .A2(\B_not[4] ), .ZN(\carry[5] ) );
  XOR2_X1 U23 ( .A(\B_not[4] ), .B(\carry[4] ), .Z(DIFF[4]) );
  AND2_X1 U24 ( .A1(\carry[3] ), .A2(\B_not[3] ), .ZN(\carry[4] ) );
  XOR2_X1 U25 ( .A(\B_not[3] ), .B(\carry[3] ), .Z(DIFF[3]) );
  AND2_X1 U26 ( .A1(\carry[2] ), .A2(\B_not[2] ), .ZN(\carry[3] ) );
  XOR2_X1 U27 ( .A(\B_not[2] ), .B(\carry[2] ), .Z(DIFF[2]) );
  AND2_X1 U28 ( .A1(\carry[1] ), .A2(\B_not[1] ), .ZN(\carry[2] ) );
  XOR2_X1 U29 ( .A(\B_not[1] ), .B(\carry[1] ), .Z(DIFF[1]) );
  INV_X1 U30 ( .A(\B[0] ), .ZN(\carry[1] ) );
  INV_X1 U31 ( .A(B[9]), .ZN(\B_not[9] ) );
  INV_X1 U32 ( .A(B[8]), .ZN(\B_not[8] ) );
  INV_X1 U33 ( .A(B[7]), .ZN(\B_not[7] ) );
  INV_X1 U34 ( .A(B[6]), .ZN(\B_not[6] ) );
  INV_X1 U35 ( .A(B[5]), .ZN(\B_not[5] ) );
  INV_X1 U36 ( .A(B[4]), .ZN(\B_not[4] ) );
  INV_X1 U37 ( .A(B[3]), .ZN(\B_not[3] ) );
  INV_X1 U38 ( .A(B[2]), .ZN(\B_not[2] ) );
  INV_X1 U39 ( .A(B[1]), .ZN(\B_not[1] ) );
  INV_X1 U40 ( .A(B[15]), .ZN(\B_not[15] ) );
  INV_X1 U41 ( .A(B[14]), .ZN(\B_not[14] ) );
  INV_X1 U42 ( .A(B[13]), .ZN(\B_not[13] ) );
  INV_X1 U43 ( .A(B[12]), .ZN(\B_not[12] ) );
  INV_X1 U44 ( .A(B[11]), .ZN(\B_not[11] ) );
  INV_X1 U45 ( .A(B[10]), .ZN(\B_not[10] ) );
endmodule


module assignment1pip ( a, b, clk, reset, z );
  input [7:0] a;
  input [7:0] b;
  output [15:0] z;
  input clk, reset;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, n67, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, \mult_46/n21 , \mult_46/n20 , \mult_46/n19 ,
         \mult_46/n18 , \mult_46/n17 , \mult_46/n16 , \mult_46/n15 ,
         \mult_46/n14 , \mult_46/n13 , \mult_46/n12 , \mult_46/n11 ,
         \mult_46/n10 , \mult_46/n9 , \mult_46/n8 , \mult_46/n7 , \mult_46/n6 ,
         \mult_46/n5 , \mult_46/n4 , \mult_46/n3 , \mult_46/n2 ;
  wire   [7:0] RA;
  wire   [7:0] RB;
  wire   [13:0] M1;
  wire   [13:0] M2;
  wire   [15:0] RegM1;
  wire   [15:0] RegM2;
  wire   [15:0] diff;
  wire   [15:0] abDiff;
  wire   [15:0] sum;

  DFFR_X1 \RA_reg[7]  ( .D(a[7]), .CK(clk), .RN(n67), .Q(RA[7]) );
  DFFR_X1 \RA_reg[6]  ( .D(a[6]), .CK(clk), .RN(n67), .Q(RA[6]) );
  DFFR_X1 \RA_reg[5]  ( .D(a[5]), .CK(clk), .RN(n67), .Q(RA[5]) );
  DFFR_X1 \RA_reg[4]  ( .D(a[4]), .CK(clk), .RN(n67), .Q(RA[4]) );
  DFFR_X1 \RA_reg[3]  ( .D(a[3]), .CK(clk), .RN(n67), .Q(RA[3]) );
  DFFR_X1 \RA_reg[2]  ( .D(a[2]), .CK(clk), .RN(n67), .Q(RA[2]) );
  DFFR_X1 \RA_reg[1]  ( .D(a[1]), .CK(clk), .RN(n67), .Q(M1[1]) );
  DFFR_X1 \RA_reg[0]  ( .D(a[0]), .CK(clk), .RN(n67), .Q(M1[0]) );
  DFFR_X1 \RB_reg[7]  ( .D(b[7]), .CK(clk), .RN(n67), .Q(RB[7]) );
  DFFR_X1 \RB_reg[6]  ( .D(b[6]), .CK(clk), .RN(n67), .Q(RB[6]) );
  DFFR_X1 \RB_reg[5]  ( .D(b[5]), .CK(clk), .RN(n67), .Q(RB[5]) );
  DFFR_X1 \RB_reg[4]  ( .D(b[4]), .CK(clk), .RN(n67), .Q(RB[4]) );
  DFFR_X1 \RB_reg[3]  ( .D(b[3]), .CK(clk), .RN(n67), .Q(RB[3]) );
  DFFR_X1 \RB_reg[2]  ( .D(b[2]), .CK(clk), .RN(n67), .Q(RB[2]) );
  DFFR_X1 \RB_reg[1]  ( .D(b[1]), .CK(clk), .RN(n67), .Q(RB[1]) );
  DFFR_X1 \RB_reg[0]  ( .D(b[0]), .CK(clk), .RN(n67), .Q(RB[0]) );
  DFFR_X1 \RegM1_reg[13]  ( .D(M1[13]), .CK(clk), .RN(n67), .Q(RegM1[13]) );
  DFFR_X1 \RegM1_reg[12]  ( .D(M1[12]), .CK(clk), .RN(n67), .Q(RegM1[12]) );
  DFFR_X1 \RegM1_reg[11]  ( .D(M1[11]), .CK(clk), .RN(n67), .Q(RegM1[11]) );
  DFFR_X1 \RegM1_reg[10]  ( .D(M1[10]), .CK(clk), .RN(n67), .Q(RegM1[10]) );
  DFFR_X1 \RegM1_reg[9]  ( .D(M1[9]), .CK(clk), .RN(n67), .Q(RegM1[9]) );
  DFFR_X1 \RegM1_reg[8]  ( .D(M1[8]), .CK(clk), .RN(n67), .Q(RegM1[8]) );
  DFFR_X1 \RegM1_reg[7]  ( .D(M1[7]), .CK(clk), .RN(n67), .Q(RegM1[7]) );
  DFFR_X1 \RegM1_reg[6]  ( .D(M1[6]), .CK(clk), .RN(n67), .Q(RegM1[6]) );
  DFFR_X1 \RegM1_reg[5]  ( .D(M1[5]), .CK(clk), .RN(n67), .Q(RegM1[5]) );
  DFFR_X1 \RegM1_reg[4]  ( .D(M1[4]), .CK(clk), .RN(n67), .Q(RegM1[4]) );
  DFFR_X1 \RegM1_reg[3]  ( .D(M1[3]), .CK(clk), .RN(n67), .Q(RegM1[3]) );
  DFFR_X1 \RegM1_reg[2]  ( .D(M1[2]), .CK(clk), .RN(n67), .Q(RegM1[2]) );
  DFFR_X1 \RegM1_reg[1]  ( .D(M1[1]), .CK(clk), .RN(n67), .Q(RegM1[1]) );
  DFFR_X1 \RegM1_reg[0]  ( .D(M1[0]), .CK(clk), .RN(n67), .Q(RegM1[0]) );
  DFFR_X1 \RegM2_reg[13]  ( .D(M2[13]), .CK(clk), .RN(n67), .Q(RegM2[13]) );
  DFFR_X1 \RegM2_reg[12]  ( .D(M2[12]), .CK(clk), .RN(n67), .Q(RegM2[12]) );
  DFFR_X1 \RegM2_reg[11]  ( .D(M2[11]), .CK(clk), .RN(n67), .Q(RegM2[11]) );
  DFFR_X1 \RegM2_reg[10]  ( .D(M2[10]), .CK(clk), .RN(n67), .Q(RegM2[10]) );
  DFFR_X1 \RegM2_reg[9]  ( .D(M2[9]), .CK(clk), .RN(n67), .Q(RegM2[9]) );
  DFFR_X1 \RegM2_reg[8]  ( .D(M2[8]), .CK(clk), .RN(n67), .Q(RegM2[8]) );
  DFFR_X1 \RegM2_reg[7]  ( .D(M2[7]), .CK(clk), .RN(n67), .Q(RegM2[7]) );
  DFFR_X1 \RegM2_reg[6]  ( .D(M2[6]), .CK(clk), .RN(n67), .Q(RegM2[6]) );
  DFFR_X1 \RegM2_reg[5]  ( .D(M2[5]), .CK(clk), .RN(n67), .Q(RegM2[5]) );
  DFFR_X1 \RegM2_reg[4]  ( .D(M2[4]), .CK(clk), .RN(n67), .Q(RegM2[4]) );
  DFFR_X1 \RegM2_reg[3]  ( .D(M2[3]), .CK(clk), .RN(n67), .Q(RegM2[3]) );
  DFFR_X1 \RegM2_reg[2]  ( .D(M2[2]), .CK(clk), .RN(n67), .Q(RegM2[2]) );
  DFFR_X1 \RegM2_reg[1]  ( .D(M2[1]), .CK(clk), .RN(n67), .Q(RegM2[1]) );
  DFFR_X1 \RegM2_reg[0]  ( .D(M2[0]), .CK(clk), .RN(n67), .Q(RegM2[0]) );
  DFFR_X1 \RZ_reg[0]  ( .D(sum[0]), .CK(clk), .RN(n67), .Q(z[0]) );
  DFFR_X1 \RZ_reg[1]  ( .D(sum[1]), .CK(clk), .RN(n67), .Q(z[1]) );
  DFFR_X1 \RZ_reg[2]  ( .D(sum[2]), .CK(clk), .RN(n67), .Q(z[2]) );
  DFFR_X1 \RZ_reg[3]  ( .D(sum[3]), .CK(clk), .RN(n67), .Q(z[3]) );
  DFFR_X1 \RZ_reg[4]  ( .D(sum[4]), .CK(clk), .RN(n67), .Q(z[4]) );
  DFFR_X1 \RZ_reg[5]  ( .D(sum[5]), .CK(clk), .RN(n67), .Q(z[5]) );
  DFFR_X1 \RZ_reg[6]  ( .D(sum[6]), .CK(clk), .RN(n67), .Q(z[6]) );
  DFFR_X1 \RZ_reg[7]  ( .D(sum[7]), .CK(clk), .RN(n67), .Q(z[7]) );
  DFFR_X1 \RZ_reg[8]  ( .D(sum[8]), .CK(clk), .RN(n67), .Q(z[8]) );
  DFFR_X1 \RZ_reg[9]  ( .D(sum[9]), .CK(clk), .RN(n67), .Q(z[9]) );
  DFFR_X1 \RZ_reg[10]  ( .D(sum[10]), .CK(clk), .RN(n67), .Q(z[10]) );
  DFFR_X1 \RZ_reg[11]  ( .D(sum[11]), .CK(clk), .RN(n67), .Q(z[11]) );
  DFFR_X1 \RZ_reg[12]  ( .D(sum[12]), .CK(clk), .RN(n67), .Q(z[12]) );
  DFFR_X1 \RZ_reg[13]  ( .D(sum[13]), .CK(clk), .RN(n67), .Q(z[13]) );
  DFFR_X1 \RZ_reg[14]  ( .D(sum[14]), .CK(clk), .RN(n67), .Q(z[14]) );
  DFFR_X1 \RZ_reg[15]  ( .D(sum[15]), .CK(clk), .RN(n67), .Q(z[15]) );
  INV_X1 U11 ( .A(n69), .ZN(abDiff[9]) );
  AOI22_X1 U12 ( .A1(diff[15]), .A2(N17), .B1(diff[9]), .B2(n70), .ZN(n69) );
  INV_X1 U13 ( .A(n71), .ZN(abDiff[8]) );
  AOI22_X1 U14 ( .A1(N16), .A2(diff[15]), .B1(diff[8]), .B2(n70), .ZN(n71) );
  INV_X1 U15 ( .A(n72), .ZN(abDiff[7]) );
  AOI22_X1 U16 ( .A1(N15), .A2(diff[15]), .B1(diff[7]), .B2(n70), .ZN(n72) );
  INV_X1 U17 ( .A(n73), .ZN(abDiff[6]) );
  AOI22_X1 U18 ( .A1(N14), .A2(diff[15]), .B1(diff[6]), .B2(n70), .ZN(n73) );
  INV_X1 U19 ( .A(n74), .ZN(abDiff[5]) );
  AOI22_X1 U20 ( .A1(N13), .A2(diff[15]), .B1(diff[5]), .B2(n70), .ZN(n74) );
  INV_X1 U21 ( .A(n75), .ZN(abDiff[4]) );
  AOI22_X1 U22 ( .A1(N12), .A2(diff[15]), .B1(diff[4]), .B2(n70), .ZN(n75) );
  INV_X1 U23 ( .A(n76), .ZN(abDiff[3]) );
  AOI22_X1 U24 ( .A1(N11), .A2(diff[15]), .B1(diff[3]), .B2(n70), .ZN(n76) );
  INV_X1 U25 ( .A(n77), .ZN(abDiff[2]) );
  AOI22_X1 U26 ( .A1(N10), .A2(diff[15]), .B1(diff[2]), .B2(n70), .ZN(n77) );
  INV_X1 U27 ( .A(n78), .ZN(abDiff[1]) );
  AOI22_X1 U28 ( .A1(N9), .A2(diff[15]), .B1(diff[1]), .B2(n70), .ZN(n78) );
  AND2_X1 U29 ( .A1(N23), .A2(diff[15]), .ZN(abDiff[15]) );
  INV_X1 U30 ( .A(n79), .ZN(abDiff[14]) );
  AOI22_X1 U31 ( .A1(N22), .A2(diff[15]), .B1(diff[14]), .B2(n70), .ZN(n79) );
  INV_X1 U32 ( .A(n80), .ZN(abDiff[13]) );
  AOI22_X1 U33 ( .A1(N21), .A2(diff[15]), .B1(diff[13]), .B2(n70), .ZN(n80) );
  INV_X1 U34 ( .A(n81), .ZN(abDiff[12]) );
  AOI22_X1 U35 ( .A1(N20), .A2(diff[15]), .B1(diff[12]), .B2(n70), .ZN(n81) );
  INV_X1 U36 ( .A(n82), .ZN(abDiff[11]) );
  AOI22_X1 U37 ( .A1(N19), .A2(diff[15]), .B1(diff[11]), .B2(n70), .ZN(n82) );
  INV_X1 U38 ( .A(n83), .ZN(abDiff[10]) );
  AOI22_X1 U39 ( .A1(N18), .A2(diff[15]), .B1(diff[10]), .B2(n70), .ZN(n83) );
  INV_X1 U40 ( .A(n84), .ZN(abDiff[0]) );
  AOI22_X1 U41 ( .A1(N8), .A2(diff[15]), .B1(diff[0]), .B2(n70), .ZN(n84) );
  assignment1pip_DW01_sub_0 sub_71 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B(diff), 
        .CI(1'b0), .DIFF({N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, 
        N13, N12, N11, N10, N9, N8}) );
  assignment1pip_DW_mult_uns_0 mult_48 ( .a({1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 
        1'b1}), .b(RB), .product(M2) );
  HA_X1 \mult_46/U17  ( .A(RA[5]), .B(RA[3]), .CO(\mult_46/n20 ), .S(
        \mult_46/n21 ) );
  FA_X1 \mult_46/U16  ( .A(M1[1]), .B(RA[6]), .CI(RA[4]), .CO(\mult_46/n18 ), 
        .S(\mult_46/n19 ) );
  FA_X1 \mult_46/U15  ( .A(RA[2]), .B(RA[7]), .CI(RA[5]), .CO(\mult_46/n16 ), 
        .S(\mult_46/n17 ) );
  HA_X1 \mult_46/U14  ( .A(RA[6]), .B(RA[3]), .CO(\mult_46/n14 ), .S(
        \mult_46/n15 ) );
  HA_X1 \mult_46/U13  ( .A(RA[7]), .B(RA[4]), .CO(\mult_46/n12 ), .S(
        \mult_46/n13 ) );
  HA_X1 \mult_46/U12  ( .A(M1[0]), .B(RA[2]), .CO(\mult_46/n11 ), .S(M1[2]) );
  FA_X1 \mult_46/U11  ( .A(RA[3]), .B(M1[1]), .CI(\mult_46/n11 ), .CO(
        \mult_46/n10 ), .S(M1[3]) );
  FA_X1 \mult_46/U10  ( .A(RA[4]), .B(RA[2]), .CI(\mult_46/n10 ), .CO(
        \mult_46/n9 ), .S(M1[4]) );
  FA_X1 \mult_46/U9  ( .A(\mult_46/n21 ), .B(M1[0]), .CI(\mult_46/n9 ), .CO(
        \mult_46/n8 ), .S(M1[5]) );
  FA_X1 \mult_46/U8  ( .A(\mult_46/n19 ), .B(\mult_46/n20 ), .CI(\mult_46/n8 ), 
        .CO(\mult_46/n7 ), .S(M1[6]) );
  FA_X1 \mult_46/U7  ( .A(\mult_46/n17 ), .B(\mult_46/n18 ), .CI(\mult_46/n7 ), 
        .CO(\mult_46/n6 ), .S(M1[7]) );
  FA_X1 \mult_46/U6  ( .A(\mult_46/n16 ), .B(\mult_46/n15 ), .CI(\mult_46/n6 ), 
        .CO(\mult_46/n5 ), .S(M1[8]) );
  FA_X1 \mult_46/U5  ( .A(\mult_46/n13 ), .B(\mult_46/n14 ), .CI(\mult_46/n5 ), 
        .CO(\mult_46/n4 ), .S(M1[9]) );
  FA_X1 \mult_46/U4  ( .A(\mult_46/n12 ), .B(RA[5]), .CI(\mult_46/n4 ), .CO(
        \mult_46/n3 ), .S(M1[10]) );
  HA_X1 \mult_46/U3  ( .A(RA[6]), .B(\mult_46/n3 ), .CO(\mult_46/n2 ), .S(
        M1[11]) );
  HA_X1 \mult_46/U2  ( .A(RA[7]), .B(\mult_46/n2 ), .CO(M1[13]), .S(M1[12]) );
  assignment1pip_DW01_add_1 add_75 ( .A(abDiff), .B(z), .SUM(sum), .CI(1'b0)
         );
  assignment1pip_DW01_sub_2 sub_69 ( .A({1'b0, 1'b0, RegM1[13:0]}), .B({1'b0, 
        1'b0, RegM2[13:0]}), .DIFF(diff), .CI(1'b0) );
  INV_X4 U43 ( .A(reset), .ZN(n67) );
  INV_X2 U44 ( .A(diff[15]), .ZN(n70) );
endmodule

