`timescale 1ns / 1ps

module code_converter(A, B, C, D, a, b, c, d);

input A, B, C, D;
output a, b, c, d;

assign a= ((~A)&B&D) | ((~A)&B&C) | (A&(~B)&(~C)); 
assign b= ((~A)&B&C) | ((~A)&B&(~D)) | (A&(~B)&(~C));
assign c= ((~A)&B&(~C)&D) | ((~A)&(~B)&C) | (A&(~B)&(~C));
assign d= ((~A)&D) | ((~B)&(~C)&D);

endmodule
