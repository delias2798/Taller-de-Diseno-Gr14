/* Comparador parametrizable
*  Basado en el código visto en clase
*  Compara si un número es mayor o igual a otro
*  A >= B
*/

module Comparator_mayor_equal #(parameter N = 8) (input [N-1:0] A, B,
												  output mayor_equal);

	assign mayor_equal = (A >= B);
	
endmodule 