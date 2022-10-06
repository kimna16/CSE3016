`timescale 1ns / 1ps

module three_or(inA, inB, inC, outD, outE, outF);

input inA, inB, inC;
output outD, outE, outF;

assign outE = inA | inB;
assign outF = outE | inC;
assign outD = inA | inB | inC;

endmodule