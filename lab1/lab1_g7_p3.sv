module lab1_g7_p3(
	input logic G, T, U, E,
	output logic X, Y
);

assign X = ~T&~E | U&~E;
assign Y = ~G | ~U;

endmodule