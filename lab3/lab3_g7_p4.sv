module lab3_g7_p4(
	input logic S,
	input logic [2:0] I_3,
	input logic [3:0] I_4,
	output logic [7:0] I_8,
	output logic [15:0] Q_16
);
endmodule

module decoder3x8(
	input S,
	input logic [2:0] I,
	output logic [7:0] Q
);
	wire A; 
	logic [3:0] F1, F2;
	assign A = ~(I[2]&I[2]);
	decoder2x4 decoder2x4_1(A, I[1:0], F1[3:0]);
	assign Q[3]= S&F1[3];
	assign Q[2]= S&F1[2];
	assign Q[1]= S&F1[1];
	assign Q[0]= S&F1[0];
	decoder2x4 decoder2x4_2(I[2], I[1:0], F2[3:0]);
	assign Q[7]= S&F2[3];
	assign Q[6]= S&F2[2];
	assign Q[5]= S&F2[1];
	assign Q[4]= S&F2[0];
endmodule

module decoder4x16(
	input logic [3:0] I,
	output logic [15:0] Q
);
	wire A;
	assign A = ~(I[3]&I[3]);
	decoder3x8 decoder3x8_1(A, I[2:0], Q[7:0]);
	decoder3x8 decoder3x8_2(I[3], I[2:0], Q[15:8]);
endmodule