`timescale 1ns / 1ps

module four_bit_shift_register(d, clk, q);
    input d, clk;
    output reg [3:0] q;

initial q=4'b0000;

always@(posedge clk)
begin
    q[3]=q[2];
    q[2]=q[1];
    q[1]=q[0];
    q[0]=d;
end 

endmodule