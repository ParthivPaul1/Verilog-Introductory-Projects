`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2025 12:39:31
// Design Name: 
// Module Name: Adder_Subtractor_tb
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


module Adder_Subtractor_tb;
    reg [3:0] a;
    reg [3:0] b;
    reg m;
    wire [3:0] s;
    wire c4;
        
    // Instantiate
    Adder_Subtractor uut(
    .a(a),
    .b(b),
    .m(m),
    .s(s),
    .c4(c4)
    );
    
    initial begin
        a = 4'b1001;
        b = 4'b1101;
        m = 0;
        #5;
        a = 4'b1001;
        b = 4'b1101;
        m = 1;
        #5;
        $finish;
    end
    initial begin
        $monitor("Time = %t\t a = %b\t b = %b\t m = %b\t cout = %b\t result = %b", $time,a,b,m,c4,s);
    end
endmodule

