`timescale 1ns / 1ps

module code_converter_tb;

reg i3, i2, i1, i0;
wire o3, o2, o1, o0;

code_converter  u_code_converter(
       .A(i3),
       .B(i2),
       .C(i1),
       .D(i0),
       .a(o3),
       .b(o2),
       .c(o1),
       .d(o0));
       
initial begin 
     i3 = 1'b0;
     i2 = 1'b0;
     i1 = 1'b0;
     i0 = 1'b0;
end

always @(i3 or i2 or i1 or i0) begin
     i3 <= #400 ~i3;
     i2 <= #200 ~i2;
     i1 <= #100 ~i1;
     i0 <= #50 ~i0;
end

initial 
begin
     #500
     $finish;
end

endmodule

