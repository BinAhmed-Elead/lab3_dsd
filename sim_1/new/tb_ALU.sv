`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 07:20:38 AM
// Design Name: 
// Module Name: tb_ALU
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

module tb_ALU;
    logic [3:0] a;
    logic [3:0] b;
    logic [1:0] alu_op;
    logic [3:0] f;

    ALU alu (
        .f(f),
        .alu_op(alu_op),
        .a(a),
        .b(b)
    );

    initial begin
        a = 4'b0000; b = 4'b0000; alu_op = 2'b00;
        #10 a = 4'b0101; b = 4'b0011; alu_op = 2'b00;
        #10 a = 4'b1010; b = 4'b0101; alu_op = 2'b01;
        #10 a = 4'b1111; b = 4'b0001; alu_op = 2'b10;
        #10 a = 4'b1001; b = 4'b0110; alu_op = 2'b11;
        #10 a = 4'b0011; b = 4'b0010; alu_op = 2'b00;
        #10 a = 4'b0100; b = 4'b1001; alu_op = 2'b01;
        #10 a = 4'b1110; b = 4'b1111; alu_op = 2'b10;
        #10 a = 4'b0001; b = 4'b0010; alu_op = 2'b11;
        #10 a = 4'b1100; b = 4'b0111; alu_op = 2'b00;
        #10 $stop;
    end
endmodule

