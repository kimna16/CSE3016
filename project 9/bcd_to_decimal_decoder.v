`timescale 1ns / 1ps
module decoder(inA0, inA1, inA2, inA3, out1, out2, out3, out4, out5, out6, out7, out8, out9);

input inA0, inA1, inA2, inA3;
output out1, out2, out3, out4, out5, out6, out7, out8, out9;

assign out1=(~inA0)&(~inA1)&(~inA2)&(inA3);  
assign out2=(~inA0)&(~inA1)&(inA2)&(~inA3); 
assign out3=(~inA0)&(~inA1)&(inA2)&(inA3);   
assign out4=(~inA0)&(inA1)&(~inA2)&(~inA3); 
assign out5=(~inA0)&(inA1)&(~inA2)&(inA3);   
assign out6=(~inA0)&(inA1)&(inA2)&(~inA3);   
assign out7=(~inA0)&(inA1)&(inA2)&(inA3);   
assign out8=(inA0)&(~inA1)&(~inA2)&(~inA3); 
assign out9=(inA0)&(~inA1)&(~inA2)&(inA3); 

endmodule