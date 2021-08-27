`timescale 1ns/1ns
module SRLatch(input s, r , clk , output q);
  wire [1:0]w;
  wire qq;
  nand #(7) N1(w[0] , s , clk);
  nand #(7) N2(w[1] , r, clk);
  nand #(7) N3(q , w[0] , qq);
  nand #(7) N4(qq , w[1] , q); 
endmodule