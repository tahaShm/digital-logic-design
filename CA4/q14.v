`timescale 1ns/1ns
module HICq14(input cin ,input[1:0] m ,input [7:0] pin ,input clk , rst , output cout , output reg[7:0] fout , output[1:0] mo ,output oe , inout [7:0] fio);
  always@(negedge clk , posedge rst) begin
    if (rst) fout <= 0;
    else begin
      case(m)
        0 : fout <= fout;
        1 : fout <= fout+1;
        2 : fout <= fout-1;
        3 : fout <= fio;
        default : fout <= fio;
      endcase
    end
  end
  assign mo = m;
  assign cout = &{fout,cin};
  assign fio = (oe)?fout:pin;
  assign oe = (m==2'b11)?0:oe;
endmodule








