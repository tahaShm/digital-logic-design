`timescale 1ns/1ns
module DLatch(input d , clk , output q);
  wire [1:0]w;
  wire qq;
  wire Nd;
  not #(7) NO(Nd , d);
  nand #(7) N1(w[0] , d , clk);
  nand #(7) N2(w[1] , Nd, clk);
  nand #(7) N3(q , w[0] , qq);
  nand #(7) N4(qq , w[1] , q); 
endmodule
