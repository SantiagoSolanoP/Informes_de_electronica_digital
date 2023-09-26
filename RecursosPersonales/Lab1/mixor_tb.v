module test;

 // STIMULUS
  /* Make a reset that pulses once. */
  reg a = 0;
  reg b = 0;
  initial
  begin
     # 1 a=0; b = 0;
     # 1 a=0; b = 1;
     # 1 a=1; b = 0;
     # 1 a=1; b = 1;
     # 1 $finish(); // [stop(), $finish()]
  end

  // RESULT FOR DEVICE/DESIGN UNDER TEST
  wire value;
  // DEVICE/DESIGN UNDER TEST
  mixor dut (.A(a), .B(b),.out(value));
  
    // MONITOR
	initial
    $monitor("Ticks: %t, a = %d, b = %d, value = %d",
		$time, a, b, value);
  // waves FORM
  initial
  begin
    $dumpfile("top.vcd");
    $dumpvars(0, test);
  end
endmodule // test
