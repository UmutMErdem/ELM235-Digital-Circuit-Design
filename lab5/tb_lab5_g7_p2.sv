`timescale 1ns/1ps
module tb_lab5_g7_p2();

logic clk, reset, en, bitti;
logic [4:0] psc;
logic [15:0] reload, cnt;

lab5_g7_p2 dut(clk, reset, en, psc, reload, cnt, bitti);

always begin
	clk = 0; #1; clk = 1; #1;
end

initial begin
	reset=1; en=0; psc= 5'b00011; reload=16'h0013; #2
	en=1; #200
	en=0; reload=16'hC01F; #4
	en=1; reload=16'h0; #4
	en=0; reload=16'h0011; #4
	en=1; #50
	reset=0; #14
	$stop;
end
endmodule
