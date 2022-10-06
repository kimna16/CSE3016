`timescale 1ns / 1ps

module bf_1_a(inA, inB, inC, out);

input inA, inB, inC;
output out;

assign out = (~inA | ~inB) & (~inC);

endmodule
