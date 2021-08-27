`timescale 1ns/1ns
module oc3SL (input a,b,c , output y0 , y1);
    supply1 vdd;
    supply0 gnd;
    wire w1,w2,w3,w4,w5,w6,w7,w8,w9 , v1,v2,v3,v4;
    pmos #(5,6,7) p1(w1,vdd,b);
    pmos #(5,6,7) p2(w2,vdd,~b);
    pmos #(5,6,7) p3(w3,w1,~c);
    pmos #(5,6,7) p4(w3,w2,c);
    pmos #(5,6,7) p5(y0,w3,a);
    pmos #(5,6,7) p6(w4,vdd,~b);
    pmos #(5,6,7) p7(w5,vdd,b);
    pmos #(5,6,7) p8(w6,w4,~c);
    pmos #(5,6,7) p9(w6,w5,c);
    pmos #(5,6,7) p10(y0,w6,~a);

    nmos #(3,4,5) n1(y0,w9,b);
    nmos #(3,4,5) n2(y0,w9,c);
    nmos #(3,4,5) n3(w9,w8,~b);
    nmos #(3,4,5) n4(w9,w8,~c);
    nmos #(3,4,5) n5(y0,w8,~a);
    nmos #(3,4,5) n6(w8,w7,~b);
    nmos #(3,4,5) n7(w8,w7,c);
    nmos #(3,4,5) n8(w7,gnd,b);
    nmos #(3,4,5) n9(w7,gnd,~c);
    nmos #(3,4,5) n10(w8,gnd,a);


    pmos #(5,6,7) p11(v1,vdd,~b);
    pmos #(5,6,7) p12(y1,v1,~c);
    pmos #(5,6,7) p13(v2,vdd,~a);
    pmos #(5,6,7) p14(y1,v2,~b);
    pmos #(5,6,7) p15(y1,v2,~c);

    nmos #(3,4,5) n11(y1,v3,~a);
    nmos #(3,4,5) n12(y1,v4,~b);
    nmos #(3,4,5) n13(v4,v3,~c);
    nmos #(3,4,5) n14(v3,gnd,~b);
    nmos #(3,4,5) n15(v3,gnd,~c);
endmodule    



