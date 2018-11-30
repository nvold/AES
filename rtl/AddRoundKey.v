`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2018 01:02:02 AM
// Design Name: 
// Module Name: AddRoundKey
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


module AddRoundKey(
    input [3:0] round,
    //input [127:0] data_in,
    input [127:0] key_in,
    //output [127:0] data_out,
    output reg [127:0] roundkey
    );
    wire [31:0] w3_sub;
    reg  [31:0] w3_shift;
    reg  [31:0] w3_rc;
    reg  [31:0] word0;
    reg  [31:0] word1;
    reg  [31:0] word2;
    reg  [31:0] word3;
    reg  [31:0] round_constant;
    reg  [7:0]  rc_calc;
    
    integer i;
    
    Byte_Substitution B1(.byte(w3_shift[31:24]),
                         .substituted_byte(w3_sub[31:24])
                         );
    Byte_Substitution B2(.byte(w3_shift[23:16]),
                         .substituted_byte(w3_sub[23:16])
                         );
    Byte_Substitution B3(.byte(w3_shift[15:8]),
                         .substituted_byte(w3_sub[15:8])
                         );
    Byte_Substitution B4(.byte(w3_shift[7:0]),
                         .substituted_byte(w3_sub[7:0])
                         );
    
    always @(*) begin
        if(round == 0) begin
            roundkey = key_in;
        end else begin
            //calculate round constant
            case(round)
                1 : round_constant = 32'h01_000000;
                2 : round_constant = 32'h02_000000;
                3 : round_constant = 32'h04_000000;
                4 : round_constant = 32'h08_000000;
                5 : round_constant = 32'h10_000000;
                6 : round_constant = 32'h20_000000;
                7 : round_constant = 32'h40_000000;
                8 : round_constant = 32'h80_000000;
                9 : round_constant = 32'h1B_000000;
                10 : round_constant = 32'h36_000000;
            endcase
            
            //calculate words
            w3_shift = {key_in[23:0], key_in[31:24]};
            w3_rc = w3_sub ^ round_constant;
            
            word0 = key_in[127:96] ^ w3_rc;
            word1 = key_in[95:64] ^ word0;
            word2 = key_in[63:32] ^ word1;
            word3 = key_in[31:0] ^ word2;
            
            roundkey = {word0, word1, word2, word3};
        end
    end
endmodule
