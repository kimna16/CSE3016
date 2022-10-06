`timescale 1ns / 1ps

module parity_bit(inA, inB, inC, inD, outE);

input inA, inB, inC, inD;
output outE;

assign outE=inA^inB^inC^inD;

endmodule
