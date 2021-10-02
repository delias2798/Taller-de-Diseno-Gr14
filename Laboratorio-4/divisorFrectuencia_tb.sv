
`timescale 1 ns/1 ns
module divisorFrectuencia_tb();
	logic clk_50Mhz, clk_1Hz;

	Cloks divisor(clk_50Mhz, clk_1Hz);

	always begin
		clk_50Mhz <=0; #10;
		clk_50Mhz <=1; #10;
	end

	initial begin
		clk_50Mhz = 0;
	
	end
	
	
endmodule 