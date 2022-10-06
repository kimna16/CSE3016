`timescale 1ns / 1ps

module four_xor(inA, inB, inC, inD, outE, outF, outG);

input inA, inB, inC, inD;
output outE, outF, outG;

assign outE = (~inA & inB ) | (inA & ~inB);
assign outF = (~outE & inC ) | (outE & ~inC);
assign outG = (~outF & inD ) | (outF & ~inD);

endmodule
