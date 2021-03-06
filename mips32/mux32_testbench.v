`define DELAY 20
module mux32_testbench(); 
reg [31:0] a, b;
reg s;
wire [31:0] o;

mux32 test (a, b, s, o);

initial begin
a = 32'd5555555; b = 32'd444444444; s = 1'b0;
#`DELAY;
a = 32'd5555555; b = 32'd444444444; s = 1'b1;
end
 
 
initial
begin
$monitor("time = %2d, a =%d, b=%d, S=%1b, OUT=%d", $time, a, b, s, o);
end
 
endmodule