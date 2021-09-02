//Corrimiento a la derecha para n bits
//@autor: Saymon Astua

module shift_right #(parameter N)
		  (input [N-1:0] in,
		   output [N-1:0] out);
	
	//aqui se hace una asignación para los cables de salida
	//el digito menos significativo pasa a ser el mas significativo
   assign out = {in[0], in[N-1:1]};

			
endmodule 