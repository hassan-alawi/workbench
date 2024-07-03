`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2024 06:17:19 PM
// Design Name: 
// Module Name: tb_cycle_display
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


module tb_cycle_display();

localparam CLK_PERIOD = 10;
localparam DISP_PRE_SCALAR = 'd1023;
localparam NUM_DISP = 4;
localparam N = 32;

localparam SYS_CLK = 450000000; // 450MHz
localparam TARGET_CLK = 2;

localparam CYCLE_PRE_SCALAR = SYS_CLK / TARGET_CLK;
//INPUTS
logic tb_clk, tb_nrst, tb_en, tb_load;
logic [(4*NUM_DISP)-1:0] tb_message;
logic [N-1:0] tb_disp_clk_div;

//OUTPUTS
logic [6:0] tb_seg;
logic [3:0] tb_an;
logic tb_dp;

cycle_display #(.N(N), .NUM_DISP(NUM_DISP)) disp (.clk(tb_clk), .nrst(tb_nrst),  .en(tb_en), .load(tb_load), .an(tb_an), .seg_out(tb_seg), .dp(tb_dp), .message(tb_message), .disp_clk_div(tb_disp_clk_div), .cycle_clk_div(CYCLE_PRE_SCALAR[N-1:0]));

task reset();
@(negedge tb_clk);
tb_nrst = 1'b0;
repeat (2) @(negedge tb_clk);
tb_nrst = 1'b1;
endtask

task toggle_en();
tb_en = ~tb_en;
endtask

task load_display(
input logic [(4*NUM_DISP)-1:0] disp
);
@(negedge tb_clk);
tb_load = 1'b1;
tb_message = disp;
@(negedge tb_clk);
tb_load = 1'b0;
endtask

task init_tb();
{tb_message, tb_en, tb_load, tb_nrst} = 'd1; //Sets everything except nrst to inactive low
tb_disp_clk_div = DISP_PRE_SCALAR;
endtask


always begin
tb_clk = 0;
#(CLK_PERIOD / 2);
tb_clk = 1;
#(CLK_PERIOD / 2);
end

initial begin
init_tb();
reset();

repeat(2) @(posedge tb_clk);
toggle_en();
load_display({4'hA,4'hB,4'hC,4'hD});

repeat(20000) @(posedge tb_clk);
$finish;
end

endmodule
