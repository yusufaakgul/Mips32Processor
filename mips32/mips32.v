module mips32(clk);

input clk;

wire RegDst,ALUSrc,MemtoReg,RegWrite,RegWrite2,MemRead,MemWrite,Branch,BranchN,Lui,Jump,JAL;
wire RegWritef,RegWritef2;
wire [1:0] ALUop;
wire [2:0] ALUop2;
wire JR,not_jr,not_zero;
wire [31:0] instruction;
wire [31:0] r_mux3, r_mux4,a_mux1;
wire [4:0] r_mux1, r_mux2;
wire [31:0] m_mux1; 
wire [31:0] add1,add2; 
wire [31:0] zeroRightw;
wire zerow;
wire gt,eq,lt;
wire [31:0] c_out_select, sign_extendw;
wire [31:0] read_data1,read_data2,memory_out;
wire [31:0] r_alu,r_shift,r_bmux,r_jrmux1,r_jrmux2;
wire gar1,gar2,gar3,gar4;
wire [31:0] jumpw;
wire jumpor;
wire b_and1,b_and2,b_or1;
wire [31:0] pc_out;
reg [31:0]PC_in;

initial PC_in <=32'b0;

instruction_memory ins_mem(instruction,PC_in[11:0]);

main_control_unit m_main_control(instruction[31:26],RegDst,ALUSrc,MemtoReg,RegWrite,
											RegWrite2,MemRead,MemWrite,Branch,BranchN,Lui,Jump,JAL,ALUop);

alu_control m_alu_control (ALUop,instruction[5:0],ALUop2,JR);

zeroright16 zeroright_1 (instruction[15:0],zeroRightw);

mux5 mux_0 (instruction[20:16],instruction[25:21],RegDst,r_mux1);
mux5 mux_1 (r_mux1,5'b11111,JAL,r_mux2); //wr icin

adder32 pcadd (PC_in,32'b1,add1,gar4);

mux32 mux_2 (m_mux1,add1,JAL,r_mux3);
mux32 mux_3 (r_mux3,zeroRightw,Lui,r_mux4); // wd icin

comparator32_sign comparator_1 (m_mux1,32'b0,gt,eq,lt);
comparator_out_select c_select (gt,eq,lt,c_out_select); //wd2 icin

not not_0(not_jr,JR);
and and_0 (RegWritef,RegWrite,not_jr);
and and_1 (RegWritef2,RegWrite2,not_jr);

mips_registers my_mips_registers (instruction[25:21],instruction[20:16],r_mux2,r_mux4,instruction[15:11],c_out_select,
												read_data1,read_data2,RegWritef,RegWritef2,clk);

sign_extender signexted (instruction[15:0],sign_extendw);

mux32 mux_4 (read_data2,sign_extendw,ALUSrc,a_mux1);

alu32 m_alu32 (read_data1,a_mux1,ALUop2,gar1,r_alu,gar2,zerow);

data_memory m_memory (r_alu[15:0],read_data2,memory_out,MemWrite,MemRead,clk);

mux32 mux_5 (r_alu,memory_out,MemtoReg,m_mux1);

shift_left2 shiftl (sign_extendw,r_shift); // garbage


adder32 adder32_ (add1,sign_extendw,add2,gar3);


not notz (not_zero,zerow);
and and_2 (b_and1,BranchN,not_zero);
and and_3 (b_and2,Branch,zerow);
or or_1 (b_or1,b_and1,b_and2);

mux32 mux_6(add1,add2,b_or1,r_bmux); //branch mux out

address_jump jumpp (PC_in,instruction,jumpw);

or orlast (jumpor,JR,JAL,Jump);
mux32 mux_7 (jumpw,read_data1,JR,r_jrmux1);
mux32 mux_8 (r_bmux,r_jrmux1,jumpor,r_jrmux2);

nextPC pctime (instruction,r_jrmux2,pc_out,clk);

	always @(pc_out) begin
		PC_in<=pc_out;			
	end


endmodule