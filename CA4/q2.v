`timescale 1ns/1ns
module UCC8Bit(input cin ,input [7:0] fin , pin ,input[1:0] m , output cout , output[7:0] fout , output [1:0] mout);
  wire [6:0] co;
  wire [1:0] mo [0:6];
  genvar i;
  generate
    for (i=0;i<8;i=i+1) begin
      if (i==0) UCC1Bit uuc(cin , fin[i] , pin[i] , m , co[i] , fout[i] , mo[i]);
      else 
        if (i>0 && i<7) UCC1Bit uuc(co[i-1] , fin[i] , pin[i] , mo[i-1] , co[i] , fout[i] , mo[i]);
      else
        if (i==7) UCC1Bit uuc(co[i-1] , fin[i] , pin[i] , mo[i-1] , cout , fout[i] , mout);
    end
  endgenerate
endmodule




