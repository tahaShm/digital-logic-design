`timescale 1ns/1ns
module tanCntl (input clk,rst,start,CntC, output ready,busy,LdX2,LdT,LdS,LdE,TSel,ESel,InitC,InC, output [1:0] MultSel);
    reg [2:0] ns,ps;
    parameter [2:0] idle = 0, starting = 1, init = 2, makeX2 = 3, mult1 = 4, mult2 = 5, sumExp = 6 ;
    reg readyReg, busyReg, LdX2Reg, LdTReg, LdSReg, LdEReg, TSelReg, ESelReg, InitCReg, InCReg;
    reg [1:0] MultSelReg;
    always@(start,ps,CntC) begin
		ns = 0;
      readyReg = 0;
      busyReg = 0;
      LdX2Reg = 0;
      LdTReg = 0;
      LdSReg = 0;
      LdEReg = 0;
      TSelReg = 1'bz;
      ESelReg = 1'bz;
      InitCReg = 0;
      InCReg = 0;
      MultSelReg = 2'bz;
      case(ps)
        
        idle : begin
          ns = start ? starting : idle;
          busyReg = 0;
          readyReg = 1;
        end
        
        starting : begin
          ns = start ? starting : init;
        end
        
        init : begin
          ns = makeX2;
          TSelReg = 0;
          LdTReg = 1;
          ESelReg = 0;
          InitCReg = 1;
          LdEReg = 1;
          busyReg = 1;
        end
        
        makeX2 : begin
          ns = mult1;
          MultSelReg = 1;
          LdX2Reg = 1;
          busyReg = 1;
        end
        
        mult1 : begin
          ns = mult2;
          MultSelReg = 2;
          LdTReg = 1;
          TSelReg = 1;
          busyReg = 1;
        end
        
        mult2 : begin
          ns = sumExp;
          MultSelReg = 0;
          LdSReg = 1;
          busyReg = 1;
        end
        
        sumExp : begin
          ns = CntC ? idle : mult1;
          ESelReg = 1;
          LdEReg = 1;
          InCReg = 1;
          busyReg = 1;
        end
        default : ns = idle;
      endcase    
    end
    always@(posedge clk, posedge rst) begin
      if (rst) ps <= idle;
      else ps <= ns;
    end
    assign ready = readyReg;
    assign busy = busyReg;
    assign LdX2 = LdX2Reg;
    assign LdT = LdTReg;
    assign LdS = LdSReg;
    assign LdE = LdEReg;
    assign TSel = TSelReg;
    assign ESel = ESelReg;
    assign InitC = InitCReg;
    assign InC = InCReg;
    assign MultSel = MultSelReg;
        
endmodule
