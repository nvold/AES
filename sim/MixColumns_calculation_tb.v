`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2018 01:10:37 AM
// Design Name: 
// Module Name: MIxColumns_calculation_tb
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


module MixColumns_calculation_tb;

reg  [3:0]  count = 0;
reg  [31:0] col;
wire [31:0] col_out;

MixColumns_calculation uut(
    .col(col),
    .col_out(col_out)
    );

initial begin
//test 1
    col = 32'hDB13_5345;
    #10; 
    if(col_out == 32'h8E4D_A1BC) begin
        count = count + 1;
        $display("test 1 passed");
    end else begin
        $display("test 1 failed");
    end
    
    #10;
    
    //test 2
    col = 32'hF20A_225C;
    #10;
    if(col_out == 32'h9FDC_589D) begin
        count = count + 1;
        $display("test 2 passed");
    end else begin
        $display("test 2 failed");
    end
    
    #10;
    
    //test 3
    col = 32'h0101_0101;
    #10;
    if(col_out == 32'h0101_0101) begin
        count = count + 1;
        $display("test 3 passed");
    end else begin
        $display("test 3 failed");
    end
    
    #10;
    
    //test 4
    col = 32'hC6C6_C6C6;
    #10;
    if(col_out == 32'hC6C6_C6C6) begin
        count = count + 1;
        $display("test 4 passed");
    end else begin
        $display("test 4 failed");
    end
    
    #10;
    
    //test 5
    col = 32'hD4D4_D4D5;
    #10;
    if(col_out == 32'hD5D5_D7D6) begin
        count = count + 1;
        $display("test 5 passed");
    end else begin
        $display("test 5 failed");
    end
    
    #10;
    
    //test 6
    col = 32'h2D26_314C;
    #10;
    if(col_out == 32'h4D7E_BDF8) begin
        count = count + 1;
        $display("test 6 passed");
    end else begin
        $display("test 6 failed");
    end
    
    if(count == 6) begin
        $display("all tests passed");
    end else begin
        $display("tests failed");
    end
end

endmodule
