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
    input wire[15:0] in,
    input wire[3:0] sel,
    output wire out
);
    reg temp_out;
    assign out = temp_out;

    always @ (*) begin
        case (sel)
            'd0: temp_out = in[0];
            'd1: temp_out = in[1];
            'd2: temp_out = in[2];
            'd3: temp_out = in[3];
            'd4: temp_out = in[4];
            'd5: temp_out = in[5];
            'd6: temp_out = in[6];
            'd7: temp_out = in[7];
            'd8: temp_out = in[8];
            'd9: temp_out = in[9];
            'd10: temp_out =in[10];
            'd11: temp_out =in[11];
            'd12: temp_out =in[12];
            'd13: temp_out =in[13];
            'd14: temp_out = in[14];
            'd15: temp_out = in[15];
            default: temp_out = 'bx;
        endcase
    end
endmodule
