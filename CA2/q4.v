`timescale 1ns/1ns
module oc15 (input a,b,c,d,e,f,g,h,i,j,k,l,m,n,o  , output y0 , y1 , y2, y3);
    wire y00, y10, y20, y01, y11, y21, y12, y13;
    oc7_1 oc7_1_1(a, b, c, d, e, f, g, y00, y10, y20);
    oc7_1  oc7_1_2(h, i, j, k, l, m, n, y01, y11, y21);
    oc3SL oc3_1(y00, y01, o, y0, y12);
    oc3SL oc3_2(y10, y11, y12, y1, y13);
    oc3SL oc3_3(y20, y21, y13, y2, y3);
endmodule

