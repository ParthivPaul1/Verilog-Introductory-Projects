`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2025 19:05:51
// Design Name: 
// Module Name: shift_register_tb
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


module shift_register_tb;
    reg clk, rst, shift, in;
    wire [3:0] out;
    // Instantiation
    shift_register uut(
        .clk(clk),
        .rst(rst),
        .shift(shift),
        .in(in),
        .out(out)
        );
    // Initialization
    initial begin
        clk = 1'b0;
        rst = 1'b0;
        shift = 1'b0;
        in = 1'b0;
    end
    // Clock generation
    always #5 clk = ~clk;
    // Varying stimuli
    initial begin
        #7 rst = 1'b1;
        #3 shift = 1'b1;
        #7 in = 1'b1;
        #50 shift = 1'b0;
        #10 shift = 1'b1;
        #3 in = 1'b0;
        #40 shift = 1'b0;
        #10 $finish;
    end
    // Monitoring
    initial begin
        $monitor("Time=%t\tclk=%b\trst=%b\tshift=%b\tin=%b\tout=%b\n", $time,clk,rst,shift,in,out);
    end
endmodule
