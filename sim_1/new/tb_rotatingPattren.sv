`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 06:23:15 PM
// Design Name: 
// Module Name: tb_rotatingPattren
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


module tb_rotatingPattren;
    logic [1:0] s;
    logic [3:0]dig[3:0];
    logic [3:0]digits[3:0];
    rotatingPattern rot(
    .s(s),
    .d(dig[3:0]),
    .f(digits[3:0])
); 

initial begin
    s=2'b00;
    dig[0] = 4'he;
    dig[1] = 4'hd;
    dig[2] = 4'h0;
    dig[3] = 4'hC;
    #10
    s=2'b01;
    #10
    s=2'b10;
    #10
    s=2'b11;
    #10;
    $finish;

end

endmodule
