`timescale 1ns / 1ps

module half_subtractor_tb;

reg testA, testB;
wire testD, testb;

half_subtractor  u_half_subtractor(
       .inA(testA),
       .inB(testB),
       .outD(testD),
       .outB(testb));
       
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
