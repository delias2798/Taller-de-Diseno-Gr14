//Testbech para el ALU
//@autor: Saymon Astua

module ALU_FPGA_tb();
	parameter n = 4;
	
	logic N, Z, C, V;
	logic [n-1:0] a, b;
	logic [6:0] hex1, hex2;
	logic [2:0] op;
	
	ALU_FPGA myAlu(a, b, op, hex1, hex2, N, Z, C, V);
	
	initial begin
		a = 5;
		b = 5;
		op = 0;
		#40
		
		a = 0;
		b = 15;
		op = 1;
		#40
		
		a = 5;
		op = 2;
		#40
		
		a = 3;
		op = 3;
	end

endmodule 