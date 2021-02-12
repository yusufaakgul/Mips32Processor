module instruction_memory(ins,address);
	
	output [31:0] ins;
	input[11:0] address;
	reg[31:0] instructions[4095:0]; // 2^12 -1 
	assign ins = instructions[address];	
endmodule