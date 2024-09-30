module lab1_g7_p1(
	input logic G, T, U, E,
	output logic Y
);

assign Y = ~G&T&~U&E | G&T&U&E | G&~T&~U&E | G&T&~U&E | ~G&T&U&E | ~G&~T&U&E | G&T&U&~E;

endmodule