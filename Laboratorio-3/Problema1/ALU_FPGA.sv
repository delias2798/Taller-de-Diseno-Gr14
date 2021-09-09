/*	Unidad aritmético-lógica ALU para la FPGA
	@autor: Saymon Astúa
	
----------------------------------------------------------------------
|ALU_Sel|   ALU Operation
----------------------------------------------------------------------
| key0 SW9 SW8 |
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
0000*0000=0000 = 0 (Pero no activa flag zero)
0001*0001=0001 = 1
0010*0010=0010 = 2
0011*0011=0011 = 3
0100*0100=0100 = 4
0111*0111=0111 = 7
1111*0111=23 (Enciende led Cout)
1111*1111=31 (Enciende led Cout)
1000*1000= 0000 = 24 (Enciende led Cout)

*/

module ALU_FPGA (input [3:0] a, b, input [2:0] op,
					  output [6:0] hex1, hex2, output N, Z, C, V);

	//se crean registros para almacenar cada uno de los
	//resultados de las operaciones aritmético-lógicas
	reg [3:0] res, resSuma, resResta, resRight, resLeft, resAnd, resOr, resXor;
	
	reg N_, C_;
	
	//se crea el registro para la conversion de binario a bcd
	reg [11:0] bcd;
	
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
	
	//se crean los decodificadores de binario a bcd
	// y de bcd al display de 7 segmentos
	bin2bcd bcd_deco({3'b000, C, res}, bcd);
	segment7_deco seg1(bcd[3:0], hex1),
					  seg2(bcd[7:4], hex2);
	
	
	assign r = res;
	
	//se asigna las banderas de estado
	
	assign C = C_ && op == 0;
	assign V = C;
	assign N = N_ && op == 1;
	
	//bitwise OR en la salida
	assign Z = ~(|{C, res});
	
	
	//cada vez que se elija alguna operación, entonces
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