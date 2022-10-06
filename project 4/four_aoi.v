`timescale 1ns / 1ps

module four_aoi(inA, inB, inC, inD, outE, outF, outG);

input inA, inB, inC, inD;
output outE, outF, outG;

assign outE = inA & inB;
assign outF = inC & inD;
assign outG = ~(outE | outF);

endmodule