`timescale 1ns/1ps
module lab3_g7_p3(
	input logic S,
	input logic [1:0] I,
	output logic [3:0] Q
);
	decoder2x4 decoder2x4(S, I[1:0], Q[3:0]);
endmodule

module decoder2x4(
	input logic S,
	input logic [1:0] I,
	output logic [3:0] Q 
);
	assign Q[0] = S&~(~(~(I[1]&I[1])&~(I[0]&I[0]))&~(~(I[1]&I[1])&~(I[0]&I[0])));
	assign Q[1] = S&~(~(~(I[1]&I[1])&I[0])&~(~(I[1]&I[1])&I[0]));
	assign Q[2] = S&~(~(~(I[0]&I[0])&I[1])&~(~(I[0]&I[0])&I[1]));
	assign Q[3] = S&~(~(I[0]&I[1])&~(I[0]&I[1]));
endmodule
