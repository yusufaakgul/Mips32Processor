module shift_left2(A,O);


input [31:0] A;
output [31:0] O;

buf buf_1 (O[31],A[29]),
	 buf_2 (O[30],A[28]),
	 buf_3 (O[29],A[27]),
	 buf_4 (O[28],A[26]),
	 buf_5 (O[27],A[25]),
	 buf_6 (O[26],A[24]),
	 buf_7 (O[25],A[23]),
	 buf_8 (O[24],A[22]),
	 buf_9 (O[23],A[21]),
	 buf_10 (O[22],A[20]),
	 buf_11 (O[21],A[19]),
	 buf_12 (O[20],A[18]),
	 buf_13 (O[19],A[17]),
	 buf_14 (O[18],A[16]),
	 buf_15 (O[17],A[15]),
	 buf_16 (O[16],A[14]),
	 buf_17 (O[15],A[13]),
	 buf_18 (O[14],A[12]),
	 buf_19 (O[13],A[11]),
	 buf_20 (O[12],A[10]),
	 buf_21 (O[11],A[9]),
	 buf_22 (O[10],A[8]),
	 buf_23 (O[9],A[7]),
	 buf_24 (O[8],A[6]),
	 buf_25 (O[7],A[5]),
	 buf_26 (O[6],A[4]),
	 buf_27 (O[5],A[3]),
	 buf_28 (O[4],A[2]),
	 buf_29 (O[3],A[1]),
	 buf_30 (O[2],A[0]),
	 buf_31 (O[1],1'b0),
	 buf_32 (O[0],1'b0);


endmodule	



