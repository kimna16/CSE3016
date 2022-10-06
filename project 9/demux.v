`timescale 1ns / 1ps

module demux(ina, inb, inF, outA, outB, outC, outD);

input ina, inb, inF;
output outA, outB, outC, outD;

assign outA=(~ina)&(~inb)&(inF);
assign outB=(~ina)&(inb)&(inF);
assign outC=(ina)&(~inb)&(inF);
assign outD=(ina)&(inb)&(inF);

endmodule
