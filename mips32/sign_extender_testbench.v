`define DELAY 20
module sign_extender_testbench(); 
reg [15:0] a;
wire [31:0] o;

sign_extender test (a,o);

initial begin
a = 16'b0111111111111111;
#`DELAY;
a = 16'b1000000000000011;
end
 
 
initial
begin
$monitor("time = %2d, a =%1b, OUT=%1b", $time, a,o);
end
 
endmodule