/* Restador completo parametrizable
*  Diseño de comportamiento
*  Basado en el sumador completo
*/

module restador_completo #(parameter N = 8) (input cin, 
													     input [N-1:0] a, b,
														  output cout,
														  output [N-1:0] resta);
	assign {cout, resta} = a - b - cin;
	
endmodule 