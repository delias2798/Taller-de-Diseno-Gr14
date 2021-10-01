/* Mux 2 a 1 parametrizable
*  Basado en el código visto en clase
*/

module Mux_2_to_1 #(parameter N = 8)(input [N-1:0] A, B,
												 input sel,
												 output [N-1:0] C);
	assign C = sel ? B : A;
	
endmodule 