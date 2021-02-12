module mux1 (A,B,S,O);

input A,B,S;
output O;
wire A1,A2,Snot;


not not1 (Snot,S);
and and1(A1,A,Snot);
and and2(A2,S,B);

or or1(O,A1,A2); 

endmodule