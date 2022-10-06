`timescale 1ns / 1ps

module parity_bit_checker(inA, inB, inC, inD, inP, outPEC);

input inA, inB, inC, inD, inP;
output outPEC;

assign outPEC=inA^inB^inC^inD^inP;

endmodule
