`timescale 1ns / 1ps

module full_PUF(
    input [0:7] challenge,
    input clk,
    input reset, 
    input en,
    output [0:7] response
    );
    
    
    

    one_bit_PUF puf0 (.challenge(challenge), .clk(clk), .reset(reset), .en(en), .out(response[0]));
    one_bit_PUF puf1 (.challenge(challenge), .clk(clk), .reset(reset), .en(en), .out(response[1]));
    one_bit_PUF puf2 (.challenge(challenge), .clk(clk), .reset(reset), .en(en), .out(response[2]));
    one_bit_PUF puf3 (.challenge(challenge), .clk(clk), .reset(reset), .en(en), .out(response[3]));
    one_bit_PUF puf4 (.challenge(challenge), .clk(clk), .reset(reset), .en(en), .out(response[4]));
    one_bit_PUF puf5 (.challenge(challenge), .clk(clk), .reset(reset), .en(en), .out(response[5]));
    one_bit_PUF puf6 (.challenge(challenge), .clk(clk), .reset(reset), .en(en), .out(response[6]));
    one_bit_PUF puf7 (.challenge(challenge), .clk(clk), .reset(reset), .en(en), .out(response[7]));

endmodule
