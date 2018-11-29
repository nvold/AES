`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2018 12:04:25 AM
// Design Name: 
// Module Name: uart_controller
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


module uart_controller(
        input board_clk,
        input rx,
        input reset,
        input t_button,
        output tx,
        output [7:0] LED
    );
    
    //States
    parameter idle = 0;
    parameter receiving = 1;
    parameter transmit_button = 2;
    parameter transmitting = 3;
    parameter modify = 4;
    parameter reset_state = 5;
    
    
    reg [3:0] current_state;
    reg [3:0] next_state;
    
    
    
    wire       clk;
    reg        transmit;
    reg  [7:0] data;
    reg  [7:0] tx_byte;
    reg        rst;
    wire       received;
    wire [7:0] rx_byte;
    wire       is_receiving;
    wire       is_transmitting;
    wire       tx_done;
    
    reg [7:0] L;
    
    clock_divider clock_div(
        .board_clock(board_clk),
        .clk(clk)
    );
     
    uart tranciever(
        .clk(clk),
        .rst(rst),
        .rx(rx),
        .tx(tx),
        .transmit(transmit),
        .tx_byte(tx_byte),
        .received(received),
        .rx_byte(rx_byte),
        .is_receiving(is_receiving),
        .is_transmitting(is_transmitting),
        .tx_done(tx_done)
    );
    
    
    assign LED = L;
    
    always @(*) begin
        case(current_state)
            idle : begin
                if(reset == 1'b1) begin
                    next_state = reset_state;
                end
                else if(is_receiving == 1'b1) begin
                    next_state = receiving;
                end
                else if(t_button == 1'b1) begin
                    next_state = transmit_button;
                end
                else if(is_transmitting) begin
                     next_state = transmitting;
                end
                else begin
                    next_state = idle;
                end
                
                rst = 0;
                transmit = 0;
                L = data;
                
            end
            receiving : begin

                if(received == 1'b1) begin
                    next_state = modify;
                end
                else begin
                    next_state = receiving;
                end
                
                data = rx_byte;
                
            end
            transmit_button : begin
                if(t_button == 1'b1) begin
                    next_state = transmit_button;
                end
                else begin
                    next_state = transmitting;
                    transmit = 1;
                end
                
                
            end
            transmitting : begin
                if(tx_done == 1'b1) begin
                    next_state = idle;
                    transmit = 0;
                end
                else begin
                    next_state = transmitting;
                end
                
                
            end
            modify : begin
                next_state = transmit;
                
                tx_byte = data + 1;
                
            end
            reset_state : begin
                if(reset == 1'b1) begin
                    next_state <= reset_state;
                end
                else begin
                    next_state <= idle;
                end
                
                transmit = 0;
                tx_byte = 2;
                rst = 1;
                
            end
            default: begin
                next_state = idle;
            end
        endcase
    end
    
    always @(posedge clk) begin
        current_state <= next_state;
    end
endmodule
