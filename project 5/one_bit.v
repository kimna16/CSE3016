`timescale 1ns / 1ps

module one_bit(inA, inB, outSame, outDiff, outBig, outSmall);

input inA, inB;
output outSame, outDiff, outBig, outSmall;

assign outSame = (inA & inB) | ((~inA) & (~inB));
assign outDiff = ~((inA & inB) | ((~inA) & (~inB)));
assign outBig = inA & (~inB);
assign outSmall = (~inA) & inB;

endmodule

