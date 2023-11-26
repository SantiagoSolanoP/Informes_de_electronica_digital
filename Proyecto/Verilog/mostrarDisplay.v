module mostrarDisplay (
  input echo,
  input [15:0] distancia_calculada,
  input [1:0] displaySeleccionado,
  output centenas,
  output decenas,
  output unidades,
  output decimal,
  output [6:0] valorNumericoDisplay
);
  wire [3:0] s8;
  wire s9;
  wire [3:0] s10;
  wire [3:0] s11;
  wire [3:0] s12;
  wire [3:0] s16;
  wire [3:0] s17;
  wire [3:0] s22;
  wire [3:0] s23;
  wire [3:0] s24;
  wire [3:0] s26;
  wire s27;
  wire [3:0] s28;
  wire s30;
  wire s31;
  wire [3:0] s32;
  
  
  assign s9 = ~ echo;
  assign s11 = distancia_calculada[3:0];
  assign s8 = distancia_calculada[7:4];
  assign s16 = distancia_calculada[11:8];
  assign s17 = distancia_calculada[15:12];
  assign s32 = 4'b1110;

DIG_D_FF_Nbit DIG_D_FF_Nbit_i15 (
    .D( s8 ),
    .C( s9 ),
    .Q( s10 )
  );
  DIG_D_FF_Nbit DIG_D_FF_Nbit_i16 (
    .D( s11 ),
    .C( s9 ),
    .Q( s12 )
  );
  DIG_D_FF_Nbit DIG_D_FF_Nbit_i17 (
    .D( s17 ),
    .C( s9 ),
    .Q( s28 )
  );
  DIG_D_FF_Nbit DIG_D_FF_Nbit_i18 (
    .D( s16 ),
    .C( s9 ),
    .Q( s26 )
  );
  assign s31 = (s26 != 4'b0 || s28 != 4'b0);
  assign s30 = s28 != 4'b0;
  assign s22 = s30 ? s28 : s32;
  assign s23 = s31 ? s26 : s32;

  Mux_4x1_NBits Mux_4x1_NBits_i24 (
    .sel( displaySeleccionado ),
    .in_0( s22 ),
    .in_1( s23 ),
    .in_2( s10 ),
    .in_3( s12 ),
    .out( s24 )
  );

seg7 seg7_i25 (
.e( s24 ),
.s( valorNumericoDisplay )
);
visualizarDisplay visualizarDisplay_i11 (
    .sel( displaySeleccionado ),
    .in( 1'b1 ),
    .out_0( centenas ),
    .out_1( decenas ),
    .out_2( unidades ),
    .out_3( decimal )
  );
endmodule

module seg7 (
  input [3:0] e,
  output [6:0] s
);
  wire e_0;
  wire e_1;
  wire e_2;
  wire s0;
  wire s1;
  wire s2;
  wire e_3;
  wire s3;
  assign e_0 = e[0];
  assign e_1 = e[1];
  assign e_2 = e[2];
  assign e_3 = e[3];
  assign s2 = ~ e_3;
  assign s1 = ~ e_2;
  assign s0 = ~ e_1;
  assign s3 = ~ e_0;
  assign s[0] = ((e_0 & s0 & s1 & s2) | (s3 & s0 & e_2) | (s3 & e_2 & e_3));
  assign s[1] = ((e_0 & s0 & e_2) | (s3 & e_1 & e_2) | (s3 & e_1 & e_3) | (s3 & e_2 & e_3));
  assign s[2] = ((s3 & e_1 & s1) | (s3 & e_1 & e_3) | (s0 & e_2 & e_3));
  assign s[3] = ((e_0 & s0 & s1) | (s3 & s0 & e_2 & s2) | (e_0 & e_1 & e_2 & s2) | (s3 & e_1 & e_3) | (e_0 & s1 & e_3));
  assign s[4] = ((e_0 & s2) | (e_0 & s0 & s1) | (s3 & e_1 & e_2 & e_3) | (s0 & e_2 & s2));
  assign s[5] = ((e_0 & s1 & s2) | (e_0 & e_1 & s2) | (s3 & e_1 & e_2 & e_3) | (e_1 & s1 & s2));
  assign s[6] = ((e_0 & e_1 & e_2) | (s0 & s1 & s2) | (e_2 & e_3));
endmodule

module Mux_4x1_NBits 
(
    input [1:0] sel,
    input [(4 - 1):0] in_0,
    input [(4 - 1):0] in_1,
    input [(4 - 1):0] in_2,
    input [(4 - 1):0] in_3,
    output reg [(4 - 1):0] out
);
    always @ (*) begin
        case (sel)
            2'h0: out = in_0;
            2'h1: out = in_1;
            2'h2: out = in_2;
            2'h3: out = in_3;
            default:
                out = 'h0;
        endcase
    end
endmodule

module visualizarDisplay
(
    output out_0,
    output out_1,
    output out_2,
    output out_3,
    input [1:0] sel,
    input in
);
    assign out_0 = (sel == 2'h0)? in : 0;
    assign out_1 = (sel == 2'h1)? in : 0;
    assign out_2 = (sel == 2'h2)? in : 0;
    assign out_3 = (sel == 2'h3)? in : 0;
endmodule

module DIG_D_FF_Nbit
(
   input [(4-1):0] D,
   input C,
   output [(4-1):0] Q
);
    reg [(4-1):0] state;

    assign Q = state;

    always @ (posedge C) begin
        state <= D;
    end

    initial begin
        state = 0;
    end
endmodule


