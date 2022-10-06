`timescale 1ns / 1ps

module four_nor(inA, inB, inC, inD, outE, outF, outG);

input inA, inB, inC, inD;
output outE, outF, outG;

assign outE = ~(inA | inB);
assign outF = ~(outE | inC);
assign outG = ~(outF | inD);

endmodule


