`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 05:45:30 PM
// Design Name: 
// Module Name: tb_incrementalROM
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_incrementalROM;
     logic [3:0] a,f;
     
    incrementalROM rom (
        .f(f),
        .a(a)
    );

    initial begin
        a = 4'b0000; #10; $display("a=%b, f=%b", a, f);
        a = 4'b0001; #10; $display("a=%b, f=%b", a, f);
        a = 4'b0010; #10; $display("a=%b, f=%b", a, f);
        a = 4'b0011; #10; $display("a=%b, f=%b", a, f);
        a = 4'b0100; #10; $display("a=%b, f=%b", a, f);
        a = 4'b0101; #10; $display("a=%b, f=%b", a, f);
        a = 4'b0110; #10; $display("a=%b, f=%b", a, f);
        a = 4'b0111; #10; $display("a=%b, f=%b", a, f);
        a = 4'b1000; #10; $display("a=%b, f=%b", a, f);
        a = 4'b1001; #10; $display("a=%b, f=%b", a, f);
        a = 4'b1010; #10; $display("a=%b, f=%b", a, f);
        a = 4'b1011; #10; $display("a=%b, f=%b", a, f);
        a = 4'b1100; #10; $display("a=%b, f=%b", a, f);
        a = 4'b1101; #10; $display("a=%b, f=%b", a, f);
        a = 4'b1110; #10; $display("a=%b, f=%b", a, f);
        a = 4'b1111; #10; $display("a=%b, f=%b", a, f);
        $finish;
    end
endmodule
