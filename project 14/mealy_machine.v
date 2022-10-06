`timescale 1ns / 1ps

 module mealy_machine(
 input x,clk,reset,
 output reg z
 );

 parameter S0 = 0 , S1 = 1 , S2 = 2 , S3 = 3 ;
 reg [1:0] PS,NS ;

 //sequential state register block
 always @ (posedge clk or posedge reset)
   if (reset)
     PS <= S0;  
   else
     PS <= NS;
   
 //sequential output block
 always @ (posedge clk or posedge reset)
   if (reset)
     z <= 1'b0;
   else
     z <= (PS == S3) && x;
 
 //combinational state assignment block  
 always @ (*)
  begin
    case(PS)
        S0 : NS = x ? S1 : S0 ;
        S1 : NS = x ? S1 : S2 ;
        S2 : NS = x ? S3 : S0 ;
        S3 : NS = x ? S1 : S2 ;
    endcase
  $monitor(PS);
  end
  
 endmodule