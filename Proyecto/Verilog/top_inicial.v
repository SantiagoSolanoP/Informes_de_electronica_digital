module top_inicial (
  input clk,
  input echo,
  input respSeguidorLinea1,
  input respSeguidorLinea2,
  output VCC_respSeguidorLinea1,
  output GND_respSeguidorLinea1,
  output VCC_respSeguidorLinea2,
  output GND_respSeguidorLinea2,
  output trig,
  output D8,
  output D7,
  output D6,
  output D5,
  output D4,
  output D3,
  output D2,
  output D1,
  output A,
  output B,
  output C,
  output D,
  output E,
  output F,
  output G,
  output H,
  output VCC,
  output GND,
  output GND_motor_iz,
  output GND_motor_de,
  output m_izquierdo,
  output m_derecho
  
);
  wire s6;
  wire [19:0] s7;
  wire [3:0] s8;
  wire s9;
  wire [3:0] s10;
  wire [3:0] s11;
  wire [3:0] s12;
  wire [15:0] s13;
  wire [15:0] s14;
  wire [15:0] s15;
  wire [3:0] s16;
  wire [3:0] s17;
  wire s18;
  wire [1:0] s19;
  wire centenas;
  wire decenas;
  wire unidades;
  wire decimal;
  wire [6:0] s25;
  wire [8:0] valorDistancia;
  
  
  assign s13 = 16'b1010101111001101;
  assign VCC = 1'b1;
  assign GND = 1'b0;
  assign D8 = 1'b1;
  assign D7 = 1'b1;
  assign D6 = 1'b1;
  assign D5 = 1'b1;  
  assign GND_motor_iz = 1'b0;
  assign GND_motor_de = 1'b0;
  assign VCC_respSeguidorLinea1 = 1'b1;
  assign GND_respSeguidorLinea1 = 1'b0;
  assign VCC_respSeguidorLinea2 = 1'b1;
  assign GND_respSeguidorLinea2 = 1'b0;
  divFreq divFreq_i4 (
    .cl( clk ),
    .dvcl( s18 )
  );
  senalTriger senalTriger_i6 (
    .clk( clk ),
    .pulso( trig  )
  );

  contadorSeleccionarDisplay contadorSD1 (
    .C( s18 ),
    .out( s19 )
  ); 
  
  obtener_D_U_D_C_Distancia obtener_D_U_D_C_Distancia_io(
    .echo( echo ),
    .clk( clk ),
    .distancia_calculada( s15 ),
    .distanciaEnElRango( s6 ),
    .distancia_temporal(valorDistancia)
  );
  
  controlMotor controlMotor_1(
	  .distancia(valorDistancia),
	  .clk( clk ),
	  .respSeguidorLinea1(respSeguidorLinea1),
	  .respSeguidorLinea2(respSeguidorLinea2),
	  .m_izquierdo(m_izquierdo),
	  .m_derecho(m_derecho)
	);
  
  mostrarDisplay mostrarDisplay_io(
    .echo( echo ),
    .distancia_calculada( s15 ),
    .displaySeleccionado( s19 ),
    .centenas( centenas ),
    .decenas( decenas ),
    .unidades( unidades ),
    .decimal( decimal ),
    .valorNumericoDisplay( s25 )
  );
  assign D4 = ~ centenas;
  assign D3 = ~ decenas;
  assign D2 = ~ unidades;
  assign D1 = ~ decimal;
  
  assign A = s25[0];
  assign B = s25[1];
  assign C = s25[2];
  assign D = s25[3];
  assign E = s25[4];
  assign F = s25[5];
  assign G = s25[6];
  colocarPunto colocarPunto_1(
	  .echo(echo),
	  .transmitido(s6),
	  .centenas(centenas),
	  .unidades(unidades),
	  .H(H)
	); 
endmodule

module DIG_Counter_20bit
(
    output [(20-1):0] out,
    output ovf,
    input C,
    input en,
    input clr
);
    reg [(20-1):0] count;

    always @ (posedge C) begin
        if (clr)
          count <= 'h0;
        else if (en)
          count <= count + 1'b1;
    end

    assign out = count;
    assign ovf = en? &count : 1'b0;

    initial begin
        count = 'h0;
    end
endmodule

module contadorSeleccionarDisplay
(
    output [(2-1):0] out,
    output ovf,
    input C
);
	wire en = 1'b1;
    wire clr = 1'b0;
    reg [(2-1):0] count;

    always @ (posedge C) begin
        if (1'b0)
          count <= 'h0;
        else if (1'b1)
          count <= count + 1'b1;
    end

    assign out = count;
    assign ovf = 1'b1 ? &count : 1'b0;

    initial begin
        count = 'h0;
    end
endmodule

module DIG_D_FF_1bit
(
   input D,
   input C,
   output Q,
   output \~Q
);
    reg state;

    assign Q = state;
    assign \~Q = ~state;

    always @ (posedge C) begin
        state <= D;
    end

    initial begin
        state = 0;
    end
endmodule

module divFreq(
  input cl,
  output reg dvcl = 0
);

//modificar LIMIT para menor o mayor frecuencia de la visualizacion
//de los displays
parameter SIZE = 11; 
parameter LIMIT = 11'b11111111111;//2047

reg [SIZE-1:0] count = 0;

always@(posedge cl)
begin
  if(count == LIMIT)
  begin
    count <= 0;
    dvcl <= ~dvcl;
  end
  else
  begin
    count <= count + 1;
  end
end
endmodule

module senalTriger (
  input clk,
  output pulso
);  
  wire[19:0] ctd;
  DIG_Counter_20bit DIG_Counter_20bit_i0 (
    .en( 1'b1 ),
    .C( clk ),
    .clr( 1'b0 ),
    .out( ctd )
  );
  assign pulso =  ctd <= 20'b100010011;
endmodule

module colocarPunto(
  input echo,
  input transmitido,
  input centenas,
  input unidades,
  output H
);  
  wire[19:0] ctd;
  DIG_D_FF_1bit DIG_D_FF_1bit_i12 (
    .D( transmitido ),
    .C( ~echo ),
    .Q( distanciaCorrecta )
  );
  assign H = ((~ centenas & ~ distanciaCorrecta ) | (distanciaCorrecta  & ~ unidades));
endmodule



