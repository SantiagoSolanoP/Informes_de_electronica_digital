`timescale 1ns/1ns

module parteDecimal_tb; 
	reg [3:0]b;
  wire [3:0]d;;

  fraccion fraccion0 (
    .b(b),
    .d(d)
  );
    integer i;
    
    //wire [1:0]display = {s,cbo};

	
	initial begin
	  $display(" << Inicialización de variables >>");
		
		for (i = 0; i < 20; i = i + 1)
		  begin
		  b <= i;
		  #10;
		  end

      $display("Todas las pruebas completadas.");
      $finish;
	end     
        

    initial
    $monitor("Tiempo: %t => display = %b", 
    $time, d);
    
    initial
	  begin
		$dumpfile("top.vcd");
		$dumpvars(0, parteDecimal_tb);
	  end
    endmodule
