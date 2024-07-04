`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2024 08:36:12 PM
// Design Name: 
// Module Name: edge_det
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


module edge_det#(N = 1)(
    input logic clk,
    input logic nrst,
    input logic [N-1:0] in,
    input logic [1:0] mode,
    output logic [N-1:0] edge_det
    );
    
    //Usage modes are as follows
    // mode = 0 -> Rising edge detector
    // mode = 1 -> Falling edge detector
    // mode = 2 -> Rising or falling edge detector
    // Setting mode to 3 configures for rising edge detection logic
    
    logic [N-1:0] current, prev;
    
    always_ff @(posedge clk, negedge nrst) begin
        if(~nrst) begin
            prev <= '0;
            current <= '0;
        end
        
        else begin
            current <= in;
            prev <= current;
        end
    end
    
    always_comb begin
        edge_det = 1'b0;
        
        case(mode)
            2'd0 : edge_det = current & ~prev;
            2'd1 : edge_det = ~current & prev;
            2'd2 : edge_det = current ^ prev;
            default: edge_det = current & ~prev;
        endcase
    end
endmodule
