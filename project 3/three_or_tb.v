`timescale 1ns / 1ps

module three_or_tb;

reg testA, testB, testC;
wire testOut;

three_or  u_three_or(
       .inA(testA),
       .inB(testB),
       .inC(testC),
       .outD(testOut));
       
initial begin 
     testA = 1'b0;
     testB = 1'b0;
     testC = 1'b0;
end

always @(testA or testB or testC) begin
     testA <= #400 ~testA;
     testB <= #200 ~testB;
     testC <= #100 ~testC;
end

initial 
begin
     #800
     $finish;
end





endmodule
