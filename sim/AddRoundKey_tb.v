`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2018 11:52:42 AM
// Design Name: 
// Module Name: AddRoundKey_tb
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


module AddRoundKey_tb;
    reg [3:0] count;
    reg [3:0] round;
    reg [127:0] key_in;
    wire [127:0] roundkey;
    
    AddRoundKey uut(.round(round),
                    .key_in(key_in),
                    .roundkey(roundkey)
                    );
    initial begin
        round = 0;
        count = 0;
        
        key_in = 128'h5468_6174_7320_6D79_204B_756E_6720_4675;
        #10;
        if(roundkey == 128'h5468_6174_7320_6D79_204B_756E_6720_4675) begin
            count = count + 1;
            $display("test 1 passed");
        end else begin
            $display("test 1 failed");
        end
        
        //#10;
        
        round = 1;
        key_in = 128'h5468_6174_7320_6D79_204B_756E_6720_4675;
        #10;
        if(roundkey == 128'hE232_FCF1_9112_9188_B159_E4E6_D679_A293) begin
            count = count + 1;
            $display("test 2 pased");
        end else begin
            $display("test 2 failed");
        end
        
        //#10;
        
        round = 2;
        key_in = 128'hE232_FCF1_9112_9188_B159_E4E6_D679_A293;
        #10;
        if(roundkey == 128'h5608_2007_C71A_B18F_7643_5569_A03A_F7FA) begin
            count = count + 1;
            $display("test 3 passed");
        end else begin
            $display("test 3 failed");
        end
        
        //#10;
        
        round = 3;
        key_in = 128'h5608_2007_C71A_B18F_7643_5569_A03A_F7FA;
        #10;
        if(roundkey == 128'hD260_0DE7_157A_BC68_6339_E901_C303_1EFB) begin
            count = count + 1;
            $display("test 4 passed");
        end else begin
            $display("test 4 failed");
        end
        
        //#10;
        
        if(count == 4) begin
            $display("all tests passed");
        end else begin
            $display("tests failed");
        end
        
    end
endmodule
