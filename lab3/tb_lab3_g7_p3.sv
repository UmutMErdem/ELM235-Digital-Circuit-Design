`timescale 1ns/1ps
module tb_lab3_g7_p3();
logic S;
logic [1:0] I;
logic [3:0] Q;

lab3_g7_p3 dut0(S, I, Q);

initial begin
	S=1; I[1]=0; I[0]=0; #10
	I[1]=0; I[0]=1; #10
	I[1]=1; I[0]=0; #10
	I[1]=1; I[0]=1; #10
	$stop;
end
endmodule