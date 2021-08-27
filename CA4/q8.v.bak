`timescale 1ns/1ns
module MSDff(input d , clk , output q);
    wire w;
    DLatch d1(d , clk , w);
    Dlatch d2(w , ~clk , q);
endmodule
