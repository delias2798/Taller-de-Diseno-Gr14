//Compuerta OR de n bits
//@autor: Elias A. Mendez

module or_n_module #(parameter N = 4)
						(input [N-1:0] a, b,
						 output [N-1:0] s);
	
	
	genvar i; //se crea una variable interna como contador

	generate
		//por cada bit se crea un or de 1 bit y se unen entre si
		for(i = 0; i < N; i = i + 1) begin: a_for
			or_module myOr(a[i], b[i], s[i]);
		end: a_for
	
	endgenerate
		
endmodule 