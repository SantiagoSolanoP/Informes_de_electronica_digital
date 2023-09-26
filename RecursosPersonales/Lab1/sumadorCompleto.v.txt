
module semiSumador (
  input a,
  input b,
  output co,
  output s
);
  assign co = (a & b);
  assign s = (b ^ a);
endmodule

module sumadorCompleto (
  input cin,
  input b,
  input a,
  output co,
  output s
);
  wire s0;
  wire s1;
  wire s2;
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
