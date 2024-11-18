`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 05:34:35 PM
// Design Name: 
// Module Name: incrementalROM
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


module incrementalROM(
    output logic[3:0] f,
    input logic [3:0] a
    );
    always @(*) begin
        case (a)
            4'b0000: f = 4'b0001;
            4'b0001: f = 4'b0010;
            4'b0010: f = 4'b0011;
            4'b0011: f = 4'b0100;
            4'b0100: f = 4'b0101;
            4'b0101: f = 4'b0110;
            4'b0110: f = 4'b0111;
            4'b0111: f = 4'b1000;
            4'b1000: f = 4'b1001;
            4'b1001: f = 4'b1010;
            4'b1010: f = 4'b1011;
            4'b1011: f = 4'b1100;
            4'b1100: f = 4'b1101;
            4'b1101: f = 4'b1110;
            4'b1110: f = 4'b1111;
            4'b1111: f = 4'b0000;
        endcase
    end
endmodule
