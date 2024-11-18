`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 05:52:12 PM
// Design Name: 
// Module Name: rotatingPattern
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


module rotatingPattern(
    input logic [1:0] s,
    input logic [3:0] d [3:0],
    output logic [3:0 ]f [3:0]
);
    logic [15:0] tmp;
    logic [3:0] shift;
    assign shift[1:0] = s;
    always@(*)begin
           {tmp,f[3],f[2],f[1],f[0]} = {d[3],d[2],d[1],d[0]}<<(shift<<2);
           {f[3],f[2],f[1],f[0]} = {f[3],f[2],f[1],f[0]} | tmp;
        end
endmodule
