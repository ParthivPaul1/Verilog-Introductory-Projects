`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2025 20:24:44
// Design Name: 
// Module Name: FA_U_HA_tb
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


module FA_U_HA_tb;
    reg a,b,cin;
    wire s,cout;
    
    // Instantiate
    FA_using_HA uut(
        .a(a),
        .b(b),
        .cin(cin),
        .s(s),
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
        $monitor("Time = %t\t a = %b\t b = %b\t cin = %b\t cout = %b\t sum = %b", $time, a,b,cin,s,cout);
    end
endmodule
