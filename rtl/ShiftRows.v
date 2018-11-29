`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2018 01:04:34 AM
// Design Name: 
// Module Name: ShiftRows
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


module ShiftRows(
    input [31:0] row1,
    input [31:0] row2,
    input [31:0] row3,
    input [31:0] row4,
    output [31:0] row1_out,
    output [31:0] row2_out,
    output [31:0] row3_out,
    output [31:0] row4_out
    );
    
    assign row1_out = row1;
    assign row2_out = {row2[23:0], row2[31:24]};
    assign row3_out = {row3[15:0], row3[31:16]};
    assign row3_out = {row4[7:0], row4[31:8]};
    
endmodule
