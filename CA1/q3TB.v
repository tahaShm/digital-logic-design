`timescale 1ns/1ns
module testQ2();
    reg a1,b1,c1;
    wire y0,y1;
    oc3SL uut(a1,b1,c1,y0,y1);
    initial begin 
        a1 = 0;
        b1 = 0;
        c1 = 0;
        #1009
        a1 = 1;
        #1009
        b1 = 1;
        #1009
        c1 = 1;
        #1009
        a1 = 0;
        #1009
        b1 = 0;
        #10007
        $stop;
    end
endmodule        