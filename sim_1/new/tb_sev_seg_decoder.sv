`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2024 02:18:15 PM
// Design Name: 
// Module Name: tb_sev_seg_decoder
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


module tb_sev_seg_decoder(

    );
    logic [3:0] bin;
    logic [6:0] seg;
//    module seven_seg_decoder(
//    input  wire [3:0] bin,      // 4-bit binary input (0–F)
//    output reg  [6:0] seg       // 7-bit output for segments a-g
//);

seven_seg_decoder dec(.bin(bin),.seg(seg));
    initial begin
        // Test cases for different bin values
        bin = 4'b0000; #5; // Wait for 5 time units
        bin = 4'b0001; #5;
        bin = 4'b0010; #5;
        bin = 4'b0011; #5;
        bin = 4'b0100; #5;
        bin = 4'b0101; #5; // Added case for bin = 4'b0101
        bin = 4'b0110; #5; // Added case for bin = 4'b0110
        bin = 4'b0111; #5; // Added case for bin = 4'b0111
        bin = 4'b1000; #5; // Added case for bin = 4'b1000
        bin = 4'b1001; #5; // Added case for bin = 4'b1001
        bin = 4'b1010; #5;
        bin = 4'b1011; #5;
        bin = 4'b1100; #5; // Added case for bin = 4'b1100
        bin = 4'b1101; #5;
        bin = 4'b1110; #5; // Added case for bin = 4'b1110
        bin = 4'b1111; #5;
        
        // Finish simulation
        $finish;
    end
endmodule
