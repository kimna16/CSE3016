`timescale 1ns / 1ps

module half_adder_tb;

reg testA, testB;
wire testS, testC;

half_adder  u_half_adder(
       .inA(testA),
       .inB(testB),
       .outS(testS),
       .outC(testC));
       
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