//`timescale 1ns / 1ps


//module Counter(
//    input wire in,
//    input wire clk,
//    input wire rst,
//    output reg [0:15] count
//);
//    reg in_d;

//    always @(posedge clk or posedge rst) begin
//        if (rst) begin
//            count <= 0;
//            in_d <= 0;
//        end else begin
//            in_d <= in;
//            if (in == 1'b1 && in_d == 1'b0)          
//                count <= count + 1;
//        end
//    end
//endmodule

module Counter (
    input wire clk,
    input wire rst,      // active-high reset
    input wire in,   // the output of MUX3
    output reg [15:0] count // can be any width you need
);

always @(posedge clk or posedge rst) begin
    if (rst)
        count <= 0;
    else if (in === 1'b1) // ensure it's a real 1, not x or z
        count <= count + 1;
end

endmodule


