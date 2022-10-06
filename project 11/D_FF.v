`timescale 1ns / 1ps

module D_FF(D, CLK, Q1, inv_Q1, Q2, inv_Q2);

input D, CLK;
output Q1, inv_Q1, Q2, inv_Q2;

assign Q1=~(inv_Q1|(~D&CLK));
assign inv_Q1=~(Q1|(D&CLK));
assign Q2=~(inv_Q2|(~Q1&~CLK));
assign inv_Q2=~(Q2|(Q1&~CLK));

endmodule