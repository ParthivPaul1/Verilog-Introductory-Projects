`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2025 22:22:33
// Design Name: 
// Module Name: Four_bit_Adder_tb
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


module Four_bit_Adder_tb;
    reg [3:0] a;
    reg [3:0] b;
    reg c0;
    wire [3:0] s;
    wire c4;
        
    // Instantiate
    Four_bit_adder uut(
    .a(a),
    .b(b),
    .c0(c0),
    .s(s),
    .c4(c4)
    );
    
    initial begin
        a = 4'b1001;
        b = 4'b1101;
        c0 = 0;
        #5;
        a = 4'b1001;
        b = 4'b1101;
        c0 = 1;
        #5;
        $finish;
    end
    initial begin
        $monitor("Time = %t\t a = %b\t b = %b\t cin = %b\t cout = %b\t sum = %b", $time,a,b,c0,c4,s);
    end
endmodule
