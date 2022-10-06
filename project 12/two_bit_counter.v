`timescale 1ns / 1ps

module two_bit_counter(
    input clk, rst, 
    output reg out1, reg out2);
    
always @(posedge clk)
begin
    if (rst == 1)
        begin
        out1 = 0; out2 = 0;
        end
    else
        out1 = ~out1;
end

always @(negedge out1)
begin
    if (rst != 1)
        out2 = ~out2;
end

endmodule
