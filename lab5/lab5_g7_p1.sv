`timescale 1ns/1ps
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
	$display("cntr:%b	psc_prv:%b	psc:%b", counter, psc_prv, psc);
end
endmodule