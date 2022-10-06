`timescale 1ns / 1ps

module four_bit_shift_register_tb();

reg clk, d;
wire [3:0] q;

four_bit_shift_register u_four_bit_shift_register(
    .clk(clk),
    .d(d),
    .q(q)
);

initial
begin
    clk=0;
    d=0;
end

always @(clk)
begin
    clk <= #10 ~clk;
    d <= #50 ~d;
end

initial #1000 $finish;

endmodule


