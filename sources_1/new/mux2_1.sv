`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 04:09:16 PM
// Design Name: 
// Module Name: mux2_1
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


module mux2_1 #(parameter width = 4)(
      output [width-1:0] f,
      input s,
      input  [width-1:0] a,
      input  [width-1:0] b
    );
    assign f = s ? b : a;//if s ==0 then f = a else if s == 1 then f = b
endmodule
