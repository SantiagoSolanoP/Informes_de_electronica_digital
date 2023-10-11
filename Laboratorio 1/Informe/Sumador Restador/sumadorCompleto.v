
module semiSumador (
  input a,b,
  output co,s
);
  assign co = (a & b);
  assign s = (b ^ a);
endmodule

module sumadorCompleto (
  input cin,b,a,
  output co,s
);
  wire s0,s1,s2;
  
  semiSumador semiSumador_i0 (
    .a( a ),
    .b( b ),
    .co( s0 ),
    .s( s1 )
  );
  semiSumador semiSumador_i1 (
    .a( s1 ),
    .b( cin ),
    .co( s2 ),
    .s( s )
  );
  assign co = (s0 | s2);
endmodule
