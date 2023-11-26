module DIG_D_FF_Nbit
#(
    parameter Bits = 2,
    parameter Default = 0
)
(
   input [(Bits-1):0] D,
   input C,
   output [(Bits-1):0] Q,
   output [(Bits-1):0] \~Q
);
    reg [(Bits-1):0] state;

    assign Q = state;
    assign \~Q = ~state;

    always @ (posedge C) begin
        state <= D;
    end

    initial begin
        state = Default;
    end
endmodule


module CompUnsigned #(
    parameter Bits = 1
)
(
    input [(Bits -1):0] a,
    input [(Bits -1):0] b,
    output \> ,
    output \= ,
    output \<
);
    assign \> = a > b;
    assign \= = a == b;
    assign \< = a < b;
endmodule

module DIG_D_FF_1bit
#(
    parameter Default = 0
)
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
        state = Default;
    end
endmodule


module deviacionMotor (
  input [8:0] distancia,
  input clk,
  input activar,
  output m_izquierdo,
  output m_derecho
);
  wire [8:0] s0;
  wire s1;
  wire s2;
  wire m_derecho_temp;
  wire s3;
  wire s4;
  DIG_D_FF_Nbit #(
    .Bits(9),
    .Default(0)
  )
  DIG_D_FF_Nbit_i0 (
    .D( distancia ),
    .C( clk ),
    .Q( s0 )
  );
  assign s4 = ~ activar;
  CompUnsigned #(
    .Bits(9)
  )
  CompUnsigned_i1 (
    .a( s0 ),
    .b( 9'b1111 ),
    .\> ( s1 ),
    .\= ( s2 )
  );
  DIG_D_FF_1bit #(
    .Default(0)
  )
  DIG_D_FF_1bit_i2 (
    .D( s3 ),
    .C( s4 ),
    .Q( m_derecho_temp ),
    .\~Q ( s3 )
  );
  assign m_izquierdo = (m_derecho_temp & (s1 | s2));
  assign m_derecho = m_derecho_temp;
endmodule
