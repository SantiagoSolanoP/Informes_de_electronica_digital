module fulladderfour(
  // Inputs and output ports; 8 in, 5 out
  input in_a3,in_a2,in_a1,in_a0, //Primer numero binario 1111
		in_b3,in_b2,in_b1,in_b0, //Segundo numero binario 1111
		
  output out_s4,out_s3,out_s2,out_s1,out_s0//Salida del binario 11110
);


// Declaración de señales
// sumador1
//wire cin_s1_to_ground // Un cable del cin del sumador 1 a tierra // 
wire co_s1_to_ci_s2; // Un cable del co del sumador 1 al cin del sumador2 // 
// sumador2
wire co_s2_to_ci_s3; // Un cable del co del sumador 2 al cin del sumador3 // 
// sumador3
wire co_s3_to_ci_s4; // Un cable del co del sumador 3 al cin del sumador4 // 
// sumador4

// Declaración de submodules
// fulladder( b,a,ci.. co,s)
// sumador1
fulladder fulladder1(in_b0, in_a0, 1'b0, co_s1_to_ci_s2, out_s0); // s0
// sumador2
fulladder fulladder2(in_b1, in_a1, co_s1_to_ci_s2, co_s2_to_ci_s3, out_s1);  // s1
// sumador3
fulladder fulladder3(in_b2, in_a2, co_s2_to_ci_s3, co_s3_to_ci_s4, out_s2); // s2
// sumador4
fulladder fulladder4(in_b3, in_a3, co_s3_to_ci_s4, out_s4, out_s3); // s4 // s3 
																			

// Descripción del comportamiento
// assign out_co = co_s1_to_or | co_s2_to_or; // co_s1 or co_s2

endmodule
