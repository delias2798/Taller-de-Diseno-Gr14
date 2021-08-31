//Testbech para el ALU
//@autor: Saymon Astua

module ALU_tb();
	parameter n = 4;
	
	logic N, Z, C, V;
	logic [n-1:0] a, b, res;
	logic [2:0] op;
	
	ALU myAlu(a, b, op, res, N, Z, C, V);
	
	initial begin
		a = 5;
		b = 5;
		op = 0;
		#40
		
		a = 1;
		b = 5;
		op = 1;
	
	end

endmodule 