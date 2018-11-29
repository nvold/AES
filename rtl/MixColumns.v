`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2018 12:54:58 AM
// Design Name: 
// Module Name: MixColumns
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


module MixColumns(
    input [127:0] data,
    output [127:0] data_out
    );
    
    MixColumns_calculation col1(.col(data[127:96]),
                                .col_out(data_out[127:96])
                                );

    MixColumns_calculation col2(.col(data[95:64]),
                                .col_out(data_out[95:64])
                                );

    MixColumns_calculation col3(.col(data[63:32]),
                                .col_out(data_out[63:32])
                                );

    MixColumns_calculation col4(.col(data[31:0]),
                                .col_out(data_out[31:0])
                                );
endmodule
