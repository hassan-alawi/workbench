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
    input logic clk,
    
    input logic [15:0] sw,
    
    //Push Buttons
    input logic btnC,btnU,btnL,btnR,btnD,
    output logic [15:0] led,
    
    //Seven Segment Pins
    output logic [3:0] an,
    output logic [6:0] seg,
    output logic dp
    );
    
    localparam N_BITs = 4;
    localparam A_INDEX = N_BITs - 1;
    localparam B_INDEX = N_BITs + 7;
    
    logic nrst = ~btnC;
    
    logic [N_BITs-1:0] sum;
    logic cout;
    
    adder_n_bit #(.N(N_BITs)) add1(.a(sw[A_INDEX:0]), .b(sw[B_INDEX:8]), .cin(sw[15]), .s(sum), .cout(cout));
    
    cycle_display (.sum(sum), .seg_out(seg), .dp(dp), .en(sw[14]), .clk(clk), .nrst(nrst), .cout(cout), .an(an));

    assign led[N_BITs] = cout;
    assign led[A_INDEX:0] = sum;
    assign led[15:N_BITs+1] = '0;
    
    
       
endmodule
