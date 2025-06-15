`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2025 18:19:23
// Design Name: 
// Module Name: load_register_tb
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


module load_register_tb;
    reg clk, rst, load;
    reg [3:0] in;
    wire [3:0] out;
    
    // Instantiation
    Load_register uut(
        .clk(clk),
        .rst(rst),
        .load(load),
        .in(in),
        .out(out)
        );
    // Initialization
    initial begin
        clk = 1'b0;
        rst = 1'b0;
        load = 1'b0;
        in = 4'b0;
    end
    // Clock generation
    always #5 clk = ~clk;
    // Varying Stimuli
    initial begin
        #7 rst = 1'b1;
        #10 load = 1'b1;
        #5 in = 4'b1011;
        #5 load = 1'b0;
        #15 in = 4'b1100;
        #1 load = 1'b1;
        #5 $finish;
    end
    // Monitoring
    initial begin
        $monitor("Time=%t\tclk=%b\trst=%b\tload=%b\tinput=%b\toutput=%b\n", $time,clk,rst,load,in,out);
    end
endmodule
