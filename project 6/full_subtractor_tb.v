`timescale 1ns / 1ps

module full_subtractor_tb;

reg testA, testB, testbin;
wire testD, testbout;

full_subtractor  u_full_subtractor(
       .inA(testA),
       .inB(testB),
       .inb(testbin),
       .outD(testD),
       .outb(testbout));
       
initial begin 
     testA = 1'b0;
     testB = 1'b0;
     testbin = 1'b0;
end

always @(testA or testB or testbin) begin
     testA <= #400 ~testA;
     testB <= #200 ~testB;
     testbin <= #100 ~testbin;
end

initial 
begin
     #800
     $finish;
end

endmodule

