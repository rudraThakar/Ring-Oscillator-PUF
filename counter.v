//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 24.05.2025 16:28:31
//// Design Name: 
//// Module Name: counter
//// Project Name: 
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
////////////////////////////////////////////////////////////////////////////////////


//module counter(
//    input wire in,     // Signal to count edges on
//    input wire clk,    // Clock
//    input wire rst,    // Reset
//    output wire out    // Finish signal
//);
//    reg [15:0] ctr;
//    reg finish;
//    reg in_d;          // delayed input for edge detection

//    parameter threshold = 16'hFFFF; // Max count

//    assign out = finish;

//    always @(posedge clk or posedge rst) begin
//        if (rst) begin
//            ctr <= 0;
//            finish <= 0;
//            in_d <= 0;
//        end else begin
//            in_d <= in;

//            // Detect rising edge of 'in'
//            if (in == 1'b1 && in_d == 1'b0) begin
//                ctr <= ctr + 1;
//            end

//            if (ctr == threshold) begin
//                finish <= 1;
//            end
//        end
//    end
//endmodule

`timescale 1ns / 1ps

module counter(
    input wire in,
    input wire clk,
    input wire rst,
    output reg [0:15] count
);
    reg in_d;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            count <= 0;
            in_d <= 0;
        end else begin
            in_d <= in;
            if (in == 1'b1 && in_d == 1'b0)
                count <= count + 1;
        end
    end
endmodule
