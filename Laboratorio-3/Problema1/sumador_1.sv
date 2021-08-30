//Sumador completo de 1 bit
//@autor: Saymon Astua

module sumador_1(input a, b, c_in,
					  output s, c_out);
					  
	// se hace una implementacion de comportamiento
	
	//para la salida
	assign s = (~a & ~b & c_in) |
					(~a & b & ~c_in) |
					(a & b & c_in) |
					(a & ~b & ~c_in);
	
	//para el carry de salida
	assign c_out = (a & b) |
						(a & c_in) |
						(b & c_in);				
				
endmodule 