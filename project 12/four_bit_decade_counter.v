`timescale 1ns / 1ps

module four_bit_decade_counter(
    input clk, rst, 
    output reg out1, reg out2, reg out3, reg out4);
    
always @(posedge clk)
begin
    if (rst == 1)
        begin
        out1 = 0; out2 = 0; out3 = 0; out4= 0;
        end
    else
        out1 = ~out1;
end

always @(negedge out1)
begin
    if (rst != 1)
        out2 = ~out2;
end

always @(negedge out2)
begin
    if (rst != 1)
        out3 = ~out3;
end

always @(negedge out3)
begin
    if (rst != 1)
        out4 = ~out4;
end

endmodule