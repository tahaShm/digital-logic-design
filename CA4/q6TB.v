`timescale 1ns/1ns
module q6TB();
  reg d, clk;
  wire q;
  DLatch SRL(d ,  clk , q);
  initial begin
    clk = 1;
    d = 0;
    #200
    
    d = 1;
    #200
    
    d = 0;
    #200
     
    $stop; 
  end
endmodule
