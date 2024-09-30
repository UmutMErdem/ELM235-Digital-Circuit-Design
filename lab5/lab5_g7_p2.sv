`timescale 1ns/1ps
module lab5_g7_p2(
	input logic clk, reset, en,
	input logic [4:0] psc,
	input logic [15:0] reload,
	output logic [15:0] cnt,
	output logic bitti
);
logic tick;
lab5_g7_p1 p1(clk, reset, en, psc, tick);
always_ff @(posedge clk) begin
	if(!reset) cnt = 16'b0;
	if(bitti == 1'b1) begin cnt = reload; bitti = 1'b0; end
	if(!en && reload!=16'b0) begin cnt <= reload; bitti = 1'b0; end
	if(en) begin
		if(cnt == 16'b0 && reset) bitti = 1'b1;
		else begin
			if(p1.tick == 1'b1) cnt <= cnt - 1;
		end
	end
	$display("cntr:%b	tick:%b", cnt, p1.tick);
end
endmodule

module lab5_g7_p1(
	input logic clk, reset, en,
	input logic [4:0] psc,
	output logic tick
	);
logic [4:0] psc_prv;
logic [4:0] counter = 5'b0;
always_ff @(posedge clk)
begin
	if(!reset) counter = 5'b0;
	if(psc_prv != psc && psc_prv !== 5'bXXXXX) counter = 5'b00001;
	if(en && counter!=psc) counter <= counter + 1;
	if(counter == psc && en) begin 
		tick <= 1'b1;
		counter <= 5'b0;
	end
	else tick <= 1'b0;
	psc_prv = psc;
end
endmodule