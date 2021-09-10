/*
	Registro parametrizable controlado por el flanco positivo del clock
	@autor: Saymon Astúa
	Referencia: https://www.dte.us.es/Members/paulino/Verilog-Intro.pdf
*/


module registroPos #(parameter n)
						  (input clk, clear, load, input [n-1:0] x,
						   output [n-1:0] z);
		reg [n-1:0] q;
		
		always @ (posedge clk, negedge clear)
			if (clear == 0)
				q <= 0;
			else if (load == 1)
				q <= x;
				
		assign z = q;

endmodule 
							