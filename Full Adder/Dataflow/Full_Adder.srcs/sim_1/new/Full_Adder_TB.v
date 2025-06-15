`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2025 21:33:53
// Design Name: 
// Module Name: Full_Adder_TB
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


module Full_Adder_TB;

    // Declaration
    reg a;
    reg b;
    reg cin;
    wire sum;
    wire cout;
    
    //Instantiation
    Full_Adder uut(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );
    
    initial begin
        a = 0;
        b = 0;
        cin = 0;
        #5;
         a = 0;
        b = 0;
        cin = 1;
        #5;
         a = 0;
        b = 1;
        cin = 0;
        #5;
         a = 0;
        b = 1;
        cin = 1;
        #5;
         a = 1;
        b = 0;
        cin = 0;
        #5;
         a = 1;
        b = 0;
        cin = 1;
        #5;
         a = 1;
        b = 1;
        cin = 0;
        #5;
         a = 1;
        b = 1;
        cin = 1;
        #5;
        $finish;
    end
    initial begin
        $monitor("Time = %t  a = %b  b = %b  cin = %b  sum = %b  cout = %b", $time,a,b,cin,sum,cout);
    end
endmodule
