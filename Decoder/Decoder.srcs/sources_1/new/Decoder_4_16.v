`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2025 20:24:58
// Design Name: 
// Module Name: Decoder_4_16
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

module Decoder_3_8(
    input en,
    input [2:0] in,
    output reg [7:0] out
    );
    always@(en or in) begin
        if(en) begin
            case(in)
                3'b000: out = 8'b00000001;
                3'b001: out = 8'b00000010;
                3'b010: out = 8'b00000100;
                3'b011: out = 8'b00001000;
                3'b100: out = 8'b00010000;
                3'b101: out = 8'b00100000;
                3'b110: out = 8'b01000000;
                3'b111: out = 8'b10000000;
                default: out = 8'bx;
            endcase
        end else out = 8'b0;
    end
endmodule

module Decoder_4_16(
    input [3:0] in,
    output [15:0] out
    );
    wire [7:0] o1;
    wire [7:0] o2;
    Decoder_3_8 d1(
        .en(~(in[3])),
        .in(in[2:0]),
        .out(o1)
        );
    Decoder_3_8 d2(
        .en(in[3]),
        .in(in[2:0]),
        .out(o2)
        );
    assign out = {o2,o1};
endmodule
