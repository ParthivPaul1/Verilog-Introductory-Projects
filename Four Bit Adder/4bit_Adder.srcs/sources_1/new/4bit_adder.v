`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2025 21:26:09
// Design Name: 
// Module Name: 4bit_adder
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

module full_adder(
    input a,b,cin,
    output sum,cout
    );
    assign sum = a^b^cin;
    assign cout = (a&b)|((a^b)&cin);
endmodule

module Four_bit_adder(
    input [3:0] a,
    input [3:0] b,
    input c0,
    output [3:0] s,
    output c4
    );
    wire c1,c2,c3;
    
    // Instantiations
    full_adder f0(
        .a(a[0]),
        .b(b[0]),
        .cin(c0),
        .sum(s[0]),
        .cout(c1)
    );
    
    full_adder f1(
        .a(a[1]),
        .b(b[1]),
        .cin(c1),
        .sum(s[1]),
        .cout(c2)
    );
    
    full_adder f2(
        .a(a[2]),
        .b(b[2]),
        .cin(c2),
        .sum(s[2]),
        .cout(c3)
    );
    
    full_adder f3(
        .a(a[3]),
        .b(b[3]),
        .cin(c3),
        .sum(s[3]),
        .cout(c4)
    );
endmodule
