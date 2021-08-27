`timescale 1ns/1ns
module counterTB();
  reg clk, rst, inC, cntUp, rstDone;
  wire done;
  wire[15:0] cout;
  counter co(clk , rst , inC , cntUp ,rstDone, done , cout);
  always begin
    #20
    clk = ~clk;
  end
  initial begin
    cntUp = 0;
    clk = 0;
    #1
    rst = 1;
    #10
    rst = 0;
    rstDone = 1;
    #20
    rstDone = 0;
    #20
    inC = 1; 
    #20
    inC = 0;
    cntUp = 1;
    #100000
    $stop;
  end   
endmodule

