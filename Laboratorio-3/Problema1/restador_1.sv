//Restador completo de 1 bit
//@autor: Saymon Astua

module restador_1(input a, b, c_in,
					  output d, c_out);
					  
	// se hace una implementacion de comportamiento
	
	//para la salida
	assign d = 	(~a & ~b & c_in) |
					(~a & b & ~c_in) |
					(a & ~b & ~c_in) |
					(a & b & c_in);
	
	//para el carry de salida
	assign c_out = (~a & ~b & c_in) |
						(~a & b & ~c_in) |
						(~a & b & c_in) |
						(a & b & c_in);			
				
endmodule 