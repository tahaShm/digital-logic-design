`timescale 1ns/1ns
module UCC1Bit(input cin , fin , pin ,input[1:0] m , output cout , fout , output [1:0] mo);
  wire [2:0] wc;
  wire [5:0] wf;
  
  and #(7) A1(wc[0] , ~m[1] , ~m[0] , cin);
  and #(7) A2(wc[1] , m[0] , fin , cin);
  and #(7) A3(wc[2] , m[1] , ~fin , cin);
  or #(7) O1(cout , wc[0], wc[1], wc[2]);
  
  xor #(7) XF1 (wf[5] , cin , fin);
  and #(7) AF1 (wf[0] , ~m[1] , ~m[0] , fin);
  and #(7) AF2 (wf[1] , ~m[1] , m[0] , wf[5]);
  and #(7) AF3 (wf[2] , m[1] , ~m[0] , wf[5]);
  and #(7) Af4 (wf[3] , m[1] , m[0] , pin);
  or #(7) OF1 (wf[4] , wf[1] , wf[2] , wf[3]);
  or #(7) OF2 (fout , wf[0] , wf[4]);
  
  assign mo[0] = m[0];
  assign mo[1] = m[1];
  
endmodule


