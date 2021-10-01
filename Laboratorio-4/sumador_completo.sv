/* Sumador completo parametrizable
*  Diseño de comportamiento
*  Referencia: https://programmerclick.com/article/51261220444/
*/

module sumador_completo #(parameter N = 8) (input cin, 
													     input [N-1:0] a, b,
														  output cout,
														  output [N-1:0] sum);
	assign {cout, sum} = a + b + cin;
	
endmodule
 