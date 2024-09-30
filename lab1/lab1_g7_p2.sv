module lab1_g7_p2(
	input logic G, T, U, E,
	output logic Y
);

assign Y = T&E&~U | G&T&U | G&T&E | G&E&~U | ~G&U&E;

endmodule