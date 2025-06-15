`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2025 15:39:56
// Design Name: 
// Module Name: Comparator_TB
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


module Comparator_TB;
    //Port declaration
    reg [3:0] A,B;
    wire AgB,AlB,AeB;
    
    //Instantiation
    Comparator uut(
        .A(A),
        .B(B),
        .AgB(AgB),
        .AeB(AeB),
        .AlB(AlB)
    );
    
    //Initialize
    initial begin
        A = 4'b0;
        B = 4'b0;
    end
    
    //Variation
    initial begin
        #10;
        A = 4'b1001;
        B = 4'b1100;
        #10;
        A = 4'b1111;
        B = 4'b1100;
        #10;
        A = 4'b1000;
        B = 4'b1000;
        #60;
        $finish;
    end
    
    //Monitoring
    initial begin
        $monitor("Time=%t, A=%b, B=%b, AgB=%b, AeB=%b, AlB=%b", $time,A,B,AgB,AeB,AlB);
    end
    
endmodule
