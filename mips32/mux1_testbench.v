`define DELAY 20
module mux1_testbench(); 
reg a, b, s;
wire o;

mux1 test (a, b, s, o);

initial begin
a = 1'b0; b = 1'b1; s = 1'b0;
#`DELAY;
a = 1'b0; b = 1'b1; s = 1'b1;
end
 
 
initial
begin
$monitor("time = %2d, a =%1b, b=%1b, S=%1b, OUT=%1b", $time, a, b, s, o);
end
 
endmodule