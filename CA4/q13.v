`timescale 1ns/1ns
module HICq13(input cin ,input[7:0] pin ,input[1:0] m ,input clk , rst , output cout , output reg[7:0] fout , output[1:0] mo);
  always@(negedge clk , posedge rst) begin
    if (rst) fout <= 0;
    else begin
      case(m)
        0 : fout <= fout;
        1 : fout <= fout+1;
        2 : fout <= fout-1;
        3 : fout <= pin;
        default : fout <= fout;
      endcase
    end
  end
  assign mo = m;
  assign cout = &{fout,cin};
endmodule







