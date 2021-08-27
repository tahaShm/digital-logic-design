`timescale 1ns/1ns
module q4TB();
  reg s, r, clk;
  wire q;
  SRLatch SRL(s, r, clk , q);
  initial begin
    clk = 1;
    s = 0;
    r = 0;
    #200
    
    s = 0;
    r = 1;
    #200
    
    s = 1;
    r = 0;
    #200
    
    s = 0;
    r = 0;
    #200
    
    s = 1;
    r = 1;
    #200
    
    s = 0;
    r = 0;
    #200
    
    s = 1;
    r = 0;
    #200
     
    $stop; 
  end
endmodule