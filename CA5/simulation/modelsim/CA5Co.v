`timescale 1ns/1ns
module CA5Co(input clk, rst, done, adjust , input[2:0] n , output reg cntUp, rstDone, shE, LdP, downCountEn, valid);
  reg [2:0] ps, ns;
  reg [2:0] counter = 3'b000;
  always@(posedge clk , posedge rst) begin
    ns <= 2'b0;
    valid <= 1'b0;
    cntUp <= 1'b0;
    rstDone <= 1'b0;
    shE <= 1'b0;
    LdP <= 1'b0;
    downCountEn <= 1'b0;
    case(ps)
      0:begin
        valid = 1;
        rstDone <= 1;
        ns <= adjust?3'b001:3'b000;
      end
      1:ns <= adjust?3'b001:3'b010;
      2:begin
        cntUp <= 1;
        ns <= done?3'b011:3'b010;
      end
      3:begin
        shE <= 1;
        ns <= 3'b100;
      end
      4:begin
        LdP <= 1;
        downCountEn <= 1;
        counter <= counter + 1;
        ns <= 3'b101;
      end
      5:begin
        LdP <= 1;
        downCountEn <= 1;
        counter <= counter + 1;
        valid <= n==counter?1'b1:1'b0;
        ns <= valid?3'b000:3'b101;
      end
    endcase
  end
  always@(posedge clk , posedge rst) if(rst) ps<=3'b000;else ps<=ns;
endmodule