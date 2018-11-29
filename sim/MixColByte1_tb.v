`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2018 12:06:09 AM
// Design Name: 
// Module Name: MixColByte1_tb
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


module MixColByte1_tb;
    reg [31:0] col_in;
    wire [7:0] byte_out;
    
    MixColByte1 uut(.col_in(col_in),
                    .byte_out(byte_out)
                    );
                     
    initial begin
        col_in = 32'hDB13_5345;
        #10;
    end
endmodule
