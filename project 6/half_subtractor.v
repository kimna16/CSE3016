`timescale 1ns / 1ps

module half_subtractor(inA, inB, outD, outB);

input inA, inB;
output outD, outB;

assign outD=inA^inB;
assign outB=(~inA)&inB;

endmodule
