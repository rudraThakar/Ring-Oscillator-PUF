//`timescale 1ns / 1ps

//module ring_oscillator(
//    input wire en,
//    output wire out
//);

//    integer rand_num;
//    reg [3:0] result; // Stores 1–10 (4 bits)
    
//    initial begin
//      rand_num = $random;       // Get signed 32-bit random value
//      rand_num = rand_num % 10; // Modulo 10 (-9 to 9)
      
//      // Adjust negative results
//      if (rand_num < 0) begin
//        rand_num = rand_num + 10; // Converts -9?1, -4?6, etc.
//      end
      
//      result = rand_num + 1;     // Shift range to 1–10
//    end
    
//    localparam num_inv = 7;
//    genvar i;

//    wire inter_wire[num_inv:0];

//    generate
//        for (i = 0; i < num_inv; i = i+1) begin
//            inverter inv(.A(inter_wire[i]), .Y(inter_wire[i+1]));
//        end
//    endgenerate
//    and (inter_wire[0], out, en);
    
//    assign out = inter_wire[num_inv];

//endmodule 

`timescale 1ns / 1ps

module ring_oscillator(
    input wire en,
    output wire out
);

//integer rand_num;
//reg [3:0] result; // Stores 1-10 (4 bits)
//reg delayed_out;   // For implementing the delay

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

localparam num_inv = 3;
genvar i;

wire inter_wire[num_inv:0];

generate
    for (i = 0; i < num_inv; i = i+1) begin
        inverter inv(.A(inter_wire[i]), .Y(inter_wire[i+1]));
    end
endgenerate

and (inter_wire[0], out, en);
reg delayed_out;

always @(inter_wire[num_inv]) begin
    delayed_out <= inter_wire[num_inv];
end

assign out = delayed_out;

endmodule