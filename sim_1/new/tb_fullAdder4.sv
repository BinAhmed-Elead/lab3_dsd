`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 06:36:45 AM
// Design Name: 
// Module Name: tb_fullAdder4
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


module tb_fullAdder4;
    logic [3:0] a;
    logic [3:0] b;
    logic cin;
    logic [3:0] s;
    logic cout;

    full4Adder adder (
        .a(a),
        .b(b),
        .cin(cin),
        .s(s),
        .cout(cout)
    );

    initial begin
        a = 4'b0000; b = 4'b0000; cin = 0;
        #10 a = 4'b1010; b = 4'b0101; cin = 1;
        #10 a = 4'b1111; b = 4'b0001; cin = 0;
        #10 a = 4'b0110; b = 4'b1001; cin = 1;
        #10 a = 4'b0011; b = 4'b0011; cin = 0;
        #10 a = 4'b1100; b = 4'b0010; cin = 1;
        #10 a = 4'b0111; b = 4'b0100; cin = 0;
        #10 a = 4'b1011; b = 4'b1011; cin = 1;
        #10 a = 4'b0001; b = 4'b1110; cin = 0;
        #10 a = 4'b1001; b = 4'b1001; cin = 1;
        #10 a = 4'b1111; b = 4'b1111; cin = 1;
        #10 $stop;
    end
endmodule
