`timescale 1ns / 1ps

module puf1bit(
    input enable,
    input [2:0] challenge,
    input clk,
    input rst,
    output out
    );
    
    wire [15:0] count1;
    wire [15:0] count2;
    
    wire cro_out_1;
    wire cro_out_2;
    
    CRO_block cro1(.enable(enable), .config_sel(challenge), .osc_out(cro_out_1));
    CRO_block cro2(.enable(enable), .config_sel(challenge), .osc_out(cro_out_2));
    
    Counter counter1(.in(cro_out_1), .clk(clk), .rst(rst), .count(count1));
    Counter counter2(.in(cro_out_2), .clk(clk), .rst(rst), .count(count2));
    
    comparator comp(.count_1(count1), .count_2(count2), .result(out));
    
endmodule
