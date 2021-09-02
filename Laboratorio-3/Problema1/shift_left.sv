//Corrimiento a la izquierda para n bits
//@autor: Saymon Astua

module shift_left #(parameter N)
		  (input [N-1:0] in,
		   output [N-1:0] out);

	//se hace una asignación para la salida
	//el digito mas significativo pasa a ser el menos significativo
   assign out = {in[N-2:0], in[N-1]};

			
endmodule 