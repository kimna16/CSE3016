`timescale 1ns / 1ps

module decoder_tb;

reg A, B;
wire D0, D1, D2, D3;

decoder  u_decoder(
       .inA(A),
       .inB(B),
       .outD0(D0),
       .outD1(D1),
       .outD2(D2),
       .outD3(D3));
       
initial begin 
     A = 1'b0;
     B = 1'b0;
end

always @(A or B) begin
     A <= #400 ~A;
     B <= #200 ~B;
end

initial 
begin
     #800
     $finish;
end

endmodule