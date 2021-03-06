`define DELAY 20
module comparator32_sign_testbench(); 
reg [31:0] a, b;
wire gt,eq,lt;


comparator32_sign test (a, b, gt, eq, lt);



initial begin

a = 32'd0; b = 32'd0;
#`DELAY;
a = 32'd30; b = 32'd0;
#`DELAY;
a = -32'd15; b = 32'd0;
end
 
 
initial
begin
$monitor("time = %2d, a =%d, b=%d, gt=%1b, eq=%1b, lt=%1b", $time, a, b, gt, eq, lt);
end
 
endmodule