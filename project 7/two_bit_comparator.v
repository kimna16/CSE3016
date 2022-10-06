`timescale 1ns / 1ps

module two_bit_comparator(inX1, inX2, inY1, inY2, outBig, outSame, outSmall);

input inX1, inX2, inY1, inY2;
output outBig, outSame, outSmall;

assign outBig=((inX1)&(~inY1))|(inX2&(~inY1)&(~inY2))|(inX1&inX2&(~inY2));
assign outSame=(~(inX1^inY1))&(~(inX2^inY2));
assign outSmall=((~inX1)&inY1)|((~inX1)&(~inX2)&inY2)|((~inX2)&inY1&inY2);

endmodule

