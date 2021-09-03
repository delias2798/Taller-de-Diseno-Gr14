//Unidad aritmético-lógica ALU para la FPGA
//@autor: Saymon Astúa

module ALU_FPGA (input [3:0] a, b, input [2:0] op,
					  output [6:0] hex1, hex2, output N, Z, C, V);

	//se crean registros para almacenar cada uno de los
	//resultados de las operaciones aritmético-lógicas
	reg [3:0] res, resSuma, resResta, resRight, resLeft, resAnd, resOr, resXor;
	
	//se crea el registro para la conversion de binario a bcd
	reg [11:0] bcd;
	
	//se crean los módulos de operaciones aritméticas
	sumador_n #(4) suma(a, b, 0, resSuma, C);
	restador_n #(4) resta(a, b, 0, resResta, N);
	shift_right #(4) derecha(a, resRight);
	shift_left #(4) izquierda(a, resLeft);
	//and
	//or
	//xor
	
	//se crean los decodificadores de binario a bcd
	// y de bcd al display de 7 segmentos
	bin2bcd bcd_deco({3'b000, C, res}, bcd);
	segment7_deco seg1(bcd[3:0], hex1),
					  seg2(bcd[7:4], hex2);
	
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