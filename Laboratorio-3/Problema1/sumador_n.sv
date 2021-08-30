//Sumador completo de n bits
//@autor: Saymon Astua

module sumador_n #(parameter N = 4)
						(input [N-1:0] a, b, input c_in,
						 output [N-1:0] s, output c_out);

	wire [N:0] c;
	genvar i;

	assign c[0] = c_in;

	generate
	
		for(i = 0; i < N; i = i + 1) begin: a_for
			sumador_1 sum(a[i], b[i], c[i], s[i], c[i+1]);
		end: a_for
	
	endgenerate	

	assign c_out = c[N];
		
endmodule 