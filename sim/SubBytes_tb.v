`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2018 11:24:38 AM
// Design Name: 
// Module Name: SubBytes_tb
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


module SubBytes_tb;
reg  [3:0]   count = 0;
reg  [127:0] data;
wire [127:0] data_out;

SubBytes uut(
             .data(data),
             .data_out(data_out)
             );

    initial begin
        //test 1
        data = 128'h001F_0E54_3C4E_0859_6E22_1B0B_4774_311A;
        
        #20;
        
        if(data_out == 128'h63C0_AB20_EB2F_30CB_9F93_AF2B_A092_C7A2) begin
            count = count + 1;
            $display("test 1 passed");
        end else begin
            $display("test 1 failed");
        end
        
        #20;
        
        //test 2
        data = 128'hAABB_CCDD_EEFF_1234_5698_67B3_45EF_9348;
        
        #20;
        
        if(data_out == 128'hACEA_4BC1_2816_C918_B146_856D_6EDF_DC52) begin
            count = count + 1;
            $display("test 2 passed");
        end else begin
            $display("test 2 failed");
        end
        
        #20;
        
        //test 3
        data = 128'h1376_B123_DF69_0103_B00A_9876_FACD_628B;
        
        #20;
        
        if(data_out == 128'h7D38_C826_9EF9_7C7B_E767_4638_2DBD_AA3D) begin
            count = count + 1;
            $display("test 3 passed");
        end else begin
            $display("test 3 failed");
        end
        
        #20;
        
        //test 4
        data = 128'h02B6_74C5_AF79_ADCB_FEBA_3F9A_0F9B_7ABC;
        
        #20;
        
        if(data_out == 128'h774E_92A6_79B6_951F_BBF4_75B8_7614_DA65) begin
            count = count + 1;
            $display("test 4 passed");
        end else begin
            $display("test 4 failed");
        end
        
        #20;
        
        if(count == 4) begin
            $display("all tests passed");
        end else begin
            $display("test failed");
        end
    end
endmodule
