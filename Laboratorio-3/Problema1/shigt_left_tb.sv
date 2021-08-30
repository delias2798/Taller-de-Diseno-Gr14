//Testbench para el corrimiento a la derecha de n bits
//@autor: Saymon Astua

module shigt_left_tb();
	parameter N = 4;
	
	logic [N-1:0] in, out;
	
	shift_left #(N) izquierda(in, out);
	
	initial begin
	   in = 10;
		#40
		
		in = 1;
		#40
		
		in = 3;
	
	end

endmodule 