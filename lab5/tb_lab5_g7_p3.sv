`timescale 1ns/1ps
module tb_lab5_g7_p3();
logic clk, A, Y;

lab5_g7_p3 dut(clk, A, Y);

always begin
	clk=1;#1; clk=0;#1; 
end

initial begin
	A = 0;#3 
	A = 1;#2
	A = 0;#8
	A = 1;#15
	$stop;
end
endmodule