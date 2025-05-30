`timescale 1ns / 1ps



module ring_oscillator(
    input wire en,
    output wire out
    );

    localparam num_inv = 7;
    genvar i;

    wire inter_wire[num_inv:0];

    generate
        for (i = 0; i < num_inv; i = i+1) begin
            inverter inv(.A(inter_wire[i]), .Y(inter_wire[i+1]));
        end
    endgenerate

    and (inter_wire[0], out, en);
    assign out = inter_wire[num_inv];

endmodule 
