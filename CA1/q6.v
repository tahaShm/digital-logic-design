`timescale 1ns/1ns
module oc3ASS (input a,b,c , output y0 , y1);
  assign #(15,21) y0 = a^b^c ;
  assign #(15,14) y1 = a&b|a&c|b&c;
endmodule  