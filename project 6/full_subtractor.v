`timescale 1ns / 1ps

module full_subtractor(inA, inB, inb, outD, outb);

input inA, inB, inb;
output outD, outb;

assign outD=inA^inB^inb;
assign outb=(inb&(~(inA^inB)))|((~inA)&inB);

endmodule
