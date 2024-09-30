`timescale 1ns/1ps
module tb_lab5_g7_p1();

logic clk, reset, en, tick;
logic [4:0] psc;

lab5_g7_p1 dut(clk, reset, en, psc, tick);

always begin
	clk = 0; #1; clk = 1; #1;
end

initial begin
	reset=1; #1 
	en = 1; psc = 5'b00110; #15
	reset=0; #10
	reset=1; psc = 5'b01001; #18
	en = 0; psc= 5'b00011; #5
	en = 1; psc= 5'b00011; #5
	$stop;
end
endmodule