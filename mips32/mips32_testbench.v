module mips32_testbench ();

	reg [4:0] index;
	reg clk, display;
	mips32 my_mips(clk);
	always 
	begin
		#50 clk =~clk;
	end
	always 
	begin
		#50 display =~display;
	end
	initial begin
		$readmemb("instructions.txt", my_mips.ins_mem.instructions);	
		$readmemb("data.txt", my_mips.m_memory._data_memory);			
		$readmemb("registers.txt", my_mips.my_mips_registers.registers);
		clk=1;
		display=1;
		my_mips.PC_in<=32'b0;	
		index =0;		
	end
	
	always @(negedge display)
	begin
		if(index==29)
		begin
			#1500$writememb("registers.txt", my_mips.my_mips_registers.registers);
			#1501$writememb("data.txt", my_mips.m_memory._data_memory);
			$finish;
		end
		else begin 
			$display(" Instruction = %32b \n opcode = %6b \n rs = %5b \n rt = %5b rd = %5b \n shampt = %5b \n funct= %6b \n Immediate = %16b \n",my_mips.ins_mem.ins, my_mips.ins_mem.ins[31:26], my_mips.ins_mem.ins[25:21], my_mips.ins_mem.ins[20:16],my_mips.ins_mem.ins[15:11],my_mips.ins_mem.ins[10:6],my_mips.ins_mem.ins[5:0], my_mips.ins_mem.ins[15:0]);
			$display("program counter %32b",my_mips.PC_in);
			//$display(" program counter %5b",my_mips.r_jrmux2);
			index <=index +1;
			$display("----------------------------------");
		end

	end


endmodule