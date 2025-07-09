//`timescale 1ns / 1ps

//module CRO_block (
//    input enable,
//    input [2:0] config_sel,
//    output osc_out
//);


//wire w0, w1, w2, w3;

//block block1(.in(w0), .sel(config_sel[0]), .out(w1));
//block block2(.in(w1), .sel(config_sel[1]), .out(w2));
//block block3(.in(w2), .sel(config_sel[2]), .out(w3));


//and (w0, enable, w3);
//assign osc_out = w3;
//___________________________________________________
//wire w0, w1, w2, w3, w4, w5, w6;
//wire and_out;
//wire mux1_out, mux2_out, mux3_out;

//assign w0 = 1;

//    Inverter n0(.Y(w1), .A(w0));
//    Inverter n1(.Y(w2), .A(w0));
    
//    MUX2to1 mux1 (
//        .in1(w1),
//        .in2(w2),  // [1] = bypass, [0] = normal path
//        .sel(config_sel[0]),
//        .out(mux1_out)
//    );
    
//    Inverter n2(.Y(w3), .A(mux1_out));
//    Inverter n3(.Y(w4), .A(mux1_out));
    
//    MUX2to1 mux2 (
//        .in1(w3),
//        .in2(w4),  // [1] = bypass, [0] = normal path
//        .sel(config_sel[1]),
//        .out(mux2_out)
//    );
    
//    Inverter n4(.Y(w5), .A(mux2_out));
//    Inverter n5(.Y(w6), .A(mux2_out));
    
//    MUX2to1 mux3 (
//        .in1(w5),
//        .in2(w6),  // [1] = bypass, [0] = normal path
//        .sel(config_sel[2]),
//        .out(mux3_out)
//    );
    
    
    


//reg out;

//always @(mux3_out or negedge enable) begin
//    out <= mux3_out;
//end
//assign osc_out = out;
//and (w0, enable, osc_out);

//___________________________________________________________

//endmodule

//`timescale 1ns / 1ps

//module CRO_block (
//    input enable,
//    input [2:0] config_sel,
//    output osc_out
//);

//    wire w1, w2, w3;
//    reg seed;

//    // Initially seed = 1 to kick-start oscillation
//    initial seed = 1'b1;
//    wire w0_internal;
    
//        // Combine seed for only the first few ns (only in simulation)
//    assign w0_internal = enable ? (seed ? 1'b1 : w3) : 1'b0;


    
//    block block1(.in(w0_internal), .sel(config_sel[0]), .out(w1));
//    block block2(.in(w1), .sel(config_sel[1]), .out(w2));
//    block block3(.in(w2), .sel(config_sel[2]), .out(w3));


//    // After a short delay, seed is cleared
//    always @(posedge enable) begin
//        #1 seed = 0;  // let it run for 1ns
//    end

//    assign osc_out = w3;

//endmodule


`timescale 1ns / 1ps

module CRO_block (
    input enable,
    input [2:0] config_sel,
    output osc_out
);

localparam num_inv = 3;
genvar i;

wire inter_wire[num_inv:0];

generate
    for (i = 0; i < num_inv; i = i+1) begin : gen_block
        block blk_inst(.in(inter_wire[i]), .sel(config_sel[i]), .out(inter_wire[i+1]));
    end
endgenerate

and (inter_wire[0], osc_out, enable);

reg delayed_out;
always @(inter_wire[num_inv]) begin
    delayed_out <= inter_wire[num_inv];
end

assign osc_out = delayed_out;

endmodule

