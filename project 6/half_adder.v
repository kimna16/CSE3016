`timescale 1ns / 1ps

module half_adder(inA, inB, outS, outC);

input inA, inB;
output outS, outC;

assign outS=inA^inB;
assign outC=inA&inB;

endmodule
