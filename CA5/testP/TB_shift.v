`timescale 1ns/1ns
module shiftTB();
  reg clk, rst, shE;
  reg[2:0] n;
  reg[15:0] m;
  wire[15:0] shOut;
  n_shifter nSh(clk , rst , shE , n, m, shOut);
  always begin
    #20
    clk = ~clk;
  end
  initial begin
    clk = 0;
    shE = 0;
    n = 2;
    m = 1000;
    #1
    #10
    rst = 0;
    #20
    shE = 1;
    #20
    #100000
    $stop;
  end   
endmodule


