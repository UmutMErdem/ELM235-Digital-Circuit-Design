module tb_lab1_g7_p3();

	logic G, T, U, E;
	logic X, Y;

	lab1_g7_p3 dut0(G, T, U, E, X, Y);

initial begin
	G = 1; T = 1; U = 1; E=1; #10 // 1111
	G = 0;		     	  #10 // 0111
	G = 1; T = 0;	     	  #10 // 1011
	G = 0;		     	  #10 // 0011
	G = 1; T = 1; U = 0; 	  #10 // 1101
	G = 0;		     	  #10 // 0101
	G = 1; T = 0;	     	  #10 // 1001
	G = 0;		     	  #10 // 0001
	G = 1; T = 1; U = 1; E=0; #10 // 1110
	G = 0;		     	  #10 // 0110
	G = 1; T = 0;	     	  #10 // 1010
	G = 0;		     	  #10 // 0010
	G = 1; T = 1; U = 0; 	  #10 // 1100
	G = 0;		     	  #10 // 0100
	G = 1; T = 0;	     	  #10 // 1000
	G = 0;		     	  #10 // 0000
	$stop;
end
endmodule