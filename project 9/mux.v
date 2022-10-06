`timescale 1ns / 1ps

module mux(ina, inb, inA, inB, inC, inD, out);

input ina, inb, inA, inB, inC, inD;
output out;

assign out=(inA&~ina&~inb)|(inB&~ina&inb)|(inC&ina&~inb)|(inD&ina&inb);

endmodule