/*
	Problema 2. ALU con un registro en la entrada y otro en la salida
	@autor: Saymon Astua
*/

module problema2 (input clk, input [2*n-1:0] entRegPos, input [2:0] op,
						output [n+3:0] salRegNeg);	
	
	parameter n = 256;
	
	wire [2*n-1:0] salRegPos;
	wire [n+3:0] entRegNeg;
	
	
	registroPos #(2*n) regPos(clk, 1, 1, entRegPos, salRegPos);
	
	ALU #(n) myAlu(salRegPos[n-1:0], salRegPos[2*n-1:n], op, entRegNeg[n+3:4],
						entRegNeg[0], entRegNeg[1], entRegNeg[2], entRegNeg[3]);
	
	
	registroNeg #(n+4) regNeg(clk, 1, 1, entRegNeg, salRegNeg);
	
	

endmodule 