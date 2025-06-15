`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2025 15:18:38
// Design Name: 
// Module Name: Comparator
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


module Comparator(
    input [3:0] A,
    input [3:0] B,
    output AgB,
    output AlB,
    output AeB
    );
    wire [3:0] x;
    assign x = ~(A^B);
    assign AeB = x[3]&x[2]&x[1]&x[0];
    assign AgB = (A[3]&(~B[3]))|(x[3]&A[2]&(~B[2]))|x[3]&x[2]&(A[1]&(~B[1]))|x[3]&x[2]&x[1]&(A[0]&(~B[0]));
    assign AlB = (B[3]&(~A[3]))|(x[3]&B[2]&(~A[2]))|x[3]&x[2]&(B[1]&(~A[1]))|x[3]&x[2]&x[1]&(B[0]&(~A[0]));
endmodule
