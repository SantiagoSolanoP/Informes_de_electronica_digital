module testbech;

  // STIMULUS
  // reg a = 0, b = 0;
  // initial
  // begin
  //   # 17 a = 1, b = 1;
  //   # 11 a = 1, b = 0;
  //   # 29 a = 1, b = 1;
  //   # 11 a = 1, b = 0;
  //   # 100 $finish(); // [stop(), $finish()]
  // end

  reg [3:0] inputs;  //son 4 bits
  //lo que se obtendria es 100, pero complementando se obtiene 101
  /* inputs[0] inputs[1] inputs[2] */
  integer i;
  initial
  begin
    for (i=0; i<32; i=i+1) //2 a la4
    begin
      inputs = i;
      #1;
    end
  end

  // CLOCK STIMULUS
  // Make a regular pulsing clock.
  // reg clk = 0;
  // always #5 clk = !clk;

  /* // RESULT FOR DEVICE/DESIGN UNDER TEST */
  wire [2:0] outs;//s2 s1 s0 
  // DEVICE/DESIGN UNDER TEST
  fulladderfour dut (
    .in_b(inputs[3]), .in_a(inputs[2]), .in_ci(inputs[1]), .in_ci(inputs[0]), 
    .out_s(outs[2]) , .out_s(outs[1]) , .out_s(outs[0])
  );

  /* // MONITOR */
  // initial
  //   $monitor("Time: %t, a = %d, b = %d => out = %d",
  //     $time, a, b, value);

  // WAVES IN VCD TO OPEN IN GTKWAVE
  initial
  begin
    $dumpfile("top.vcd");
    $dumpvars(0, testbech);
  end


endmodule
