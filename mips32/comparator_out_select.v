module comparator_out_select(gt,eq,lt,o);


input gt,eq,lt;
output [31:0] o;
wire [31:0] mux1o;

mux32 mux_1 (32'b1,32'b10,lt,mux1o),
		mux_2 (mux1o,32'b11,gt,o);

endmodule