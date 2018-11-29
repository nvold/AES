`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2018 01:09:18 AM
// Design Name: 
// Module Name: MixColumns_calculation
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


module MixColumns_calculation(
    input [31:0] col,
    output [31:0] col_out
    );   
    MixColByte1 b1(.col_in(col),
                   .byte_out(col_out[31:24])
                   );
                   
    MixColByte2 b2(.col_in(col),
                   .byte_out(col_out[23:16])
                   );
                   
    MixColByte3 b3(.col_in(col),
                   .byte_out(col_out[15:8])
                   );
                   
    MixColByte4 b4(.col_in(col),
                   .byte_out(col_out[7:0])
                   );
endmodule
