`timescale 1ns/1ns
module tanTB();
    reg clk = 0,rst = 0,start = 0;
    reg [15:0] x;
    parameter c = 20;
    wire busy,ready;
    wire [15:0] tan ;
    TanX uut (.ready(ready), .clk(clk), .rst(rst), .start(start), .x(x), .busy(busy), .tan(tan));
    always #(c) clk = ~clk;
    initial begin
        x = 16'b0110010000000000;//~pi/4
        #(5*c) rst = 1;
        #(5*c) rst = 0;
        #(5*c) start = 1;
        #(5*c) start = 0;
        #(100*c)
        x = 16'b0100001100000000;//~pi/6
        #(10*c) start = 1;
        #(10*c) start = 0;
        #(10000*c);
        $stop;
    end
endmodule



