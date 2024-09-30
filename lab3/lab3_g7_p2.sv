`timescale 1ns/1ps
module lab3_g7_p2(
	input logic X,
	input logic [1:0] Y_and, Y_or, Y_nand, Y_nor, S_mux4,
	input logic [2:0] S_mux8,
	input logic [3:0] Y_mux4, S_mux16,
	input logic [7:0] Y_mux8,
	input logic [15:0] Y16,
	output logic Q_and, Q_or, Q_nand, Q_nor, Q_mux4, Q_mux8, Q_mux16
);
endmodule

module mux4(
	input logic [3:0] P,
	input logic [1:0] S,
	output logic Q
);
	logic F1, F2;
	mux2 mux2_1(S[0], P[1:0], F1);
	mux2 mux2_2(S[0], P[3:2], F2);
	mux2 mux2_Q(S[1], {F1, F2}, Q);
endmodule

module mux8(
	input logic [7:0] P,
	input logic [2:0] S,
	output logic Q
);
	logic F1, F2;
	mux4 mux4_1(P[3:0], S[2:1], F1);
	mux4 mux4_2(P[7:4], S[2:1], F2);
	mux2 mux2_Q(S[0], {F1, F2}, Q);
endmodule

module mux16(
	input logic [15:0] P,
	input logic [3:0] S,
	output logic Q
);
	logic F1,F2;
	mux8 mux8_1(P[7:0], S[3:1], F1);
	mux8 mux8_2(P[15:8], S[3:1], F2);
	mux2 mux2_Q(S[0], {F1, F2}, Q);
endmodule