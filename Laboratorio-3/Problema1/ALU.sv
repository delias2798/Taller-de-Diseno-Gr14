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
	
	reg N_, C_;
	
	//se crean los módulos de operaciones aritméticas
	//sumador
	sumador_n #(4) suma(a, b, 0, resSuma, C_);
	//restador
	restador_n #(4) resta(a, b, 0, resResta, N_);
	//corriento a la derecha
	shift_right #(4) derecha(a, resRight);
	//corrimiento a la izquierda
	shift_left #(4) izquierda(a, resLeft);
	//and
	and_n_module #(4) andModule(a, b, resAnd);
	//or
	or_n_module #(4) orModule(a, b, resOr);
	//xor
	xor_n_module #(4) xorModule(a, b, resXor);
	
	//se asigna el registro de resultado a la salida r
	assign r = res;
	
	//se asigna las banderas de estado
	
	assign C = C_ && op == 0;
	assign V = C;
	assign N = N_ && op == 1;
	
	//bitwise OR en la salida
	assign Z = ~(|{C, res});
	
	//cada vez que se elija alguna operación
	// o se cambie una entrada, entonces
	//el registro de resultado se actualiza según
	//sea la operación seleccionada
	always @ (op, a, b) begin
		case(op)
			0: res = resSuma;
				
			1: begin
					if(N) begin
						res = ~resResta + 1;
					end
					else begin
						res = resResta;
					end
				end
				
			2: res = resRight;

			3: res = resLeft;
			
			4: res = resAnd;

			5: res = resOr;

			6: res = resXor;

		endcase
	end
				 
endmodule 