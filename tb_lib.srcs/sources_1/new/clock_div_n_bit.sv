`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2024 12:51:36 AM
// Design Name: 
// Module Name: clock_div_n_bit
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


module clock_div_n_bit#(parameter N=4)(
    input logic clk, nrst, en, clr,
    input logic [N-1:0] div,
    output logic [N-1:0] cnt,
    output logic at_max
    );
    
    n_bit_counter #(.N(N)) clk_div_counter(.clk(clk), .nrst(nrst), .en(en), .max(div), .cnt(cnt), .rollover_flag(at_max), .load(1'b0), .clr(clr), .par_in(par_in), .mode(2'd0));
endmodule
