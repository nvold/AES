`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2018 01:10:21 AM
// Design Name: 
// Module Name: SubBytes
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


module SubBytes(
    input [127:0] data,
    output [127:0] data_out
    );
    
    genvar i;
    
    generate
        for(i = 0; i < 16; i = i + 1) begin
            Byte_Substitution sub(
                                  .byte(data[(i*8)+7:i*8]),
                                  .substituted_byte(data_out[(i*8)+7:i*8])
                                  );
        end
    endgenerate
endmodule
