`timescale 1ns / 1ps

module RS_FF_tb;

reg R, S, CLK;
wire Q1, inv_Q1, Q2, inv_Q2;

RS_FF  u_RS_FF(
       .R(R),
       .S(S),
       .CLK(CLK),
       .Q1(Q1),
       .Q2(Q2),
       .inv_Q1(inv_Q1),
       .inv_Q2(inv_Q2));
       
initial begin 
            R = 1'b0;
            S = 1'b0;
            CLK = 1'b1;
end
       
always @(CLK or R) begin
     R <= #400 ~R;
     S <= #200 ~S;
     CLK <= #100 ~CLK;
end

endmodule