`timescale 1ns / 1ps
module decoder(inA, inB, outD0, outD1, outD2, outD3);

input inA, inB;
output outD0, outD1, outD2, outD3;

assign outD0=(~inA)&(~inB);
assign outD1=(~inA)&inB;
assign outD2=inA&(~inB);
assign outD3=inA&inB;

endmodule
