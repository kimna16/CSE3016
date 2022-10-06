`timescale 1ns / 1ps

module four_bit_2421_counter_tb;

reg clk, rst;
wire [3:0] out;

four_bit_2421_decade_counter u_four_bit_2421_decade_counter(
    .clk(clk),
    .rst(rst),
    .out(out));

initial
begin
    clk = 0;
    rst = 0;
end

initial
begin
    #5 rst = 1;
    #10 rst = 0;
end

always @(clk)
begin
    clk <= #10 ~clk;
end

initial #1000 $finish;

endmodule

