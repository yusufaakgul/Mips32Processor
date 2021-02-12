`define DELAY 20
module alu32_testbench(); 

reg [31:0] a, b;
reg [2:0] s;
reg ci;
wire co,ow,zero;
wire [31:0] o;

alu32 test (a, b, s, co, o, ow,zero);


initial begin

// and
a = 32'd5; b = 32'd0; ci = 1'b1; s = 3'b000;
#`DELAY;
a = 32'd0; b = 32'd0; ci = 1'b0; s = 3'b000;
#`DELAY;
a = 32'd0; b = 32'd5; ci = 1'b1; s = 3'b000;
#`DELAY;
a = 32'd5; b = 32'd5; ci = 1'b1; s = 3'b000;
#`DELAY;
a = 32'd5; b = 32'd4; ci = 1'b1; s = 3'b000;
// or
#`DELAY;
a = 32'd5; b = 32'd0; ci = 1'b1; s = 3'b001;
#`DELAY;
a = 32'd0; b = 32'd0; ci = 1'b0; s = 3'b001;
#`DELAY;
a = 32'd0; b = 32'd5; ci = 1'b1; s = 3'b001;
#`DELAY;
a = 32'd5; b = 32'd5; ci = 1'b1; s = 3'b001;
#`DELAY;
a = 32'd5; b = 32'd5; ci = 1'b1; s = 3'b001;

// xor
a = 32'd5; b = 32'd0; ci = 1'b1; s = 3'b011;
#`DELAY;
a = 32'd0; b = 32'd0; ci = 1'b0; s = 3'b011;
#`DELAY;
a = 32'd0; b = 32'd5; ci = 1'b1; s = 3'b011;
#`DELAY;
a = 32'd5; b = 32'd5; ci = 1'b1; s = 3'b011;
#`DELAY;
a = 32'd5; b = 32'd5; ci = 1'b1; s = 3'b011;

// add
#`DELAY;
a = 32'd0; b = 32'd0; ci = 1'b0; s = 3'b010;
#`DELAY;
a = 32'd0; b = 32'd0; ci = 1'b1; s = 3'b010;
#`DELAY;
a = 32'd0; b = 32'd1; ci = 1'b0; s = 3'b010;
#`DELAY;
a = 32'd0; b = 32'd1; ci = 1'b1; s = 3'b010;
#`DELAY;
a = 32'd0; b = 32'd1; ci = 1'b1; s = 3'b010;

#`DELAY;
a = 32'd10; b = 32'd4; ci = 1'b0; s = 3'b010;
#`DELAY;
a = 32'd8; b = 32'd1; ci = 1'b1; s = 3'b010;
#`DELAY;
a = 32'd22; b = 32'd22; ci = 1'b0; s = 3'b010;
#`DELAY;
a = 32'd51; b = 32'd17; ci = 1'b1; s = 3'b010;
#`DELAY;
a = 32'd2147483647; b = 32'd2147483647; ci = 1'b1; s = 3'b010;

// sub
#`DELAY;
a = 32'd5; b = 32'd2; s = 3'b110;
#`DELAY;
a = 32'd4; b = 32'd0; s = 3'b110;
#`DELAY;
a = 32'd5; b = 32'd15; s = 3'b110;
#`DELAY;
a = 32'd22; b = 32'd44; s = 3'b110;

end
 
initial
begin
$monitor("time = %2d, a =%d, b=%d, S=%3b, Ci=%1b, CO=%1b, O=%1b, ow=%1b, zero=%1b", $time, a, b, s, ci, co, o, ow, zero);
end
 
endmodule