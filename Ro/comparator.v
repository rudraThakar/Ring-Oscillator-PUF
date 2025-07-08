`timescale 1ns / 1ps

module comparator(
    input wire [0:15] count_1,
    input wire [0:15] count_2,
    output wire result
);
    assign result = (count_1 > count_2) ? 1'b1 : 1'b0;
endmodule

