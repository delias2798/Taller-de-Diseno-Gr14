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
	
	reg N_, Z_, C_, V_;
	
	//se crea el registro para la conversion de binario a bcd
	reg [11:0] bcd;
	
	//se crean los módulos de operaciones aritméticas
	sumador_n #(4) suma(a, b, 0, resSuma, C);
	restador_n #(4) resta(a, b, 0, resResta, N);
	shift_right #(4) derecha(a, resRight);
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
	
	//se asigna el registro de resultado a la salida r
	assign r = res;
	
	//se asigna la bandera de overflow a C
	//assign V = C;
	
	assign C_ = C;
	assign V_ = C;
	assign N_ = N;
	assign Z_ = Z;
	
	
	//cada vez que se elija alguna operación, entonces
	//el registro de resultado se actualiza según
	//sea la operación seleccionada
	always @ (op) begin
		if(res == 0) begin
			Z_ = 1'b1;
		end
		else begin
			Z_ = 1'b0;
		end
		case(op)
			0: begin
					res = resSuma;
					N_ = 0;
				end
				
			1: begin
					if(N) begin
						res = ~resResta + 1;
					end
					else begin
						res = resResta;
					end
					C_ = 0;
					V_ = 0;
				end
				
			2: begin
					res = resRight;
					C_ = 0;
					V_ = 0;
					N_ = 0;
				end
			3: begin 
					res = resLeft;
					C_ = 0;
					V_ = 0;
					N_ = 0;
				end
			4: begin 
					res = resAnd;
					C_ = 0;
					V_ = 0;
					N_ = 0;
				end
			5: begin
					res = resOr;
					C_ = 0;
					V_ = 0;
					N_ = 0;
				end
			6: begin 
					res = resXor;
					C_ = 0;
					V_ = 0;
					N_ = 0;
				end
		endcase
	end
				 
endmodule 