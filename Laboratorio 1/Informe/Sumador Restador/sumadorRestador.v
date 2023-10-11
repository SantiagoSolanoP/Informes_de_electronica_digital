module sumadorRestador (
  input op,D1,C1,B1,A1,D2,C2,B2,A2, 
  output e,d,c,b,a
);
  wire s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
  
  assign s12 = ~ ((~ (D2 ^ D1) & ((~ (C2 ^ C1) & ((~ A2 & ~ (B2 ^ B1) & A1) | (~ B2 & B1))) | (~ C2 & C1))) | (~ D2 & D1));
  assign s13 = ~ s12;
  assign s0 = (((A2 & s13) | (A1 & s12)) ^ op);
  assign s10 = (((B2 & s13) | (B1 & s12)) ^ op);
  assign s8 = (((C2 & s13) | (C1 & s12)) ^ op);
  assign s4 = (((D2 & s13) | (D1 & s12)) ^ op);
  assign s5 = ((D1 & s13) | (D2 & s12));
  assign s9 = ((C1 & s13) | (C2 & s12));
  assign s11 = ((B1 & s13) | (B2 & s12));
  assign s1 = ((A1 & s13) | (A2 & s12));
  sumadorCompleto sumadorCompleto_i0 (
    .cin( op ),
    .b( s0 ),
    .a( s1 ),
    .s( a ),
    .co( s2 )
  );
  sumadorCompleto sumadorCompleto_i1 (
    .cin( s2 ),
    .b( s10 ),
    .a( s11 ),
    .s( b ),
    .co( s7 )
  );
  sumadorCompleto sumadorCompleto_i2 (
    .cin( s7 ),
    .b( s8 ),
    .a( s9 ),
    .s( c ),
    .co( s3 )
  );
  sumadorCompleto sumadorCompleto_i3 (
    .cin( s3 ),
    .b( s4 ),
    .a( s5 ),
    .s( d ),
    .co( s6 )
  );
  assign e = (op ^ s6);
  
endmodule

