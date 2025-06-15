`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2025 20:53:08
// Design Name: 
// Module Name: start
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


module start(
    input clk,
    input rst,
    input start,
    output reg start_actual
    );
    reg out1;
    always@(posedge clk or negedge rst) begin
        if(!rst) begin
        out1 <= 1'b0;
        start_actual <= 1'b0;
        end else begin
            out1 <= start;
            if(out1 == 1'b0 && start == 1'b1) start_actual <= 1'b1;
            else start_actual <= 1'b0;
        end        
    end
endmodule
