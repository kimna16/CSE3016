`timescale 1ns / 1ps

module adder_tb;

reg A4, A3, A2, A1, B4, B3, B2, B1, Cin;
wire S4, S3, S2, S1, Cout;

adder  u_adder(
       .A4(A4),
       .A3(A3),
       .A2(A2),
       .A1(A1),
       .B4(B4),
       .B3(B3),
       .B2(B2),
       .B1(B1),
       .Cin(Cin),
       .S4(S4),
       .S3(S3),
       .S2(S2),
       .S1(S1),
       .Cout(Cout));
       
initial begin 
     A4 = 1'b0;
     A3 = 1'b0;
     A2 = 1'b0;
     A1 = 1'b0;
     B4 = 1'b0;
     B3 = 1'b0;
     B2 = 1'b0;
     B1 = 1'b0;
     Cin = 1'b0;
end

always @(A4 or A3 or A2 or A1 or B4 or B3 or B2 or B1) begin
     A4 <= #400 ~A4;
     A3 <= #200 ~A3;
     A2 <= #100 ~A2;
     A1 <= #50 ~A1;
     B4 <= #25 ~B4;
     B3 <= #12.5 ~B3;
     B2 <= #6.25 ~B2;
     B1 <= #3.125 ~B1;
end

initial 
begin
     #800
     $finish;
end

endmodule
