`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2025 19:43:18
// Design Name: 
// Module Name: Half_Adder_TB
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


module Half_Adder_TB;
    reg a;
    reg b;
    wire sum;
    wire cout;
   
    // Instantiate
    Half_Adder uut(
    .a(a),
    .b(b),
    .sum(sum),
    .cout(cout)
    );
    
    initial begin
        a = 0;
        b = 0;
        #10;
        a = 0;
        b = 1;
        #10;
        a = 1;
        b = 0;
        #10;
        a = 1;
        b = 1;
        #10;
        $finish;
    end
    initial begin
        $monitor("Time = %t  a = %b  b = %b  sum = %b  cout = %b", $time,a,b,sum,cout);
    end  
endmodule
