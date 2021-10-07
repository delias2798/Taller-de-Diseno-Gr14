

module maquina_cafe_teorica(input clk, rst, e, l, x, m, a, C, Q,
						  output bebidaLista, agua, cafe, leche, choco, azucar,
						  output [6:0] hex1, hex2);
	
	// se definen los cables a utilizar
	logic t0, rst_timer, en_cont100, en_cont500, vuelto;
	
	logic m0, m1, m2, m3, m4; //señales para comparar el monto ingresado con los precios
	
	logic cout_suma, cout_resta;
	
	logic [7:0] out_100, out_500, out_timer, out_suma, out_resta, out_mux, status;
	
	logic [7:0] valor_producto;
	
	logic [1:0] bebida, segundos;
	logic [3:0] estadoActual;
	
	//se crea el registro para la conversion de binario a bcd
	reg [11:0] bcd;
	
	
	Counter timer(clk, rst || (rst_timer && out_timer > segundos), 1'b1, out_timer); //contador de tiempos del sistema
	
	Counter monedasCien(clk, rst, en_cont100, out_100); //contar monedas de cien
	
	Counter_5 monedasQuinientos(clk, rst, en_cont500, out_500); //contar monedas de quinientos
	
	sumador_completo sumador(0, out_100, out_500, cout_suma, out_suma); //sumar ambas monedas
	
	restador_completo restador(0, out_suma, valor_producto, cout_resta, out_resta); //para el vuelto
	
	Mux_2_to_1 mux21(out_suma, out_resta, vuelto, out_mux); //MUX para mostrar la cantidad ingresada o el vuelto
	
	Register state_reg(clk, rst, out_mux, status);
	
	//se comparan los precios
	Comparator_mayor_equal precioExpreso(out_suma, 3, m1);
	
	Comparator_mayor_equal precioCafeLeche(out_suma, 4, m2);
	
	Comparator_mayor_equal precioCapuccino(out_suma, 5, m3);
	
	Comparator_mayor_equal precioChocolate(out_suma, 7, m4);
	
	Comparator_mayor_equal precioMax(out_suma, 11, m0); //para verificar que el monto no sea mayor a 1100
	
	
	//En esta parte se calcula el tiempo que debe esperar en cada ingrediente
	calculo_tiempo_ingrediente calculoTiempo(bebida, estadoActual, segundos);
	
	Comparator_mayor_equal verificarTiempos(out_timer, {6'b000000, segundos}, t0); //la señal t0 se enciende para pasar a otro ingrediente
	
	
	//Aqui se conecta la FSM
	FSM control(clk, rst, m0, m1, m2, m3, m4, t0, e, l, x, m, a, C, Q,
					rst_timer, agua, cafe, leche, choco, azucar, en_cont100, en_cont500, bebidaLista, vuelto,
					bebida,
					estadoActual,
					valor_producto);
	
	//se hace la decodificacion para 
	// que el resultado del MUX se muestre
	// en los display
	bin2bcd bcd_deco(status, bcd);
	segment7_deco seg1(bcd[3:0], hex1),
					  seg2(bcd[7:4], hex2);
	
endmodule 