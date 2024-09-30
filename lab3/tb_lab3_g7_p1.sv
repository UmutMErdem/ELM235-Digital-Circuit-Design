`timescale 1ns/1ps
module tb_lab3_g7_p1();
logic [1:0]B;
logic A, C;

lab3_g7_p1 dut0(A, B, C);
initial begin
	A=0; B[1]=0; B[0]=0; #10 //000
	B[0]=1; 	     #10 //001
	B[1]=1; B[0]=0;	     #10 //010
	B[0]=1; 	     #10 //011
	A=1; B[1]=0; B[0]=0; #10 //100
	B[0]=1; 	     #10 //101
	B[1]=1; B[0]=0;	     #10 //110
	B[0]=1; 	     #10 //111
	$stop;
end
endmodule