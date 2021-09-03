//Compuerta logica or de 1 bit
//@autor: Elias A. Mendez

module or_module(input logic a,b, output logic z);

// Usando el operador | correspondiente a una "or" se guarda el resultado en z
// tabla OR
// |a b| z |
// |0 0| 0 |
// |0 1| 1 |
// |1 0| 1 |
// |1 1| 1 |

assign z = a | b;

endmodule
