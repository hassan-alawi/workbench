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
    
    localparam SYS_CLK = 450000000; // 450MHz
    localparam TARGET_CLK = 5; //Set your target frequency 
    
    localparam DISP_PRE_SCALAR = 'd1023; //Set SSD display refresh rate
    localparam CYCLE_PRE_SCALAR = SYS_CLK / TARGET_CLK - 1; //Calculates cycle prescalar value from system and target clk
    
    
    localparam N_BITs = 4; //Number of bits for adder inputs and outputs
    localparam A_INDEX = N_BITs - 1;
    localparam B_INDEX = N_BITs + 7;
    
    logic nrst;
    assign nrst = ~btnC;
    
    //Display Signals
    logic [23:0] message1, message2, message;
    
    logic display_en;
    logic load;
    logic dir;
    
    assign display_en = sw[15];
    assign load = sw[14];
    assign dir = sw[13];
    
    assign message1 = {4'hD,4'hE,4'hF,4'hA,4'hB,4'hC};
    assign message2 = {'0,3'b0,cout,sum};
    assign message = sw[12] ? message1 : message2;
    
    //Adder Signals
    logic [N_BITs-1:0] sum;
    logic cout;
    
    assign led[N_BITs] = cout;
    assign led[A_INDEX:0] = sum;
    assign led[15:N_BITs+1] = '0;
    
    adder_n_bit #(.N(N_BITs)) add1(.a(sw[A_INDEX:0]), .b(sw[B_INDEX:8]), .cin(1'b0), .s(sum), .cout(cout));
    
    cycle_display #(.N(28), .NUM_DISP(6)) disp (.clk(clk), .nrst(nrst),  .en(display_en), .load(load), .dir(dir), .an(an), .seg_out(seg), .dp(dp), .message(message), .disp_clk_div(DISP_PRE_SCALAR), .cycle_clk_div(CYCLE_PRE_SCALAR));
    
endmodule
