`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2018 01:36:08 AM
// Design Name: 
// Module Name: Encryption
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


module Encryption(
    input clk,
    input start,
    input [127:0] plaintext,
    input [127:0] key,
    output reg [127:0] cyphertext,
    output [3:0] state_check
    );
    
    parameter Idle        = 0;
    parameter Sub_Bytes   = 1;
    parameter Shift_Rows  = 2;
    parameter Mix_Columns = 3;
    parameter Round_Key   = 4;
    parameter Done        = 5;
    
    reg [3:0] state = 0;
    reg [3:0] next_state;
    reg [3:0] round;
    
    reg [127:0] data;
    wire [127:0] SB_data;
    wire [127:0] SR_data;
    wire [127:0] MC_data;
    wire [127:0] RK_data;
    
    SubBytes sbytes (.data(data),
                     .data_out(SB_data)
                     );
    ShiftRows srows (.row1({data[127:120], data[95:88], data[63:56], data[31:24]}),
                     .row2({data[119:112], data[87:80], data[55:48], data[23:16]}),
                     .row3({data[111:104], data[79:72], data[47:40], data[15:8]}),
                     .row4({data[103:96], data[71:64], data[39:32], data[7:0]}),
                     .row1_out({SR_data[127:120], SR_data[95:88], SR_data[63:56], SR_data[31:24]}),
                     .row2_out({SR_data[119:112], SR_data[87:80], SR_data[55:48], SR_data[23:16]}),
                     .row3_out({SR_data[111:104], SR_data[79:72], SR_data[47:40], SR_data[15:8]}),
                     .row4_out({SR_data[103:96], SR_data[71:64], SR_data[39:32], SR_data[7:0]})
                     );
    MixColumns mcol (.data(data),
                     .data_out(MC_data)
                     );
    AddRoundKey ark (.data(data),
                     .key(key),
                     .data_out(RK_data)
                     );
    
    always @(*) begin
        case(state)
            Idle : begin
                //state actions
                round = 0;
                data = plaintext;
                
                //next state logic
                if(start) begin
                    next_state = Round_Key;
                end else begin
                    next_state = Idle;
                end
            end
            Sub_Bytes : begin
                //state actions
                data = SB_data;
                
                //next state logic
                next_state = Shift_Rows;
            end
            Shift_Rows : begin
                //state actions
                data = SR_data;
                
                //next state logic
                if(round < 10) begin
                    next_state = Mix_Columns;
                end else begin
                    next_state = Round_Key;
                end
            end
            Mix_Columns : begin
                //state actions
                data = MC_data;
                
                //next state logic
                next_state = Round_Key;
            end
            Round_Key : begin
                //state actions
                data = RK_data;
                round = round + 1;
                
                //next state logic
                if(round > 10) begin
                    next_state = Done;
                end else begin
                    next_state = Sub_Bytes;
                end
            end
            Done : begin
                //state actions
                cyphertext = data;
                //will send a transmit signal when finished
                
                //next state logic
                next_state = Idle;
            end
        endcase
    end
    
    assign state_check = state;
    
    always @(posedge clk) begin
        state <= next_state;
    end
endmodule
