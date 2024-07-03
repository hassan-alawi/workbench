`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2024 09:27:21 PM
// Design Name: 
// Module Name: ssdec
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


module ssdec(
    input logic en,
    input logic [3:0] enc,
    output logic [6:0] dec,
    output logic dp
    );
    
    logic [6:0] dec_intermediate;
   
    always_comb begin
        case({en,enc})
        5'h10: dec_intermediate = 7'h3F;
        5'h11: dec_intermediate = 7'h06;
        5'h12: dec_intermediate = 7'h5B;
        5'h13: dec_intermediate = 7'h4F;
        5'h14: dec_intermediate = 7'h66;
        5'h15: dec_intermediate = 7'h6D;
        5'h16: dec_intermediate = 7'h7D;
        5'h17: dec_intermediate = 7'h07;
        5'h18: dec_intermediate = 7'h7F;
        5'h19: dec_intermediate = 7'h67;
        5'h1A: dec_intermediate = 7'h77;
        5'h1B: dec_intermediate = 7'h7C;
        5'h1C: dec_intermediate = 7'h58;
        5'h1D: dec_intermediate = 7'h5E;
        5'h1E: dec_intermediate = 7'h79;
        5'h1F: dec_intermediate = 7'h71;
        default: dec_intermediate = 7'h00;
        endcase
    end
    
    assign dec = ~dec_intermediate;
    assign dp = 1'b1;
    
endmodule
