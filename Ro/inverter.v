`timescale 1ns / 1ps


module inverter(
    input A,
    output Y
    );
    assign Y = ~A;
endmodule
