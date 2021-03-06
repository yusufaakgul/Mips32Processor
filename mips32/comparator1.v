module comparator1 (A,B,lgt_in,leq_in,llt_in,Gt_out,Eq_out,Lt_out);

input A,B,lgt_in,leq_in,llt_in;
output Gt_out,Eq_out,Lt_out;


wire bnot,anot;
wire gta1,gta2, lta1,lta2;
wire xnorw;

not not_1 (bnot,B);
not not_2 (anot,A);

and and_1(gta1,A,bnot);
and and_2(gta2,gta1,leq_in);
or or_1(Gt_out,gta2,lgt_in);

and and_3(lta1,anot,B);
and and_4(lta2,lta1,leq_in);
or or_2(Lt_out,lta2,llt_in);


xnor xnor_1(xnorw,A,B);
and and_5(Eq_out,xnorw,leq_in);


endmodule