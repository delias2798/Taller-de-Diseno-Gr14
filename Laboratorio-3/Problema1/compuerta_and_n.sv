//Compuerta AND de n bits
//@autor: Elias A. Mendez

module and_n_module #(parameter N = 4)
						(input [N-1:0] a, b,
						 output [N-1:0] s);
	
	
	genvar i; //se crea una variable interna como contador

	generate
		//por cada bit se crea un and de 1 bit y se unen entre si
		for(i = 0; i < N; i = i + 1) begin: a_for
			and_1 and_module(a[i], b[i], s[i])
		end: a_for
	
	endgenerate
		
endmodule 
