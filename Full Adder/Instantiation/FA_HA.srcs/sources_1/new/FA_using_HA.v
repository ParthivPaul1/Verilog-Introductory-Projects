`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2025 19:59:28
// Design Name: 
// Module Name: FA_using_HA
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

module HA(
    input a,
    input b,
    output s,
    output c
    );
    assign s = a^b;
    assign c = a&b;
endmodule

module FA_using_HA(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
    wire s1, c1, c2;
    // Instantiate HAlf Adder 1
    HA ha1(
        .a(a),
        .b(b),
        .s(s1),
        .c(c1)
    );
    HA ha2(
        .a(s1),
        .b(cin),
        .s(s),
        .c(c2)
    );
    assign cout = c1|c2;
endmodule
