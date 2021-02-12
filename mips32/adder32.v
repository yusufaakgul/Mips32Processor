module adder32 (A,B,O,Co);

input [31:0] A,B;
output [31:0] O;
output Co;

wire cow0,cow1,cow2,cow3,cow4,cow5,cow6,cow7,cow8,cow9,cow10,cow11,cow12,cow13,cow14,cow15,cow16,
	  cow17,cow18,cow19,cow20,cow21,cow22,cow23,cow24,cow25,cow26,cow27,cow28,cow29,cow30;


add1 add_0 (A[0],B[0],1'b0,O[0],cow0),
	  add_1 (A[1],B[1],cow0,O[1],cow1),
	  add_2 (A[2],B[2],cow1,O[2],cow2),
	  add_3 (A[3],B[3],cow2,O[3],cow3),
	  add_4 (A[4],B[4],cow3,O[4],cow4),
	  add_5 (A[5],B[5],cow4,O[5],cow5),
	  add_6 (A[6],B[6],cow5,O[6],cow6),
	  add_7 (A[7],B[7],cow6,O[7],cow7),
	  add_8 (A[8],B[8],cow7,O[8],cow8),
	  add_9 (A[9],B[9],cow8,O[9],cow9),
	  add_10 (A[10],B[10],cow9,O[10],cow10),
	  add_11 (A[11],B[11],cow10,O[11],cow11),
	  add_12 (A[12],B[12],cow11,O[12],cow12),
	  add_13 (A[13],B[13],cow12,O[13],cow13),
	  add_14 (A[14],B[14],cow13,O[14],cow14),
	  add_15 (A[15],B[15],cow14,O[15],cow15),
	  add_16 (A[16],B[16],cow15,O[16],cow16),
	  add_17 (A[17],B[17],cow16,O[17],cow17),
	  add_18 (A[18],B[18],cow17,O[18],cow18),
	  add_19 (A[19],B[19],cow18,O[19],cow19),
	  add_20 (A[20],B[20],cow19,O[20],cow20),
	  add_21 (A[21],B[21],cow20,O[21],cow21),
	  add_22 (A[22],B[22],cow21,O[22],cow22),
	  add_23 (A[23],B[23],cow22,O[23],cow23),
	  add_24 (A[24],B[24],cow23,O[24],cow24),
	  add_25 (A[25],B[25],cow24,O[25],cow25),
	  add_26 (A[26],B[26],cow25,O[26],cow26),
	  add_27 (A[27],B[27],cow26,O[27],cow27),
	  add_28 (A[28],B[28],cow27,O[28],cow28),
	  add_29 (A[29],B[29],cow28,O[29],cow29),
	  add_30 (A[30],B[30],cow29,O[30],cow30),
	  add_31 (A[31],B[31],cow30,O[31],Co);
	  
	  
	  
	  
	 
endmodule