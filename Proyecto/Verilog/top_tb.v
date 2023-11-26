`timescale 1ns/1ns

module top_tb; 
	reg valores_trigger;
    reg CLK;
    reg echo;
    reg respSeguidorLinea1;
	reg respSeguidorLinea2;
	wire VCC_respSeguidorLinea1;
    wire GND_respSeguidorLinea1;
    wire VCC_respSeguidorLinea2;
    wire GND_respSeguidorLinea2;
    wire GND_motor_iz;
    wire GND_motor_de;
    wire D1;
    wire A;
    wire B;
    wire C;
    wire D;
    wire E;
    wire F;
    wire G;
    wire D4;
    wire D3;
    wire D2;
    wire H;
    wire datos;
    wire trig;
    wire VCC;
    wire GND;
    wire D5;
    wire D8;
    wire D7;
    wire D6;
	wire m_izquierdo;
	wire m_derecho;

  top top0 (
    .clk(CLK),
    .echo(echo),
    .D1(D1),
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .E(E),
    .F(F),
    .G(G),
    .D4(D4),
    .D3(D3),
    .D2(D2),
    .H(H),
    .trig(trig),
    .VCC(VCC),
    .GND(GND),
    .D5(D5),
    .D8(D8),
    .D7(D7),
    .D6(D6),
    .respSeguidorLinea1(respSeguidorLinea1),
    .respSeguidorLinea2(respSeguidorLinea2),
    .m_izquierdo(m_izquierdo),
    .m_derecho(m_derecho),
    .VCC_respSeguidorLinea1(VCC_respSeguidorLinea1),
    .GND_respSeguidorLinea1(GND_respSeguidorLinea1),
    .VCC_respSeguidorLinea2(VCC_respSeguidorLinea2),
    .GND_respSeguidorLinea2(GND_respSeguidorLinea2),
    .GND_motor_iz(GND_motor_iz),
    .GND_motor_de(GND_motor_de)
  );
    integer i;
    always #10 CLK = ~CLK;
    
    wire [7:0]display = {A,B,C,D,E,F,G,H};

	
	initial begin
	  $display(" << Inicialización de variables >>");
		echo = 1'b1;
		CLK = 1'b0;
		valores_trigger = 1'b0;
		respSeguidorLinea1 = 1'b1;
		respSeguidorLinea2 = 1'b0;
		
		for (i = 0; i < 3; i = i + 1)
		  begin
			while(CLK != 1)
			begin
			#1;
			end
			if(CLK == 1)
			begin
			while(trig != 1)
			begin
			#1;
			end
			while(trig != 0)
			begin
			#1;
			end
			valores_trigger = trig;
				if(trig == 0)
				begin					
					echo <= 1;
					#(i*1000000);
					// seg255 = |_|
					// seg158 = 1.
					// seg159 = 1
					// seg65 = 6
				end 
				echo <= 0;
				
			end
			#10;
		  end

      $display("Todas las pruebas completadas.");
      $finish;
	end     
    // seg13 = 3
    // seg73 = 5

    initial
    $monitor("Tiempo: %t => display = %d, motor_izquierdo = %d, motor_derecho = %d", 
    $time, display, m_izquierdo,m_derecho);
    
    initial
	  begin
		$dumpfile("top.vcd");
		$dumpvars(0, top_tb);
	  end
    endmodule
    // seg255 = |_|
	// seg158 = 1.
	// seg31 = 7
	// seg153 = 4

	

	
