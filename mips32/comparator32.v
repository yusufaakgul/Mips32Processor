module comparator32 (A,B,Gt,Eq,Lt);

input [31:0] A,B;
output Gt,Eq,Lt;

wire gto1,gto2,gto3,gto4,gto5,gto6,gto7,gto8,gto9,gto10,gto11,gto12,gto13,gto14,gto15,gto16,
	  gto17,gto18,gto19,gto20,gto21,gto22,gto23,gto24,gto25,gto26,gto27,gto28,gto29,gto30,gto31;

wire eqo1,eqo2,eqo3,eqo4,eqo5,eqo6,eqo7,eqo8,eqo9,eqo10,eqo11,eqo12,eqo13,eqo14,eqo15,eqo16,
	  eqo17,eqo18,eqo19,eqo20,eqo21,eqo22,eqo23,eqo24,eqo25,eqo26,eqo27,eqo28,eqo29,eqo30,eqo31;
	  
wire lto1,lto2,lto3,lto4,lto5,lto6,lto7,lto8,lto9,lto10,lto11,lto12,lto13,lto14,lto15,lto16,
	  lto17,lto18,lto19,lto20,lto21,lto22,lto23,lto24,lto25,lto26,lto27,lto28,lto29,lto30,lto31;

comparator1  com31(A[31],B[31],1'b0,1'b1,1'b0,gto1,eqo1,lto1),
				 com30(A[30],B[30],gto1,eqo1,lto1,gto2,eqo2,lto2),
				 com29(A[29],B[29],gto2,eqo2,lto2,gto3,eqo3,lto3),
				 com28(A[28],B[28],gto3,eqo3,lto3,gto4,eqo4,lto4),
				 com27(A[27],B[27],gto4,eqo4,lto4,gto5,eqo5,lto5),
				 com26(A[26],B[26],gto5,eqo5,lto5,gto6,eqo6,lto6),
				 com25(A[25],B[25],gto6,eqo6,lto6,gto7,eqo7,lto7),
				 com24(A[24],B[24],gto7,eqo7,lto7,gto8,eqo8,lto8),
				 com23(A[23],B[23],gto8,eqo8,lto8,gto9,eqo9,lto9),
				 com22(A[22],B[22],gto9,eqo9,lto9,gto10,eqo10,lto10),
				 com21(A[21],B[21],gto10,eqo10,lto10,gto11,eqo11,lto11),
				 com20(A[20],B[20],gto11,eqo11,lto11,gto12,eqo12,lto12),
				 com19(A[19],B[19],gto12,eqo12,lto12,gto13,eqo13,lto13),
				 com18(A[18],B[18],gto13,eqo13,lto13,gto14,eqo14,lto14),
				 com17(A[17],B[17],gto14,eqo14,lto14,gto15,eqo15,lto15),
				 com16(A[16],B[16],gto15,eqo15,lto15,gto16,eqo16,lto16),
				 com15(A[15],B[15],gto16,eqo16,lto16,gto17,eqo17,lto17),
				 com14(A[14],B[14],gto17,eqo17,lto17,gto18,eqo18,lto18),
				 com13(A[13],B[13],gto18,eqo18,lto18,gto19,eqo19,lto19),
				 com12(A[12],B[12],gto19,eqo19,lto19,gto20,eqo20,lto20),
				 com11(A[11],B[11],gto20,eqo20,lto20,gto21,eqo21,lto21),
				 com10(A[10],B[10],gto21,eqo21,lto21,gto22,eqo22,lto22),
				 com9(A[9],B[9],gto22,eqo22,lto22,gto23,eqo23,lto23),
				 com8(A[8],B[8],gto23,eqo23,lto23,gto24,eqo24,lto24),
				 com7(A[7],B[7],gto24,eqo24,lto24,gto25,eqo25,lto25),
				 com6(A[6],B[6],gto25,eqo25,lto25,gto26,eqo26,lto26),
				 com5(A[5],B[5],gto26,eqo26,lto26,gto27,eqo27,lto27),
				 com4(A[4],B[4],gto27,eqo27,lto27,gto28,eqo28,lto28),
				 com3(A[3],B[3],gto28,eqo28,lto28,gto29,eqo29,lto29),
				 com2(A[2],B[2],gto29,eqo29,lto29,gto30,eqo30,lto30),
				 com1(A[1],B[1],gto30,eqo30,lto30,gto31,eqo31,lto31),
				 com0(A[0],B[0],gto31,eqo31,lto31,Gt,Eq,Lt);




endmodule