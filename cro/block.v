`timescale 1ns / 1ps


module block(
    input in,
    input sel,
    output out
    );
    
    wire w1, w2;
    Inverter n1(.A(in), .Y(w1));
    Inverter n2(.A(in), .Y(w2));
    
    reg temp_out;
    
    always @(*) begin
        case (sel)
            'b0 : temp_out <= w1;
            'b1 : temp_out <= w2;
            default : temp_out <= 1'b1;
        endcase
    end
    
    assign out = temp_out;
            
endmodule
