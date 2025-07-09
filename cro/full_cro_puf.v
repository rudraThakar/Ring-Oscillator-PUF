`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.06.2025 16:29:34
// Design Name: 
// Module Name: full_cro_puf
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


module full_cro_puf(
    input [7:0] challenge,
    input clk, 
    input enable, 
    input rst,
    output [7:0] response
    );
    
//    puf1bit block1(.clk(clk), .enable(enable), .rst(rst), .out(response[0]), .challenge({challenge[0], challenge[1], challenge[2]}));
//    puf1bit block2(.clk(clk), .enable(enable), .rst(rst), .out(response[1]), .challenge({challenge[1], challenge[2], challenge[3]}));
//    puf1bit block3(.clk(clk), .enable(enable), .rst(rst), .out(response[2]), .challenge({challenge[2], challenge[3], challenge[4]}));
//    puf1bit block4(.clk(clk), .enable(enable), .rst(rst), .out(response[3]), .challenge({challenge[3], challenge[4], challenge[5]}));
//    puf1bit block5(.clk(clk), .enable(enable), .rst(rst), .out(response[4]), .challenge({challenge[4], challenge[5], challenge[6]}));
//    puf1bit block6(.clk(clk), .enable(enable), .rst(rst), .out(response[5]), .challenge({challenge[5], challenge[6], challenge[7]}));
//    puf1bit block7(.clk(clk), .enable(enable), .rst(rst), .out(response[6]), .challenge({challenge[0], challenge[1], challenge[2]}));
//    puf1bit block8(.clk(clk), .enable(enable), .rst(rst), .out(response[7]), .challenge({challenge[1], challenge[2], challenge[3]}));

puf1bit block1(.clk(clk), .enable(enable), .rst(rst), .out(response[0]), .challenge({challenge[0], challenge[1], challenge[2]}));
puf1bit block2(.clk(clk), .enable(enable), .rst(rst), .out(response[1]), .challenge({challenge[0], challenge[1], challenge[2]}));
puf1bit block3(.clk(clk), .enable(enable), .rst(rst), .out(response[2]), .challenge({challenge[0], challenge[1], challenge[2]}));
puf1bit block4(.clk(clk), .enable(enable), .rst(rst), .out(response[3]), .challenge({challenge[0], challenge[1], challenge[2]}));
puf1bit block5(.clk(clk), .enable(enable), .rst(rst), .out(response[4]), .challenge({challenge[0], challenge[1], challenge[2]}));
puf1bit block6(.clk(clk), .enable(enable), .rst(rst), .out(response[5]), .challenge({challenge[0], challenge[1], challenge[2]}));
puf1bit block7(.clk(clk), .enable(enable), .rst(rst), .out(response[6]), .challenge({challenge[0], challenge[1], challenge[2]}));
puf1bit block8(.clk(clk), .enable(enable), .rst(rst), .out(response[7]), .challenge({challenge[0], challenge[1], challenge[2]}));

    
    
endmodule
