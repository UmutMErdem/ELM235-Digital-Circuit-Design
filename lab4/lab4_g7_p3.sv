`timescale 1ns/1ps
module lab4_g7_p3(
	input logic [31:0] a, b,
	input logic [ 3:0] op,
	output logic [31:0] s,
	output logic n, z, v, c,
	output logic hata
);

always_comb begin
	hata = 0;
	casex (op[3:0])
		4'b0000: {c, s} = a + b;
		4'b1000: {c, s} = a + ~b + 1;
		4'b0001: {c, s} = {1'b0, a << b[4:0]};
		4'b0011: begin c<=1'b0; s <= (b<a)? ~32'b0 : 32'b0; end
		4'b0010: begin 
			 c<=1'b0; s <= (a[31]==0 && b[31]==1) ? ~32'b0: 
				  ((a[31]==1 && b[31]==0) ? 32'b0: 
				  ((a[31]==0 && a[31]==b[31] && b<a)? ~32'b0: 
				  ((a[31]==1 && a[31]==b[31] && a<b)? ~32'b0: 32'b0))); 
			 end
		4'b0101: {s, c} = {1'b0, a >> b[4:0]};
		4'b1101: {s, c} <= {a[31], a >>> b[4:0]};
		4'b0100: {c, s} = a^b;
		4'b0110: {c, s} = a|b;
		4'b0111: {c, s} = a&b;
		default: hata = 1;
	endcase
	assign n = (s[31]==1'b1)? 1 : 0;
	assign z = (s==32'b0)? 1 : 0;
	assign v = (a[31]==b[31] && s[31]!=a[31])? 1 : 0;
end
endmodule