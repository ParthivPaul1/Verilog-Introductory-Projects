`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2025 14:56:49
// Design Name: 
// Module Name: up_down_counter
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


module up_down_counter(
    input clk,
    input rst,
    input up,
    input count_en,
    output reg [3:0] q
    );
    always@(posedge clk or negedge rst) begin
        if(!rst) q <= 4'b0;
        else if(count_en) begin
            if(up) q <= q+1;
            else q <= q-1; // Down counting
        end else q <= q;
    end
endmodule
