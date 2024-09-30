`timescale 1ns/1ps
module tb_lab4_g7_p1();
logic clk, d;
logic q_latch, q_ff_rise, q_ff_fall;

lab4_g7_p1 dut0(clk, d, q_latch, q_ff_rise, q_ff_fall);

always
begin
	clk = 0; #10; clk = 1; #10; //Duty cycle 50% yar?m peryot 10ns
end

initial begin
	d = 0; #7; d = 1; #5; d = 0; #2;
	d = 1; #4; d = 0; #3; d = 1; #3;
	d = 0; #2; d = 1; #2; d = 0; #4;
	d = 1; #2; d = 0; #2; d = 1; #6;
	d = 0; #10;
$stop; // simülasyonu durdur ve beklet. Bitirmek için $finish;
end
endmodule