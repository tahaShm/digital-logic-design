`timescale 1ns/1ns
module q3TB();
  reg [126:0] a;
  wire [6:0] s;
  reg [8:0] x = 127;
  one_counter_127bit counterr(a , s);
  initial begin
    a = 0;
    repeat(128) begin
      #3000
      x = x - 1;
      a[x] = 1;
    end
    x = 127;
    repeat(128) begin
      #3000
      x = x - 1;
      a[x] = 0;
    end   
    $stop;  
  end
endmodule



