`timescale 1ns/1ns
module counter(input clk, rst, inC, cntUp, rstDone ,output reg done , output reg[15:0] cout);
	reg checker = 0;
	always@(posedge clk, posedge rst, posedge inC)begin
		if (rst) begin
			cout <= 16'b0;
			done <= 0;
		end
		else if (inC) begin
			cout <= 16'b0;
			if (checker)
				done <= 1;
			else checker <= ~checker;
		end
		else if (rstDone) 
			done <= 0;
		else if (cntUp==1 && done==0)begin 
			cout <= cout + 1;
		end
	end
endmodule