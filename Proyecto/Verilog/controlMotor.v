module controlMotor (
  input [8:0] distancia,
  input clk,
  input respSeguidorLinea1,
  input respSeguidorLinea2,
  output m_izquierdo,
  output m_derecho
);
  wire [8:0] s0;
  wire s1;
  DIG_D_FF_9bit DIG_D_FF_Nbit_i0 (
    .D( distancia ),
    .C( clk ),
    .Q( s0 )
  );
  assign s1 = s0 >= 9'b1111;

  assign m_izquierdo = s1 & respSeguidorLinea1;
  assign m_derecho = respSeguidorLinea2 | ~s1;
endmodule

module DIG_D_FF_9bit
(
   input [(9-1):0] D,
   input C,
   output [(9-1):0] Q,
   output [(9-1):0] \~Q
);
    reg [(9-1):0] state;

    assign Q = state;
    assign \~Q = ~state;

    always @ (posedge C) begin
        state <= D;
    end

    initial begin
        state = 0;
    end
endmodule
