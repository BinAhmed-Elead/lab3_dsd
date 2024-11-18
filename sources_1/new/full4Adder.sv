`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 06:29:09 AM
// Design Name: 
// Module Name: full4Adder
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


module full4Adder(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] s,
    output cout
);
    logic [3:0] w;
    logic [2:0] cw;

    xor(w[0], b[0], cin);
    xor(w[1], b[1], cin);
    xor(w[2], b[2], cin);
    xor(w[3], b[3], cin);

    fullAdder addr0(.a(a[0]), .b(w[0]), .cin(cin), .s(s[0]), .cout(cw[0]));
    fullAdder addr1(.a(a[1]), .b(w[1]), .cin(cw[0]), .s(s[1]), .cout(cw[1]));
    fullAdder addr2(.a(a[2]), .b(w[2]), .cin(cw[1]), .s(s[2]), .cout(cw[2]));
    fullAdder addr3(.a(a[3]), .b(w[3]), .cin(cw[2]), .s(s[3]), .cout(cout));
endmodule

