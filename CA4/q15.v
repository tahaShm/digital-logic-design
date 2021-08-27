`timescale 1ns/1ns
module q14TB();
  reg cin , clk , rst;
  wire [7:0] fio;
  reg [7:0] pin;
  reg [1:0] m;
  wire [7:0] fout;
  wire cout;
  wire [1:0] mo;
  HICq14 hic(cin  , m , pin , clk , rst , cout , fout , mo , oe , fio );
  always begin
    #500 clk = ~clk;
  end
  initial begin
    cin = 1;
    rst = 0;
    pin = 15;
    m = 3;
    clk = 0;
    #500
    repeat(5)
      #250
      pin = $random() % 256;
    repeat (5)
      #500
      m = 1;
    repeat (5)  
      #500
      m = 2;
    repeat (5)  
      #500
      m = 0;
      
    #1000
    $stop; 
  end
endmodule




