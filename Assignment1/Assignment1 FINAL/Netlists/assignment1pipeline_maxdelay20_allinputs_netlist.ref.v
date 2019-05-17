
module assignment1pip_DW01_sub_2 ( A, B, DIFF, CI, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, \B[0] ;
  assign DIFF[0] = \B[0] ;
  assign \B[0]  = B[0];

  BUF_X32 U1 ( .A(n24), .Z(n1) );
  XOR2_X2 U2 ( .A(n3), .B(B[15]), .Z(DIFF[15]) );
  XOR2_X2 U3 ( .A(n7), .B(B[14]), .Z(DIFF[14]) );
  NAND2_X4 U4 ( .A1(n4), .A2(n1), .ZN(n3) );
  NOR2_X4 U5 ( .A1(n2), .A2(n5), .ZN(n4) );
  NAND2_X4 U6 ( .A1(n10), .A2(n6), .ZN(n5) );
  INV_X4 U7 ( .A(B[14]), .ZN(n6) );
  XOR2_X2 U8 ( .A(n11), .B(B[13]), .Z(DIFF[13]) );
  NAND2_X4 U9 ( .A1(n8), .A2(n1), .ZN(n7) );
  NOR2_X4 U10 ( .A1(n2), .A2(n9), .ZN(n8) );
  INV_X4 U11 ( .A(n10), .ZN(n9) );
  NOR2_X4 U12 ( .A1(B[12]), .A2(B[13]), .ZN(n10) );
  XOR2_X2 U13 ( .A(n13), .B(B[12]), .Z(DIFF[12]) );
  NAND2_X4 U14 ( .A1(n12), .A2(n1), .ZN(n11) );
  NOR2_X4 U15 ( .A1(n2), .A2(B[12]), .ZN(n12) );
  XOR2_X2 U16 ( .A(n16), .B(B[11]), .Z(DIFF[11]) );
  NAND2_X4 U17 ( .A1(n1), .A2(n14), .ZN(n13) );
  INV_X4 U18 ( .A(n2), .ZN(n14) );
  NAND2_X4 U19 ( .A1(n21), .A2(n15), .ZN(n2) );
  NOR2_X4 U20 ( .A1(B[10]), .A2(B[11]), .ZN(n15) );
  XOR2_X2 U21 ( .A(n18), .B(B[10]), .Z(DIFF[10]) );
  NAND2_X4 U22 ( .A1(n1), .A2(n17), .ZN(n16) );
  NOR2_X4 U23 ( .A1(n20), .A2(B[10]), .ZN(n17) );
  XOR2_X2 U24 ( .A(n22), .B(B[9]), .Z(DIFF[9]) );
  NAND2_X4 U25 ( .A1(n1), .A2(n19), .ZN(n18) );
  INV_X4 U26 ( .A(n20), .ZN(n19) );
  INV_X4 U27 ( .A(n21), .ZN(n20) );
  NOR2_X4 U28 ( .A1(B[8]), .A2(B[9]), .ZN(n21) );
  XNOR2_X2 U29 ( .A(n1), .B(B[8]), .ZN(DIFF[8]) );
  NAND2_X4 U30 ( .A1(n1), .A2(n23), .ZN(n22) );
  INV_X4 U31 ( .A(B[8]), .ZN(n23) );
  XOR2_X2 U32 ( .A(n27), .B(B[7]), .Z(DIFF[7]) );
  NOR2_X4 U33 ( .A1(n25), .A2(n36), .ZN(n24) );
  NAND2_X4 U34 ( .A1(n32), .A2(n26), .ZN(n25) );
  NOR2_X4 U35 ( .A1(B[6]), .A2(B[7]), .ZN(n26) );
  XOR2_X2 U36 ( .A(n29), .B(B[6]), .Z(DIFF[6]) );
  NAND2_X4 U37 ( .A1(n28), .A2(n35), .ZN(n27) );
  NOR2_X4 U38 ( .A1(n31), .A2(B[6]), .ZN(n28) );
  XOR2_X2 U39 ( .A(n33), .B(B[5]), .Z(DIFF[5]) );
  NAND2_X4 U40 ( .A1(n35), .A2(n30), .ZN(n29) );
  INV_X4 U41 ( .A(n31), .ZN(n30) );
  INV_X4 U42 ( .A(n32), .ZN(n31) );
  NOR2_X4 U43 ( .A1(B[4]), .A2(B[5]), .ZN(n32) );
  XNOR2_X2 U44 ( .A(n35), .B(B[4]), .ZN(DIFF[4]) );
  NAND2_X4 U45 ( .A1(n35), .A2(n34), .ZN(n33) );
  INV_X4 U46 ( .A(B[4]), .ZN(n34) );
  INV_X4 U48 ( .A(n36), .ZN(n35) );
  NAND2_X4 U49 ( .A1(n37), .A2(n40), .ZN(n36) );
  NOR2_X4 U50 ( .A1(B[2]), .A2(B[3]), .ZN(n37) );
  XOR2_X2 U51 ( .A(n39), .B(B[2]), .Z(DIFF[2]) );
  NOR2_X4 U52 ( .A1(n39), .A2(B[2]), .ZN(n38) );
  INV_X4 U54 ( .A(n40), .ZN(n39) );
  NOR2_X4 U55 ( .A1(B[1]), .A2(\B[0] ), .ZN(n40) );
  XNOR2_X1 U59 ( .A(n38), .B(B[3]), .ZN(DIFF[3]) );
  XOR2_X1 U60 ( .A(B[1]), .B(\B[0] ), .Z(DIFF[1]) );
endmodule


module assignment1pip_DW01_add_1 ( A, B, SUM, CI, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n19, n20, n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n92, n93, n94, n95, n96, n97, n98, n99, n100
;

  XOR2_X2 U2 ( .A(A[15]), .B(B[15]), .Z(n1) );
  FA_X1 U3 ( .A(A[14]), .B(B[14]), .CI(n7), .CO(n6), .S(SUM[14]) );
  FA_X1 U4 ( .A(A[13]), .B(B[13]), .CI(n8), .CO(n7), .S(SUM[13]) );
  FA_X1 U5 ( .A(A[12]), .B(B[12]), .CI(n9), .CO(n8), .S(SUM[12]) );
  FA_X1 U6 ( .A(A[11]), .B(B[11]), .CI(n10), .CO(n9), .S(SUM[11]) );
  FA_X1 U7 ( .A(A[10]), .B(B[10]), .CI(n11), .CO(n10), .S(SUM[10]) );
  FA_X1 U8 ( .A(A[9]), .B(B[9]), .CI(n12), .CO(n11), .S(SUM[9]) );
  FA_X1 U9 ( .A(A[8]), .B(B[8]), .CI(n13), .CO(n12), .S(SUM[8]) );
  FA_X1 U11 ( .A(A[6]), .B(B[6]), .CI(n15), .CO(n14), .S(SUM[6]) );
  FA_X1 U12 ( .A(A[5]), .B(B[5]), .CI(n16), .CO(n15), .S(SUM[5]) );
  FA_X1 U13 ( .A(A[4]), .B(B[4]), .CI(n33), .CO(n16), .S(SUM[4]) );
  NAND2_X4 U19 ( .A1(n34), .A2(n21), .ZN(n2) );
  XOR2_X2 U23 ( .A(n3), .B(n25), .Z(SUM[2]) );
  NAND2_X4 U25 ( .A1(n35), .A2(n24), .ZN(n3) );
  NOR2_X4 U27 ( .A1(A[2]), .A2(B[2]), .ZN(n23) );
  NAND2_X4 U28 ( .A1(A[2]), .A2(B[2]), .ZN(n24) );
  XNOR2_X2 U29 ( .A(n4), .B(n30), .ZN(SUM[1]) );
  AOI21_X4 U30 ( .B1(n36), .B2(n30), .A(n27), .ZN(n25) );
  NAND2_X4 U33 ( .A1(n36), .A2(n29), .ZN(n4) );
  NOR2_X4 U35 ( .A1(A[1]), .A2(B[1]), .ZN(n28) );
  NAND2_X4 U36 ( .A1(A[1]), .A2(B[1]), .ZN(n29) );
  NAND2_X4 U39 ( .A1(n37), .A2(n32), .ZN(n5) );
  NOR2_X4 U41 ( .A1(A[0]), .A2(B[0]), .ZN(n31) );
  NAND2_X4 U42 ( .A1(A[0]), .A2(B[0]), .ZN(n32) );
  XOR2_X1 U46 ( .A(A[7]), .B(B[7]), .Z(n92) );
  XOR2_X1 U47 ( .A(n14), .B(n92), .Z(SUM[7]) );
  NAND2_X1 U48 ( .A1(n14), .A2(A[7]), .ZN(n93) );
  NAND2_X1 U49 ( .A1(n14), .A2(B[7]), .ZN(n94) );
  NAND2_X1 U50 ( .A1(A[7]), .A2(B[7]), .ZN(n95) );
  NAND3_X1 U51 ( .A1(n93), .A2(n95), .A3(n94), .ZN(n13) );
  NAND2_X1 U52 ( .A1(n6), .A2(n100), .ZN(n98) );
  NAND2_X1 U53 ( .A1(n96), .A2(n97), .ZN(n99) );
  NAND2_X1 U54 ( .A1(n98), .A2(n99), .ZN(SUM[15]) );
  INV_X1 U55 ( .A(n6), .ZN(n96) );
  INV_X1 U56 ( .A(n100), .ZN(n97) );
  INV_X2 U57 ( .A(n1), .ZN(n100) );
  INV_X1 U58 ( .A(n20), .ZN(n34) );
  INV_X1 U59 ( .A(n17), .ZN(n33) );
  AOI21_X2 U60 ( .B1(n22), .B2(n34), .A(n19), .ZN(n17) );
  XNOR2_X1 U61 ( .A(n2), .B(n22), .ZN(SUM[3]) );
  OAI21_X1 U62 ( .B1(n25), .B2(n23), .A(n24), .ZN(n22) );
  NAND2_X2 U63 ( .A1(A[3]), .A2(B[3]), .ZN(n21) );
  NOR2_X2 U64 ( .A1(A[3]), .A2(B[3]), .ZN(n20) );
  INV_X2 U65 ( .A(n31), .ZN(n37) );
  INV_X2 U66 ( .A(n23), .ZN(n35) );
  INV_X2 U67 ( .A(n32), .ZN(n30) );
  INV_X2 U68 ( .A(n29), .ZN(n27) );
  INV_X2 U69 ( .A(n28), .ZN(n36) );
  INV_X2 U70 ( .A(n21), .ZN(n19) );
  INV_X2 U71 ( .A(n5), .ZN(SUM[0]) );
endmodule


module assignment1pip_DW_mult_uns_1 ( a, b, product );
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


module assignment1pip_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [14:0] A;
  input [14:0] B;
  output [14:0] DIFF;
  input CI;
  output CO;
  wire   \carry[14] , \carry[13] , \carry[12] , \carry[11] , \carry[10] ,
         \carry[9] , \carry[8] , \carry[7] , \carry[6] , \carry[5] ,
         \carry[4] , \carry[3] , \carry[2] , \carry[1] , \B_not[13] ,
         \B_not[12] , \B_not[11] , \B_not[10] , \B_not[9] , \B_not[8] ,
         \B_not[7] , \B_not[6] , \B_not[5] , \B_not[4] , \B_not[3] ,
         \B_not[2] , \B_not[1] , \B_not[0] ;

  FA_X1 U2_13 ( .A(A[13]), .B(\B_not[13] ), .CI(\carry[13] ), .CO(\carry[14] ), 
        .S(DIFF[13]) );
  FA_X1 U2_12 ( .A(A[12]), .B(\B_not[12] ), .CI(\carry[12] ), .CO(\carry[13] ), 
        .S(DIFF[12]) );
  FA_X1 U2_11 ( .A(A[11]), .B(\B_not[11] ), .CI(\carry[11] ), .CO(\carry[12] ), 
        .S(DIFF[11]) );
  FA_X1 U2_10 ( .A(A[10]), .B(\B_not[10] ), .CI(\carry[10] ), .CO(\carry[11] ), 
        .S(DIFF[10]) );
  FA_X1 U2_9 ( .A(A[9]), .B(\B_not[9] ), .CI(\carry[9] ), .CO(\carry[10] ), 
        .S(DIFF[9]) );
  FA_X1 U2_8 ( .A(A[8]), .B(\B_not[8] ), .CI(\carry[8] ), .CO(\carry[9] ), .S(
        DIFF[8]) );
  FA_X1 U2_7 ( .A(A[7]), .B(\B_not[7] ), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        DIFF[7]) );
  FA_X1 U2_6 ( .A(A[6]), .B(\B_not[6] ), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        DIFF[6]) );
  FA_X1 U2_5 ( .A(A[5]), .B(\B_not[5] ), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        DIFF[5]) );
  FA_X1 U2_4 ( .A(A[4]), .B(\B_not[4] ), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        DIFF[4]) );
  FA_X1 U2_3 ( .A(A[3]), .B(\B_not[3] ), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        DIFF[3]) );
  FA_X1 U2_2 ( .A(A[2]), .B(\B_not[2] ), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        DIFF[2]) );
  FA_X1 U2_1 ( .A(A[1]), .B(\B_not[1] ), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        DIFF[1]) );
  OR2_X1 U1 ( .A1(\B_not[0] ), .A2(A[0]), .ZN(\carry[1] ) );
  XNOR2_X1 U2 ( .A(A[0]), .B(\B_not[0] ), .ZN(DIFF[0]) );
  INV_X1 U3 ( .A(\carry[14] ), .ZN(DIFF[14]) );
  INV_X1 U4 ( .A(B[9]), .ZN(\B_not[9] ) );
  INV_X1 U5 ( .A(B[8]), .ZN(\B_not[8] ) );
  INV_X1 U6 ( .A(B[7]), .ZN(\B_not[7] ) );
  INV_X1 U7 ( .A(B[6]), .ZN(\B_not[6] ) );
  INV_X1 U8 ( .A(B[5]), .ZN(\B_not[5] ) );
  INV_X1 U9 ( .A(B[4]), .ZN(\B_not[4] ) );
  INV_X1 U10 ( .A(B[3]), .ZN(\B_not[3] ) );
  INV_X1 U11 ( .A(B[2]), .ZN(\B_not[2] ) );
  INV_X1 U12 ( .A(B[1]), .ZN(\B_not[1] ) );
  INV_X1 U13 ( .A(B[13]), .ZN(\B_not[13] ) );
  INV_X1 U14 ( .A(B[12]), .ZN(\B_not[12] ) );
  INV_X1 U15 ( .A(B[11]), .ZN(\B_not[11] ) );
  INV_X1 U16 ( .A(B[10]), .ZN(\B_not[10] ) );
  INV_X1 U17 ( .A(B[0]), .ZN(\B_not[0] ) );
endmodule


module assignment1pip ( a, b, clk, reset, z );
  input [7:0] a;
  input [7:0] b;
  output [15:0] z;
  input clk, reset;
  wire   diff_15, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19,
         N20, N21, N22, N23, n53, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, \M2[9] , \M2[8] , \M2[7] , \M2[6] ,
         \M2[5] , \M2[4] , \M2[3] , \M2[2] , \M2[1] , \M2[13] , \M2[12] ,
         \M2[11] , \M2[10] , \M2[0] , \M1[9] , \M1[8] , \M1[7] , \M1[6] ,
         \M1[5] , \M1[4] , \M1[3] , \M1[2] , \M1[1] , \M1[13] , \M1[12] ,
         \M1[11] , \M1[10] , \M1[0] , \mult_46/n21 , \mult_46/n20 ,
         \mult_46/n19 , \mult_46/n18 , \mult_46/n17 , \mult_46/n16 ,
         \mult_46/n15 , \mult_46/n14 , \mult_46/n13 , \mult_46/n12 ,
         \mult_46/n11 , \mult_46/n10 , \mult_46/n9 , \mult_46/n8 ,
         \mult_46/n7 , \mult_46/n6 , \mult_46/n5 , \mult_46/n4 , \mult_46/n3 ,
         \mult_46/n2 , n71, n72, n73, n74;
  wire   [7:0] RA;
  wire   [7:0] RB;
  wire   [13:0] diff;
  wire   [15:0] RegDiff;
  wire   [15:0] abDiff;
  wire   [15:0] sum;

  DFFR_X1 \RA_reg[7]  ( .D(a[7]), .CK(clk), .RN(n71), .Q(RA[7]) );
  DFFR_X1 \RA_reg[6]  ( .D(a[6]), .CK(clk), .RN(n71), .Q(RA[6]) );
  DFFR_X1 \RA_reg[5]  ( .D(a[5]), .CK(clk), .RN(n53), .Q(RA[5]) );
  DFFR_X1 \RA_reg[4]  ( .D(a[4]), .CK(clk), .RN(n71), .Q(RA[4]) );
  DFFR_X1 \RA_reg[3]  ( .D(a[3]), .CK(clk), .RN(n71), .Q(RA[3]) );
  DFFR_X1 \RA_reg[2]  ( .D(a[2]), .CK(clk), .RN(n71), .Q(RA[2]) );
  DFFR_X1 \RA_reg[1]  ( .D(a[1]), .CK(clk), .RN(n71), .Q(\M1[1] ) );
  DFFR_X1 \RA_reg[0]  ( .D(a[0]), .CK(clk), .RN(n71), .Q(\M1[0] ) );
  DFFR_X1 \RB_reg[7]  ( .D(b[7]), .CK(clk), .RN(n71), .Q(RB[7]) );
  DFFR_X1 \RB_reg[6]  ( .D(b[6]), .CK(clk), .RN(n71), .Q(RB[6]) );
  DFFR_X1 \RB_reg[5]  ( .D(b[5]), .CK(clk), .RN(n71), .Q(RB[5]) );
  DFFR_X1 \RB_reg[4]  ( .D(b[4]), .CK(clk), .RN(n71), .Q(RB[4]) );
  DFFR_X1 \RB_reg[3]  ( .D(b[3]), .CK(clk), .RN(n71), .Q(RB[3]) );
  DFFR_X1 \RB_reg[2]  ( .D(b[2]), .CK(clk), .RN(n71), .Q(RB[2]) );
  DFFR_X1 \RB_reg[1]  ( .D(b[1]), .CK(clk), .RN(n71), .Q(RB[1]) );
  DFFR_X1 \RB_reg[0]  ( .D(b[0]), .CK(clk), .RN(n71), .Q(RB[0]) );
  DFFR_X1 \RegDiff_reg[15]  ( .D(diff_15), .CK(clk), .RN(n71), .Q(RegDiff[15]), 
        .QN(n56) );
  DFFR_X1 \RegDiff_reg[14]  ( .D(diff_15), .CK(clk), .RN(n53), .Q(RegDiff[14])
         );
  DFFR_X1 \RegDiff_reg[13]  ( .D(diff[13]), .CK(clk), .RN(n71), .Q(RegDiff[13]) );
  DFFR_X1 \RegDiff_reg[12]  ( .D(diff[12]), .CK(clk), .RN(n71), .Q(RegDiff[12]) );
  DFFR_X1 \RegDiff_reg[11]  ( .D(diff[11]), .CK(clk), .RN(n71), .Q(RegDiff[11]) );
  DFFR_X1 \RegDiff_reg[10]  ( .D(diff[10]), .CK(clk), .RN(n71), .Q(RegDiff[10]) );
  DFFR_X1 \RegDiff_reg[9]  ( .D(diff[9]), .CK(clk), .RN(n71), .Q(RegDiff[9])
         );
  DFFR_X1 \RegDiff_reg[8]  ( .D(diff[8]), .CK(clk), .RN(n71), .Q(RegDiff[8])
         );
  DFFR_X1 \RegDiff_reg[7]  ( .D(diff[7]), .CK(clk), .RN(n53), .Q(RegDiff[7])
         );
  DFFR_X1 \RegDiff_reg[6]  ( .D(diff[6]), .CK(clk), .RN(n53), .Q(RegDiff[6])
         );
  DFFR_X1 \RegDiff_reg[5]  ( .D(diff[5]), .CK(clk), .RN(n53), .Q(RegDiff[5])
         );
  DFFR_X1 \RegDiff_reg[4]  ( .D(diff[4]), .CK(clk), .RN(n53), .Q(RegDiff[4])
         );
  DFFR_X1 \RegDiff_reg[2]  ( .D(diff[2]), .CK(clk), .RN(n53), .Q(RegDiff[2])
         );
  DFFR_X1 \RegDiff_reg[1]  ( .D(diff[1]), .CK(clk), .RN(n53), .Q(RegDiff[1])
         );
  DFFR_X1 \RegDiff_reg[0]  ( .D(diff[0]), .CK(clk), .RN(n53), .Q(RegDiff[0])
         );
  DFFR_X1 \RZ_reg[0]  ( .D(sum[0]), .CK(clk), .RN(n71), .Q(z[0]) );
  DFFR_X1 \RZ_reg[1]  ( .D(sum[1]), .CK(clk), .RN(n53), .Q(z[1]) );
  DFFR_X1 \RZ_reg[2]  ( .D(sum[2]), .CK(clk), .RN(n53), .Q(z[2]) );
  DFFR_X1 \RZ_reg[3]  ( .D(sum[3]), .CK(clk), .RN(n53), .Q(z[3]) );
  DFFR_X1 \RZ_reg[4]  ( .D(sum[4]), .CK(clk), .RN(n53), .Q(z[4]) );
  DFFR_X1 \RZ_reg[5]  ( .D(sum[5]), .CK(clk), .RN(n53), .Q(z[5]) );
  DFFR_X1 \RZ_reg[6]  ( .D(sum[6]), .CK(clk), .RN(n53), .Q(z[6]) );
  DFFR_X1 \RZ_reg[7]  ( .D(sum[7]), .CK(clk), .RN(n53), .Q(z[7]) );
  DFFR_X1 \RZ_reg[8]  ( .D(sum[8]), .CK(clk), .RN(n53), .Q(z[8]) );
  DFFR_X1 \RZ_reg[9]  ( .D(sum[9]), .CK(clk), .RN(n53), .Q(z[9]) );
  DFFR_X1 \RZ_reg[10]  ( .D(sum[10]), .CK(clk), .RN(n53), .Q(z[10]) );
  DFFR_X1 \RZ_reg[11]  ( .D(sum[11]), .CK(clk), .RN(n53), .Q(z[11]) );
  DFFR_X1 \RZ_reg[12]  ( .D(sum[12]), .CK(clk), .RN(n53), .Q(z[12]) );
  DFFR_X1 \RZ_reg[13]  ( .D(sum[13]), .CK(clk), .RN(n53), .Q(z[13]) );
  DFFR_X1 \RZ_reg[14]  ( .D(sum[14]), .CK(clk), .RN(n53), .Q(z[14]) );
  DFFR_X1 \RZ_reg[15]  ( .D(sum[15]), .CK(clk), .RN(n71), .Q(z[15]) );
  INV_X1 U4 ( .A(n55), .ZN(abDiff[9]) );
  AOI22_X1 U7 ( .A1(RegDiff[15]), .A2(N17), .B1(RegDiff[9]), .B2(n56), .ZN(n55) );
  INV_X1 U8 ( .A(n57), .ZN(abDiff[8]) );
  AOI22_X1 U9 ( .A1(N16), .A2(RegDiff[15]), .B1(RegDiff[8]), .B2(n56), .ZN(n57) );
  INV_X1 U10 ( .A(n58), .ZN(abDiff[7]) );
  AOI22_X1 U11 ( .A1(N15), .A2(RegDiff[15]), .B1(RegDiff[7]), .B2(n56), .ZN(
        n58) );
  INV_X1 U12 ( .A(n59), .ZN(abDiff[6]) );
  AOI22_X1 U13 ( .A1(N14), .A2(RegDiff[15]), .B1(RegDiff[6]), .B2(n56), .ZN(
        n59) );
  INV_X1 U14 ( .A(n60), .ZN(abDiff[5]) );
  AOI22_X1 U15 ( .A1(N13), .A2(RegDiff[15]), .B1(RegDiff[5]), .B2(n56), .ZN(
        n60) );
  INV_X1 U16 ( .A(n61), .ZN(abDiff[4]) );
  AOI22_X1 U17 ( .A1(N12), .A2(RegDiff[15]), .B1(RegDiff[4]), .B2(n56), .ZN(
        n61) );
  INV_X1 U18 ( .A(n62), .ZN(abDiff[3]) );
  INV_X1 U20 ( .A(n63), .ZN(abDiff[2]) );
  AOI22_X1 U21 ( .A1(N10), .A2(RegDiff[15]), .B1(RegDiff[2]), .B2(n56), .ZN(
        n63) );
  INV_X1 U22 ( .A(n64), .ZN(abDiff[1]) );
  AOI22_X1 U23 ( .A1(N9), .A2(RegDiff[15]), .B1(RegDiff[1]), .B2(n56), .ZN(n64) );
  AND2_X1 U24 ( .A1(N23), .A2(RegDiff[15]), .ZN(abDiff[15]) );
  INV_X1 U25 ( .A(n65), .ZN(abDiff[14]) );
  AOI22_X1 U26 ( .A1(N22), .A2(RegDiff[15]), .B1(RegDiff[14]), .B2(n56), .ZN(
        n65) );
  INV_X1 U27 ( .A(n66), .ZN(abDiff[13]) );
  AOI22_X1 U28 ( .A1(N21), .A2(RegDiff[15]), .B1(RegDiff[13]), .B2(n56), .ZN(
        n66) );
  INV_X1 U29 ( .A(n67), .ZN(abDiff[12]) );
  AOI22_X1 U30 ( .A1(N20), .A2(RegDiff[15]), .B1(RegDiff[12]), .B2(n56), .ZN(
        n67) );
  INV_X1 U31 ( .A(n68), .ZN(abDiff[11]) );
  AOI22_X1 U32 ( .A1(N19), .A2(RegDiff[15]), .B1(RegDiff[11]), .B2(n56), .ZN(
        n68) );
  INV_X1 U33 ( .A(n69), .ZN(abDiff[10]) );
  AOI22_X1 U34 ( .A1(N18), .A2(RegDiff[15]), .B1(RegDiff[10]), .B2(n56), .ZN(
        n69) );
  INV_X1 U35 ( .A(n70), .ZN(abDiff[0]) );
  AOI22_X1 U36 ( .A1(N8), .A2(RegDiff[15]), .B1(n74), .B2(n56), .ZN(n70) );
  assignment1pip_DW_mult_uns_1 mult_48 ( .a({1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 
        1'b1}), .b(RB), .product({\M2[13] , \M2[12] , \M2[11] , \M2[10] , 
        \M2[9] , \M2[8] , \M2[7] , \M2[6] , \M2[5] , \M2[4] , \M2[3] , \M2[2] , 
        \M2[1] , \M2[0] }) );
  assignment1pip_DW01_sub_1 sub_51 ( .A({1'b0, \M1[13] , \M1[12] , \M1[11] , 
        \M1[10] , \M1[9] , \M1[8] , \M1[7] , \M1[6] , \M1[5] , \M1[4] , 
        \M1[3] , \M1[2] , \M1[1] , \M1[0] }), .B({1'b0, \M2[13] , \M2[12] , 
        \M2[11] , \M2[10] , \M2[9] , \M2[8] , \M2[7] , \M2[6] , \M2[5] , 
        \M2[4] , \M2[3] , \M2[2] , \M2[1] , \M2[0] }), .CI(1'b0), .DIFF({
        diff_15, diff}) );
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
  FA_X1 \mult_46/U10  ( .A(RA[4]), .B(RA[2]), .CI(\mult_46/n10 ), .CO(
        \mult_46/n9 ), .S(\M1[4] ) );
  FA_X1 \mult_46/U9  ( .A(\mult_46/n21 ), .B(\M1[0] ), .CI(\mult_46/n9 ), .CO(
        \mult_46/n8 ), .S(\M1[5] ) );
  FA_X1 \mult_46/U8  ( .A(\mult_46/n19 ), .B(\mult_46/n20 ), .CI(\mult_46/n8 ), 
        .CO(\mult_46/n7 ), .S(\M1[6] ) );
  FA_X1 \mult_46/U7  ( .A(\mult_46/n17 ), .B(\mult_46/n18 ), .CI(\mult_46/n7 ), 
        .CO(\mult_46/n6 ), .S(\M1[7] ) );
  FA_X1 \mult_46/U6  ( .A(\mult_46/n16 ), .B(\mult_46/n15 ), .CI(\mult_46/n6 ), 
        .CO(\mult_46/n5 ), .S(\M1[8] ) );
  FA_X1 \mult_46/U5  ( .A(\mult_46/n13 ), .B(\mult_46/n14 ), .CI(\mult_46/n5 ), 
        .CO(\mult_46/n4 ), .S(\M1[9] ) );
  FA_X1 \mult_46/U4  ( .A(\mult_46/n12 ), .B(RA[5]), .CI(\mult_46/n4 ), .CO(
        \mult_46/n3 ), .S(\M1[10] ) );
  HA_X1 \mult_46/U3  ( .A(RA[6]), .B(\mult_46/n3 ), .CO(\mult_46/n2 ), .S(
        \M1[11] ) );
  HA_X1 \mult_46/U2  ( .A(RA[7]), .B(\mult_46/n2 ), .CO(\M1[13] ), .S(\M1[12] ) );
  assignment1pip_DW01_add_1 add_66 ( .A(abDiff), .B(z), .SUM(sum), .CI(1'b0)
         );
  assignment1pip_DW01_sub_2 sub_62 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B(
        RegDiff), .DIFF({N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, 
        N12, N11, N10, N9, N8}), .CI(1'b0) );
  DFFR_X2 \RegDiff_reg[3]  ( .D(diff[3]), .CK(clk), .RN(n53), .Q(RegDiff[3])
         );
  INV_X1 U37 ( .A(reset), .ZN(n71) );
  INV_X1 U38 ( .A(reset), .ZN(n53) );
  NAND2_X1 U39 ( .A1(N11), .A2(RegDiff[15]), .ZN(n72) );
  NAND2_X1 U40 ( .A1(RegDiff[3]), .A2(n56), .ZN(n73) );
  AND2_X2 U41 ( .A1(n72), .A2(n73), .ZN(n62) );
  CLKBUF_X1 U42 ( .A(RegDiff[0]), .Z(n74) );
endmodule

