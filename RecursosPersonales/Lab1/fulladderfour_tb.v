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

  reg [7:0] inputs;
  /* inputs[0] inputs[1] inputs[2] */
  integer i;
  initial
  begin
    for (i=0; i<256; i=i+1) //2 a la8
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
  wire [4:0] outs;
  // DEVICE/DESIGN UNDER TEST
  fulladderfour dut (
    .in_b(inputs[3]), .in_a(inputs[2]), .in_ci(inputs[1]), .in_ci(inputs[0]), 
    .in_b(inputs[7]), .in_a(inputs[6]), .in_ci(inputs[5]), .in_ci(inputs[4]), .
    .out_co(outs[4]), .out_s(outs[3]) , .out_s(outs[2]) , .out_s(outs[1]) , .out_s(outs[0])
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
