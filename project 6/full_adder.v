`timescale 1ns / 1ps

module full_adder(inA, inB, inC, outS, outC);

input inA, inB, inC;
output outS, outC;

assign outS=inA^inB^inC;
assign outC=inC&(inA^inB)|(inA&inB);

endmodule
