`timescale 1ns/1ps
module lab4_g7_p2(
	input logic [4:0] A, B,
	input logic Cin,
	output logic [4:0] S,
	output logic Cout
);

ripple_carry_adder ripple_carry_adder(A[4:0], B[4:0], Cin, Cout, S[4:0]);
endmodule

module ripple_carry_adder
(
	input logic [4:0] A, B,
	input logic Cin,
	output Cout,
	output logic [4:0] S
);

logic cout1, cout2, cout3, cout4;
	full_adder full_adder1(A[0], B[0], Cin, cout1, S[0]);
	full_adder full_adder2(A[1], B[1], cout1, cout2, S[1]);
	full_adder full_adder3(A[2], B[2], cout2, cout3, S[2]);
	full_adder full_adder4(A[3], B[3], cout3, cout4, S[3]);
	full_adder full_adder5(A[4], B[4], cout4, Cout, S[4]);
endmodule

module full_adder(
	input logic A, B, Cin,
	output logic Cout, S
);

logic Cout1, Cout2, S1;

half_adder half_adder_1(A, B, Cout1, S1);
half_adder half_adder_2(Cin, S1, Cout2, S);

assign Cout = Cout1 | Cout2;
endmodule

module half_adder(
	input logic A, B,
	output logic Cout, S
);

assign Cout = A&B;
assign S = A^B;
endmodule