`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 04:18:18 PM
// Design Name: 
// Module Name: tb_mux2_1
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


module tb_mux2_1;
    logic s;
    logic [3:0] a;
    logic [3:0] b;
    logic [3:0] f;
    parameter width = 4;
        mux2_1 #(width) mux (
        .f(f),
        .s(s),
        .a(a),
        .b(b)
    );
    initial begin
        a = 4'b1010;
        b = 4'b0101;
        s = 0;
        #10; $display("s=%b, a=%b, b=%b, f=%b", s, a, b, f);
        
        s = 1;
        #10; $display("s=%b, a=%b, b=%b, f=%b", s, a, b, f);
        $finish;
    end
endmodule

