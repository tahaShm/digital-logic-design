`timescale 1ns/1ns
module one_counter_127bit (input [126:0]a , output [6:0]s);
  wire [31:0] w1;
  wire [1:0] w2[0:15];
  wire [2:0] w3[0:7];
  wire [3:0] w4[0:3];
  wire [4:0] w5[0:1];
  wire [5:0] w6;
  wire [31:0] c1;
  wire [15:0] c2;
  wire [7:0] c3;
  wire [4:0] c4;
  wire [2:0] c5;
  wire c6;
  genvar i;
  generate
    for (i=0;i<32;i=i+1) begin
      n_bit_adder #(1) add1 (a[3*i] , a[3*i+1] , a[3*i+2] , w1[i] , c1[i]);
    end
    for (i=0;i<16;i=i+1) begin
      n_bit_adder #(2) add2 ({c1[2*i],w1[2*i]} , {c1[2*i+1],w1[2*i+1]} , a[96+i] , w2[i] , c2[i]); 
    end
    for (i=0;i<8;i=i+1) begin
      n_bit_adder #(3) add3 ({c2[2*i],w2[2*i]} , {c2[2*i+1],w2[2*i+1]} , a[96+16+i] , w3[i] , c3[i]); 
    end
    for (i=0;i<4;i=i+1) begin
      n_bit_adder #(4) add4 ({c3[2*i],w3[2*i]} , {c3[2*i+1],w3[2*i+1]} , a[96+16+8+i] , w4[i] , c4[i]); 
    end
    for (i=0;i<2;i=i+1) begin
      n_bit_adder #(5) add5 ({c4[2*i],w4[2*i]} , {c4[2*i+1],w4[2*i+1]} , a[96+16+8+4+i] , w5[i] , c5[i]); 
    end
    for (i=0;i<1;i=i+1) begin
      n_bit_adder #(6) add2 ({c5[2*i],w5[2*i]} , {c5[2*i+1],w5[2*i+1]} , a[96+16+8+4+2+i] , w6 , c6); 
    end
  endgenerate
  assign s = {c6 , w6};
endmodule  


