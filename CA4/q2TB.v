`timescale 1ns/1ns
module q2TB();
  reg cin;
  reg [7:0] fin , pin;
  reg [1:0]m;
  wire [7:0] fout ;
  wire cout;
  wire [1:0] mo;
  UCC8Bit UCC8 (cin , fin , pin , m , cout , fout , mo);
  initial begin
    cin = 1;
    
    fin = 7;
    pin = 10;
    m = 0;
    #1000
    
    fin = 7;
    pin = 12;
    m = 3;
    #1000
    
    fin = 7;
    pin = 10;
    m = 1;
    #1000
    
    fin = 16;
    pin = 10;
    m = 1;
    #1000
    
    fin = 15 + 64;
    pin = 10;
    m = 1;
    #1000
    
    fin = 7;
    pin = 10;
    m = 2;
    #1000
    
    fin = 16;
    pin = 10;
    m = 2;
    #1000
    
    fin = 16 + 64;
    pin = 10;
    m = 2;
    #1000
    
    
    #1000
    $stop;  
  end
endmodule
