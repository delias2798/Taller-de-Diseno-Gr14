

`timescale 1 ns/1 ns
module cafe_con_leche_tb();
	logic clk_50Mhz, rst, e, l, x, m, a, C, Q;
	logic bebidaLista, agua, cafe, leche, choco, azucar;
	logic [6:0] hex1, hex2;
	
	 maquina_cafe_teorica maquina(clk_50Mhz, rst, e, l, x, m, a, C, Q,
										   bebidaLista, agua, cafe, leche, choco, azucar,
											hex1, hex2);


	always begin
		clk_50Mhz <=0; #10;
		clk_50Mhz <=1; #10;
	end

	initial begin
		//se asigna un valor inicial a todas las variables
		// de entrada
		clk_50Mhz = 0;
		rst = 1;
		e = 0;
		l = 0;
		m = 0;
		x = 0;
		a = 0;
		C = 0;
		Q = 0;
		#20
		
		//se inserta una moneda de cien
		C = 1;
		rst = 0;
		#25
		
		//se inserta una moneda de quinientos
		C = 0;
		Q = 1;
		#50
		
		//se inserta otra moneda de cien
		Q = 0;
		C = 1;
		#50
		
		// se pide un cafe con leche
		C = 0;
		l = 1;
		#50
		
		l = 0;
	
	end

endmodule 