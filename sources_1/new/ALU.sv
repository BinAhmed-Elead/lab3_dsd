`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 04:07:05 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
      output [3:0] f,
      input [1:0] alu_op,
      input [3:0] a,
      input [3:0] b
    );
    
    logic [3:0] adder_sout;
    logic adder_cout;
    
    full4Adder adder(
    .a(a),
    .b(b),
    .s(adder_sout),
    .cout(adder_cout),
    .cin(alu_op[1])
    );
    logic [3:0] shift_out;
    shiftLeft shift(
        .a(a),
        .b(b),
        .f(shift_out)
    );
    logic [3:0] and_out;
    and4bits andgate(
        .a(a),
        .b(b),
        .f(and_out)
    );
    //00 add
    //10 subtract
    //11 shift
    //01 and
      logic [3:0] mux2_out;
      mux2_1 #(.width(4)) mux2(
     .a(and_out),//and 0
     .b(shift_out),//shift 1
     .s(alu_op[1]),
     .f(mux2_out)
    );
      mux2_1 #(.width(4)) mux1(
     .a(adder_sout),//0
     .b(mux2_out),//1
     .s(alu_op[0]),
     .f(f)
    );
endmodule
