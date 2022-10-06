`timescale 1ns / 1ps

module full_adder_tb;

reg testA, testB, testCin;
wire testS, testCout;

full_adder  u_full_adder(
       .inA(testA),
       .inB(testB),
       .inC(testCin),
       .outS(testS),
       .outC(testCout));
       
initial begin 
     testA = 1'b0;
     testB = 1'b0;
     testCin = 1'b0;
end

always @(testA or testB or testCin) begin
     testA <= #400 ~testA;
     testB <= #200 ~testB;
     testCin <= #100 ~testCin;
end

initial 
begin
     #800
     $finish;
end

endmodule
