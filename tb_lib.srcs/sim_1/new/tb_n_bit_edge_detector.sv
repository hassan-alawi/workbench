`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2024 09:36:07 AM
// Design Name: 
// Module Name: tb_n_bit_edge_detector
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


module tb_n_bit_edge_detector();


localparam CLK_PERIOD = 10;
localparam N = 2;


//INPUTS
logic tb_clk, tb_nrst;
logic [N-1:0] tb_in;
logic [1:0] tb_mode;

//OUTPUTS
logic [N-1:0] tb_edge_detect;

edge_det #(.N(N)) detector (
.clk(tb_clk), 
.nrst(tb_nrst),  
.in(tb_in),
.mode(tb_mode),
.edge_det(tb_edge_detect));

task reset();
@(negedge tb_clk);
tb_nrst = 1'b0;
repeat (2) @(negedge tb_clk);
tb_nrst = 1'b1;
endtask

task set_mode(
input logic [1:0] mode
);
@(negedge tb_clk);
tb_mode = mode;
endtask

task trigger_rising_edge();
@(negedge tb_clk);
tb_in = '0;
@(negedge tb_clk);
tb_in = '1;
@(negedge tb_clk);
tb_in = '0;
endtask

task trigger_falling_edge();
@(negedge tb_clk);
tb_in = '1;
@(negedge tb_clk);
tb_in = '0;
@(negedge tb_clk);
tb_in = '1;
endtask

task init_tb();
{tb_in, tb_mode, tb_nrst} = 'd1; //Sets everything except nrst to inactive low
endtask


always begin
tb_clk = 0;
#(CLK_PERIOD / 2);
tb_clk = 1;
#(CLK_PERIOD / 2);
end

initial begin
integer testcases_passed = 6;
integer total_testcases = testcases_passed;

init_tb();
reset();

repeat(2) @(posedge tb_clk);;

trigger_rising_edge();
if(tb_edge_detect != '1) begin $error("Incorrect edge_detected after rising edge in rising edge detection mode"); testcases_passed--;end;

trigger_falling_edge();
if(tb_edge_detect != '0) begin $error("Incorrect edge_detected after falling edge in rising edge detection mode"); testcases_passed--;end;

set_mode(1);

trigger_rising_edge();
if(tb_edge_detect != '0) begin $error("Incorrect edge_detected after rising edge in falling edge detection mode"); testcases_passed--;end;

trigger_falling_edge();
if(tb_edge_detect != '1) begin $error("Incorrect edge_detected after falling edge in falling edge detection mode"); testcases_passed--;end;

set_mode(2);

trigger_rising_edge();
if(tb_edge_detect != '1) begin $error("Incorrect edge_detected after rising edge in falling/rising edge detection mode"); testcases_passed--;end;

trigger_falling_edge();
if(tb_edge_detect != '1) begin $error("Incorrect edge_detected after falling edge in falling/rising edge detection mode"); testcases_passed--;end;


$display("Testcase passed: %d / %d", testcases_passed, total_testcases);
$finish;
end
endmodule