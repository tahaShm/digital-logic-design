`timescale 1ns/1ns
module testQ1();
    reg a1, b1, c1, d1, e1, f1, g1;
    wire y00,y10,y20,y01,y11,y21;
    oc7_1 uut_1(a1,b1,c1,d1,e1,f1,g1,y00,y10,y20);
    oc7_2 uut_2(a1,b1,c1,d1,e1,f1,g1,y01,y11,y21);
    initial begin 
        a1 = 0;
        b1 = 0;
        c1 = 0;
        d1 = 0;
        e1 = 0;
        f1 = 0;
        g1 = 0;
        #1009
        a1 = 1;
        #1009
        b1 = 1;
        #1009
        c1 = 1;
        #1009
        d1 = 1;
        #1009
        e1 = 1;
        #1009
        f1 = 1;
        #1009
        g1 = 1;
        #1009
        a1 = 0;
        #1009
        b1 = 0;
        #10007
        $stop;
    end
endmodule        
