`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2025 20:33:40
// Design Name: 
// Module Name: D_FF
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


module D_FF(
    input d,
    input clk,
    input rst,
    output reg q//,
    //output reg qb
    );
    always@(posedge clk or negedge rst) begin
        if(!rst) begin
            #5 q <= 1'b0;
            //qb <= 1'b1;
        end else begin
            #5 q <= d;
            //qb <= ~d;
        end
    end
endmodule
