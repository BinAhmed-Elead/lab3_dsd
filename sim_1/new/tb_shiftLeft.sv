`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 04:35:46 PM
// Design Name: 
// Module Name: tb_shiftLeft
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


module tb_shiftLeft;
parameter width =4;
logic [width-1:0] f,a,b;
shiftLeft  #(width) left (
.f(f),
.a(a),
.b(b)
);
    initial begin 
    a=4'b0101;
    b=4'b0000;
    #10
    b=4'b0001;
    #10
    b=4'b0010;
    $finish;
    end

endmodule
