`timescale 1ns/1ns
module q1TB();
  reg fin , cin , pin;
  reg [1:0]m;
  wire fout , cout;
  wire [1:0] mo;
  UCC1Bit UCC (cin , fin , pin , m , cout , fout , mo);
  initial begin
    cin = 1;
    fin = 0;
    pin = 0;
    m = 0;
    #1000
    
    fin = 1;
    pin = 0;
    m = 0;
    #1000
    
    fin = 0;
    pin = 0;
    m = 1;
    #1000
    
    fin = 1;
    pin = 0;
    m = 1;
    #1000
    
    fin = 0;
    pin = 0;
    m = 2;
    #1000
    
    fin = 1;
    pin = 0;
    m = 2;
    
    fin = 0;
    pin = 0;
    m = 3;
    #1000
    
    fin = 1;
    pin = 1;
    m = 3;
    #1000
    
    cin = 0;
    fin = 1;
    pin = 0;
    m = 1;
    #1000
    
    cin = 0;
    fin = 1;
    pin = 0;
    m = 2;
    #1000
    #1000
    $stop;  
  end
endmodule
