`timescale 1ns/1ps

module lab5_g7_p3(
	input logic clk, A,
	output logic Y
);
	logic A_prv;
	logic [2:0] counter = 3'b0;
	always_ff @(posedge clk) begin
		if (A_prv == A || A_prv === 1'bX) begin
			counter = counter + 1;
			if (counter >= 4)
				Y <= 1'b1;
		end
		else begin
			counter = 3'b001;
			Y <= 1'b0;
		end
		A_prv <= A;
		$display("Aprev:%b	A:%b	cntr:%b", A_prv, A, counter);
	end
endmodule

