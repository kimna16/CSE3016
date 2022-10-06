`timescale 1ns / 1ps

module four_bit_2421_decade_counter(
    input clk, rst, 
    output reg [3:0] out);
    
always @(posedge clk)
begin
    if (rst == 1) out = 4'b0000;
    else if (out == 4) out = 4'b1011;
    else out = out + 1;
end
endmodule