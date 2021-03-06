`timescale 1ns/1ns
module freqTB();
  reg clk, rst, countDownEn, LdP;
  reg[15:0] pin;
  wire outSignal;
  frequencyDivider freqD(clk ,rst ,countDownEn ,LdP, pin, outSignal);
  always begin
    #20
    clk = ~clk;
  end
  initial begin
    clk = 0;
    rst = 0;
    countDownEn = 1;
    LdP = 1;
    pin = 6;
    #10
    #20
    LdP = 0;
    rst = 0;
    countDownEn = 1;
    
    #20
    #100000
    $stop;
  end   
endmodule



