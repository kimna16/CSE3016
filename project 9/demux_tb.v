`timescale 1ns / 1ps

module demux_tb;

reg a, b, F;
wire A, B, C, D;

demux  u_demux(
       .ina(a),
       .inb(b),
       .inF(F),
       .outA(A),
       .outB(B),
       .outC(C),
       .outD(D));
       
initial begin 
     a = 1'b0;
     b = 1'b0;
     F = 1'b0;
end

always @(a or b or F) begin
     a <= #400 ~a;
     b <= #200 ~b;
     F <= #100 ~F;
end

initial 
begin
     #800
     $finish;
end

endmodule