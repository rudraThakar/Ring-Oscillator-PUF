`timescale 1ns / 1ps


module Inverter(
    input A,
    output Y
    );
    
//integer rand_num;
//reg [3:0] result; // Stores 1-10 (4 bits)
reg delayed_out;   // For implementing the delay

//initial begin
//    rand_num = $random; // Get signed 32-bit random value
//    rand_num = rand_num % 10; // Modulo 10 (-9 to 9)

//    // Adjust negative results
//    if (rand_num < 0) begin
//        rand_num = rand_num + 10; // Converts -9?1, -4?6, etc.
//    end

//    result = rand_num + 1; // Shift range to 1-10
//    $display("Random delay selected: %0d ns", result);
//end


//always @(A) begin
//    delayed_out <= #(result) ~A;
//end

always @(A) begin
    delayed_out <= ~A;
end

assign Y = delayed_out;

endmodule
