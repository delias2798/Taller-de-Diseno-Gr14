//Compuerta logica xor de 1 bit
//@autor: Elias A. Mendez

module xor_module(input logic a,b, output logic z);

// Usando el operador ^ correspondiente a una "xor" se guarda el resultado en z
// tabla XOR
// |a b| z |
// |0 0| 0 |
// |0 1| 1 |
// |1 0| 1 |
// |1 1| 0 |

assign z = a ^ b;

endmodule
