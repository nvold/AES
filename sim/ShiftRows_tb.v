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
    
    initial begin
        row1 = 32'h63EB_9FA0;
        row2 = 32'hC02F_9392;
        row3 = 32'hAB30_AFC7;
        row4 = 32'h20CB_2BA2;
        
        #10;
        
        row1 = 32'h1AAB_0127;
        row2 = 32'hB45B_3041;
        row3 = 32'hD3BA_E9D2;
        row4 = 32'hAAE8_BB9A;
        
        #10;
    end
    
endmodule
