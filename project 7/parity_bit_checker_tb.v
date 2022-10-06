`timescale 1ns / 1ps

module parity_bit_checker_tb;

reg A, B, C, D, P;
wire testOut;

parity_bit_checker  u_parity_bit_checker(
       .inA(A),
       .inB(B),
       .inC(C),
       .inD(D),
       .inP(P),
       .outPEC(testOut));
       
initial begin 
     A = 1'b0;
     B = 1'b0;
     C = 1'b0;
     D = 1'b0;
     P = 1'b0;
end

always @(A or B or C or D or P) begin
     A <= #400 ~A;
     B <= #200 ~B;
     C <= #100 ~C;
     D <= #50 ~D;
     P <= #25 ~P;
end

initial 
begin
     #800
     $finish;
end

endmodule

