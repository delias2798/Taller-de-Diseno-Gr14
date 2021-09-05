//Corrimiento a la derecha para n bits
//@autor: Saymon Astua

module shift_right #(parameter N)
		  (input [N-1:0] in,
		   output [N-1:0] out);
	
	//aqui se hace una asignación para los cables de salida
	// Se concatena un cero a la izquierda y se mueve el resto de
	// la entrada
	// Los bit que salen del registro por un extremo se pierden.
   assign out = {1'b0, in[N-1:1]};

			
endmodule 