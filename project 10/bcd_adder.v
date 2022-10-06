`timescale 1ns / 1ps

module bcd_adder(A4, A3, A2, A1, B4, B3, B2, B1, Cin, C1, C2, C3, K, Cout, S4, S3, S2, S1, S8, S7, S6, S5, C4, C5, C6, C);

input A4, A3, A2, A1, B4, B3, B2, B1, Cin;
output S4, S3, S2, S1, C1, C2, C3, K, Cout, S8, S7, S6, S5, C4, C5, C6, C;

assign S1=A1^(B1^Cin)^Cin;
assign C1=(A1&(B1^Cin))|((Cin)&(A1^(B1^Cin)));
assign S2=A2^(B2^Cin)^C1;
assign C2=(A2&(B2^Cin))|((C1)&(A2^(B2^Cin)));
assign S3=A3^(B3^Cin)^C2;
assign C3=(A3&(B3^Cin))|((C2)&(A3^(B3^Cin)));
assign S4=A4^(B4^Cin)^C3;
assign K=(A4&(B4^Cin))|((C3)&(A4^(B4^Cin)));
assign Cout=K|(S4&S3)|(S4&S2);

assign S5=0^S1^0;
assign C4=(0&S1)|(0&(S1^0));
assign S6=Cout^S2^C4;
assign C5=(Cout&S2)|((C4)&(Cout^S2));
assign S7=Cout^S3^C5;
assign C6=(Cout&S3)|((C5)&(Cout^S3));
assign S8=0^S4^C6;
assign C=(0&S4)|((C6)&(0^S4));

endmodule
