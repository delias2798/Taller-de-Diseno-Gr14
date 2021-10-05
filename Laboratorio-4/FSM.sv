

module FSM(input clk, rst, m0, m1, m2, m3, m4, t0, e, l, x, m, a, C, Q,
			  output rst_timer, agua, cafe, leche, choco, azucar, en_cien, en_quin, producto, vuelto,
			  output [1:0] bebida,
			  output [3:0] estadoActual,
			  output [7:0] valor_producto);
	
	logic [3:0] state, next_state;
	
	//actual state
	always_ff @(posedge clk or posedge rst)
		if (rst) state = 0;
		else
			state = next_state;
	
	//next state
	always_comb begin
		//valores por defecto
		bebida = 0;
		valor_producto = 0;
		
		case(state)
			0: begin
					if (C) begin
						next_state = 1;
					end else if(Q) begin
						next_state = 2;
					end else if (a) begin
						next_state = 14;
					end else if (e) begin
						next_state = 4;
					end else if (l) begin
						next_state = 5;
					end else if (x) begin
						next_state = 6;
					end else if (m) begin
						next_state = 7;
					end else begin
						next_state = 0;
					end
				end
			1: begin
					if (m0) begin
						next_state = 3;
					end else if(!m0) begin
						next_state = 0;
					end else begin
						next_state = 1;
					end
				end
			2: begin
					if (m0) begin
						next_state = 3;
					end else if(!m0) begin
						next_state = 0;
					end else begin
						next_state = 2;
					end
				end
			3: next_state = 0; //solamente devuelve la moneda y regresa al 0
			4: begin
					if (m1) begin
						bebida = 0;
						valor_producto = 3;
						next_state = 8;
					end else if(!m1) begin
						next_state = 0;
					end else begin
						next_state = 4;
					end
				end
			5: begin
					if (m2) begin
						bebida = 1;
						valor_producto = 4;
						next_state = 8;
					end else if(!m2) begin
						next_state = 0;
					end else begin
						next_state = 5;
					end
				end
			6: begin
					if (m3) begin
						bebida = 2;
						valor_producto = 5;
						next_state = 8;
					end else if(!m3) begin
						next_state = 0;
					end else begin
						next_state = 6;
					end
				end
			7: begin
					if (m4) begin
						bebida = 3;
						valor_producto = 7;
						next_state = 8;
					end else if(!m4) begin
						next_state = 0;
					end else begin
						next_state = 7;
					end
				end
			8: begin
					if (t0) begin
						next_state = 9;
					end else if(a) begin
						next_state = 14;
					end else begin
						next_state = 8;
					end
				end
			9: if (t0) next_state = 10; else next_state = 9;
			10: if (t0) next_state = 11; else next_state = 10;
			11: if (t0) next_state = 12; else next_state = 11;
			12: next_state = 13;
			13: if (rst) next_state = 0; else next_state = 13;
			14: next_state = 0;
			default: begin
							next_state = 0;
							bebida = 0;
							valor_producto = 0;
						end
		endcase
	end
		
	//outputs
	assign en_cien = (state == 1);
	assign en_quin = (state == 2);
	assign vuelto = ((state == 3) || (state == 13));
	assign agua = (state == 8);
	assign cafe = (state == 9);
	assign leche = (state == 10);
	assign choco = (state == 11);
	assign azucar = (state == 12);
	assign producto = (state == 13);
	
	assign estadoActual = state;
	
	assign rst_timer = ( ( (state == 8 || state == 9 || state == 10 || state == 11 || state == 12) && (t0 == 1)) || (state == 13) );
		
			
endmodule 