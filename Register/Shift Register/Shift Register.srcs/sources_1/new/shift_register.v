`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2025 18:52:42
// Design Name: 
// Module Name: shift_register
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


module shift_register(
    input clk,
    input rst,
    input shift,
    input in,
    output reg [3:0] out
    );
    always@(posedge clk or negedge rst) begin
        if(!rst) out <= 4'b0;
        else if(shift) begin
            out[2:0] <= out>>1;
            out[3] <= in;
        end else out <= out;
    end
endmodule
