module fulladderfourbits (
  // Inputs and output ports; 4 in, 3 out. Dos sumadores en casca para sumar 4 bits,
  // El primer sumador tiene la salida s0, el segundo sumador s1 y Cout1 = s2
  
  input in_b0, in_a0, //ci0 se conecta a tierra
		in_b1, in_a1, //co0 se conecta a ci1
  output out_s0,
		 out_s2, out_s1 
		 
);

// Declaración de señales
// Sumador 1
//wire cin_s1_to_GROUND // Un cable del cin0 del sumador 1 a tierra
wire co_s1_to_ci_s2   // Un cable del co del sumador 1 al ci del sumador2
// Sumador 2. no se conectan mas cables entre si.

// Declaración de submodules
// fulladder( b,a,ci.. co,s)
fulladder fulladder1(in_b0, in_a0, empty, co_s1_to_ci_s2, out_s0); // s0
// sumador2
fulladder fulladder2(in_b1, in_a1, co_s1_to_ci_s2, out_s2, out_s1);  // s2 s1

// Descripción del comportamiento

//assign out_s2 = out_co1//Implicito porque no esta out_co1 como tal, ya que la salida de fulladder2 se escogio el nombre directo

endmodule
