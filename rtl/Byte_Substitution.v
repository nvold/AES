`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2018 08:11:55 PM
// Design Name: 
// Module Name: Byte_Substitution
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


module Byte_Substitution(
    input      [7:0] byte,
    output reg [7:0] substituted_byte
    );
    
    always @(*) begin
        case(byte)
            //0x
            8'h00 : substituted_byte = 8'h63;
            8'h01 : substituted_byte = 8'h7C;
            8'h02 : substituted_byte = 8'h77;
            8'h03 : substituted_byte = 8'h7B;
            8'h04 : substituted_byte = 8'hF2;
            8'h05 : substituted_byte = 8'h6B;
            8'h06 : substituted_byte = 8'h6F;
            8'h07 : substituted_byte = 8'hC5;
            8'h08 : substituted_byte = 8'h30;
            8'h09 : substituted_byte = 8'h01;
            8'h0A : substituted_byte = 8'h67;
            8'h0B : substituted_byte = 8'h2b;
            8'h0c : substituted_byte = 8'hfe;
            8'h0d : substituted_byte = 8'hd7;
            8'h0e : substituted_byte = 8'hab;
            8'h0f : substituted_byte = 8'h76;
            //1x
            8'h10 : substituted_byte = 8'hca;
            8'h11 : substituted_byte = 8'h82;
            8'h12 : substituted_byte = 8'hc9;
            8'h13 : substituted_byte = 8'h7d;
            8'h14 : substituted_byte = 8'hfa;
            8'h15 : substituted_byte = 8'h59;
            8'h16 : substituted_byte = 8'h47;
            8'h17 : substituted_byte = 8'hf0;
            8'h18 : substituted_byte = 8'had;
            8'h19 : substituted_byte = 8'hd4;
            8'h1a : substituted_byte = 8'ha2;
            8'h1b : substituted_byte = 8'haf;
            8'h1c : substituted_byte = 8'h9c;
            8'h1d : substituted_byte = 8'ha4;
            8'h1e : substituted_byte = 8'h72;
            8'h1f : substituted_byte = 8'hc0;
            //2x
            8'h20 : substituted_byte = 8'hb7;
            8'h21 : substituted_byte = 8'hfd;
            8'h22 : substituted_byte = 8'h93;
            8'h23 : substituted_byte = 8'h26;
            8'h24 : substituted_byte = 8'h36;
            8'h25 : substituted_byte = 8'h3f;
            8'h26 : substituted_byte = 8'hf7;
            8'h27 : substituted_byte = 8'hcc;
            8'h28 : substituted_byte = 8'h34;
            8'h29 : substituted_byte = 8'ha5;
            8'h2a : substituted_byte = 8'he5;
            8'h2b : substituted_byte = 8'hf1;
            8'h2c : substituted_byte = 8'h71;
            8'h2d : substituted_byte = 8'hd8;
            8'h2e : substituted_byte = 8'h31;
            8'h2f : substituted_byte = 8'h15;
            //3x
            8'h30 : substituted_byte = 8'h04;
            8'h31 : substituted_byte = 8'hc7;
            8'h32 : substituted_byte = 8'h23;
            8'h33 : substituted_byte = 8'hc3;
            8'h34 : substituted_byte = 8'h18;
            8'h35 : substituted_byte = 8'h96;
            8'h36 : substituted_byte = 8'h05;
            8'h37 : substituted_byte = 8'h9a;
            8'h38 : substituted_byte = 8'h07;
            8'h39 : substituted_byte = 8'h12;
            8'h3a : substituted_byte = 8'h80;
            8'h3b : substituted_byte = 8'he2;
            8'h3c : substituted_byte = 8'heb;
            8'h3d : substituted_byte = 8'h27;
            8'h3e : substituted_byte = 8'hb2;
            8'h3f : substituted_byte = 8'h75;
            //4x
            8'h40 : substituted_byte = 8'h09;
            8'h41 : substituted_byte = 8'h83;
            8'h42 : substituted_byte = 8'h2c;
            8'h43 : substituted_byte = 8'h1a;
            8'h44 : substituted_byte = 8'h1b;
            8'h45 : substituted_byte = 8'h6e;
            8'h46 : substituted_byte = 8'h5a;
            8'h47 : substituted_byte = 8'ha0;
            8'h48 : substituted_byte = 8'h52;
            8'h49 : substituted_byte = 8'h3b;
            8'h4a : substituted_byte = 8'hd6;
            8'h4b : substituted_byte = 8'hb3;
            8'h4c : substituted_byte = 8'h29;
            8'h4d : substituted_byte = 8'he3;
            8'h4e : substituted_byte = 8'h2f;
            8'h4f : substituted_byte = 8'h84;
            //5x
            8'h50 : substituted_byte = 8'h53;
            8'h51 : substituted_byte = 8'hd1;
            8'h52 : substituted_byte = 8'h00;
            8'h53 : substituted_byte = 8'hed;
            8'h54 : substituted_byte = 8'h20;
            8'h55 : substituted_byte = 8'hfc;
            8'h56 : substituted_byte = 8'hb1;
            8'h57 : substituted_byte = 8'h5b;
            8'h58 : substituted_byte = 8'h6a;
            8'h59 : substituted_byte = 8'hcb;
            8'h5a : substituted_byte = 8'hbe;
            8'h5b : substituted_byte = 8'h39;
            8'h5c : substituted_byte = 8'h4a;
            8'h5d : substituted_byte = 8'h4c;
            8'h5e : substituted_byte = 8'h58;
            8'h5f : substituted_byte = 8'hcf;
            //6x
            8'h60 : substituted_byte = 8'hd0;
            8'h61 : substituted_byte = 8'hef;
            8'h62 : substituted_byte = 8'haa;
            8'h63 : substituted_byte = 8'hfb;
            8'h64 : substituted_byte = 8'h43;
            8'h65 : substituted_byte = 8'h4d;
            8'h66 : substituted_byte = 8'h33;
            8'h67 : substituted_byte = 8'h85;
            8'h68 : substituted_byte = 8'h45;
            8'h69 : substituted_byte = 8'hf9;
            8'h6a : substituted_byte = 8'h02;
            8'h6b : substituted_byte = 8'h7f;
            8'h6c : substituted_byte = 8'h50;
            8'h6d : substituted_byte = 8'h3c;
            8'h6e : substituted_byte = 8'h9f;
            8'h6f : substituted_byte = 8'ha8;
            //7x
            8'h70 : substituted_byte = 8'h51;
            8'h71 : substituted_byte = 8'ha3;
            8'h72 : substituted_byte = 8'h40;
            8'h73 : substituted_byte = 8'h8f;
            8'h74 : substituted_byte = 8'h92;
            8'h75 : substituted_byte = 8'h9d;
            8'h76 : substituted_byte = 8'h38;
            8'h77 : substituted_byte = 8'hf5;
            8'h78 : substituted_byte = 8'hbc;
            8'h79 : substituted_byte = 8'hb6;
            8'h7a : substituted_byte = 8'hda;
            8'h7b : substituted_byte = 8'h21;
            8'h7c : substituted_byte = 8'h10;
            8'h7d : substituted_byte = 8'hff;
            8'h7e : substituted_byte = 8'hf3;
            8'h7f : substituted_byte = 8'hd2;
            //8x
            8'h80 : substituted_byte = 8'hcd;
            8'h81 : substituted_byte = 8'h0c;
            8'h82 : substituted_byte = 8'h13;
            8'h83 : substituted_byte = 8'hec;
            8'h84 : substituted_byte = 8'h5f;
            8'h85 : substituted_byte = 8'h97;
            8'h86 : substituted_byte = 8'h44;
            8'h87 : substituted_byte = 8'h17;
            8'h88 : substituted_byte = 8'hc4;
            8'h89 : substituted_byte = 8'ha7;
            8'h8a : substituted_byte = 8'h7e;
            8'h8b : substituted_byte = 8'h3d;
            8'h8c : substituted_byte = 8'h64;
            8'h8d : substituted_byte = 8'h5d;
            8'h8e : substituted_byte = 8'h19;
            8'h8f : substituted_byte = 8'h73;
            //9x
            8'h90 : substituted_byte = 8'h60;
            8'h91 : substituted_byte = 8'h81;
            8'h92 : substituted_byte = 8'h4f;
            8'h93 : substituted_byte = 8'hdc;
            8'h94 : substituted_byte = 8'h22;
            8'h95 : substituted_byte = 8'h2a;
            8'h96 : substituted_byte = 8'h90;
            8'h97 : substituted_byte = 8'h88;
            8'h98 : substituted_byte = 8'h46;
            8'h99 : substituted_byte = 8'hee;
            8'h9a : substituted_byte = 8'hb8;
            8'h9b : substituted_byte = 8'h14;
            8'h9c : substituted_byte = 8'hde;
            8'h9d : substituted_byte = 8'h5e;
            8'h9e : substituted_byte = 8'h0b;
            8'h9f : substituted_byte = 8'hdb;
            
            8'ha0 : substituted_byte = 8'he0;
            8'ha1 : substituted_byte = 8'h32;
            8'ha2 : substituted_byte = 8'h3a;
            8'ha3 : substituted_byte = 8'h0a;
            8'ha4 : substituted_byte = 8'h49;
            8'ha5 : substituted_byte = 8'h06;
            8'ha6 : substituted_byte = 8'h24;
            8'ha7 : substituted_byte = 8'h5c;
            8'ha8 : substituted_byte = 8'hc2;
            8'ha9 : substituted_byte = 8'hd3;
            8'haa : substituted_byte = 8'hac;
            8'hab : substituted_byte = 8'h62;
            8'hac : substituted_byte = 8'h91;
            8'had : substituted_byte = 8'h95;
            8'hae : substituted_byte = 8'he4;
            8'haf : substituted_byte = 8'h79;
            
            8'hb0 : substituted_byte = 8'he7;
            8'hb1 : substituted_byte = 8'hc8;
            8'hb2 : substituted_byte = 8'h37;
            8'hb3 : substituted_byte = 8'h6d;
            8'hb4 : substituted_byte = 8'h8d;
            8'hb5 : substituted_byte = 8'hd5;
            8'hb6 : substituted_byte = 8'h4e;
            8'hb7 : substituted_byte = 8'ha9;
            8'hb8 : substituted_byte = 8'h6c;
            8'hb9 : substituted_byte = 8'h56;
            8'hba : substituted_byte = 8'hf4;
            8'hbb : substituted_byte = 8'hea;
            8'hbc : substituted_byte = 8'h65;
            8'hbd : substituted_byte = 8'h7a;
            8'hbe : substituted_byte = 8'hae;
            8'hbf : substituted_byte = 8'h08;
            
            8'hc0 : substituted_byte = 8'hba;
            8'hc1 : substituted_byte = 8'h78;
            8'hc2 : substituted_byte = 8'h25;
            8'hc3 : substituted_byte = 8'h2e;
            8'hc4 : substituted_byte = 8'h1c;
            8'hc5 : substituted_byte = 8'ha6;
            8'hc6 : substituted_byte = 8'hb4;
            8'hc7 : substituted_byte = 8'hc6;
            8'hc8 : substituted_byte = 8'he8;
            8'hc9 : substituted_byte = 8'hdd;
            8'hca : substituted_byte = 8'h74;
            8'hcb : substituted_byte = 8'h1f;
            8'hcc : substituted_byte = 8'h4b;
            8'hcd : substituted_byte = 8'hbd;
            8'hce : substituted_byte = 8'h8b;
            8'hcf : substituted_byte = 8'h8a;
            
            8'hd0 : substituted_byte = 8'h70;
            8'hd1 : substituted_byte = 8'h3e;
            8'hd2 : substituted_byte = 8'hb5;
            8'hd3 : substituted_byte = 8'h66;
            8'hd4 : substituted_byte = 8'h48;
            8'hd5 : substituted_byte = 8'h03;
            8'hd6 : substituted_byte = 8'hf6;
            8'hd7 : substituted_byte = 8'h0e;
            8'hd8 : substituted_byte = 8'h61;
            8'hd9 : substituted_byte = 8'h35;
            8'hda : substituted_byte = 8'h57;
            8'hdb : substituted_byte = 8'hb9;
            8'hdc : substituted_byte = 8'h86;
            8'hdd : substituted_byte = 8'hc1;
            8'hde : substituted_byte = 8'h1d;
            8'hdf : substituted_byte = 8'h9e;
            
            8'he0 : substituted_byte = 8'he1;
            8'he1 : substituted_byte = 8'hf8;
            8'he2 : substituted_byte = 8'h98;
            8'he3 : substituted_byte = 8'h11;
            8'he4 : substituted_byte = 8'h69;
            8'he5 : substituted_byte = 8'hd9;
            8'he6 : substituted_byte = 8'h8e;
            8'he7 : substituted_byte = 8'h94;
            8'he8 : substituted_byte = 8'h9b;
            8'he9 : substituted_byte = 8'h1e;
            8'hea : substituted_byte = 8'h87;
            8'heb : substituted_byte = 8'he9;
            8'hec : substituted_byte = 8'hce;
            8'hed : substituted_byte = 8'h55;
            8'hee : substituted_byte = 8'h28;
            8'hef : substituted_byte = 8'hdf;
            
            8'hf0 : substituted_byte = 8'h8c;
            8'hf1 : substituted_byte = 8'ha1;
            8'hf2 : substituted_byte = 8'h89;
            8'hf3 : substituted_byte = 8'h0d;
            8'hf4 : substituted_byte = 8'hbf;
            8'hf5 : substituted_byte = 8'he6;
            8'hf6 : substituted_byte = 8'h42;
            8'hf7 : substituted_byte = 8'h68;
            8'hf8 : substituted_byte = 8'h41;
            8'hf9 : substituted_byte = 8'h99;
            8'hfa : substituted_byte = 8'h2d;
            8'hfb : substituted_byte = 8'h0f;
            8'hfc : substituted_byte = 8'hb0;
            8'hfd : substituted_byte = 8'h54;
            8'hfe : substituted_byte = 8'hbb;
            8'hff : substituted_byte = 8'h16;
        endcase
    end
endmodule
