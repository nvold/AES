`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2018 11:51:24 AM
// Design Name: 
// Module Name: ShiftRows_tb
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


module ShiftRows_tb;

    reg  [31:0] row1;
    reg  [31:0] row2;
    reg  [31:0] row3;
    reg  [31:0] row4;
    wire [31:0] row1_out;
    wire [31:0] row2_out;
    wire [31:0] row3_out;
    wire [31:0] row4_out;
    
    ShiftRows uut(
        .row1(row1),
        .row2(row2),
        .row3(row3),
        .row4(row4),
        .row1_out(row1_out),
        .row2_out(row2_out),
        .row3_out(row3_out),
        .row4_out(row4_out)
    );
    
    
    
endmodule
