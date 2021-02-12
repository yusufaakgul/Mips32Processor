`define DELAY 20
module add1_testbench(); 
reg a, b, ci;
wire o,co;

add1 test (a, b, ci, o, co);

initial begin
a = 1'b0; b = 1'b0; ci = 1'b0;
#`DELAY;
a = 1'b0; b = 1'b0; ci = 1'b1;

#`DELAY;
a = 1'b0; b = 1'b1; ci = 1'b0;
#`DELAY;
a = 1'b0; b = 1'b1; ci = 1'b1;

#`DELAY;
a = 1'b1; b = 1'b0; ci = 1'b0;
#`DELAY;
a = 1'b1; b = 1'b0; ci = 1'b1;

#`DELAY;
a = 1'b1; b = 1'b1; ci = 1'b0;
#`DELAY;
a = 1'b1; b = 1'b1; ci = 1'b1;
end
 
 
initial
begin
$monitor("time = %2d, a =%1b, b=%1b, Ci=%1b, OUT=%1b, COUT=%1b", $time, a, b, ci, o, co);
end
 
endmodule