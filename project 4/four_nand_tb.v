`timescale 1ns / 1ps

module four_nand_tb;

reg testA, testB, testC, testD;
wire testOut;

four_nand  u_four_nand(
       .inA(testA),
       .inB(testB),
       .inC(testC),
       .inD(testD),
       .outG(testOut));
       
initial begin 
     testA = 1'b0;
     testB = 1'b0;
     testC = 1'b0;
     testD = 1'b0;
end

always @(testA or testB or testC or testD) begin
     testA <= #400 ~testA;
     testB <= #200 ~testB;
     testC <= #100 ~testC;
     testD <= #50 ~testD;
end

initial begin
     #800
     $finish;
end

endmodule

