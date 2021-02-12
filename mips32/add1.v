module add1 (A,B,Ci,O,Co);

input A,B,Ci;
output O,Co;
wire x1,a1,a2;

xor xor1 (x1,A,B);
xor xor2 (O,Ci,x1);

and and1 (a1,x1,Ci);
and and2(a2,A,B);
or  or1	(Co,a1,a2);



endmodule
