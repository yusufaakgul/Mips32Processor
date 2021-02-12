`define DELAY 20
module main_control_testbench(); 
reg [5:0] op;
wire regdst, alusrc, memtoreg,regwrite,regwrite2,memread,memwrite,branch,branchn,lui,jump,jal;
wire [1:0] aluop;

main_control_unit test (op, regdst, alusrc, memtoreg,regwrite,regwrite2,memread,memwrite,branch,branchn,lui,jump,jal,aluop);


initial begin
op = 6'b000_000;
#`DELAY;
op = 6'b100_011;
#`DELAY;
op = 6'b101_011;
#`DELAY;
op = 6'b000_100;
#`DELAY;
op = 6'b000_101;
#`DELAY;
op = 6'b001_101;
#`DELAY;
op = 6'b000_010;
#`DELAY;
op = 6'b000_011;
#`DELAY;
op = 6'b001_111;
end
 
 
initial
begin
$monitor("time = %2d, op =%6b, regdst=%1b, alusrc=%1b, memtoreg=%1b, regwrite=%1b, regwrite2=%1b, memread=%1b, memwrite=%1b, branch=%1b, branchn=%1b, lui=%1b, jump=%1b, jal=%1b, aluop=%2b",
													$time, op,regdst, alusrc, memtoreg,regwrite,regwrite2,memread,memwrite,branch,branchn,lui,jump,jal,aluop);
end
 
endmodule