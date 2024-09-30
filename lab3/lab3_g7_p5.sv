`timescale 1ns/1ps
module lab3_g7_p5( 
	input logic [3:0] I,
	output logic [15:0] Q1, Q2, 
	output logic F1,F2

);
	decoder4x16 dec4_1(I[3:0], Q1[15:0]);
	decoder4x16 dec4_2(I[3:0], Q2[15:0]);
	assign F1 = Q1[1]+Q1[3]+Q1[7]+Q1[11]+Q1[12]+Q1[13]+Q1[15];
	assign F2 = Q2[0]+Q2[1]+Q2[6]+Q2[8]+Q2[9]+Q2[10]+Q2[11]+Q2[12]+Q2[13]+Q2[14]+Q2[15];
endmodule
