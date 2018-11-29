`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2018 12:15:08 AM
// Design Name: 
// Module Name: MixColByte2
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


module MixColByte2(
    input [31:0] col_in,
    output reg [7:0] byte_out
    );
    
    reg [7:0] b1, b2, b3, b4;
    
    always @(*) begin
        b1 = col_in[31:24];
        
        b2 = col_in[23:16] << 1;
        if(col_in[23]) begin
            b2 = b2 ^ 8'h1B;
        end
        
        b3 = col_in[15:8] << 1;
        if(col_in[15]) begin
            b3 = b3 ^ 8'h1B;
        end
        b3 = b3 ^ col_in[15:8];
        
        b4 = col_in[7:0];
        
        byte_out = b1 ^ b2 ^ b3 ^ b4;
    end
endmodule
