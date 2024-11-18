`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 07:15:44 AM
// Design Name: 
// Module Name: and4bits
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


module and4bits(
    input logic [3:0] a,
    input logic [3:0] b,
    output logic [3:0] f
    );
    assign f=a & b;
endmodule
