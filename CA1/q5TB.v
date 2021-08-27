`timescale 1ns/1ns
module testQ2_4();
    reg a1,b1,c1 ;
    wire y10,y11 ,y20,y21;
    oc3SL uutSL(a1,b1,c1, y10,y11);
    oc3GL uutGL(a1,b1,c1, y20,y21);
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
        #10007
        $stop;
    end
endmodule        
