module alu1 (A,B,S,Ci,Co,O);

input A,B,Ci;
input [2:0] S;
output Co,O;



wire andw,orw,xorw,addw,bw;
wire m11,m12;

and and_1(andw,A,B);
or or_1(orw,A,B);
xor xor_1(xorw,A,B);

xor sb (bw,B,S[2]);
add1 add_1(A,bw,Ci,addw,Co);

mux1 mux_1 (addw,xorw,S[0],m11);
mux1 mux_2 (andw,orw,S[0],m12);
mux1 mux_3 (m12,m11,S[1],O);


endmodule