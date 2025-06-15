`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2025 14:19:13
// Design Name: 
// Module Name: BCD_Adder
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
module Four_bit_Adder(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] s,
    output cout
    );
    assign {cout,s} = a+b+cin;
endmodule

module BCD_Adder(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] s,
    output cout
    );
    wire k,z8,z4,z2,z1,ml;
    assign ml = 1'b0;
    //Instantiate
    Four_bit_Adder fba1(
        .a(a),
        .b(b),
        .cin(cin),
        .s({z8,z4,z2,z1}),
        .cout(k)
        );
    assign cout = k|(z8&z4)|(z8&z2);
    Four_bit_Adder fba2(
        .a({z8,z4,z2,z1}),
        .b({ml,cout,cout,ml}),
        .cin(ml),
        .s(s)
        );
endmodule
