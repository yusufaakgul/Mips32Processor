`define DELAY 20
module alu_control_testbench(); 
reg [5:0] ff;
reg [1:0] op;
wire [2:0] o;
wire jr;


alu_control test (op, ff, o, jr);



initial begin


//lw,sw
op = 2'b00; ff = 6'b101010;
#`DELAY;
op = 2'b00; ff = 6'b000111;
#`DELAY;
op = 2'b00; ff = 6'b000000;
#`DELAY;
op = 2'b00; ff = 6'b111111; 

//beq,bneq
op = 2'b01; ff = 6'b101010;
#`DELAY;
op = 2'b01; ff = 6'b000111;
#`DELAY;
op = 2'b01; ff = 6'b000000;
#`DELAY;
op = 2'b01; ff = 6'b111111;


//R TYPE
op = 2'b10; ff = 6'b100_000;
#`DELAY;
op = 2'b10; ff = 6'b100_010;
#`DELAY;
op = 2'b10; ff = 6'b100_100;
#`DELAY;
op = 2'b10; ff = 6'b100_101;
#`DELAY;
op = 2'b10; ff = 6'b100_110;
#`DELAY;
op = 2'b10; ff = 6'b111111;

// ORI
op = 2'b11; ff = 6'b101010;
#`DELAY;
op = 2'b11; ff = 6'b000111;
#`DELAY;
op = 2'b11; ff = 6'b000000;
#`DELAY;
op = 2'b11; ff = 6'b111111; 


//JR
op = 2'b10; ff = 6'b001000;
end
 
 
initial
begin
$monitor("time = %2d, op =%2b, ff=%6b, o=%3b jr=%1b", $time, op, ff, o, jr);
end
 
endmodule