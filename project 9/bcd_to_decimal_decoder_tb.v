`timescale 1ns / 1ps

module decoder_tb;

reg A0, A1, A2, A3;
wire O1, O2, O3, O4, O5, O6, O7, O8, O9;

decoder  u_decoder(
       .inA0(A0),
       .inA1(A1),
       .inA2(A2),
       .inA3(A3),
       .out1(O1),
       .out2(O2),
       .out3(O3),
       .out4(O4),
       .out5(O5),
       .out6(O6),
       .out7(O7),
       .out8(O8),
       .out9(O9));
       
initial begin 
     A0 = 1'b0;
     A1 = 1'b0;
     A2 = 1'b0;
     A3 = 1'b0;
end

always @(A0 or A1 or A2 or A3) begin
     A0 <= #400 ~A0;
     A1 <= #200 ~A1;
     A2 <= #100 ~A2;
     A3 <= #50 ~A3;
end

initial 
begin
     #800
     $finish;
end

endmodule