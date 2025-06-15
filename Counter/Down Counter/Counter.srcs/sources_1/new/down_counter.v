`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2025 11:37:02
// Design Name: 
// Module Name: down_counter
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


module down_counter(
    input clk,
    input rst,
    input count_en,
    output reg [3:0] q
    );
    always@(posedge clk or negedge rst) begin
        if(!rst) q <= 4'b0;
        else if(count_en) q <= q-1;
        else q <= q;
    end
endmodule
