module tb_lab1_g7_p1();

	logic G, T, U, E;
	logic Y;

	lab1_g7_p1 dut0(G, T, U, E, Y);

initial begin
	G = 0; T = 0; U = 0; E=0; #10 // 0000
	E = 1;		     	  #10 // 0001
	U = 1; E = 0;	     	  #10 // 0010
	E = 1;		     	  #10 // 0011
	T = 1; U = 0; E = 0; 	  #10 // 0100
	E = 1;		     	  #10 // 0101
	U = 1; E = 0;	     	  #10 // 0110
	E = 1;		     	  #10 // 0111
	G = 1; T = 0; U = 0; E=0; #10 // 1000
	E = 1;		     	  #10 // 1001
	U = 1; E = 0;	     	  #10 // 1010
	E = 1;		     	  #10 // 1011
	T = 1; U = 0; E = 0; 	  #10 // 1100
	E = 1;		     	  #10 // 1101
	U = 1; E = 0;	     	  #10 // 1110
	E = 1;		     	  #10 // 1111
	$stop;
end
endmodule