`define DELAY 20
module comparator_out_select_testbench();


reg s,gt,eq,lt;
wire [31:0] o;


comparator_out_select test (gt,eq,lt,o);

initial begin
gt = 1'b1; eq = 1'b0;  lt = 1'b0;
#`DELAY;
gt = 1'b0; eq = 1'b0;  lt = 1'b1;
#`DELAY;
gt = 1'b0; eq = 1'b1;  lt = 1'b0;
end
 
 
initial
begin
$monitor("time = %2d, gt =%1b, eq=%1b, lt=%1b, OUT=%d", $time, gt, eq, lt, o);
end
 
endmodule