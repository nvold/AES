`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2018 01:19:14 AM
// Design Name: 
// Module Name: MixColumns_tb
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


module MixColumns_tb;
    reg [3:0] count = 0;
    reg [127:0] data;
    wire [127:0] data_out;
    
    MixColumns uut(.data(data), .data_out(data_out));
    
    initial begin
        //test 1
        data = 128'hDB13_5345_F20A_225C_0101_0101_C6C6_C6C6;
        #10;
        if(data_out == 128'h8E4D_A1BC_9FDC_589D_0101_0101_C6C6_C6C6) begin
            count = count + 1;
            $display("test 1 passed");
        end else begin
            $display("test 1 failed");
        end
        
        #10;
        
        //test 2
        data = 128'h632F_AFA2_EB93_C720_9F92_ABCB_A0C0_302B;
        #10;
        if(data_out == 128'hBA75_F47A_84A4_8D32_E88D_060E_1B40_7D5D) begin
            count = count + 1;
            $display("test 2 passed");
        end else begin
            $display("test 2 failed");
        end
        
        #10;
        
        if(count == 2) begin
            $display("all tests passed");
        end else begin
            $display("tests failed");
        end
    end
endmodule
