`timescale 1ns/1ns
module oc3GL (input a,b,c , output y0 , y1);
    supply1 vdd;
    supply0 gnd;
    wire w1,w2,w3;
    and #(7,7) a1(w1, a,b);
    and #(7,7) a2(w2, a,c);
    and #(7,7 )a3(w3, b,c);
    or #(8,7) o1(y1, w1,w2,w3);
    xor #(15,21) xo1(y0, a,b,c);
endmodule    



