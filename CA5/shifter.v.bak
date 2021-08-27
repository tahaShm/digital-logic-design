`timescale 1ns/1ns
module nShifter(input clk, rst, shE ,input[2:0] n ,input[15:0] m , output reg[15:0] shOut);
  always@(posedge clk, posedge rst)begin
    if (rst) shOut <= 16'b0;
    else if (shE) shOut <= m>>n;
  end
endmodule
