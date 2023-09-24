module sumadorCompleto_tb;

  // STIMULUS
  /* Make a reset that pulses once. */
  reg a = 0;
  reg b = 0;
  reg ci = 0;
  initial
  begin
     ci = 0; b = 0; a=0;
     # 1 ci = 0; b = 0; a=1;
     # 1 ci = 0; b = 1; a=0;
     # 1 ci = 0; b = 1; a=1;
     # 1 ci = 1; b = 0; a=0;
     # 1 ci = 1; b = 0; a=1;
     # 1 ci = 1; b = 1; a=0;
	 # 1 ci = 1; b = 1; a=1;
     #1 $finish(); // [stop(), $finish()]
  end
   // RESULT FOR DEVICE/DESIGN UNDER TEST
  wire s;
  wire co;
  // DEVICE/DESIGN UNDER TEST
  sumadorCompleto dut (ci, b, a, co, s);

  // MONITOR
  initial
    $monitor("Time: %t, cin = %d, b = %d, a = %d => co = %d, s = %d", $time, ci, b, a, co, s);
  // SAVES FORM
  initial
  begin
    $dumpfile("sumadorCompleto.vcd");
    $dumpvars(0, sumadorCompleto_tb);
  end
endmodule // test

