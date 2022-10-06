`timescale 1ns / 1ps

module subtractor(A4, A3, A2, A1, B4, B3, B2, B1, Cin, C1, C2, C3, Cout, S4, S3, S2, S1);

input A4, A3, A2, A1, B4, B3, B2, B1, Cin;
output S4, S3, S2, S1, C1, C2, C3, Cout;

assign S1=A1^(B1^Cin)^Cin;
assign C1=(A1&(B1^Cin))|((Cin)&(A1^(B1^Cin)));
assign S2=A2^(B2^Cin)^C1;
assign C2=(A2&(B2^Cin))|((C1)&(A2^(B2^Cin)));
assign S3=A3^(B3^Cin)^C2;
assign C3=(A3&(B3^Cin))|((C2)&(A3^(B3^Cin)));
assign S4=A4^(B4^Cin)^C3;
assign Cout=(A4&(B4^Cin))|((C3)&(A4^(B4^Cin)));

endmodule