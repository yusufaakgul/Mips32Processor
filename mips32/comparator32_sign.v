module comparator32_sign (A,B,Gt,Eq,Lt);

input [31:0] A,B;
output Gt,Eq,Lt;

wire first_select;
wire out_gt,out_eq,out_lt;

wire agt,alt;

xnor xor_1 (first_select,A[31],B[31]);

comparator32 c_32 (A,B,out_gt,out_eq,out_lt);


mux1 mux_1 (1'b1,1'b0,A[31],agt),
	 mux_2 (1'b0,1'b1,A[31],alt);


mux1 mux_3 (agt,out_gt,first_select,Gt),
	 mux_4 (alt,out_lt,first_select,Lt),
	 mux_5 (1'b0,out_eq,first_select,Eq);



	 










endmodule