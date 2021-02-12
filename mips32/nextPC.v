module nextPC (instruction,PC_in, PC_out,clk);
	input clk;
	input [31:0]PC_in;
	output reg[31:0] PC_out;
	input [31:0] instruction;
	initial begin
 	//PC_out=32'b0;
	end
	always @ (posedge clk )
	begin
				// PC_out <= PC_in;
			PC_out <= PC_in;
	end
	

endmodule
