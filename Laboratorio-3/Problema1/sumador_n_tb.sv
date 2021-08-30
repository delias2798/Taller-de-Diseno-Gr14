//Testbench para el sumador de n bits
//@autor: Saymon Astua

module sumador_n_tb();
	parameter N = 4;
	
	logic [N-1:0] a, b;
	logic c_in;
	
	logic [N-1:0] s;
	logic c_out;
	
	sumador_n #(N) sumador4(a, b, c_in, s, c_out);
	
	initial begin
		a = 15;
		b = 15;
		c_in = 0;
		#40
		
		a = 3;
		b = 5;
		c_in = 1;
		#40
		
		a = 10;
		b = 1;
		c_in = 0;
	
	end

endmodule 