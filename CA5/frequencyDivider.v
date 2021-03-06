`timescale 1ns/1ns
module frequencyDivider(input clk, rst, countDownEn, LdP, input[15:0] pin , output reg outSignal);
  reg[15:0] outBus;
 always@(posedge clk, posedge rst)begin
    outSignal <= &{~outBus};
    if (rst) outSignal <= 0;
    else if (countDownEn) begin 
      if (LdP) outBus <= pin;
      else outBus <= outBus - 1;
      if (outBus == 0)begin
       outBus <= pin;
      end
    end
  end
endmodule
