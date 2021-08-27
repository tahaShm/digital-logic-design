`timescale 1ns/1ns
module oc7_1 (input a,b,c,d,e,f,g,  output y0 , y1 , y2);
    wire y00, y10, y01, y11, y12;
    oc3SL oc3_1(a, b, c, y00, y10);
    oc3SL oc3_2(d, e, f, y01, y11);
    oc3SL os3_3(g, y00, y01, y0, y12);
    oc3SL os3_4(y10, y11, y12, y1, y2);
endmodule
