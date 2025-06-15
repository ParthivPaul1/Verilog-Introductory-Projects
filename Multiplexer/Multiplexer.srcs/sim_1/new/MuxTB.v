`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2025 19:26:20
// Design Name: 
// Module Name: MuxTB
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


module MuxTB;
    reg [7:0] in;
    reg [2:0] sel;
    wire out;
    
    // Instantiation
    MUX_8_1 uut(
        .in(in),
        .sel(sel),
        .out(out)
        );
        
    initial begin
        in = 8'b0;
        sel = 2'b0;
    end
    
    initial begin
        #5 sel = 3'b000;
        in = 8'b11111110;
        #5 in = 8'b00000001;
        
        #5 sel = 3'b001;
        in = 8'b11111101;
        #5 in = 8'b00000010;
        
        #5 sel = 3'b010;
        in = 8'b11111011;
        #5 in = 8'b00000100;
        
        #5 sel = 3'b011;
        in = 8'b11110111;
        #5 in = 8'b00001000;
        
        #5 sel = 3'b100;
        in = 8'b11101111;
        #5 in = 8'b00010000;
        
        #5 sel = 3'b101;
        in = 8'b11011111;
        #5 in = 8'b00100000;
        
        #5 sel = 3'b110;
        in = 8'b10111111;
        #5 in = 8'b01000000;
        
        #5 sel = 3'b111;
        in = 8'b01111111;
        #5 in = 8'b10000000;
        
        #85 $finish;
    end
    
    initial begin
        $monitor("Time=%t\tin=%b\tsel=%b\tout=%b\n", $time,in,sel,out);
    end
endmodule
