`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2025 21:04:26
// Design Name: 
// Module Name: D_FF_TB
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


module D_FF_TB;
    reg d,clk,rst;
    wire q;
    // Instantiate
    D_FF uut(
        .d(d),
        .clk(clk),
        .rst(rst),
        .q(q)
        );
        
    // Initialise
    initial begin
        d = 1'b0;
        rst = 1'b0;
        clk = 1'b0;
    end
    // Stimuli
    always #5 clk = ~clk;
    initial begin
        #4 rst = 1'b1;
        repeat(5) begin
            #3 d = ~d;
        end
        #5 rst = 1'b0;
        #10 $finish;
    end
    
    // Monitoring
    initial $monitor("Time=%t\tclk=%b\trst=%b\tdata=%b\toutput=%b\n",$time,clk,rst,d,q);
    
endmodule
