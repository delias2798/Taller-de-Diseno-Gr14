//Corrimiento a la derecha para n bits
//@autor: Saymon Astua

module shift_right #(parameter N)
		  (input [N-1:0] in,
		   output [N-1:0] out);

   assign out = {in[0], in[N-1:1]};

			
endmodule 