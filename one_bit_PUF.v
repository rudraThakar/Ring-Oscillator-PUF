`timescale 1ns / 1ps

module one_bit_PUF(en, challenge, out, clk, reset);
    input [0:7] challenge;
    output out;
    input en;
    input wire clk;
    input wire reset;
    
    //wire [15:0] enables1;      //output of decoder
    wire [15:0] ro_outputs1;   //output of each RO
    
   // wire [15:0] enables2;      //output of decoder
    wire [15:0] ro_outputs2;   //output of each RO
    
    wire mux_output1;
    wire mux_output2;
    
    reg [3:0] challenge1;
    reg [3:0] challenge2;
    
    wire [0:15] counter_output1;
    wire [0:15] counter_output2;
    

    always @(*) begin
        challenge1 = challenge[0:3]; // MSB 4 bits
        challenge2 = challenge[4:7]; // LSB 4 bits
    end
    
    
    genvar i;
    generate
        for (i = 0; i < 16; i = i + 1) begin : ro_array1
            ring_oscillator ro_inst (
                .en(en),
                .out(ro_outputs1[i])
            );
        end
    endgenerate
    
    genvar j;
    generate
        for (j = 0; j < 16; j = j + 1) begin : ro_array2
            ring_oscillator  ro_inst (
                .en(en),
                .out(ro_outputs2[j])
            );
        end
    endgenerate
    
    mux16to1 mux1 (.in(ro_outputs1), .out(mux_output1), .sel(challenge1));
    
    mux16to1 mux2 (.in(ro_outputs2), .out(mux_output2), .sel(challenge2));
    
    counter cnt1 (
        .in(mux_output1),
        .clk(clk),
        .rst(reset),
        .count(counter_output1)
    );
    
    counter cnt2 (
        .in(mux_output2),
        .clk(clk),
        .rst(reset),
        .count(counter_output2)
    );
    
    comparator comp (
        .count_1(counter_output1),
        .count_2(counter_output2),
        .result(out)
    );
 
endmodule
