`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2025 21:29:46
// Design Name: 
// Module Name: DecoderTB
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


module DecoderTB;
    reg [3:0] in;
    wire [15:0] out;
    
    // Instantiation
    Decoder_4_16 uut(
        .in(in),
        .out(out)
        );
        
    initial in = 0;
    
    initial begin
    #5 in = 4'b0001;
    #5 in = 4'b0010;
    #5 in = 4'b0011;
    #5 in = 4'b0100;
    #5 in = 4'b0101;
    #5 in = 4'b0110;
    #5 in = 4'b0111;
    #5 in = 4'b1000;
    #5 in = 4'b1001;
    #5 in = 4'b1010;
    #5 in = 4'b1011;
    #5 in = 4'b1100;
    #5 in = 4'b1101;
    #5 in = 4'b1110;
    #5 in = 4'b1111;
    #5 $finish;
    end
    
    initial begin
        $monitor("Time=%t\tin=%b\tout=%b\n", $time,in,out);
    end
endmodule
