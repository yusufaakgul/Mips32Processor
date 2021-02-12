module alu_control (OP,FF,O,JR);

input [5:0] FF; //function field
input [1:0] OP; //op code
output [2:0] O;
output JR;

wire f2nw,   f1nw,f0nw;
wire op0nw,op1nw;
wire and1w,and2w,and3w,and4w,and5w, and6w;
wire and01w,and41w,and7w,and8w;
wire or1w,or2w,or22w,notf5w;
wire and_05,and_06;
//x2
not not_00 (op1nw,OP[1]);
and and_01 (and01w,op1nw,OP[0]);

not not_4 (op0nw,OP[0]);
not not_1(f2nw,FF[2]);

and and_1 (and1w,OP[1],op0nw,f2nw,FF[1]);
or or_1 (O[2],and01w,and1w);

//x1 

not not_2 (f1nw,FF[1]);
not not_3 (f0nw,FF[0]);


and and_2 (and2w,FF[2],f1nw,FF[0]);
and and_3 (and3w,FF[2],f1nw,f0nw);

or or_2 (or1w,and2w,and3w);
and and_4 (and4w,or1w,OP[1],op0nw);
and and_41 (and41w,OP[1],OP[0]);

or or_22 (or22w,and4w,and41w);

not not_5 (O[1],or22w);

//x0

and and_5 (and5w,f1nw,FF[0]);
and and_6 (and6w,FF[1],f0nw);
or or_3 (or2w,and5w,and6w);
and and_7 (and7w,OP[1],FF[2],or2w);
and and_8 (and8w,OP[1],OP[0]);
or or_4 (O[0],and7w,and8w);

//JR

not not_f5 (notf5w,FF[5]);
and and_9 (JR,OP[1],op0nw,notf5w);








endmodule