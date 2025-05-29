`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2025 15:35:40
// Design Name: 
// Module Name: full_PUF
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


module full_PUF(
    input [0:7] challenge,
    input clk,
    input reset, 
    output [0:7] response
    );
    
    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin : puf_array
            one_bit_PUF puf_inst (
                .challenge(challenge),
                .clk(clk),
                .reset(reset),
                .out(response[i])
            );
        end
    endgenerate
endmodule
