/*	Unidad aritmético-lógica ALU
	@autor: Saymon Astúa

----------------------------------------------------------------------
|ALU_Sel|   ALU Operation
----------------------------------------------------------------------
| 000  |   ALU_Out = A + B;
----------------------------------------------------------------------
| 001  |   ALU_Out = A - B;
----------------------------------------------------------------------
| 010  |   ALU_Out = A >> 1;
----------------------------------------------------------------------
| 011  |   ALU_Out = A << 1;
----------------------------------------------------------------------
| 100  |   ALU_Out = A and B
----------------------------------------------------------------------
| 101  |   ALU_Out = A or B
----------------------------------------------------------------------
| 110  |   ALU_Out = A xor B
----------------------------------------------------------------------
*/

module ALU #(parameter n=4)
				(input [n-1:0] a, b, input [2:0] op,
				 output [n-1:0] r, output N, Z, C, V);
	
	//se crean registros para almacenar cada uno de los
	//resultados de las operaciones aritmético-lógicas
	reg [n-1:0] res, resSuma, resResta, resRight, resLeft, resAnd, resOr, resXor;
	
	//se crean los módulos de operaciones aritméticas
	sumador_n #(n) suma(a, b, 0, resSuma, C);
	restador_n #(n) resta(a, b, 0, resResta, N);
	shift_right #(n) derecha(a, resRight);
	shift_left #(n) izquierda(a, resLeft);
	
	//se asigna el registro de resultado a la salida r
	assign r = res;
	
	//se asigna la bandera de overflow a C
	assign V = C;
	
	//cada vez que se elija alguna operación, entonces
	//el registro de resultado se actualiza según
	//sea la operación seleccionada
	always @ (op) begin
		case(op)
			0: res = resSuma;
				
			1: if(N) begin
					res = ~resResta + 1;
				end
				else begin
					res = resResta;
				end
			2: res = resRight;
			3: res = resLeft;
			4: res = resAnd;
			5: res = resOr;
			6: res = resXor;
		endcase
	end
				 
endmodule 