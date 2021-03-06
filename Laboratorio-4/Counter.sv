/* Contador parametrizable
*  Basado en el código visto en clase
*  Cuenta de 1 en 1
*/
module Counter #(parameter N = 8)(input clk, rst, en,
											 output [N-1:0] Q);
	
	reg [N-1:0] Qreg;
	assign Q = Qreg;
	
	always_ff @(posedge clk or posedge rst)
		if (rst) Qreg = 0;
		else
			if (en) Qreg = Qreg + 1;
			
	
endmodule 