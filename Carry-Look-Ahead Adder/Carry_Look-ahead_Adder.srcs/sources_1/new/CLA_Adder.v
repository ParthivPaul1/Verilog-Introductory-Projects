`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2025 00:58:18
// Design Name: 
// Module Name: CLA_Adder
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


module Carry_Generator(
    input [3:0] p,
    input [3:0] g,
    input cin,
    output [4:0] c
    );
    assign c[0] = cin;
    parameter n = 4;
    genvar i;
    generate
        for(i=0; i < n; i= i+1) begin: carry_loop
            assign c[i+1] = (p[i]&c[i])|g[i];
        end
     endgenerate
endmodule

module CLA_Adder(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] s,
    output cout
    );
    wire [3:0] p;
    wire [3:0] g;
    wire [4:0] c;
    parameter n = 4;
    genvar i;
    generate
        for(i=0; i < n; i= i+1) begin: carry_loop
            assign p[i] = a[i]^b[i];
            assign g[i] = a[i]&b[i];
        end
     endgenerate
     Carry_Generator carry(
        .p(p),
        .g(g),
        .cin(cin),
        .c(c)
      );
      assign cout = c[4];
    generate
        for(i=0; i < n; i= i+1) begin: carry_sum
            assign s[i] = p[i]^c[i];
        end
     endgenerate
endmodule
