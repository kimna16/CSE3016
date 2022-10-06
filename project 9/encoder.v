`timescale 1ns / 1ps

module encoder(inA, inB, inC, inD, outE0, outE1);

input inA, inB, inC, inD;
output outE0, outE1;

assign outE0=inA|inB;
assign outE1=inA|inC;

endmodule