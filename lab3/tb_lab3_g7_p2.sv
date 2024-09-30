`timescale 1ns/1ps
module tb_lab3_g7_p2();
logic X;
logic [1:0] Y_and, Y_or, Y_nand, Y_nor;
logic Q_and, Q_or, Q_nand, Q_nor;
lab3_g7_p2 dut0(X, Y_and, Y_or, Y_nand, Y_nor, Q_and, Q_or, Q_nand, Q_nor);
	mux2 mux_and(X, Y_and[1:0], Q_and);
	mux2 mux_or(X, Y_or[1:0], Q_or);
	mux2 mux_nand(X, Y_nand[1:0], Q_nand);
	mux2 mux_nor(X, Y_nor[1:0], Q_nor);
initial begin
	X=0; Y_and[0]=0; Y_and[1]=0; Y_or[0]=0; Y_or[1]=1; Y_nand[0]=1; Y_nand[1]=1; Y_nor[0]=1; Y_nor[1]=0; 	#10 //000
	X=1;		     											#10 //010
	X=0; Y_and[1]=1; Y_or[0]=1; Y_nand[1]=0; Y_nor[0]=0;   							#10 //100
	X=1;	     												#10 //110
	$stop;
end
endmodule
/*
logic [3:0] S_mux16;
logic [15:0] Y16;
logic Q_mux16;
lab3_g7_p2 dut0(S_mux16, Y16, Q_mux16);
mux16 mux16_1(Y16[15:0], S_mux16[3:0], Q_mux16);
initial begin
	S_mux16[3]=0; S_mux16[2]=1; S_mux16[1]=0; S_mux16[0]=1; Y16[15]=1; Y16[14]=1; Y16[13]=1; Y16[12]=0; Y16[11]=0; Y16[10]=0; Y16[9]=1; Y16[8]=0; Y16[7]=1; Y16[6]=0; Y16[5]=1; Y16[4]=0; Y16[3]=0; Y16[2]=0; Y16[1]=1; Y16[0]=0; #10
	S_mux16[3]=0; S_mux16[2]=1; S_mux16[1]=1; S_mux16[0]=0; Y16[15]=0; Y16[14]=1; Y16[13]=0; Y16[12]=0; Y16[11]=1; Y16[10]=1; Y16[9]=1; Y16[8]=0; Y16[7]=0; Y16[6]=1; Y16[5]=0; Y16[4]=1; Y16[3]=0; Y16[2]=1; Y16[1]=0; Y16[0]=1; #10
	S_mux16[3]=1; S_mux16[2]=1; S_mux16[1]=0; S_mux16[0]=0; Y16[15]=0; Y16[14]=0; Y16[13]=0; Y16[12]=1; Y16[11]=0; Y16[10]=1; Y16[9]=0; Y16[8]=0; Y16[7]=0; Y16[6]=1; Y16[5]=0; Y16[4]=0; Y16[3]=1; Y16[2]=0; Y16[1]=0; Y16[0]=0; #10
	S_mux16[3]=1; S_mux16[2]=0; S_mux16[1]=0; S_mux16[0]=1; Y16[15]=0; Y16[14]=0; Y16[13]=0; Y16[12]=0; Y16[11]=0; Y16[10]=0; Y16[9]=0; Y16[8]=0; Y16[7]=0; Y16[6]=1; Y16[5]=0; Y16[4]=0; Y16[3]=1; Y16[2]=0; Y16[1]=0; Y16[0]=1; #10
	$stop;
end
endmodule
*/
/*
logic [1:0] S_mux4;
logic [3:0] Y_mux4;
logic Q_mux4;
lab3_g7_p2 dut0(S_mux4, Y_mux4, Q_mux4);
mux4 mux4_1(Y_mux4[3:0], S_mux4[1:0], Q_mux4);
initial begin
	S_mux4[1]=0; S_mux4[0]=0; Y_mux4[3]=0; Y_mux4[2]=0; Y_mux4[1]=0; Y_mux4[0]=0; #10
	S_mux4[1]=0; S_mux4[0]=0; Y_mux4[3]=0; Y_mux4[2]=0; Y_mux4[1]=0; Y_mux4[0]=1; #10
	S_mux4[1]=0; S_mux4[0]=1; Y_mux4[3]=0; Y_mux4[2]=0; Y_mux4[1]=0; Y_mux4[0]=0; #10
	S_mux4[1]=0; S_mux4[0]=1; Y_mux4[3]=0; Y_mux4[2]=0; Y_mux4[1]=1; Y_mux4[0]=0; #10
	S_mux4[1]=1; S_mux4[0]=0; Y_mux4[3]=0; Y_mux4[2]=0; Y_mux4[1]=0; Y_mux4[0]=0; #10
	S_mux4[1]=1; S_mux4[0]=0; Y_mux4[3]=0; Y_mux4[2]=1; Y_mux4[1]=0; Y_mux4[0]=0; #10
	S_mux4[1]=1; S_mux4[0]=1; Y_mux4[3]=0; Y_mux4[2]=0; Y_mux4[1]=0; Y_mux4[0]=0; #10
	S_mux4[1]=1; S_mux4[0]=1; Y_mux4[3]=1; Y_mux4[2]=0; Y_mux4[1]=0; Y_mux4[0]=0; #10
	$stop;
end
endmodule
*/