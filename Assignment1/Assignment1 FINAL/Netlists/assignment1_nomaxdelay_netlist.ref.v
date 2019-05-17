
module assignment1_DW01_sub_1 ( A, B, DIFF, CI, CO );
  input [14:0] A;
  input [14:0] B;
  output [14:0] DIFF;
  input CI;
  output CO;
  wire   n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n15, n16, n17, n18,
         n19, n21, n22, n23, n24, n25, n26, n27, n29, n30, n31, n32, n33, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n148, n149, n150, n151;

  NOR2_X4 U8 ( .A1(A[13]), .A2(n83), .ZN(n17) );
  XNOR2_X2 U24 ( .A(n4), .B(n32), .ZN(DIFF[10]) );
  XNOR2_X2 U32 ( .A(n5), .B(n38), .ZN(DIFF[9]) );
  AOI21_X4 U34 ( .B1(n74), .B2(n38), .A(n35), .ZN(n33) );
  NAND2_X4 U37 ( .A1(n74), .A2(n37), .ZN(n5) );
  NOR2_X4 U39 ( .A1(A[9]), .A2(n87), .ZN(n36) );
  NAND2_X4 U40 ( .A1(A[9]), .A2(n87), .ZN(n37) );
  XOR2_X2 U41 ( .A(n6), .B(n41), .Z(DIFF[8]) );
  OAI21_X4 U42 ( .B1(n39), .B2(n41), .A(n40), .ZN(n38) );
  NAND2_X4 U43 ( .A1(n75), .A2(n40), .ZN(n6) );
  NOR2_X4 U45 ( .A1(A[8]), .A2(n88), .ZN(n39) );
  NAND2_X4 U46 ( .A1(A[8]), .A2(n88), .ZN(n40) );
  XOR2_X2 U47 ( .A(n7), .B(n45), .Z(DIFF[7]) );
  OAI21_X4 U49 ( .B1(n43), .B2(n45), .A(n44), .ZN(n42) );
  NAND2_X4 U50 ( .A1(n76), .A2(n44), .ZN(n7) );
  NOR2_X4 U52 ( .A1(A[7]), .A2(n89), .ZN(n43) );
  NAND2_X4 U53 ( .A1(A[7]), .A2(n89), .ZN(n44) );
  XOR2_X2 U54 ( .A(n8), .B(n49), .Z(DIFF[6]) );
  OAI21_X4 U56 ( .B1(n47), .B2(n49), .A(n48), .ZN(n46) );
  NAND2_X4 U57 ( .A1(n77), .A2(n48), .ZN(n8) );
  NOR2_X4 U59 ( .A1(A[6]), .A2(n90), .ZN(n47) );
  NAND2_X4 U60 ( .A1(A[6]), .A2(n90), .ZN(n48) );
  XNOR2_X2 U61 ( .A(n9), .B(n54), .ZN(DIFF[5]) );
  AOI21_X4 U62 ( .B1(n78), .B2(n54), .A(n51), .ZN(n49) );
  NAND2_X4 U65 ( .A1(n78), .A2(n53), .ZN(n9) );
  NOR2_X4 U67 ( .A1(A[5]), .A2(n91), .ZN(n52) );
  NAND2_X4 U68 ( .A1(A[5]), .A2(n91), .ZN(n53) );
  XOR2_X2 U69 ( .A(n10), .B(n57), .Z(DIFF[4]) );
  OAI21_X4 U70 ( .B1(n55), .B2(n57), .A(n56), .ZN(n54) );
  NAND2_X4 U71 ( .A1(n79), .A2(n56), .ZN(n10) );
  NOR2_X4 U73 ( .A1(n92), .A2(A[4]), .ZN(n55) );
  NAND2_X4 U74 ( .A1(n92), .A2(A[4]), .ZN(n56) );
  XOR2_X2 U75 ( .A(n11), .B(n61), .Z(DIFF[3]) );
  OAI21_X4 U77 ( .B1(n61), .B2(n59), .A(n60), .ZN(n58) );
  NAND2_X4 U78 ( .A1(n80), .A2(n60), .ZN(n11) );
  NOR2_X4 U80 ( .A1(A[3]), .A2(n93), .ZN(n59) );
  NAND2_X4 U81 ( .A1(A[3]), .A2(n93), .ZN(n60) );
  XNOR2_X2 U82 ( .A(n12), .B(n66), .ZN(DIFF[2]) );
  AOI21_X4 U83 ( .B1(n81), .B2(n66), .A(n63), .ZN(n61) );
  NAND2_X4 U86 ( .A1(n81), .A2(n65), .ZN(n12) );
  NOR2_X4 U88 ( .A1(A[2]), .A2(n94), .ZN(n64) );
  NAND2_X4 U89 ( .A1(A[2]), .A2(n94), .ZN(n65) );
  XOR2_X2 U90 ( .A(n13), .B(n69), .Z(DIFF[1]) );
  OAI21_X4 U91 ( .B1(n67), .B2(n69), .A(n68), .ZN(n66) );
  NAND2_X4 U92 ( .A1(n82), .A2(n68), .ZN(n13) );
  NOR2_X4 U94 ( .A1(n95), .A2(A[1]), .ZN(n67) );
  NAND2_X4 U95 ( .A1(n95), .A2(A[1]), .ZN(n68) );
  XNOR2_X1 U115 ( .A(n19), .B(n148), .ZN(DIFF[13]) );
  AND2_X1 U116 ( .A1(n70), .A2(n18), .ZN(n148) );
  NOR2_X1 U117 ( .A1(A[10]), .A2(n86), .ZN(n30) );
  BUF_X2 U118 ( .A(n25), .Z(n151) );
  AOI21_X1 U119 ( .B1(n71), .B2(n24), .A(n21), .ZN(n19) );
  NOR2_X2 U120 ( .A1(A[11]), .A2(n85), .ZN(n25) );
  NAND2_X2 U121 ( .A1(A[13]), .A2(n83), .ZN(n18) );
  AOI21_X1 U122 ( .B1(n73), .B2(n32), .A(n29), .ZN(n149) );
  AOI21_X2 U123 ( .B1(n73), .B2(n32), .A(n29), .ZN(n27) );
  XNOR2_X1 U124 ( .A(n150), .B(n149), .ZN(DIFF[11]) );
  AND2_X2 U125 ( .A1(n72), .A2(n26), .ZN(n150) );
  NAND2_X1 U126 ( .A1(A[10]), .A2(n86), .ZN(n31) );
  NAND2_X1 U127 ( .A1(n71), .A2(n23), .ZN(n2) );
  INV_X1 U128 ( .A(n23), .ZN(n21) );
  INV_X1 U129 ( .A(n22), .ZN(n71) );
  NAND2_X1 U130 ( .A1(n73), .A2(n31), .ZN(n4) );
  OAI21_X2 U131 ( .B1(n23), .B2(n17), .A(n18), .ZN(n16) );
  NAND2_X2 U132 ( .A1(A[12]), .A2(n84), .ZN(n23) );
  NOR2_X2 U133 ( .A1(n22), .A2(n17), .ZN(n15) );
  XNOR2_X1 U134 ( .A(n2), .B(n24), .ZN(DIFF[12]) );
  INV_X1 U135 ( .A(n25), .ZN(n72) );
  OAI21_X2 U136 ( .B1(n151), .B2(n27), .A(n26), .ZN(n24) );
  NOR2_X2 U137 ( .A1(A[12]), .A2(n84), .ZN(n22) );
  NAND2_X1 U138 ( .A1(A[11]), .A2(n85), .ZN(n26) );
  AOI21_X4 U139 ( .B1(n15), .B2(n24), .A(n16), .ZN(DIFF[14]) );
  XNOR2_X1 U140 ( .A(A[0]), .B(n96), .ZN(DIFF[0]) );
  NOR2_X1 U141 ( .A1(A[0]), .A2(n96), .ZN(n69) );
  INV_X2 U142 ( .A(B[0]), .ZN(n96) );
  INV_X2 U143 ( .A(B[1]), .ZN(n95) );
  INV_X2 U144 ( .A(B[2]), .ZN(n94) );
  INV_X2 U145 ( .A(B[3]), .ZN(n93) );
  INV_X2 U146 ( .A(B[4]), .ZN(n92) );
  INV_X2 U147 ( .A(B[5]), .ZN(n91) );
  INV_X2 U148 ( .A(B[6]), .ZN(n90) );
  INV_X2 U149 ( .A(B[7]), .ZN(n89) );
  INV_X2 U150 ( .A(B[8]), .ZN(n88) );
  INV_X2 U151 ( .A(B[9]), .ZN(n87) );
  INV_X2 U152 ( .A(B[10]), .ZN(n86) );
  INV_X2 U153 ( .A(B[11]), .ZN(n85) );
  INV_X2 U154 ( .A(B[12]), .ZN(n84) );
  INV_X2 U155 ( .A(B[13]), .ZN(n83) );
  INV_X2 U156 ( .A(n67), .ZN(n82) );
  INV_X2 U157 ( .A(n59), .ZN(n80) );
  INV_X2 U158 ( .A(n55), .ZN(n79) );
  INV_X2 U159 ( .A(n47), .ZN(n77) );
  INV_X2 U160 ( .A(n43), .ZN(n76) );
  INV_X2 U161 ( .A(n39), .ZN(n75) );
  INV_X2 U162 ( .A(n17), .ZN(n70) );
  INV_X2 U163 ( .A(n65), .ZN(n63) );
  INV_X2 U164 ( .A(n64), .ZN(n81) );
  INV_X2 U165 ( .A(n58), .ZN(n57) );
  INV_X2 U166 ( .A(n53), .ZN(n51) );
  INV_X2 U167 ( .A(n52), .ZN(n78) );
  INV_X2 U168 ( .A(n46), .ZN(n45) );
  INV_X2 U169 ( .A(n42), .ZN(n41) );
  INV_X2 U170 ( .A(n37), .ZN(n35) );
  INV_X2 U171 ( .A(n36), .ZN(n74) );
  INV_X2 U172 ( .A(n33), .ZN(n32) );
  INV_X2 U173 ( .A(n31), .ZN(n29) );
  INV_X2 U174 ( .A(n30), .ZN(n73) );
endmodule


module assignment1_DW_mult_uns_0 ( a, b, product );
  input [5:0] a;
  input [7:0] b;
  output [13:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n28, n29, n30, n31, n32,
         n33, n34, n36, n37, n38, n39, n41, n42, n43, n44, n45, n47, n48, n49,
         n50, n51, n52, n54, \b[0] , n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n90;
  assign n51 = b[2];
  assign n54 = b[1];
  assign product[0] = \b[0] ;
  assign \b[0]  = b[0];
  assign n90 = b[3];

  XNOR2_X2 U1 ( .A(n8), .B(b[7]), .ZN(product[13]) );
  XNOR2_X2 U2 ( .A(n9), .B(b[6]), .ZN(product[12]) );
  OR2_X4 U3 ( .A1(n9), .A2(b[6]), .ZN(n8) );
  FA_X1 U4 ( .A(n64), .B(b[5]), .CI(n10), .CO(n9), .S(product[11]) );
  FA_X1 U5 ( .A(n66), .B(n65), .CI(n11), .CO(n10), .S(product[10]) );
  XOR2_X2 U6 ( .A(n14), .B(n1), .Z(product[9]) );
  OAI21_X4 U7 ( .B1(n14), .B2(n12), .A(n13), .ZN(n11) );
  NAND2_X4 U8 ( .A1(n57), .A2(n13), .ZN(n1) );
  NOR2_X4 U10 ( .A1(n67), .A2(n68), .ZN(n12) );
  NAND2_X4 U11 ( .A1(n67), .A2(n68), .ZN(n13) );
  XNOR2_X2 U12 ( .A(n19), .B(n2), .ZN(product[8]) );
  AOI21_X4 U13 ( .B1(n19), .B2(n58), .A(n16), .ZN(n14) );
  NAND2_X4 U16 ( .A1(n58), .A2(n18), .ZN(n2) );
  NOR2_X4 U18 ( .A1(n70), .A2(n69), .ZN(n17) );
  NAND2_X4 U19 ( .A1(n70), .A2(n69), .ZN(n18) );
  XOR2_X2 U20 ( .A(n26), .B(n3), .Z(product[7]) );
  OAI21_X4 U21 ( .B1(n20), .B2(n31), .A(n21), .ZN(n19) );
  NOR2_X4 U24 ( .A1(n29), .A2(n24), .ZN(n22) );
  OAI21_X4 U25 ( .B1(n24), .B2(n30), .A(n25), .ZN(n23) );
  NAND2_X4 U26 ( .A1(n59), .A2(n25), .ZN(n3) );
  NOR2_X4 U28 ( .A1(n71), .A2(n72), .ZN(n24) );
  NAND2_X4 U29 ( .A1(n71), .A2(n72), .ZN(n25) );
  XOR2_X2 U30 ( .A(n4), .B(n31), .Z(product[6]) );
  AOI21_X4 U31 ( .B1(n60), .B2(n32), .A(n28), .ZN(n26) );
  NAND2_X4 U34 ( .A1(n60), .A2(n30), .ZN(n4) );
  NOR2_X4 U36 ( .A1(n73), .A2(n74), .ZN(n29) );
  NAND2_X4 U37 ( .A1(n73), .A2(n74), .ZN(n30) );
  XOR2_X2 U38 ( .A(n39), .B(n5), .Z(product[5]) );
  OAI21_X4 U40 ( .B1(n33), .B2(n45), .A(n34), .ZN(n32) );
  NAND2_X4 U41 ( .A1(n61), .A2(n62), .ZN(n33) );
  AOI21_X4 U42 ( .B1(n61), .B2(n41), .A(n36), .ZN(n34) );
  NAND2_X4 U45 ( .A1(n61), .A2(n38), .ZN(n5) );
  NOR2_X4 U47 ( .A1(n75), .A2(n76), .ZN(n37) );
  NAND2_X4 U48 ( .A1(n75), .A2(n76), .ZN(n38) );
  XNOR2_X2 U49 ( .A(n6), .B(n44), .ZN(product[4]) );
  AOI21_X4 U50 ( .B1(n62), .B2(n44), .A(n41), .ZN(n39) );
  NAND2_X4 U53 ( .A1(n62), .A2(n43), .ZN(n6) );
  NOR2_X4 U55 ( .A1(n77), .A2(n82), .ZN(n42) );
  NAND2_X4 U56 ( .A1(n77), .A2(n82), .ZN(n43) );
  XNOR2_X2 U57 ( .A(n7), .B(n50), .ZN(product[3]) );
  AOI21_X4 U59 ( .B1(n50), .B2(n63), .A(n47), .ZN(n45) );
  NAND2_X4 U62 ( .A1(n63), .A2(n49), .ZN(n7) );
  NOR2_X4 U64 ( .A1(n85), .A2(n90), .ZN(n48) );
  NAND2_X4 U65 ( .A1(n85), .A2(n90), .ZN(n49) );
  XOR2_X2 U66 ( .A(n52), .B(n51), .Z(product[2]) );
  NOR2_X4 U67 ( .A1(n52), .A2(n51), .ZN(n50) );
  XNOR2_X2 U69 ( .A(n54), .B(n85), .ZN(product[1]) );
  NAND2_X4 U70 ( .A1(n85), .A2(n84), .ZN(n52) );
  XNOR2_X2 U75 ( .A(b[4]), .B(n78), .ZN(n65) );
  OR2_X4 U76 ( .A1(b[4]), .A2(n78), .ZN(n64) );
  XNOR2_X2 U77 ( .A(n90), .B(n79), .ZN(n67) );
  OR2_X4 U78 ( .A1(n90), .A2(n79), .ZN(n66) );
  XNOR2_X2 U79 ( .A(n51), .B(n80), .ZN(n69) );
  OR2_X4 U80 ( .A1(n51), .A2(n80), .ZN(n68) );
  FA_X1 U81 ( .A(n81), .B(n78), .CI(n54), .CO(n70), .S(n71) );
  FA_X1 U82 ( .A(n79), .B(n82), .CI(\b[0] ), .CO(n72), .S(n73) );
  HA_X1 U83 ( .A(n83), .B(n80), .CO(n74), .S(n75) );
  HA_X1 U84 ( .A(n81), .B(n84), .CO(n76), .S(n77) );
  INV_X2 U98 ( .A(n51), .ZN(n83) );
  INV_X2 U99 ( .A(n90), .ZN(n82) );
  INV_X2 U100 ( .A(b[4]), .ZN(n81) );
  INV_X2 U101 ( .A(b[5]), .ZN(n80) );
  INV_X2 U102 ( .A(b[6]), .ZN(n79) );
  INV_X2 U103 ( .A(b[7]), .ZN(n78) );
  INV_X2 U104 ( .A(n24), .ZN(n59) );
  INV_X2 U105 ( .A(n12), .ZN(n57) );
  INV_X2 U106 ( .A(\b[0] ), .ZN(n85) );
  INV_X2 U107 ( .A(n54), .ZN(n84) );
  INV_X2 U108 ( .A(n49), .ZN(n47) );
  INV_X2 U109 ( .A(n48), .ZN(n63) );
  INV_X2 U110 ( .A(n45), .ZN(n44) );
  INV_X2 U111 ( .A(n43), .ZN(n41) );
  INV_X2 U112 ( .A(n42), .ZN(n62) );
  INV_X2 U113 ( .A(n38), .ZN(n36) );
  INV_X2 U114 ( .A(n37), .ZN(n61) );
  INV_X2 U115 ( .A(n32), .ZN(n31) );
  INV_X2 U116 ( .A(n30), .ZN(n28) );
  INV_X2 U117 ( .A(n29), .ZN(n60) );
  INV_X2 U118 ( .A(n23), .ZN(n21) );
  INV_X2 U119 ( .A(n22), .ZN(n20) );
  INV_X2 U120 ( .A(n18), .ZN(n16) );
  INV_X2 U121 ( .A(n17), .ZN(n58) );
endmodule


module assignment1_DW01_add_1 ( A, B, SUM, CI, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n60, n61, n62,
         n63, n64, n65, n68, n69, n70, n71, n72, n73, n74, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n88, n89, n90, n91, n92, n93, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n120, n121,
         n122, n123, n124, n126, n127, n128, n130, n131, n132, n133, n188,
         n189, n190;

  NOR2_X4 U5 ( .A1(A[15]), .A2(B[15]), .ZN(n20) );
  NAND2_X4 U6 ( .A1(A[15]), .A2(B[15]), .ZN(n21) );
  NOR2_X4 U9 ( .A1(n3), .A2(n25), .ZN(n23) );
  NAND2_X4 U15 ( .A1(n27), .A2(n30), .ZN(n5) );
  NOR2_X4 U21 ( .A1(n3), .A2(n34), .ZN(n32) );
  NAND2_X4 U27 ( .A1(n120), .A2(n39), .ZN(n6) );
  NOR2_X4 U33 ( .A1(n3), .A2(n43), .ZN(n41) );
  NAND2_X4 U37 ( .A1(n121), .A2(n46), .ZN(n7) );
  NOR2_X4 U39 ( .A1(A[12]), .A2(B[12]), .ZN(n43) );
  NAND2_X4 U45 ( .A1(n50), .A2(n62), .ZN(n3) );
  AOI21_X4 U46 ( .B1(n50), .B2(n63), .A(n51), .ZN(n2) );
  NOR2_X4 U47 ( .A1(n57), .A2(n52), .ZN(n50) );
  NAND2_X4 U49 ( .A1(n122), .A2(n53), .ZN(n8) );
  NOR2_X4 U51 ( .A1(A[11]), .A2(B[11]), .ZN(n52) );
  NAND2_X4 U52 ( .A1(A[11]), .A2(B[11]), .ZN(n53) );
  NOR2_X4 U55 ( .A1(n64), .A2(n57), .ZN(n55) );
  OAI21_X4 U56 ( .B1(n65), .B2(n57), .A(n60), .ZN(n56) );
  NAND2_X4 U59 ( .A1(n123), .A2(n60), .ZN(n9) );
  NOR2_X4 U61 ( .A1(A[10]), .A2(B[10]), .ZN(n57) );
  NAND2_X4 U62 ( .A1(A[10]), .A2(B[10]), .ZN(n60) );
  NOR2_X4 U69 ( .A1(n73), .A2(n68), .ZN(n62) );
  NAND2_X4 U71 ( .A1(n124), .A2(n69), .ZN(n10) );
  NOR2_X4 U73 ( .A1(A[9]), .A2(B[9]), .ZN(n68) );
  NAND2_X4 U74 ( .A1(A[9]), .A2(B[9]), .ZN(n69) );
  NAND2_X4 U79 ( .A1(n71), .A2(n74), .ZN(n11) );
  NOR2_X4 U81 ( .A1(A[8]), .A2(B[8]), .ZN(n73) );
  NAND2_X4 U82 ( .A1(A[8]), .A2(B[8]), .ZN(n74) );
  XOR2_X2 U83 ( .A(n82), .B(n12), .Z(SUM[7]) );
  AOI21_X4 U86 ( .B1(n78), .B2(n91), .A(n79), .ZN(n77) );
  NOR2_X4 U87 ( .A1(n85), .A2(n80), .ZN(n78) );
  OAI21_X4 U88 ( .B1(n80), .B2(n88), .A(n81), .ZN(n79) );
  NAND2_X4 U89 ( .A1(n126), .A2(n81), .ZN(n12) );
  NOR2_X4 U91 ( .A1(A[7]), .A2(B[7]), .ZN(n80) );
  NAND2_X4 U92 ( .A1(A[7]), .A2(B[7]), .ZN(n81) );
  XOR2_X2 U93 ( .A(n89), .B(n13), .Z(SUM[6]) );
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
  XNOR2_X2 U115 ( .A(n103), .B(n15), .ZN(SUM[4]) );
  AOI21_X4 U116 ( .B1(n103), .B2(n99), .A(n100), .ZN(n98) );
  NAND2_X4 U119 ( .A1(n99), .A2(n102), .ZN(n15) );
  XNOR2_X2 U123 ( .A(n109), .B(n16), .ZN(SUM[3]) );
  NAND2_X4 U128 ( .A1(n130), .A2(n108), .ZN(n16) );
  NOR2_X4 U130 ( .A1(A[3]), .A2(B[3]), .ZN(n107) );
  XOR2_X2 U132 ( .A(n112), .B(n17), .Z(SUM[2]) );
  OAI21_X4 U133 ( .B1(n112), .B2(n110), .A(n111), .ZN(n109) );
  NAND2_X4 U134 ( .A1(n131), .A2(n111), .ZN(n17) );
  NOR2_X4 U136 ( .A1(A[2]), .A2(B[2]), .ZN(n110) );
  NAND2_X4 U137 ( .A1(A[2]), .A2(B[2]), .ZN(n111) );
  XOR2_X2 U138 ( .A(n18), .B(n117), .Z(SUM[1]) );
  OAI21_X4 U140 ( .B1(n114), .B2(n117), .A(n115), .ZN(n113) );
  NAND2_X4 U141 ( .A1(n132), .A2(n115), .ZN(n18) );
  NOR2_X4 U143 ( .A1(A[1]), .A2(B[1]), .ZN(n114) );
  NAND2_X4 U146 ( .A1(n133), .A2(n117), .ZN(n19) );
  NAND2_X4 U149 ( .A1(A[0]), .A2(B[0]), .ZN(n117) );
  NAND2_X1 U153 ( .A1(A[12]), .A2(B[12]), .ZN(n46) );
  NOR2_X4 U154 ( .A1(A[13]), .A2(B[13]), .ZN(n38) );
  INV_X1 U155 ( .A(n37), .ZN(n35) );
  AOI21_X1 U156 ( .B1(n37), .B2(n27), .A(n28), .ZN(n26) );
  OAI21_X1 U157 ( .B1(n38), .B2(n46), .A(n39), .ZN(n37) );
  AOI21_X2 U158 ( .B1(n1), .B2(n23), .A(n24), .ZN(n22) );
  NAND2_X2 U159 ( .A1(n36), .A2(n27), .ZN(n25) );
  AOI21_X1 U160 ( .B1(n105), .B2(n113), .A(n106), .ZN(n188) );
  AOI21_X1 U161 ( .B1(n105), .B2(n113), .A(n106), .ZN(n104) );
  OAI21_X1 U162 ( .B1(n107), .B2(n111), .A(n108), .ZN(n106) );
  NAND2_X2 U163 ( .A1(A[1]), .A2(B[1]), .ZN(n115) );
  INV_X1 U164 ( .A(n107), .ZN(n130) );
  NOR2_X2 U165 ( .A1(n110), .A2(n107), .ZN(n105) );
  NAND2_X2 U166 ( .A1(A[3]), .A2(B[3]), .ZN(n108) );
  AOI21_X2 U167 ( .B1(n83), .B2(n103), .A(n84), .ZN(n82) );
  INV_X1 U168 ( .A(n38), .ZN(n120) );
  NOR2_X2 U169 ( .A1(n43), .A2(n38), .ZN(n36) );
  NAND2_X2 U170 ( .A1(A[13]), .A2(B[13]), .ZN(n39) );
  XNOR2_X1 U171 ( .A(n189), .B(n22), .ZN(SUM[15]) );
  AND2_X1 U172 ( .A1(n118), .A2(n21), .ZN(n189) );
  OAI21_X2 U173 ( .B1(n188), .B2(n76), .A(n77), .ZN(n190) );
  OAI21_X2 U174 ( .B1(n188), .B2(n76), .A(n77), .ZN(n1) );
  NOR2_X1 U175 ( .A1(A[4]), .A2(B[4]), .ZN(n101) );
  NAND2_X2 U176 ( .A1(A[4]), .A2(B[4]), .ZN(n102) );
  NAND2_X1 U177 ( .A1(A[5]), .A2(B[5]), .ZN(n97) );
  XOR2_X1 U178 ( .A(n70), .B(n10), .Z(SUM[9]) );
  NAND2_X2 U179 ( .A1(n90), .A2(n78), .ZN(n76) );
  XOR2_X1 U180 ( .A(n31), .B(n5), .Z(SUM[14]) );
  XOR2_X1 U181 ( .A(n47), .B(n7), .Z(SUM[12]) );
  XOR2_X1 U182 ( .A(n61), .B(n9), .Z(SUM[10]) );
  XOR2_X1 U183 ( .A(n54), .B(n8), .Z(SUM[11]) );
  NAND2_X1 U184 ( .A1(A[14]), .A2(B[14]), .ZN(n30) );
  NOR2_X1 U185 ( .A1(A[14]), .A2(B[14]), .ZN(n29) );
  XOR2_X1 U186 ( .A(n40), .B(n6), .Z(SUM[13]) );
  OAI21_X1 U187 ( .B1(n2), .B2(n43), .A(n46), .ZN(n42) );
  INV_X1 U188 ( .A(n2), .ZN(n49) );
  OAI21_X1 U189 ( .B1(n2), .B2(n34), .A(n35), .ZN(n33) );
  OAI21_X4 U190 ( .B1(n68), .B2(n74), .A(n69), .ZN(n63) );
  OAI21_X1 U191 ( .B1(n2), .B2(n25), .A(n26), .ZN(n24) );
  OAI21_X1 U192 ( .B1(n52), .B2(n60), .A(n53), .ZN(n51) );
  XNOR2_X1 U193 ( .A(n190), .B(n11), .ZN(SUM[8]) );
  NOR2_X1 U194 ( .A1(A[0]), .A2(B[0]), .ZN(n116) );
  AOI21_X1 U195 ( .B1(n1), .B2(n71), .A(n72), .ZN(n70) );
  AOI21_X1 U196 ( .B1(n190), .B2(n48), .A(n49), .ZN(n47) );
  AOI21_X1 U197 ( .B1(n1), .B2(n62), .A(n63), .ZN(n61) );
  AOI21_X1 U198 ( .B1(n190), .B2(n32), .A(n33), .ZN(n31) );
  AOI21_X1 U199 ( .B1(n190), .B2(n41), .A(n42), .ZN(n40) );
  AOI21_X1 U200 ( .B1(n1), .B2(n55), .A(n56), .ZN(n54) );
  INV_X2 U201 ( .A(n91), .ZN(n93) );
  INV_X2 U202 ( .A(n90), .ZN(n92) );
  INV_X2 U203 ( .A(n74), .ZN(n72) );
  INV_X2 U204 ( .A(n63), .ZN(n65) );
  INV_X2 U205 ( .A(n62), .ZN(n64) );
  INV_X2 U206 ( .A(n3), .ZN(n48) );
  INV_X2 U207 ( .A(n36), .ZN(n34) );
  INV_X2 U208 ( .A(n30), .ZN(n28) );
  INV_X2 U209 ( .A(n116), .ZN(n133) );
  INV_X2 U210 ( .A(n114), .ZN(n132) );
  INV_X2 U211 ( .A(n110), .ZN(n131) );
  INV_X2 U212 ( .A(n101), .ZN(n99) );
  INV_X2 U213 ( .A(n96), .ZN(n128) );
  INV_X2 U214 ( .A(n85), .ZN(n127) );
  INV_X2 U215 ( .A(n80), .ZN(n126) );
  INV_X2 U216 ( .A(n73), .ZN(n71) );
  INV_X2 U217 ( .A(n68), .ZN(n124) );
  INV_X2 U218 ( .A(n57), .ZN(n123) );
  INV_X2 U219 ( .A(n52), .ZN(n122) );
  INV_X2 U220 ( .A(n43), .ZN(n121) );
  INV_X2 U221 ( .A(n29), .ZN(n27) );
  INV_X2 U222 ( .A(n20), .ZN(n118) );
  INV_X2 U223 ( .A(n113), .ZN(n112) );
  INV_X2 U224 ( .A(n104), .ZN(n103) );
  INV_X2 U225 ( .A(n102), .ZN(n100) );
  INV_X2 U226 ( .A(n19), .ZN(SUM[0]) );
endmodule


module assignment1_DW01_sub_0 ( A, B, CI, DIFF, CO );
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

  XNOR2_X1 U1 ( .A(B[13]), .B(\carry[13] ), .ZN(DIFF[13]) );
  AND2_X2 U2 ( .A1(\carry[12] ), .A2(\B_not[12] ), .ZN(\carry[13] ) );
  XNOR2_X1 U3 ( .A(B[14]), .B(\carry[14] ), .ZN(DIFF[14]) );
  AND2_X2 U4 ( .A1(\carry[13] ), .A2(\B_not[13] ), .ZN(\carry[14] ) );
  INV_X1 U5 ( .A(B[11]), .ZN(\B_not[11] ) );
  XOR2_X1 U6 ( .A(\B_not[15] ), .B(\carry[15] ), .Z(DIFF[15]) );
  AND2_X1 U7 ( .A1(\carry[14] ), .A2(\B_not[14] ), .ZN(\carry[15] ) );
  XOR2_X1 U8 ( .A(\B_not[12] ), .B(\carry[12] ), .Z(DIFF[12]) );
  AND2_X1 U9 ( .A1(\carry[11] ), .A2(\B_not[11] ), .ZN(\carry[12] ) );
  XOR2_X1 U10 ( .A(\B_not[11] ), .B(\carry[11] ), .Z(DIFF[11]) );
  AND2_X1 U11 ( .A1(\carry[10] ), .A2(\B_not[10] ), .ZN(\carry[11] ) );
  XOR2_X1 U12 ( .A(\B_not[10] ), .B(\carry[10] ), .Z(DIFF[10]) );
  AND2_X1 U13 ( .A1(\carry[9] ), .A2(\B_not[9] ), .ZN(\carry[10] ) );
  XOR2_X1 U14 ( .A(\B_not[9] ), .B(\carry[9] ), .Z(DIFF[9]) );
  AND2_X1 U15 ( .A1(\carry[8] ), .A2(\B_not[8] ), .ZN(\carry[9] ) );
  XOR2_X1 U16 ( .A(\B_not[8] ), .B(\carry[8] ), .Z(DIFF[8]) );
  AND2_X1 U17 ( .A1(\carry[7] ), .A2(\B_not[7] ), .ZN(\carry[8] ) );
  XOR2_X1 U18 ( .A(\B_not[7] ), .B(\carry[7] ), .Z(DIFF[7]) );
  AND2_X1 U19 ( .A1(\carry[6] ), .A2(\B_not[6] ), .ZN(\carry[7] ) );
  XOR2_X1 U20 ( .A(\B_not[6] ), .B(\carry[6] ), .Z(DIFF[6]) );
  AND2_X1 U21 ( .A1(\carry[5] ), .A2(\B_not[5] ), .ZN(\carry[6] ) );
  XOR2_X1 U22 ( .A(\B_not[5] ), .B(\carry[5] ), .Z(DIFF[5]) );
  AND2_X1 U23 ( .A1(\carry[4] ), .A2(\B_not[4] ), .ZN(\carry[5] ) );
  XOR2_X1 U24 ( .A(\B_not[4] ), .B(\carry[4] ), .Z(DIFF[4]) );
  AND2_X1 U25 ( .A1(\carry[3] ), .A2(\B_not[3] ), .ZN(\carry[4] ) );
  XOR2_X1 U26 ( .A(\B_not[3] ), .B(\carry[3] ), .Z(DIFF[3]) );
  AND2_X1 U27 ( .A1(\carry[2] ), .A2(\B_not[2] ), .ZN(\carry[3] ) );
  XOR2_X1 U28 ( .A(\B_not[2] ), .B(\carry[2] ), .Z(DIFF[2]) );
  AND2_X1 U29 ( .A1(\carry[1] ), .A2(\B_not[1] ), .ZN(\carry[2] ) );
  XOR2_X1 U30 ( .A(\B_not[1] ), .B(\carry[1] ), .Z(DIFF[1]) );
  INV_X1 U31 ( .A(\B[0] ), .ZN(\carry[1] ) );
  INV_X1 U32 ( .A(B[9]), .ZN(\B_not[9] ) );
  INV_X1 U33 ( .A(B[8]), .ZN(\B_not[8] ) );
  INV_X1 U34 ( .A(B[7]), .ZN(\B_not[7] ) );
  INV_X1 U35 ( .A(B[6]), .ZN(\B_not[6] ) );
  INV_X1 U36 ( .A(B[5]), .ZN(\B_not[5] ) );
  INV_X1 U37 ( .A(B[4]), .ZN(\B_not[4] ) );
  INV_X1 U38 ( .A(B[3]), .ZN(\B_not[3] ) );
  INV_X1 U39 ( .A(B[2]), .ZN(\B_not[2] ) );
  INV_X1 U40 ( .A(B[1]), .ZN(\B_not[1] ) );
  INV_X1 U41 ( .A(B[15]), .ZN(\B_not[15] ) );
  INV_X1 U42 ( .A(B[14]), .ZN(\B_not[14] ) );
  INV_X1 U43 ( .A(B[13]), .ZN(\B_not[13] ) );
  INV_X1 U44 ( .A(B[12]), .ZN(\B_not[12] ) );
  INV_X1 U45 ( .A(B[10]), .ZN(\B_not[10] ) );
endmodule


module assignment1 ( a, b, clk, reset, z );
  input [7:0] a;
  input [7:0] b;
  output [15:0] z;
  input clk, reset;
  wire   diff_15, N6, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19,
         N20, N21, N22, N23, n38, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, \M2[9] , \M2[8] , \M2[7] , \M2[6] ,
         \M2[5] , \M2[4] , \M2[3] , \M2[2] , \M2[1] , \M2[13] , \M2[12] ,
         \M2[11] , \M2[10] , \M2[0] , \M1[9] , \M1[8] , \M1[7] , \M1[6] ,
         \M1[5] , \M1[4] , \M1[3] , \M1[2] , \M1[1] , \M1[13] , \M1[12] ,
         \M1[11] , \M1[10] , \M1[0] , \mult_46/n21 , \mult_46/n20 ,
         \mult_46/n19 , \mult_46/n18 , \mult_46/n17 , \mult_46/n16 ,
         \mult_46/n15 , \mult_46/n14 , \mult_46/n13 , \mult_46/n12 ,
         \mult_46/n11 , \mult_46/n10 , \mult_46/n9 , \mult_46/n8 ,
         \mult_46/n7 , \mult_46/n6 , \mult_46/n5 , \mult_46/n4 , \mult_46/n3 ,
         \mult_46/n2 , n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n70, n71, n72, n73, n74, n75, n76, n77;
  wire   [7:0] RA;
  wire   [7:0] RB;
  wire   [13:0] diff;
  wire   [15:0] abDiff;
  wire   [15:0] sum;

  DFFR_X1 \RA_reg[6]  ( .D(a[6]), .CK(clk), .RN(n38), .Q(RA[6]) );
  DFFR_X1 \RA_reg[5]  ( .D(a[5]), .CK(clk), .RN(n38), .Q(RA[5]) );
  DFFR_X1 \RA_reg[4]  ( .D(a[4]), .CK(clk), .RN(n38), .Q(RA[4]) );
  DFFR_X1 \RA_reg[3]  ( .D(a[3]), .CK(clk), .RN(n38), .Q(RA[3]) );
  DFFR_X1 \RA_reg[1]  ( .D(a[1]), .CK(clk), .RN(n38), .Q(\M1[1] ) );
  DFFR_X1 \RA_reg[0]  ( .D(a[0]), .CK(clk), .RN(n38), .Q(\M1[0] ) );
  DFFR_X1 \RB_reg[7]  ( .D(b[7]), .CK(clk), .RN(n38), .Q(RB[7]) );
  DFFR_X1 \RB_reg[6]  ( .D(b[6]), .CK(clk), .RN(n38), .Q(RB[6]) );
  DFFR_X1 \RB_reg[5]  ( .D(b[5]), .CK(clk), .RN(n38), .Q(RB[5]) );
  DFFR_X1 \RB_reg[4]  ( .D(b[4]), .CK(clk), .RN(n38), .Q(RB[4]) );
  DFFR_X1 \RB_reg[3]  ( .D(b[3]), .CK(clk), .RN(n38), .Q(RB[3]) );
  DFFR_X1 \RB_reg[2]  ( .D(b[2]), .CK(clk), .RN(n38), .Q(RB[2]) );
  DFFR_X1 \RB_reg[1]  ( .D(b[1]), .CK(clk), .RN(n38), .Q(RB[1]) );
  DFFR_X1 \RB_reg[0]  ( .D(b[0]), .CK(clk), .RN(n38), .Q(RB[0]) );
  DFFR_X1 \RZ_reg[0]  ( .D(sum[0]), .CK(clk), .RN(n38), .Q(z[0]) );
  DFFR_X1 \RZ_reg[1]  ( .D(sum[1]), .CK(clk), .RN(n38), .Q(z[1]) );
  DFFR_X1 \RZ_reg[2]  ( .D(sum[2]), .CK(clk), .RN(n38), .Q(z[2]) );
  DFFR_X1 \RZ_reg[3]  ( .D(sum[3]), .CK(clk), .RN(n38), .Q(z[3]) );
  DFFR_X1 \RZ_reg[4]  ( .D(sum[4]), .CK(clk), .RN(n38), .Q(z[4]) );
  DFFR_X1 \RZ_reg[5]  ( .D(sum[5]), .CK(clk), .RN(n38), .Q(z[5]) );
  DFFR_X1 \RZ_reg[6]  ( .D(sum[6]), .CK(clk), .RN(n38), .Q(z[6]) );
  DFFR_X1 \RZ_reg[7]  ( .D(sum[7]), .CK(clk), .RN(n38), .Q(z[7]) );
  DFFR_X1 \RZ_reg[8]  ( .D(sum[8]), .CK(clk), .RN(n38), .Q(z[8]) );
  DFFR_X1 \RZ_reg[9]  ( .D(sum[9]), .CK(clk), .RN(n38), .Q(z[9]) );
  DFFR_X1 \RZ_reg[10]  ( .D(sum[10]), .CK(clk), .RN(n38), .Q(z[10]) );
  DFFR_X1 \RZ_reg[11]  ( .D(sum[11]), .CK(clk), .RN(n38), .Q(z[11]) );
  DFFR_X1 \RZ_reg[12]  ( .D(sum[12]), .CK(clk), .RN(n38), .Q(z[12]) );
  DFFR_X1 \RZ_reg[13]  ( .D(sum[13]), .CK(clk), .RN(n38), .Q(z[13]) );
  DFFR_X1 \RZ_reg[14]  ( .D(sum[14]), .CK(clk), .RN(n38), .Q(z[14]) );
  INV_X1 U4 ( .A(n40), .ZN(abDiff[9]) );
  AOI22_X1 U7 ( .A1(n70), .A2(N17), .B1(diff[9]), .B2(N6), .ZN(n40) );
  INV_X1 U8 ( .A(n41), .ZN(abDiff[8]) );
  AOI22_X1 U9 ( .A1(N16), .A2(n70), .B1(diff[8]), .B2(N6), .ZN(n41) );
  INV_X1 U10 ( .A(n42), .ZN(abDiff[7]) );
  AOI22_X1 U11 ( .A1(N15), .A2(n70), .B1(diff[7]), .B2(N6), .ZN(n42) );
  INV_X1 U12 ( .A(n43), .ZN(abDiff[6]) );
  AOI22_X1 U13 ( .A1(N14), .A2(n70), .B1(diff[6]), .B2(N6), .ZN(n43) );
  INV_X1 U14 ( .A(n44), .ZN(abDiff[5]) );
  AOI22_X1 U15 ( .A1(N13), .A2(n70), .B1(diff[5]), .B2(N6), .ZN(n44) );
  INV_X1 U16 ( .A(n45), .ZN(abDiff[4]) );
  AOI22_X1 U17 ( .A1(N12), .A2(n70), .B1(diff[4]), .B2(N6), .ZN(n45) );
  INV_X1 U18 ( .A(n46), .ZN(abDiff[3]) );
  AOI22_X1 U19 ( .A1(N11), .A2(n70), .B1(diff[3]), .B2(N6), .ZN(n46) );
  INV_X1 U20 ( .A(n47), .ZN(abDiff[2]) );
  AOI22_X1 U21 ( .A1(N10), .A2(n70), .B1(diff[2]), .B2(N6), .ZN(n47) );
  INV_X1 U22 ( .A(n48), .ZN(abDiff[1]) );
  AOI22_X1 U23 ( .A1(diff[1]), .A2(N6), .B1(N9), .B2(n70), .ZN(n48) );
  INV_X1 U24 ( .A(n49), .ZN(abDiff[15]) );
  AOI22_X1 U25 ( .A1(N23), .A2(n70), .B1(n73), .B2(n71), .ZN(n49) );
  INV_X1 U26 ( .A(n50), .ZN(abDiff[14]) );
  INV_X1 U28 ( .A(n51), .ZN(abDiff[13]) );
  AOI22_X1 U29 ( .A1(N21), .A2(n70), .B1(n75), .B2(n71), .ZN(n51) );
  INV_X1 U30 ( .A(n52), .ZN(abDiff[12]) );
  AOI22_X1 U31 ( .A1(N20), .A2(n70), .B1(diff[12]), .B2(N6), .ZN(n52) );
  INV_X1 U32 ( .A(n53), .ZN(abDiff[11]) );
  AOI22_X1 U33 ( .A1(N19), .A2(n70), .B1(diff[11]), .B2(N6), .ZN(n53) );
  INV_X1 U34 ( .A(n54), .ZN(abDiff[10]) );
  AOI22_X1 U35 ( .A1(N18), .A2(n70), .B1(diff[10]), .B2(N6), .ZN(n54) );
  INV_X1 U36 ( .A(n55), .ZN(abDiff[0]) );
  AOI22_X1 U37 ( .A1(diff[0]), .A2(N6), .B1(N8), .B2(n70), .ZN(n55) );
  assignment1_DW01_sub_0 sub_53 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({n73, n73, 
        diff}), .CI(1'b0), .DIFF({N23, N22, N21, N20, N19, N18, N17, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8}) );
  HA_X1 \mult_46/U17  ( .A(RA[5]), .B(RA[3]), .CO(\mult_46/n20 ), .S(
        \mult_46/n21 ) );
  FA_X1 \mult_46/U16  ( .A(\M1[1] ), .B(RA[6]), .CI(RA[4]), .CO(\mult_46/n18 ), 
        .S(\mult_46/n19 ) );
  FA_X1 \mult_46/U15  ( .A(RA[2]), .B(RA[7]), .CI(RA[5]), .CO(\mult_46/n16 ), 
        .S(\mult_46/n17 ) );
  HA_X1 \mult_46/U14  ( .A(RA[6]), .B(RA[3]), .CO(\mult_46/n14 ), .S(
        \mult_46/n15 ) );
  HA_X1 \mult_46/U13  ( .A(RA[7]), .B(RA[4]), .CO(\mult_46/n12 ), .S(
        \mult_46/n13 ) );
  HA_X1 \mult_46/U12  ( .A(\M1[0] ), .B(RA[2]), .CO(\mult_46/n11 ), .S(\M1[2] ) );
  FA_X1 \mult_46/U11  ( .A(RA[3]), .B(\M1[1] ), .CI(\mult_46/n11 ), .CO(
        \mult_46/n10 ), .S(\M1[3] ) );
  FA_X1 \mult_46/U9  ( .A(\mult_46/n21 ), .B(\M1[0] ), .CI(\mult_46/n9 ), .CO(
        \mult_46/n8 ), .S(\M1[5] ) );
  FA_X1 \mult_46/U8  ( .A(\mult_46/n19 ), .B(\mult_46/n20 ), .CI(\mult_46/n8 ), 
        .CO(\mult_46/n7 ), .S(\M1[6] ) );
  FA_X1 \mult_46/U7  ( .A(\mult_46/n17 ), .B(\mult_46/n18 ), .CI(\mult_46/n7 ), 
        .CO(\mult_46/n6 ), .S(\M1[7] ) );
  FA_X1 \mult_46/U4  ( .A(\mult_46/n12 ), .B(RA[5]), .CI(\mult_46/n4 ), .CO(
        \mult_46/n3 ), .S(\M1[10] ) );
  HA_X1 \mult_46/U3  ( .A(RA[6]), .B(\mult_46/n3 ), .CO(\mult_46/n2 ), .S(
        \M1[11] ) );
  assignment1_DW01_add_1 add_57 ( .A(abDiff), .B(z), .SUM(sum), .CI(1'b0) );
  assignment1_DW_mult_uns_0 mult_48 ( .a({1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1}), 
        .b(RB), .product({\M2[13] , \M2[12] , \M2[11] , \M2[10] , \M2[9] , 
        \M2[8] , \M2[7] , \M2[6] , \M2[5] , \M2[4] , \M2[3] , \M2[2] , \M2[1] , 
        \M2[0] }) );
  assignment1_DW01_sub_1 sub_51 ( .A({1'b0, \M1[13] , \M1[12] , \M1[11] , 
        \M1[10] , \M1[9] , \M1[8] , \M1[7] , \M1[6] , \M1[5] , \M1[4] , 
        \M1[3] , \M1[2] , \M1[1] , \M1[0] }), .B({1'b0, \M2[13] , \M2[12] , 
        \M2[11] , \M2[10] , \M2[9] , \M2[8] , \M2[7] , \M2[6] , \M2[5] , 
        \M2[4] , \M2[3] , \M2[2] , \M2[1] , \M2[0] }), .DIFF({diff_15, diff}), 
        .CI(1'b0) );
  DFFR_X1 \RA_reg[7]  ( .D(a[7]), .CK(clk), .RN(n38), .Q(RA[7]), .QN(n72) );
  DFFR_X2 \RZ_reg[15]  ( .D(sum[15]), .CK(clk), .RN(n38), .Q(z[15]) );
  DFFR_X1 \RA_reg[2]  ( .D(a[2]), .CK(clk), .RN(n38), .Q(RA[2]) );
  INV_X2 U38 ( .A(reset), .ZN(n38) );
  XOR2_X1 U39 ( .A(\mult_46/n16 ), .B(\mult_46/n15 ), .Z(n56) );
  XOR2_X1 U40 ( .A(n56), .B(\mult_46/n6 ), .Z(\M1[8] ) );
  NAND2_X1 U41 ( .A1(\mult_46/n16 ), .A2(\mult_46/n15 ), .ZN(n57) );
  NAND2_X1 U42 ( .A1(\mult_46/n16 ), .A2(\mult_46/n6 ), .ZN(n58) );
  NAND2_X1 U43 ( .A1(\mult_46/n15 ), .A2(\mult_46/n6 ), .ZN(n59) );
  NAND3_X1 U44 ( .A1(n57), .A2(n58), .A3(n59), .ZN(\mult_46/n5 ) );
  XOR2_X1 U45 ( .A(\mult_46/n13 ), .B(\mult_46/n14 ), .Z(n60) );
  XOR2_X1 U46 ( .A(n60), .B(\mult_46/n5 ), .Z(\M1[9] ) );
  NAND2_X1 U47 ( .A1(\mult_46/n13 ), .A2(\mult_46/n14 ), .ZN(n61) );
  NAND2_X1 U48 ( .A1(\mult_46/n13 ), .A2(\mult_46/n5 ), .ZN(n62) );
  NAND2_X1 U49 ( .A1(\mult_46/n14 ), .A2(\mult_46/n5 ), .ZN(n63) );
  NAND3_X1 U50 ( .A1(n61), .A2(n62), .A3(n63), .ZN(\mult_46/n4 ) );
  XOR2_X1 U51 ( .A(RA[2]), .B(RA[4]), .Z(n64) );
  XOR2_X1 U52 ( .A(\mult_46/n10 ), .B(n64), .Z(\M1[4] ) );
  NAND2_X1 U53 ( .A1(\mult_46/n10 ), .A2(RA[2]), .ZN(n65) );
  NAND2_X1 U54 ( .A1(\mult_46/n10 ), .A2(RA[4]), .ZN(n66) );
  NAND2_X1 U55 ( .A1(RA[2]), .A2(RA[4]), .ZN(n67) );
  NAND3_X1 U56 ( .A1(n65), .A2(n67), .A3(n66), .ZN(\mult_46/n9 ) );
  CLKBUF_X3 U57 ( .A(diff_15), .Z(n70) );
  INV_X1 U58 ( .A(n73), .ZN(n71) );
  INV_X2 U59 ( .A(diff_15), .ZN(N6) );
  BUF_X2 U60 ( .A(diff_15), .Z(n73) );
  XNOR2_X2 U61 ( .A(n72), .B(\mult_46/n2 ), .ZN(\M1[12] ) );
  INV_X1 U62 ( .A(n74), .ZN(\M1[13] ) );
  NAND2_X1 U63 ( .A1(RA[7]), .A2(\mult_46/n2 ), .ZN(n74) );
  CLKBUF_X1 U64 ( .A(diff[13]), .Z(n75) );
  NAND2_X1 U65 ( .A1(N22), .A2(n70), .ZN(n76) );
  NAND2_X1 U66 ( .A1(n73), .A2(n71), .ZN(n77) );
  AND2_X2 U67 ( .A1(n76), .A2(n77), .ZN(n50) );
endmodule

