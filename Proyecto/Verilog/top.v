module top (
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
  // top_inicial
  top_inicial top_inicial_i0 (
    .clk( clk ),
    .echo( echo ),
    .trig( trig ),
    .D8( D8 ),
    .D7( D7 ),
    .D6( D6 ),
    .D5( D5 ),
    .D4( D4 ),
    .D3( D3 ),
    .D2( D2 ),
    .D1( D1 ),
    .A( A ),
    .B( B ),
    .C( C ),
    .D( D ),
    .E( E ),
    .F( F ),
    .G( G ),
    .H( H ),
    .VCC( VCC ),
    .GND( GND ),
    .GND_motor_iz(GND_motor_iz),
    .GND_motor_de(GND_motor_de),
    .respSeguidorLinea1(respSeguidorLinea1),
    .respSeguidorLinea2(respSeguidorLinea2),
    .m_izquierdo(m_izquierdo),
    .m_derecho(m_derecho),
    .VCC_respSeguidorLinea1(VCC_respSeguidorLinea1),
    .GND_respSeguidorLinea1(GND_respSeguidorLinea1),
    .VCC_respSeguidorLinea2(VCC_respSeguidorLinea2),
    .GND_respSeguidorLinea2(GND_respSeguidorLinea2)
  );
endmodule
