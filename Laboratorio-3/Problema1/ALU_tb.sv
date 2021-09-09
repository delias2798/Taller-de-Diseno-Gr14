//Testbech para el ALU
//@autor: Saymon Astua

module ALU_tb();
	parameter n = 4;
	
	logic N, Z, C, V;
	logic [n-1:0] a, b, res;
	logic [2:0] op;
	
	ALU myAlu(a, b, op, res, N, Z, C, V);
	
	initial begin
		//pruebas para la suma
		a = 15;
		b = 15;
		op = 0;
		#20
		
		a = 0;
		b = 0;
		#20
		
		a = 5;
		b = 3;
		#20
		
		a = 10;
		b = 1;
		#20
		
		// pruebas para la resta
		a = 8;
		b = 15;
		op = 1;
		#20
		
		a = 10;
		b = 4;
		#20
		
		a = 8;
		b = 8;
		#20
		
		a = 0;
		b = 15;
		#20
		
		//pruebas para el corrimiento a la derecha
		a = 5;
		op = 2;
		#20
		
		a = 10;
		#20
		
		a = 3;
		#20
		
		a = 15;
		#20
		
		//pruebas para el corrimiento a la izquierda
		a = 3;
		op = 3;
		#20
		
		a = 4;
		#20
		
		a = 12;
		#20
		
		a = 5;
		#20
		
		//pruebas para el and
		a = 0;
		b = 15;
		op = 4;
		#20
		
		a = 3;
		b = 1;
		#20
		
		a = 8;
		b = 12;
		#20
		
		a = 4;
		b = 2;
		#20
		
		//pruebas para el or
		a = 0;
		b = 15;
		op = 5;
		#20
		
		a = 5;
		b = 2;
		#20
		
		a = 10;
		b = 3;
		#20
		
		a = 4;
		b = 2;
		#20
		
		//pruebas para el xor
		a = 7;
		b = 3;
		op = 6;
		#20
		
		a = 8;
		b = 1;
		#20
		
		a = 14;
		b = 5;
		#20
		
		a = 3;
		b = 2;
	end

endmodule 