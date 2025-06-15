`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2025 20:54:50
// Design Name: 
// Module Name: start_tb
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


module start_tb;
    reg clk, rst, start;
    wire start_actual;
    
    // Instantiation
    start uut(
        .clk(clk),
        .rst(rst),
        .start(start),
        .start_actual(start_actual)
        );
        
    // Initialisation
    initial begin
        clk = 1'b0;
        rst = 1'b0;
        start = 1'b0;
    end   
    
    // Clock generation
    always #5 clk = ~clk;
    
    // Varying stimuli
    initial begin
        #3 rst = 1'b1;
        #5 start = 1'b1;
        #25 start = 1'b0;
        #15 start = 1'b1;
        #20 $finish;
    end
endmodule
