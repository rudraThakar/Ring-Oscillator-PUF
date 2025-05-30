`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2025 14:47:42
// Design Name: 
// Module Name: ro
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ro(input en, output out);
  wire inp1;
  wire w1, w2, w3, w4, w5, w6;
  
  assign inp1 = 1'b1;
  
  and #1 ro_g1(w1, en, inp1);
  not #1 ro_g2(w2, w1);
  not #1 ro_g3(w3, w2);
  not #1 ro_g4(w4, w3);
  not #1 ro_g5(w5, w4);
  not #1 ro_g6(inp1, w5);
//  not ro_g7(inp1, w6);  

  assign out = inp1;
endmodule

//module ro (
//    output wire osc_out
//);
//    wire [4:0] n;

//    // Direct gate-level NOT instantiations (no separate module)
//    not #1 (n[0], n[4]);
//    not #1 (n[1], n[0]);
//    not #1 (n[2], n[1]);
//    not #1 (n[3], n[2]);
//    not #1 (n[4], n[3]);

//    assign osc_out = n[0]; // Oscillator output

//endmodule

