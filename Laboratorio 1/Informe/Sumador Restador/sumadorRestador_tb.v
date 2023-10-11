`timescale 1us/1us

module sumadorRestador_tb;
    reg op;
	reg D1;
    reg C1;
    reg B1;    
    reg A1; 
    reg D2;
    reg C2;
    reg B2;
    reg A2;    
    
    wire e;
    wire d;
    wire c;
    wire b;
    wire a;

  sumadorRestador sumadorRestador0 (
    .op(op),
	.D1(D1),.C1(C1),.B1(B1),.A1(A1),
    .D2(D2),.C2(C2),.B2(B2),.A2(A2),    
    .e(e),.d(d),.c(c),.b(b),.a(a)
  );

    reg [13:0] valoresDePrueba[0:511];
    integer i;
    integer j;
    integer k;
     
        

    initial begin
    
    for (i = 0; i < 16; i = i + 1)
      begin
		for (j = 0; j < 16; j = j + 1)
		begin
			valoresDePrueba[i+j*16][4:0]  = i+j;
			valoresDePrueba[i+j*16][8:5]  = i;
			valoresDePrueba[i+j*16][13:9]  = j;		
		end
      end
      
      for (i = 0; i < 16; i = i + 1)
      begin
		for (j = 0; j < 16; j = j + 1)
		begin
			valoresDePrueba[256+i+j*16][4:0]  = {D1-D2,C1-C2,B1-B2,A1-A2};
			valoresDePrueba[256+i+j*16][8:5]  = i;
			valoresDePrueba[256+i+j*16][12:9]  = j;	
			valoresDePrueba[256+i+j*16][13]  = 1;			
		end
      end   

      for (i = 0; i < 512; i = i + 1)
      begin
        op = valoresDePrueba[i][13];
        D1 = valoresDePrueba[i][12];
        C1 = valoresDePrueba[i][11];
        B1 = valoresDePrueba[i][10];
        A1 = valoresDePrueba[i][9];
        D2 = valoresDePrueba[i][8];
        C2 = valoresDePrueba[i][7];
        B2 = valoresDePrueba[i][6];
        A2 = valoresDePrueba[i][5];
        #1;
        if (valoresDePrueba[i][4] !== 1'hx)
        begin
          if (e !== valoresDePrueba[i][4])
          begin
            $display("%d:e: Error (se esperaba %h), se encontro %h", i, valoresDePrueba[i][4], e);
            $finish;
          end
        end
        if (valoresDePrueba[i][3] !== 1'hx)
        begin
          if (d !== valoresDePrueba[i][3])
          begin
            $display("%d:d: Error (se esperaba %h), se encontro %h", i, valoresDePrueba[i][3], d);
            $finish;
          end
        end
        if (valoresDePrueba[i][2] !== 1'hx)
        begin
          if (c !== valoresDePrueba[i][2])
          begin
            $display("%d:c: Error (se esperaba %h), se encontro %h", i, valoresDePrueba[i][2], c);
            $finish;
          end
        end
        if (valoresDePrueba[i][1] !== 1'hx)
        begin
          if (b !== valoresDePrueba[i][1])
          begin
            $display("%d:b: Error (se esperaba %h), se encontro %h", i, valoresDePrueba[i][1], b);
            $finish;
          end
        end
        if (valoresDePrueba[i][0] !== 1'hx)
        begin
          if (a !== valoresDePrueba[i][0])
          begin
            $display("%d:a: Error (se esperaba %h), se encontro %h", i, valoresDePrueba[i][0], a);
            $finish;
          end
        end
      end

      $display("Todas las pruebas completadas.");
    end
    initial
    $monitor("Tiempo: %t, D1 = %d, C1 = %d, B1 = %d,A1 = %d, D2 = %d, C2 = %d ,B2 = %d, A2 = %d=> e = %d, d = %d, c =%d, b = %d, a = %d", 
    $time, D1, C1, B1, A1, D2, C2, B2, A2, e, d, c, b, a);
    
    initial
	  begin
		$dumpfile("sumadorRestador.vcd");
		$dumpvars(0, sumadorRestador_tb);
	  end
    endmodule
