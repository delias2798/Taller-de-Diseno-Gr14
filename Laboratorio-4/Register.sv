/* Registro parametrizable
*  Basado en código visto en clase.
*/

module Register #(parameter N = 8)(input clk, rst, 
											  input [N-1:0] D,
											  output [N-1:0] Q);
	reg [N-1:0] Qreg;
	assign Q = Qreg;
	
	always_ff @(negedge clk or posedge rst)
		if (rst) Qreg = 8'h00;
		else
			Qreg = D;
		
endmodule 