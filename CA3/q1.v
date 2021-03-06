`timescale 1ns/1ns
module n_bit_adder #(parameter n = 4)(input [n-1:0] a , b , input cin , output [n-1:0]s , output co);
  wire [n:0] c;
  assign c[0] = cin;
  genvar i;
  generate
    for (i=0;i<n;i=i+1) begin
      assign#(20*i+1) s[i] = (a[i] + b[i] + c[i])%2;
      assign#(15*i+1) c[i+1] = (a[i] + b[i] + c[i])/2;
    end
  endgenerate
  assign#(15*n) co = c[n]; 
endmodule