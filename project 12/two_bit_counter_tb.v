`timescale 1ns / 1ps

module two_bit_counter_tb;

reg clk, rst;
wire out1, out2;

two_bit_counter u_two_bit_counter(
    .clk(clk),
    .rst(rst),
    .out1(out1),
    .out2(out2));

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