`define DELAY 20
module alu1_testbench(); 
reg a, b,ci;
reg [2:0] s;
wire o,co;

alu1 test (a, b, s, ci, co, o);

initial begin

// and
a = 1'b0; b = 1'b0; ci = 1'b1; s = 3'b000;
#`DELAY;
a = 1'b0; b = 1'b1; ci = 1'b0; s = 3'b000;
#`DELAY;
a = 1'b1; b = 1'b0; ci = 1'b1; s = 3'b000;
#`DELAY;
a = 1'b1; b = 1'b1; ci = 1'b1; s = 3'b000;
#`DELAY;
a = 1'b1; b = 1'b1; ci = 1'b1; s = 3'b000;
// or
#`DELAY;
a = 1'b0; b = 1'b0; ci = 1'b1; s = 3'b001;
#`DELAY;
a = 1'b0; b = 1'b1; ci = 1'b0; s = 3'b001;
#`DELAY;
a = 1'b1; b = 1'b0; ci = 1'b1; s = 3'b001;
#`DELAY;
a = 1'b1; b = 1'b1; ci = 1'b1; s = 3'b001;
#`DELAY;
a = 1'b1; b = 1'b1; ci = 1'b1; s = 3'b001;

// xor
#`DELAY;
a = 1'b0; b = 1'b0; ci = 1'b1; s = 3'b011;
#`DELAY;
a = 1'b0; b = 1'b1; ci = 1'b0; s = 3'b011;
#`DELAY;
a = 1'b1; b = 1'b0; ci = 1'b1; s = 3'b011;
#`DELAY;
a = 1'b1; b = 1'b1; ci = 1'b1; s = 3'b011;
#`DELAY;
a = 1'b1; b = 1'b1; ci = 1'b1; s = 3'b011;

// add
#`DELAY;
a = 1'b0; b = 1'b0; ci = 1'b0; s = 3'b010;
#`DELAY;
a = 1'b0; b = 1'b0; ci = 1'b1; s = 3'b010;
#`DELAY;
a = 1'b0; b = 1'b1; ci = 1'b0; s = 3'b010;
#`DELAY;
a = 1'b0; b = 1'b1; ci = 1'b1; s = 3'b010;
#`DELAY;
a = 1'b0; b = 1'b1; ci = 1'b1; s = 3'b010;

#`DELAY;
a = 1'b1; b = 1'b0; ci = 1'b0; s = 3'b010;
#`DELAY;
a = 1'b1; b = 1'b0; ci = 1'b1; s = 3'b010;
#`DELAY;
a = 1'b1; b = 1'b1; ci = 1'b0; s = 3'b010;
#`DELAY;
a = 1'b1; b = 1'b1; ci = 1'b1; s = 3'b010;
#`DELAY;
a = 1'b1; b = 1'b1; ci = 1'b1; s = 3'b010;

// sub
#`DELAY;
a = 1'b0; b = 1'b0; ci = 1'b1; s = 3'b110;
#`DELAY;
a = 1'b0; b = 1'b1; ci = 1'b1; s = 3'b110;
#`DELAY;
a = 1'b1; b = 1'b0; ci = 1'b1; s = 3'b110;
#`DELAY;
a = 1'b1; b = 1'b1; ci = 1'b1; s = 3'b110;

end
 
 
initial
begin
$monitor("time = %2d, a =%1b, b=%1b, S=%3b, Ci=%1b, CO=%1b, O=%1b", $time, a, b, s, ci, co, o);
end
 
endmodule