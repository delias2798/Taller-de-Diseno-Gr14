/* Contador parametrizable con saltos de 5
*  Basado en el código visto en clase
*  Cuenta de 5 en 5
*/

module Counter_5 #(parameter N = 8)(input clk, rst, en,
											 output [N-1:0] Q);
	
	reg [N-1:0] Qreg;
	assign Q = Qreg;
	
	always_ff @(negedge clk or posedge rst)
		if (rst) Qreg = 0;
		else
			if (en) Qreg = Qreg + 5;
			
endmodule 