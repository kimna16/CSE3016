`timescale 1ns / 1ps

module four_bit_decade_counter_tb;

reg clk, rst;
wire out1, out2, out3, out4;

four_bit_decade_counter u_four_bit_decade_counter(
    .clk(clk),
    .rst(rst),
    .out1(out1),
    .out2(out2),
    .out3(out3),
    .out4(out4));

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
