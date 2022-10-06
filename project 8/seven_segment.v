`timescale 1ns / 1ps

module seven_segment(A, B, C, D, a, b, c, d, e, f, g, dp);

input A, B, C, D;
output a, b, c, d, e, f, g, dp;

assign a=(~B&~C&~D)|(~A&B&D)|(A&~C&~D)|(A&~B&~C)|(A&C&~D)|(~A&C)|(B&C);
assign b=(~A&~C&~D)|(~A&C&D)|(~B&C&~D)|(A&~C&D)|(A&~B&~C)|(~A&~B);
assign c=(~A&~C)|(~A&D)|(~C&D)|(A&~B)|(~A&B);
assign d=(~B&~C&~D)|(A&~C&~D)|(B&~C&D)|(~B&C&D)|(~A&~B&C)|(B&C&~D);
assign e=(~B&~C&~D)|(A&B)|(C&~D)|(A&C);
assign f=(~C&~D)|(~A&B&~C)|(A&~B)|(A&C&D)|(B&C&~D);
assign g=(~A&B&~C)|(A&~B)|(A&D)|(~A&~B&C)|(C&~D);
assign dp=a|b|c|d|e|f|g;

endmodule

