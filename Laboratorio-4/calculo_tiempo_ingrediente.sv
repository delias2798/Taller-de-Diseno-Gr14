

module calculo_tiempo_ingrediente(input [1:0] bebida,
											 input [3:0] estadoActual,
											 output logic [1:0] segundos);
	
	always @(estadoActual)
		case(estadoActual)
			//agua
			8: begin
					if(bebida == 3) begin //Mocaccino
						segundos = 1;
					end else begin // resto de bebidas
						segundos = 2;
					end
				end
			//cafe
			9: begin
					if(bebida == 0) begin //cafe expreso
						segundos = 3;
					end else if(bebida == 1) begin //cafe con leche
						segundos = 2;
					end else begin //resto de bebidas
						segundos = 1;
					end
				end
			//leche
			10: begin
					if(bebida == 0) begin //cafe expreso
						segundos = 0;
					end else if(bebida == 2) begin //Capuccino
						segundos = 2;
					end else begin //resto de bebidas
						segundos = 1;
					end
				end
			//chocolate
			11: if (bebida == 3) segundos = 2; else segundos = 0; //Solo el Mocaccino lleva
			//azucar
			12: segundos = 1; //todas las bebidas llevan azucar
			13: segundos = 2; //cuando la bebida esta lista
			default: segundos = 0;
		endcase
endmodule 