module data_memory (memory_address, write_data, read_data, mem_write, mem_read,clock);



input [15:0] memory_address;
input [31:0] write_data;
output reg [31:0] read_data;  
input mem_write, mem_read, clock;
reg [31:0] _data_memory[0:65535] ; // 2^16 -1



always @(posedge clock) 
begin
	if (mem_write == 1'b1) begin
		_data_memory[memory_address] = write_data;
	end
	
end

always @(negedge clock)begin
	if (mem_read == 1'b1) begin
		read_data = _data_memory[memory_address[15:0]];
	end
end

endmodule 