`define DELAY 20
module adder32_testbench(); 
reg [31:0] a, b;
wire co;
wire [31:0] o;

adder32 test (a, b,o, co);

initial begin
a = 32'd123; b = 32'd1; 
#`DELAY;
a = 32'd888; b = 32'd300; 
end
 
 
initial
begin
$monitor("time = %2d, a =%d, b=%d,  OUT=%d, COUT=%1b", $time, a, b,o, co);
end
 
endmodule