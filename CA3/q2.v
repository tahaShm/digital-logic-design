`timescale 1ns/1ns
module q1TB();
  reg [3:0] a4,b4;
  reg cin;
  wire [3:0] s4;
  wire co ;
  n_bit_adder #(4) adder (a4 , b4 , cin , s4 , co );
  initial begin
    repeat({$random()} % 10) begin
      #500
      cin = 0;
      a4 = {$random()} % 16;
      b4 = {$random()} % 16;  
    end
    #1000
    $stop;  
  end
endmodule
