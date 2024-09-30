`timescale 1ns/1ps
module lab3_g7_p1(
	input logic A,
	input logic[1:0] B,
	output logic C
);
	mux2 mux_1(A, B[1:0], C);
endmodule

module mux2(
	input logic X,
	input logic [1:0] Y,
	output logic Q
);

assign Q = ~(~(X&Y[1])&(~(~(X&X)&Y[0])));
endmodule