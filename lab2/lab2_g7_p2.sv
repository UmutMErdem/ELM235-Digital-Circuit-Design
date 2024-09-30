// 1ns birim zaman, ve 1ps ��z�n�rl�kte �al???r.
`timescale 1ns/1ps
module lab2_g7_p2(
	input logic [3:0] x,
	output logic [6:0] sev_segments
);

assign sev_segments[6] = x[1] | x[3];
assign sev_segments[5] = x[1]&x[0] | x[3]&x[0];
assign sev_segments[4] = ~x[2]&x[0] | x[2]&x[1];
assign sev_segments[3] = x[1] | x[2];
assign sev_segments[2] = x[2]&~x[1] | ~x[3]&x[1]&~x[0];
assign sev_segments[1] = x[1]&~x[0] | ~x[3]&x[2] | x[2]&~x[0];
assign sev_segments[0] = ~x[2] | x[1] | x[3]&x[0];
endmodule