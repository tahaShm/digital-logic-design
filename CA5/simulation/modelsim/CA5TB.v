`timescale 1ns/1ns
module CA5TB();
  reg inSignal , rst , clk , adjust , valid;
  reg [2:0] n;
  wire outSignal;
  frequencyMultiplier uut(clk , rst , inSignal , adjust , n , valid , outSignal);
  always #20 clk = ~clk;
  always #1000 inSignal = ~inSignal;
  initial begin
    rst = 0;
    clk = 0;
    inSignal = 0;
    #1000
    rst = 1;
    #10000000
    $stop;  
  end
endmodule
