// 1ns birim zaman, ve 1ps çözünürlükte çal???r.
`timescale 1ns/1ps
module lab2_g7_p1(
	input logic A, B, C, D,
	output logic X,Y
);

wire n1,n2, n3, n4, n5;

assign #2 n1 = ~B;
assign #2 n2 = ~C;
assign #2 n3 = A&n1;
assign #2 n4 = n3&C;
assign #2 n5 = n2&D;
assign #2 Y = n4 | n5;
assign X = Y | A&~B&D;
endmodule