//Compuerta logica and de 1 bit
//@autor: Elias A. Mendez

module and_module(input logic a,b, output logic z);

// Usando el operador & correspondiente a una "and" se guarda el resultado en z
// tabla AND
// |a b| z |
// |0 0| 0 |
// |0 1| 0 |
// |1 0| 0 |
// |1 1| 1 |

assign z = a & b;

endmodule
