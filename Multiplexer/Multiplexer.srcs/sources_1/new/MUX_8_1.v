`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2025 18:59:39
// Design Name: 
// Module Name: MUX_8_1
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
module MUX_2_1(
    input [1:0] in,
    input sel,
    output reg out
    );
    always@(in or sel) begin
        if(sel) out = in[1];
        else out = in[0];
    end
endmodule

module MUX_4_1(
    input [3:0] in,
    input [1:0] sel,
    output reg out 
    );
    always@(in or sel) begin
        case(sel) 
            2'b00: out = in[0];
            2'b01: out = in[1];
            2'b10: out = in[2];
            2'b11: out = in[3];
        endcase
    end
endmodule

module MUX_8_1(
    input [7:0] in,
    input [2:0] sel,
    output out
    );
    wire o1,o2;
    MUX_4_1 m1(
        .in(in[3:0]),
        .sel(sel[1:0]),
        .out(o1)
        );
    MUX_4_1 m2(
        .in(in[7:4]),
        .sel(sel[1:0]),
        .out(o2)
        );
    MUX_2_1 m3(
        .in({o2,o1}),
        .sel(sel[2]),
        .out(out)
        );
endmodule
