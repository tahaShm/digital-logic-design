`timescale 1ns/1ns
module HIC8(input cin ,input[7:0] pin ,input[1:0] m ,input clk , output cout , output[7:0] fout , output[1:0] mo);
  wire [7:0] fi;
  UCC8Bit UCC8 (cin , fout , pin , m , cout , fi , mo);
  genvar i;
  generate 
    for (i=0;i<8;i=i+1) begin
      DLatch dl(fi[i] , clk , fout[i]);
    end
  endgenerate  
endmodule





