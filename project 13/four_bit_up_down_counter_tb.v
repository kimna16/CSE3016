`timescale 1ns / 1ps

module four_bit_up_down_counter_tb;

reg clk, rst, updown;
wire [3:0] out;
wire [6:0] seven;
wire dp;

four_bit_up_down_counter u_four_bit_up_down_counter(
    .clk(clk),
    .rst(rst),
    .updown(updown),
    .out(out),
    .seven(seven),
    .dp(dp));

initial
begin
    clk = 0;
    rst = 0;
    updown = 1;
end

initial
begin
    #5 rst = 1;
    #10 rst = 0;
end

always @(clk)
begin
    clk <= #10 ~clk;
    updown <= #500 ~updown;
end

initial #1000 $finish;

endmodule