//Restador completo de n bits
//@autor: Saymon Astua

module restador_n #(parameter N = 4)
						 (input [N-1:0] a, b, input c_in,
						  output [N-1:0] s, output c_out);
	
	//se crean los cables de conexion de los carrys
	wire [N:0] c;
	genvar i; //se crea una variable interna que trabaja como contador

	assign c[0] = c_in; //se asigna el carry de entrada

	generate
		//por cada bit se crea un restador de 1 bit y se unen entre si
		for(i = 0; i < N; i = i + 1) begin: a_for
			restador_1 res(a[i], b[i], c[i], s[i], c[i+1]);
		end: a_for
	
	endgenerate	

	assign c_out = c[N]; //se asigna el carry de salida
		
endmodule 