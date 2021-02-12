`define DELAY 20
module comparator32_testbench(); 
reg [31:0] a, b;
wire gt,eq,lt;


comparator32 test (a, b, gt, eq, lt);



initial begin

a = 32'd20; b = -32'd30;
#`DELAY;
a = 32'd40; b = 32'd15;
#`DELAY;
a = 32'd15; b = 32'd16;
#`DELAY;
a = 32'd44; b = 32'd44;

end
 
 
initial
begin
$monitor("time = %2d, a =%d, b=%d, gt=%1b, eq=%1b, lt=%1b", $time, a, b, gt, eq, lt);
end
 
endmodule