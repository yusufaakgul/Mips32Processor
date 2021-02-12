module main_control_unit (OP,RegDst,ALUSrc,MemtoReg,RegWrite,RegWrite2,MemRead,MemWrite,Branch,BranchN,Lui,Jump,JAL,ALUop);

input [5:0] OP;
output RegDst,ALUSrc,MemtoReg,RegWrite,RegWrite2,MemRead,MemWrite,Branch,BranchN,Lui,Jump,JAL;
output [1:0] ALUop;

wire nw0,nw1,nw2,nw3,nw4,nw5;
wire rw,lww,sww,beqw,bneqw,oriw,jw,jalw,luiw;

not not_0 (nw0,OP[0]),
	 not_1 (nw1,OP[1]),
	 not_2 (nw2,OP[2]),
	 not_3 (nw3,OP[3]),
	 not_4 (nw4,OP[4]),
	 not_5 (nw5,OP[5]);


and and_0 (rw,nw0,nw1,nw2,nw3,nw4,nw5),
	 and_1 (lww,OP[5],nw4,nw3,nw2,OP[1],OP[0]),
	 and_2 (sww,OP[5],nw4,OP[3],nw2,OP[1],OP[0]),
	 and_3 (beqw,nw5,nw4,nw3,OP[2],nw1,nw0),
	 and_4 (bneqw,nw5,nw4,nw3,OP[2],nw1,OP[0]),
	 and_5 (oriw,nw5,nw4,OP[3],OP[2],nw1,OP[0]),
	 and_6 (jw,nw5,nw4,nw3,nw2,OP[1],nw0),
	 and_7 (jalw,nw5,nw4,nw3,nw2,OP[1],OP[0]),
	 and_8 (luiw,nw5,nw4,OP[3],OP[2],OP[1],OP[0]);


buf buf_0 (RegDst,rw);

or or_0 (ALUSrc,lww,sww,oriw);

buf buf_1 (MemtoReg,lww);

or or_1 (RegWrite,rw,lww,oriw,jalw,luiw);

buf buf_2 (RegWrite2,rw);

buf buf_3 (MemRead,lww);

buf buf_4 (MemWrite,sww);

buf buf_5 (Branch,beqw);

buf buf_6 (BranchN,bneqw);

buf buf_7 (Lui,luiw);

buf buf_8 (Jump,jw);

buf buf_9 (JAL,jalw);


or or_2 (ALUop[1],rw,oriw),
	or_3 (ALUop[0],beqw,bneqw,oriw);




endmodule