`timescale 1ns / 1ps

module parity_bit_tb;

reg A, B, C, D;
wire testOut;

parity_bit  u_parity_bit(
       .inA(A),
       .inB(B),
       .inC(C),
       .inD(D),
       .outE(testOut));
       
initial begin 
     A = 1'b0;
     B = 1'b0;
     C = 1'b0;
     D = 1'b0;
end

always @(A or B or C or D) begin
     A <= #400 ~A;
     B <= #200 ~B;
     C <= #100 ~C;
     D <= #50 ~D;
end

initial 
begin
     #800
     $finish;
end

endmodule
