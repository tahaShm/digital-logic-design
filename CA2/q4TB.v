`timescale 1ns/1ns
module testQ4();
    reg a1, b1, c1, d1, e1, f1, g1, h1, i1, j1, k1, l1, m1, n1, o1;
    wire y00,y10,y20,y30;
    oc15 uut_1(a1,b1,c1,d1,e1,f1,g1,h1,i1,j1,k1,l1,m1,n1,o1,y00,y10,y20,y30);
    initial begin 
        a1 = 0;
        b1 = 0;
        c1 = 0;
        d1 = 0;
        e1 = 0;
        f1 = 0;
        g1 = 0;
        h1 = 0;
        i1 = 0;
        j1 = 0;
        k1 = 0;
        l1 = 0;
        m1 = 0;
        n1 = 0;
        o1 = 0;
        #101
        a1 = 1;
        #101
        b1 = 1;
        #101
        c1 = 1;
        #101
        d1 = 1;
        #101
        e1 = 1;
        #101
        f1 = 1;
        #101
        g1 = 1;
        #301
        h1 = 1;
        #301
        i1 = 1;
        #301
        j1 = 1;
        #301
        k1 = 1;
        #301
        l1 = 1;
        #301
        m1 = 1;
        #301
        n1 = 1;
        #301
        o1 = 1;
        #301
        b1 = 0;
        #301
        a1 = 0;
        #301
        k1 = 0;
        #4009
        $stop;
    end
endmodule        


