`timescale 1ns / 1ps

module four_and(inA, inB, inC, inD, outE, outF, outG, outH);

input inA, inB, inC, inD;
output outE, outF, outG, outH;

assign outF = inA & inB;
assign outG = outF & inC;
assign outH = outG & inD;
assign outE = inA & inB & inC & inD;

endmodule