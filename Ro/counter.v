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
