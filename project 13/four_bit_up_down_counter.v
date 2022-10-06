`timescale 1ns / 1ps

module four_bit_up_down_counter(
    input clk, rst, updown,
    output reg [3:0] out, reg [6:0] seven, reg dp);
    
always @(posedge clk)
begin
    if (rst == 1) out = 4'b0000;
    else if (updown==1) out = out + 1;
    else if (updown==0) out = out - 1;
    
    if (updown == 0)
    begin
        seven[0]=0;
        seven[1]=1;
        seven[2]=1;
        seven[3]=1;
        seven[4]=1;
        seven[5]=0;
        seven[6]=1;
     end
     else 
     begin
         seven[0]=0;
         seven[1]=1;
         seven[2]=1;
         seven[3]=1;
         seven[4]=1;
         seven[5]=1;
         seven[6]=0;     
     end
     dp=seven[0]|seven[1]|seven[2]|seven[3]|seven[4]|seven[5]|seven[6];
end
endmodule