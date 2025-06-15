`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2025 15:00:30
// Design Name: 
// Module Name: up_down_counter_tb
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


module up_down_counter_tb;
    reg clk, rst, up, count_en;
    wire [3:0] q;
    // Instantiate
    up_down_counter uut(
        .clk(clk),
        .rst(rst),
        .up(up),
        .count_en(count_en),
        .q(q)
        );
    // Initialization
    initial begin
        clk = 1'b0;
        rst = 1'b0;
        up = 1'b0;
        count_en = 1'b0;
    end
    always #5 clk = ~clk;
    // Varying stimuli
    initial begin
        #3 rst = 1'b1;
        #4 count_en = 1'b1;
        #3 up = 1'b1;
        #160 up = 1'b0;
        #170 count_en = 1'b0;
        #10 $finish;
    end
    // Monitoring
    initial begin
        $monitor("Time=%t\tclk=%b\trst=%b\tup=%b\tcount_en=%b\tcount=%b\n", $time,clk,rst,up,count_en,q);
    end
endmodule
