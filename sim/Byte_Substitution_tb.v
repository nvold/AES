`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2018 08:26:43 PM
// Design Name: 
// Module Name: Byte_Substitution_tb
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


module Byte_Substitution_tb;

    reg [7:0] byte;
    wire [7:0] substituted_byte;

    Byte_Substitution uut(
        .byte(byte),
        .substituted_byte(substituted_byte)
        );
    
    initial begin
        byte = 8'h00;
        #5;
        byte = 8'hFF;
        #5;
        byte = 8'hAB;
        #5;
        byte = 8'hBA;
        #5;
    end

endmodule
