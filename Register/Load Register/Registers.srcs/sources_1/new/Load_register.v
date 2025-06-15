`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 00:40:25
// Design Name: 
// Module Name: Load_register
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


module Load_register(
    input clk,
    input rst,
    input load,
    input [3:0] in,
    output reg [3:0] out
    );
    always@(posedge clk or negedge rst) begin
        if(!rst) out <= 4'b0;
        else if(load) out <= in;
        else out <= out;
    end
endmodule
