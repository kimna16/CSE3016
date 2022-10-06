`timescale 1ns / 1ps

module mux_tb;

reg a, b, A, B, C, D;
wire testOut;

mux  u_mux(
       .inA(A),
       .inB(B),
       .inC(C),
       .inD(D),
       .inb(b),
       .ina(a),
       .out(testOut));
       
initial begin 
     a = 1'b0;
     b = 1'b0;
     A = 1'b0;
     B = 1'b0;
     C = 1'b0;
     D = 1'b0;
end

always @(A or B or C or D or b or a) begin
     a <= #400 ~a;
     b <= #200 ~b;
     A <= #100 ~A;
     B <= #50 ~B;
     C <= #25 ~C;
     D <= #12.5 ~D;
end

initial 
begin
     #800
     $finish;
end

endmodule
