`timescale 1ns / 1ps

 module mealy_machine_tb;
 // Inputs
 reg x;
 reg clk;
 reg reset;
 // Outputs
 wire z;
 // Instantiate the Unit Under Test (UUT)
 mealy_machine u_mealy_machine (
    .x(x), 
    .clk(clk), 
    .reset(reset), 
    .z(z)
);

always #5 clk = ~ clk;  

initial begin
$dumpfile("dump.vcd");
$dumpvars(1, mealy_machine_tb);
fork 
    clk = 1'b0;
    reset = 1'b1;
    #15 reset = 1'b0;
begin  
    #12 x = 0;#10 x = 0 ; #10 x = 1 ; #10 x = 0 ;
    #12 x = 1;#10 x = 1 ; #10 x = 0 ; #10 x = 1 ;
    #12 x = 1;#10 x = 0 ; #10 x = 0 ; #10 x = 1 ;
    #12 x = 0;#10 x = 1 ; #10 x = 1 ; #10 x = 0 ;
    #10 $finish;
end
join   
end  
endmodule