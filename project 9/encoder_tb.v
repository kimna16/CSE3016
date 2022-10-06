`timescale 1ns / 1ps

module encoder_tb;

reg A, B, C, D;
wire E0, E1;

encoder  u_encoder(
       .inA(A),
       .inB(B),
       .inC(C),
       .inD(D),
       .outE0(E0),
       .outE1(E1));
       
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