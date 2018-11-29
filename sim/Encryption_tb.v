`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2018 02:19:52 AM
// Design Name: 
// Module Name: Encryption_tb
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


module Encryption_tb;
    reg start;
    reg clk;
    wire [3:0] state;
    reg [127:0] plaintext;
    reg [127:0] key;
    wire [127:0] cyphertext;
    
    Encryption uut(.clk(clk),
                   .start(start),
                   .plaintext(plaintext),
                   .key(key),
                   .cyphertext(cyphertext),
                   .state_check(state)
                   );
    initial begin
        plaintext = 128'h5477_6F20_4F6E_6520_4E69_6E65_2054_776F;
        key =128'h5468_6174_7320_6D79_204B756E_6720_4675;
        start = 1;
        clk = 0;
        #10 start = 0;
        
    end
    
    always begin
        #5 clk = ~clk;
    end
    
endmodule
