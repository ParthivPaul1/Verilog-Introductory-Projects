`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2025 20:33:04
// Design Name: 
// Module Name: fsm_tb
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


module fsm_tb;
    reg clk, rst;
    wire [3:0] state;
    // Instantiation
    ring_counter uut(
        .clk(clk),
        .rst(rst),
        .state(state)
        );
    // Initialization
    initial begin
        clk = 1'b0;
        rst = 1'b0;
    end
    // Clock generation
    always #5 clk = ~clk;
    // Varying stimuli
    initial begin
        #7 rst = 1'b1;
        #40 rst = 1'b0;
        #5 $finish;
    end
    // Monitoring
    initial begin
        $monitor("Time=%t\tclk=%b\trst=%b\tstate=%b\n", $time,clk,rst,state);
    end
endmodule
