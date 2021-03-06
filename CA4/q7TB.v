`timescale 1ns/1ns
module q7TB();
  reg cin , clk;
  reg [7:0] pin;
  reg [1:0] m;
  wire [7:0] fout;
  wire cout;
  wire [1:0] mo;
  HIC8 hic(cin , pin , m , clk , cout , fout , mo);
  initial begin
    clk = 0;
    pin = 0;
    cin = 1;
    m = 3;
    repeat(10)
      #1000
      clk = ~clk;
      m = 1;
    repeat(10)
      #1000
      clk = ~clk;
      m = 2;
    repeat(10)
      #1000
      clk = ~clk;
      m = 0;
      
    #2000   
     
    $stop; 
  end
endmodule

