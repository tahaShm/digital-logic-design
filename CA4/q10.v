`timescale 1ns/1ns
module MSDffR(input d , r , clk , output q);
    wire din , w;
    and A1(din , ~r , clk);
    DLatch d1(din , clk , w);
    DLatch d2(w , ~clk , q);
endmodule

