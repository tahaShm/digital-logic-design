`timescale 1ns/1ns
module q11TB();
  reg cin , clk , rst;
  reg [7:0] pin;
  reg [1:0] m;
  wire [7:0] fout;
  wire cout;
  wire [1:0] mo;
  HIC8MS hic(cin , pin , m , clk , rst , cout , fout , mo);
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
    #10000
    $stop; 
  end
endmodule


