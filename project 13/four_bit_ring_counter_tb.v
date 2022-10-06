`timescale 1ns / 1ps

module four_bit_ring_counter_tb();

reg clk, rst;
wire [3:0] out;

four_bit_ring_counter u_four_bit_ring_counter(
    .clk(clk),
    .rst(rst),
    .out(out)
);

initial 
begin
    clk = 0; 
    rst = 0;
end

always clk = #10 ~clk;

initial #300 $finish;

endmodule
