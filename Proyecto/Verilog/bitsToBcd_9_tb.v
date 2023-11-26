`timescale 1ns/1ns

module bitsToBcd_9_tb; 
	reg [8:0]l;
    wire [3:0]c;
    wire [3:0]d;
    wire [3:0]u;

  bitsToBcd top0 (
    .l(l),
    .c(c),
    .d(d),
    .u(u)
  );
    integer i;

	
	initial begin
	  $display(" << Inicialización de variables >>");
		
		for (i = 0; i < 512; i = i + 1)
		  begin
		  l <= i;
		  #10;
		  end

      $display("Todas las pruebas completadas.");
      $finish;
	end     
        

    initial
    $monitor("Tiempo: %t => c = %d,d = %d,u = %d,i =%d", 
    $time, c,d,u,i);
    
    initial
	  begin
		$dumpfile("top.vcd");
		$dumpvars(0, bitsToBcd_9_tb);
	  end
    endmodule
