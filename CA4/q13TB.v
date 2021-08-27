`timescale 1ns/1ns
module q13TB();
  reg cin , clk , rst;
  reg [7:0] pin;
  reg [1:0] m;
  wire [7:0] fout;
  wire cout;
  wire [1:0] mo;
  HICq13 hic(cin , pin , m , clk , rst , cout , fout , mo);
  always begin
    #500 clk = ~clk;
  end
  initial begin
    cin = 1;
    rst = 0;
    pin = 10;
    m = 3;
    clk = 0;
    #250
    rst = 0;
    pin = 10;
    m = 1;
    clk = 0;
    #500
    rst = 0;
    pin = 10;
    m = 1;
    clk = 0;
    #500
    rst = 0;
    pin = 10;
    m = 2;
    clk = 0;
    #500
    rst = 0;
    pin = 10;
    m = 2;
    clk = 0;
    #500
    rst = 0;
    pin = 10;
    m = 0;
    clk = 0;
    #500
    rst = 1;
    pin = 10;
    m = 2;
    clk = 0;
    #500
    #10000
    $stop; 
  end
endmodule



