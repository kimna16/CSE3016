`timescale 1ns / 1ps

module seven_segment_tb;

reg A,B,C,D;
wire a,b,c,d,e,f,g,dp;

seven_segment  u_seven_segment(
       .A(A),
       .B(B),
       .C(C),
       .D(D),
       .a(a),
       .b(b),
       .c(c),
       .d(d),
       .e(e),
       .f(f),
       .g(g),
       .dp(dp));
       
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


