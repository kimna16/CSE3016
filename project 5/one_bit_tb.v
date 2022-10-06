`timescale 1ns / 1ps

module one_bit_tb;

reg testA, testB;
wire testSame, testDiff, testBig, testSmall;

one_bit u_one_bit(
       .inA(testA),
       .inB(testB),
       .outSame(testSame),
       .outDiff(testDiff),
       .outBig(testBig),
       .outSmall(testSmall));
       
initial begin 
     testA = 1'b0;
     testB = 1'b0;
end

always @(testA or testB) begin
     testA <= #400 ~testA;
     testB <= #200 ~testB;
end

initial 
begin
     #800
     $finish;
end

endmodule