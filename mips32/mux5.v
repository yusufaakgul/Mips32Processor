module mux5 (A,B,S,O);

input [4:0] A,B;
input S;
output [4:0] O;
//test etmedim
mux1 mux_1 (A[0],B[0],S,O[0]),
	  mux_2 (A[1],B[1],S,O[1]),
	  mux_3 (A[2],B[2],S,O[2]),
	  mux_4 (A[3],B[3],S,O[3]),
	  mux_5 (A[4],B[4],S,O[4]);	  
endmodule