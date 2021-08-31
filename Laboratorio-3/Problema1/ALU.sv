//Unidad aritmético-lógica ALU
//@autor: Saymon Astúa

module ALU #(parameter n=4)
				(input [n-1:0] a, b, input [2:0] op,
				 output [n-1:0] r, output N, Z, C, V);

	reg [n-1:0] res, resSuma, resResta;
	sumador_n #(n) suma(a, b, 0, resSuma, C);
	restador_n #(n) resta(a, b, 0, resResta, N);
	
	assign r = res;
	
	always @ (op) begin
		case(op)
			0: res = resSuma;
			1: if(N) begin
					res = ~resResta + 1;
				end
				else begin
					res = resResta;
				end
		endcase
	end
				 
endmodule 