module obtener_D_U_D_C_Distancia (
  input echo,
  input clk,
  output [15:0] distancia_calculada,
  output distanciaEnElRango,
  output [8:0] distancia_temporal
);
 
  wire [19:0] s0;
  wire [3:0] s1;
  wire [3:0] s2;
  wire [3:0] s3;
  wire [3:0] s4;
  wire [3:0] s5;
  wire [15:0] s13;
  
  assign s13 = 16'b1010101111001101;  //hABCD
  
  contadorTiempoEcho contadorTiempoEcho_i0 (
    .echo( echo ),
    .C( clk ),
    .out( s0 )
  );
  
  medicion_distancia medicion_distancia_i5 (
    .cn( s0 ),
    .l( distancia_temporal ),
    .ld( s1 )
  );

  bitsToBcd  bitsToBcd_i8 (
    .l( distancia_temporal ),
    .c( s2 ),
    .d( s3 ),
    .u( s4 )
  );
  assign s5 = (s1 < 4'b1010)? s1 : s1-4'b1010; 
  assign distanciaEnElRango = distancia_temporal <= 9'b10001100; // 9'b10001100 -> d140    
  assign distancia_calculada = distanciaEnElRango ? {s2,s3,s4,s5} : s13;
  
endmodule

module medicion_distancia (
  input [19:0] cn,
  output [8:0] l,
  output [3:0] ld
);
  wire [28:0] s0;
  assign s0 = ( 9'b101100111 ) * cn;
  assign l = s0[28:20];
  assign ld = s0[19:16];
endmodule

module bitsToBcd  (
  input [8:0] l,
  output [3:0] c,
  output [3:0] d,
  output [3:0] u
);
// l es maximo d511, b111111111

assign c = (l <= 9'b111111111)? l/100 : 1'b0; // l < d512
assign d = (l <= 9'b111111111)? l/10-c*10 : 1'b0;
assign u = (l <= 9'b111111111)? l-c*100-d*10 : 1'b0;

endmodule

module contadorTiempoEcho
(
    output [(20-1):0] out,
    output ovf,
    input C,
    input echo
);
    reg [(20-1):0] count;

    always @ (posedge C) begin
        if (~ echo)
          count <= 'h0;
        else if (echo)
          count <= count + 1'b1;
    end

    assign out = count;
    assign ovf = echo? &count : 1'b0;

    initial begin
        count = 'h0;
    end
endmodule


