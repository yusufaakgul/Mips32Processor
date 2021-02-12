module alu32 (A,B,S,Co,O,Ow,Zero);

input [31:0] A,B;
input [2:0] S;
output Co,Ow,Zero;
output [31:0] O;
wire ow1,ow2,ow3,ow4,ow5,ow6,ow7,ow8,ow9,ow10,ow11,ow12,ow13,ow14,ow15,ow16,ow17,ow18,ow19,ow20,ow21,
		ow22,ow23,ow24,ow25,ow26,ow27,ow28,ow29,ow30,ow31;
wire z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11,z12,z13,z14,z15,z16;
wire zs1,zs2,zs3,zs4,zs5,zs6,zs7,zs8;
wire zt1,zt2,zt3,zt4;
wire zf1,zf2,zf3;


alu1 o_0 (A[0],B[0],S[2:0],S[2],ow1,O[0]), 
	  o_1 (A[1],B[1],S[2:0],ow1,ow2,O[1]),
	  o_2 (A[2],B[2],S[2:0],ow2,ow3,O[2]),
	  o_3 (A[3],B[3],S[2:0],ow3,ow4,O[3]),
	  
	  o_4 (A[4],B[4],S[2:0],ow4,ow5,O[4]), 
	  o_5 (A[5],B[5],S[2:0],ow5,ow6,O[5]),
	  o_6 (A[6],B[6],S[2:0],ow6,ow7,O[6]),
	  o_7 (A[7],B[7],S[2:0],ow7,ow8,O[7]),
	  
	  o_8 (A[8],B[8],S[2:0],ow8,ow9,O[8]), 
	  o_9 (A[9],B[9],S[2:0],ow9,ow10,O[9]),
	  o_10 (A[10],B[10],S[2:0],ow10,ow11,O[10]),
	  o_11 (A[11],B[11],S[2:0],ow11,ow12,O[11]),
	  
	  o_12 (A[12],B[12],S[2:0],ow12,ow13,O[12]), 
	  o_13 (A[13],B[13],S[2:0],ow13,ow14,O[13]),
	  o_14 (A[14],B[14],S[2:0],ow14,ow15,O[14]),
	  o_15 (A[15],B[15],S[2:0],ow15,ow16,O[15]),
	  
	  o_16 (A[16],B[16],S[2:0],ow16,ow17,O[16]), 
	  o_17 (A[17],B[17],S[2:0],ow17,ow18,O[17]),
	  o_18 (A[18],B[18],S[2:0],ow18,ow19,O[18]),
	  o_19 (A[19],B[19],S[2:0],ow19,ow20,O[19]),
	  
	  o_20 (A[20],B[20],S[2:0],ow20,ow21,O[20]), 
	  o_21 (A[21],B[21],S[2:0],ow21,ow22,O[21]),
	  o_22 (A[22],B[22],S[2:0],ow22,ow23,O[22]),
	  o_23 (A[23],B[23],S[2:0],ow23,ow24,O[23]),
	  
	  o_24 (A[24],B[24],S[2:0],ow24,ow25,O[24]), 
	  o_25 (A[25],B[25],S[2:0],ow25,ow26,O[25]),
	  o_26 (A[26],B[26],S[2:0],ow26,ow27,O[26]),
	  o_27 (A[27],B[27],S[2:0],ow27,ow28,O[27]),
	  
	  o_28 (A[28],B[28],S[2:0],ow28,ow29,O[28]), 
	  o_29 (A[29],B[29],S[2:0],ow29,ow30,O[29]),
	  o_30 (A[30],B[30],S[2:0],ow30,ow31,O[30]),
	  o_31 (A[31],B[31],S[2:0],ow31,Co,O[31]);
	  
	  
	  xor ow_31 (Ow,Co,ow31); 
	  
	  or for_zero1 (z1,O[0],O[1]);
	  or for_zero2 (z2,O[2],O[3]);
	  or for_zero3(zs1,z1,z2);
	  
	  or for_zero4 (z3,O[4],O[5]);
	  or for_zero5 (z4,O[6],O[7]);
	  or for_zero6(zs2,z3,z4);
	  
	  or for_zero7(zt1,zs1,zs2);
	  
	  or for_zero8 (z5,O[8],O[9]);
	  or for_zero9 (z6,O[10],O[11]);
	  or for_zero10(zs3,z5,z6);
	  
	  
	  or for_zero11 (z7,O[12],O[13]);
	  or for_zero12 (z8,O[14],O[15]);
	  or for_zero13(zs4,z7,z8);
	  
	  or for_zero14(zt2,zs3,zs4);
	  
	  or for_zero15(zf1,zt1,zt2);
	  
	  or for_zero16 (z9,O[16],O[17]);
	  or for_zero17 (z10,O[18],O[19]);
	  or for_zero18 (zs5,z9,z10);
	  
	  or for_zero19 (z11,O[20],O[21]);
	  or for_zero20 (z12,O[22],O[23]);
	  or for_zero21(zs6,z11,z12);
	  
	  or for_zero22(zt3,zs5,zs6);
	  
	  or for_zero23 (z13,O[24],O[25]);
	  or for_zero24 (z14,O[26],O[27]);
	  or for_zero25(zs7,z12,z13);
	  
	  or for_zero26 (z15,O[28],O[29]);
	  or for_zero27 (z16,O[30],O[31]);
	  or for_zero28(zs8,z15,z16);
	  
	  or for_zero29(zt4,zs7,zs8);
	  
	  or for_zero30(zf2,zt3,zt4);
	  
	  
	  or for_zero31(zf3,zf1,zf2);
	  
	  not notz (Zero,zf3);
	  
	  
	  
		
		

endmodule