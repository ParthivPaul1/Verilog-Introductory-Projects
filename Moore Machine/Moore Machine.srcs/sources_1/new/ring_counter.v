`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2025 20:13:04
// Design Name: 
// Module Name: ring_counter
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


module ring_counter(
    input clk,
    input rst,
    output reg [3:0] state
    );
    reg [3:0] next_state;
    parameter s0 = 4'b0001;
    parameter s1 = 4'b0010;
    parameter s2 = 4'b0100;
    parameter s3 = 4'b1000;
    
    // Combinational
    always@* begin
        case(state)
            s0: begin
                next_state = s1;
            end
            s1: begin
                next_state = s2;
            end
            s2: begin
                next_state = s3;
            end
            s3: begin
                next_state = s0;
            end
        endcase
    end
    
    // Sequential
    always@(posedge clk or negedge rst) begin
        if(!rst) state <= s0;
        else state <= next_state;
    end
endmodule
