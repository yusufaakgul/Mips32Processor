module address_jump(PC,INST,O);

input [31:0] PC,INST;
output [31:0] O;

buf buf_1(O[31],PC[31]),
	 buf_2(O[30],PC[30]),
	 buf_3(O[29],PC[29]),
	 buf_4(O[28],PC[28]),
	 buf_4_2(O[27],PC[27]),
	 buf_4_3(O[26],PC[26]), 
	 buf_5(O[25],INST[25]),
	 buf_6(O[24],INST[24]),
	 buf_7(O[23],INST[23]),
	 buf_8(O[22],INST[22]),
	 buf_9(O[21],INST[21]),
	 buf_10(O[20],INST[20]),
	 buf_11(O[19],INST[19]),
	 buf_12(O[18],INST[18]),
	 buf_13(O[17],INST[17]),
	 buf_14(O[16],INST[16]),
	 buf_15(O[15],INST[15]),
	 buf_16(O[14],INST[14]),
	 buf_17(O[13],INST[13]),
	 buf_18(O[12],INST[12]),
	 buf_19(O[11],INST[11]),
	 buf_20(O[10],INST[10]),
	 buf_21(O[9],INST[9]),
	 buf_22(O[8],INST[8]),
	 buf_23(O[7],INST[7]),
	 buf_24(O[6],INST[6]),
	 buf_25(O[5],INST[5]),
	 buf_26(O[4],INST[4]),
	 buf_27(O[3],INST[3]),
	 buf_28(O[2],INST[2]),
	 buf_29(O[1],INST[1]),
	 buf_30(O[0],INST[0]);

endmodule