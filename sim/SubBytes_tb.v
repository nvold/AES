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
reg  [4:0]   count = 0;
reg  [127:0] data;
wire [127:0] data_out;

SubBytes uut(
             .data(data),
             .data_out(data_out)
             );

    initial begin
        //test 1, tests row 0
        data = 128'h0001_0203_0405_0607_0809_0A0B_0C0D_0E0F;
        #5;
        if(data_out == 128'h637C_777B_F26B_6FC5_3001_672B_FED7_AB76) begin
            count = count + 1;
            $display("test 1 passed");
        end else begin
            $display("test 2 faield");
        end
        
        //test 2, tests row 1
        data = 128'h1011_1213_1415_1617_1819_1A1B_1C1D_1E1F;
        #5;
        if(data_out == 128'hCA82_C97D_FA59_47F0_ADD4_A2AF_9CA4_72C0) begin
            count = count + 1;
            $display("test 2 passed");
        end else begin
            $display("test 2 failed");
        end
        
        //test 3, tests row 2
        data = 128'h2021_2223_2425_2627_2829_2A2B_2C2D_2E2F;
        #5;
        if(data_out == 128'hB7FD_9326_363F_F7CC_34A5_E5F1_71D8_3115) begin
            count = count + 1;
            $display("test 3 passed");
        end else begin
            $display("test 3 failed");
        end
        
        //test 4, tests row 3
        data = 128'h3031_3233_3435_3637_3839_3A3B_3C3D_3E3F;
        #5;
        if(data_out == 128'h04C7_23C3_1896_059A_0712_80E2_EB27_B275) begin
            count = count + 1;
            $display("test 4 passed");
        end else begin
            $display("test 4 failed");
        end
        
        //test 5, tests row 4
        data = 128'h4041_4243_4445_4647_4849_4A4B_4C4D_4E4F;
        #5;
        if(data_out == 128'h0983_2C1A_1B6E_5AA0_523B_D6B3_29E3_2F84) begin
            count = count + 1;
            $display("test 5 passed");
        end else begin
            $display("test 5 faield");
        end
        
        //test 6. tests row 5
        data = 128'h5051_5253_5455_5657_5859_5A5B_5C5D_5E5F;
        #5;
        if(data_out == 128'h53D1_00ED_20FC_B15B_6ACB_BE39_4A4C_58CF) begin
            count = count + 1;
            $display("test 6 passed");
        end else begin
            $display("test 6 failed");
        end
        
        //test 7, tests row 6
        data = 128'h6061_6263_6465_6667_6869_6A6B_6C6D_6E6F;
        #5;
        if(data_out == 128'hD0EF_AAFB_434D_3385_45F9_027F_503C_9FA8) begin
            count = count + 1;
            $display("test 7 passed");
        end else begin
            $display("test 7 failed");
        end
        
        //test 8, tests row 7
        data = 128'h7071_7273_7475_7677_7879_7A7B_7C7D_7E7F;
        #5;
        if(data_out == 128'h51A3_408F_929D_38F5_BCB6_DA21_10FF_F3D2) begin
            count = count + 1;
            $display("test 8 passed");
        end else begin
            $display("test 8 failed");
        end
        
        //test 9, test row 8
        data = 128'h8081_8283_8485_8687_8889_8A8B_8C8D_8E8F;
        #5;
        if(data_out == 128'hCD0C_13EC_5F97_4417_C4A7_7E3D_645D_1973) begin
            count = count + 1;
            $display("test 9 passed");
        end else begin
            $display("test 9 failed");
        end
        
        //test 10, tests row 9
        data = 128'h9091_9293_9495_9697_9899_9A9B_9C9D_9E9F;
        #5;
        if(data_out == 128'h6081_4FDC_222A_9088_46EE_B814_DE5E_0BDB) begin
            count = count + 1;
            $display("test 10 passed");
        end else begin
            $display("test 10 failed");
        end
        
        //test 11, tests row A
        data = 128'hA0A1_A2A3_A4A5_A6A7_A8A9_AAAB_ACAD_AEAF;
        #5;
        if(data_out == 128'hE032_3A0A_4906_245C_C2D3_AC62_9195_E479) begin
            count = count + 1;
            $display("test 11 passed");
        end else begin
        $display("test 11 failed");
        end
        
        //test 12, tests row B
        data = 128'hB0B1_B2B3_B4B5_B6B7_B8B9_BABB_BCBD_BEBF;
        #5;
        if(data_out == 128'hE7C8_376D_8DD5_4EA9_6C56_F4EA_657A_AE08) begin
            count = count + 1;
            $display("test 12 passed");
        end else begin
            $display("test 12 failed");
        end
        
        //test 13, tests row C
        data = 128'hC0C1_C2C3_C4C5_C6C7_C8C9_CACB_CCCD_CECF;
        #5;
        if(data_out == 128'hBA78_252E_1CA6_B4C6_E8DD_741F_4BBD_8B8A) begin
            count = count + 1;
            $display("test 13 passed");
        end else begin
            $display("test 13 failed");
        end
        
        //test 14, tests row D
        data = 128'hD0D1_D2D3_D4D5_D6D7_D8D9_DADB_DCDD_DEDF;
        #5;
        if(data_out == 128'h703E_B566_4803_F60E_6135_57B9_86C1_1D9E) begin
            count = count + 1;
            $display("test 14 passed");
        end else begin
            $display("test 14 failed");
        end
        
        //test 15, tests row E
        data = 128'hE0E1_E2E3_E4E5_E6E7_E8E9_EAEB_ECED_EEEF;
        #5;
        if(data_out == 128'hE1F8_9811_69D9_8E94_9B1E_87E9_CE55_28DF) begin
            count = count + 1;
            $display("test 15 passed");
        end else begin
            $display("test 15 failed");
        end
        
        //test 16, tests row F
        data = 128'hF0F1_F2F3_F4F5_F6F7_F8F9_FAFB_FCFD_FEFF;
        #5;
        if(data_out == 128'h8CA1_890D_BFE6_4268_4199_2D0F_B054_BB16) begin
            count = count + 1;
            $display("test 16 passed");
        end else begin
            $display("test 16 failed");
        end
        
        if(count == 16) begin
            $display("all tests passed");
        end else begin
            $display("tests failed");
        end
    end
endmodule
