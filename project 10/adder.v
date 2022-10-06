`timescale 1ns / 1ps

module adder(A4, A3, A2, A1, B4, B3, B2, B1, Cin, C1, C2, C3, Cout, S4, S3, S2, S1);

input A4, A3, A2, A1, B4, B3, B2, B1, Cin;
output S4, S3, S2, S1, C1, C2, C3, Cout;

assign S1=A1^B1^Cin;
assign C1=(A1&B1)|((Cin)&(A1^B1));
assign S2=A2^B2^C1;
assign C2=(A2&B2)|((C1)&(A2^B2));
assign S3=A3^B3^C2;
assign C3=(A3&B3)|((C2)&(A3^B3));
assign S4=A4^B4^C3;
assign Cout=(A4&B4)|((C3)&(A4^B4));

endmodule

