`timescale 1ns / 1ps

module D_FF_tb;

reg D, CLK;
wire Q1, inv_Q1, Q2, inv_Q2;

D_FF  u_D_FF(
       .D(D),
       .CLK(CLK),
       .Q1(Q1),
       .Q2(Q2),
       .inv_Q1(inv_Q1),
       .inv_Q2(inv_Q2));
       
initial begin 
            D = 1'b0;
            CLK = 1'b1;
end
       
always @(CLK or D) begin
     D <= #400 ~D;
     CLK <= #200 ~CLK;
end


endmodule