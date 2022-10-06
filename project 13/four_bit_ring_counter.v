`timescale 1ns / 1ps

module four_bit_ring_counter(
    input clk, rst,
    output reg [3:0] out);

initial out = 4'b0001;

always@(posedge clk)
begin
    if (rst) out =4'b0001;
    else out = {out[2:0],out[3]};

end 
endmodule
