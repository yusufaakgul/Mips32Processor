`define DELAY 20
module shift_left2_testbench(); 
reg [31:0] a;
wire [31:0] o;

shift_left2 test (a,o);

initial begin
a = 32'b1111_1111_1111_0000_1111_1111_1111_1100;
#`DELAY;
a = 32'b1100_1111_1111_1111_1111_1111_1111_0011;
end
 
 
initial
begin
$monitor("time = %2d, a =%1b, OUT=%1b", $time, a,o);
end
 
endmodule