`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2025 16:01:38
// Design Name: 
// Module Name: decoder4to16
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
//////////////////////////////////////////////////////////////////////////////////


module decoder4to16(
    input [0:3] inp,
    output reg [15:0] out
    );
    always @(*)
        begin
            out = 16'b0;
            out[inp] = 1'b1;
         end
endmodule
