`timescale 1ns / 1ps

module RS_FF(R, S, CLK, Q1, inv_Q1, Q2, inv_Q2);

input R, S, CLK;
output Q1, inv_Q1, Q2, inv_Q2;

assign Q1=~(inv_Q1|(R&CLK));
assign inv_Q1=~(Q1|(S&CLK));
assign Q2=~(inv_Q2|(Q1&~CLK));
assign inv_Q2=~(Q2|(inv_Q1&~CLK));

endmodule
