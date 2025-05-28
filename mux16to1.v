`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2025 16:13:27
// Design Name: 
// Module Name: mux16to1
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


module mux16to1 (
    input [0:15] in,
    input [0:3] sel,
    output out
);
    assign out = in[sel];
    
endmodule
