`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2025 10:23:42
// Design Name: 
// Module Name: CLA_Adder_tb
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


module CLA_Adder_tb;
    reg [3:0] a;
    reg [3:0] b;
    reg cin;
    wire [3:0] s;
    wire cout;
        
    // Instantiate
    CLA_Adder uut(
    .a(a),
    .b(b),
    .cin(cin),
    .s(s),
    .cout(cout)
    );
    
    initial begin
        a = 4'b1001;
        b = 4'b1101;
        cin = 0;
        #5;
        a = 4'b1001;
        b = 4'b1101;
        cin = 1;
        #5;
        $finish;
    end
    initial begin
        $monitor("Time = %t\t a = %b\t b = %b\t cin = %b\t cout = %b\t sum = %b", $time,a,b,cin,cout,s);
    end
endmodule
