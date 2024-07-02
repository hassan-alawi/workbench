`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2024 07:40:35 PM
// Design Name: 
// Module Name: top
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


module top(
    input logic [15:0] sw,
    
    output logic [15:0] led,
    
    //Seven Segment Pins
    input logic [3:0] an,
    input logic [6:0] seg,
    input logic dp
    );
    
    localparam N_BITs = 4;
    localparam A_INDEX = N_BITs - 1;
    localparam B_INDEX = N_BITs + 7;
    
    adder_n_bit #(.N(N_BITs)) add1(.a(sw[A_INDEX:0]), .b(sw[B_INDEX:8]), .cin(sw[16]), .s(led[A_INDEX:0]), .cout(led[N_BITs]));
    assign led[15:N_BITs+1] = '0;
endmodule
