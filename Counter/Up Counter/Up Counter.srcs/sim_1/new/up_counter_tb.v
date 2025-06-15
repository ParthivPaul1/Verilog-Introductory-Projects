`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2025 14:47:14
// Design Name: 
// Module Name: up_counter_tb
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


module up_counter_tb;
    reg clk, rst, count_en;
    wire [3:0] q;
    // Instantiation
    up_counter uut(
        .clk(clk),
        .rst(rst),
        .count_en(count_en),
        .q(q)
        );
    // Initialization
    initial begin
        clk= 1'b0;
        rst= 1'b0;
        count_en= 1'b0;
    end
    always #5 clk = ~clk;
    //Varying stimuli
    initial begin
        #3 rst = 1'b1;
        #4 count_en = 1'b1;
        #170 count_en = 1'b0;
        #20 rst = 1'b0;
        #5 $finish;
    end
    // Monitoring
    initial begin
        $monitor("Time=%t\tclk=%b\trst=%b\tcount_en=%b\tcount=%b\n",$time, clk, rst, count_en, q);
    end
endmodule
