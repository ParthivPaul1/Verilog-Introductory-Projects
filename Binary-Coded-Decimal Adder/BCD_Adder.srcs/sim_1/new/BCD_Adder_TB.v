`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2025 14:46:31
// Design Name: 
// Module Name: BCD_Adder_TB
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


module BCD_Adder_TB;
   
   //Port declaration
    reg [3:0] a;
    reg [3:0] b;
    reg cin;
    wire [3:0] s;
    wire cout;
    
    //Instantiation
    BCD_Adder uut(
        .a(a),
        .b(b),
        .cin(cin),
        .s(s),
        .cout(cout)
        );
        
    // Initialisation
    initial begin
        a = 4'b0;
        b = 4'b0;
        cin = 1'b0;
    end
    
    //Variation
    initial begin
        #10;
        a = 4'b0101;
        b = 4'b0100;
        #15;
        a = 4'b0110;
        b = 4'b0111;
        #20;
        a = 4'b1001;
        b = 4'b1001;
    end
    
    //Monitor
    initial begin
        $monitor("Time=%t,\t a=%b,\t b=%b,\t cin=%b,\t cout=%b,\t sum=%b ", $time,a,b,cin,cout,s);
        #60
        $finish;
    end
endmodule
