//Testbench para el restador de n bits
//@autor: Saymon Astua

module restador_n_tb();
	parameter N = 4;
	
	logic [N-1:0] a, b;
	logic c_in;
	
	logic [N-1:0] s;
	logic c_out;
	
	restador_n #(N) restador4(a, b, c_in, s, c_out);
	
	initial begin
		a = 10;
		b = 8;
		c_in = 0;
		#40
		
		a = 3;
		b = 5;
		c_in = 0;
		#40
		
		a = 0;
		b = 0;
		c_in = 1;
	
	end

endmodule 