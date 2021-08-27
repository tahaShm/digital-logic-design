`timescale 1ns/1ns
module frequencyMultiplier(input clk, rst, inSignal, adjust , input[2:0] n , output reg valid , outSignal);
  reg cntUp, rstDone, shE, LdP, downCountEn;
  reg done;
  CA5 dp (outSignal,clk,rst,countDownEn,LdP,shE,inSignal,cntUp,rstDone,n,done);
  CA5Co co (clk, rst, done, adjust , n , cntUp, rstDone, shE, LdP, downCountEn, valid);
endmodule