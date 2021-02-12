`define DELAY 20
module address_jump_testbench();


reg [31:0] pc,inst;
wire [31:0] o;


address_jump test (pc,inst,o);

initial begin
pc = 32'b1110_0000_0000_0000_0000_0000_0000_0000; inst = 32'b0000_0011_1111_1111_1111_1111_1111_1111;
#`DELAY;
pc = 32'b1010_0000_0000_0000_0000_0000_0000_0000; inst = 32'b0000_0011_0000_1111_0000_1111_1111_1111;

end
 
 
initial
begin
$monitor("time = %2d, pc =%1b, ins=%1b, OUT=%1b", $time, pc, inst, o);
end
 
endmodule