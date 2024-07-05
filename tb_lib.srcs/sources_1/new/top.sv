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
    input logic sysclk,
    
    input logic [15:0] sw,
    
    //Push Buttons
    input logic btnC,btnU,btnL,btnR,btnD,
    output logic [15:0] led,
    
    //Seven Segment Pins
    output logic [3:0] an,
    output logic [6:0] seg,
    output logic dp
    );
    
    logic clk, nrst;
    
//Uncomment to set up PLL 450MHz clk signal and comment the clk assign    
//    logic locked;
    
//    clk_wiz_0 clkgen(.clk_in1(sysclk), .resetn(nrst), .clk_out1(clk), .locked(locked));
    
    localparam SYS_CLK = 100000000; // 100MHz
    localparam TARGET_CYCLE_CLK = 2; //Set your target cycling frequency
    localparam TARGET_DISP_CLK = 240; //Set your target seven segment display refresh rate 
    
    localparam DISP_PRE_SCALAR = SYS_CLK / TARGET_DISP_CLK - 1; //Calculates display prescalar value from system and target clk
    localparam CYCLE_PRE_SCALAR = SYS_CLK / TARGET_CYCLE_CLK - 1; //Calculates cycle prescalar value from system and target clk
    
    
    localparam N_BITs = 4; //Number of bits for adder inputs and outputs
    localparam A_INDEX = N_BITs - 1;
    localparam B_INDEX = N_BITs + 7;
    
    assign clk = sysclk;
    assign nrst = ~btnC;
    
    //Display Signals
    logic [23:0] message1, message2, message;
    logic display_en;
    logic load, load_sync;
    logic dir, dir_sync;
    logic clr, clr_sync;
    
    assign display_en = sw[15];
    assign load = sw[14];
    assign dir = sw[13];
    assign clr = 1'b0;
    
    //Adder Signals
    logic [N_BITs-1:0] sum;
    logic cout;
    
    assign message1 = {4'hD,4'hE,4'hF,4'hA,4'hB,4'hC};
    assign message2 = {'0,3'b0,cout,sum};
    assign message = sw[12] ? message1 : message2;
    
    //Edge Detector Signals
    logic [1:0] edge_detector;
    logic [1:0] switch_detector;
    logic [1:0] latch;
    
    always_ff @(posedge clk, negedge nrst) begin //Latch displays updated edge_detect value on each switch state update
        if(~nrst) begin
            latch <= '0;
        end
        
        else if(|switch_detector) begin //If any switch has a change of state, latch is updated
            latch <= edge_detector;
        end
        
        else begin
            latch <= latch;
        end
    end
    
    assign led[N_BITs] = cout;
    assign led[A_INDEX:0] = sum;
    assign led[15:14] = latch;
    assign led[13:N_BITs+1] = '0;
    
    sync #(.N(3)) snc1(.clk(clk), .nrst(nrst), .in({load, dir, clr}), .sync_out({load_sync, dir_sync, clr_sync})); // Synchronizing asynchronous switch inputs to avoid metastability
    
    edge_det #(.N(2)) det(.clk(clk), .nrst(nrst), .in({load_sync, dir_sync}), .mode(sum[1:0]), .edge_det(edge_detector)); // Detects Edge of load and sync signal based on first 2 bits of sum 
    edge_det #(.N(2)) det1(.clk(clk), .nrst(nrst), .in({load_sync,dir_sync}), .mode('d2), .edge_det(switch_detector)); // Used to only updated latch on change of switch states
    
    adder_n_bit #(.N(N_BITs)) add1(.a(sw[A_INDEX:0]), .b(sw[B_INDEX:8]), .cin(1'b0), .s(sum), .cout(cout));
    
    cycle_display #(.N(28), .NUM_DISP(6)) disp (.clk(clk), .nrst(nrst),  .clr(clr_sync), .en(display_en), .load(load_sync), .dir(dir_sync), .an(an), .seg_out(seg), .dp(dp), .message(message), .disp_clk_div(DISP_PRE_SCALAR), .cycle_clk_div(CYCLE_PRE_SCALAR));
    
endmodule
