`timescale 1ns / 1ps

module two_bit_comparator_tb;

reg X1, X2, Y1, Y2;
wire outBig, outSame, outSmall;

two_bit_comparator  u_two_bit_comparator(
       .inX1(X1),
       .inX2(X2),
       .inY1(Y1),
       .inY2(Y2),
       .outBig(outBig),
       .outSame(outSame),
       .outSmall(outSmall));
       
initial begin 
     X1 = 1'b0;
     X2 = 1'b0;
     Y1 = 1'b0;
     Y2 = 1'b0;
end

always @(X1 or X2 or Y1 or Y2) begin
     X1 <= #400 ~X1;
     X2 <= #200 ~X2;
     Y1 <= #100 ~Y1;
     Y2 <= #50 ~Y2;
end

initial 
begin
     #800
     $finish;
end

endmodule