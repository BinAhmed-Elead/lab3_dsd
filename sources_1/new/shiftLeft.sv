`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 04:34:24 PM
// Design Name: 
// Module Name: shiftLeft
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


module shiftLeft #(parameter width = 4)(
    output [width-1:0] f,
    input   [width-1:0] a,
    input   [width-1:0] b
    );
    assign f = ( a << b );
endmodule
