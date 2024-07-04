`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2024 12:13:09 AM
// Design Name: 
// Module Name: tb_n_bit_counter
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


module tb_n_bit_counter();

localparam CLK_PERIOD = 10;
localparam DISP_PRE_SCALAR = 'd1023;
localparam NUM_DISP = 4;
localparam N = 32;


//INPUTS
logic tb_clk, tb_nrst, tb_en, tb_load, tb_clr;
logic [N-1:0] tb_max, tb_par_in;
logic [1:0] tb_mode;

//OUTPUTS
logic tb_rollover_flag;
logic [N-1:0] tb_cnt;

n_bit_counter #(.N(N)) counter (
.clk(tb_clk), 
.nrst(tb_nrst),  
.en(tb_en), 
.load(tb_load), 
.clr(tb_clr),
.max(tb_max),
.mode(tb_mode),
.par_in(tb_par_in),
.rollover_flag(tb_rollover_flag),
.cnt(tb_cnt));

task reset();
@(negedge tb_clk);
tb_nrst = 1'b0;
repeat (2) @(negedge tb_clk);
tb_nrst = 1'b1;
endtask

task toggle_en();
tb_en = ~tb_en;
endtask

task clear();
@(negedge tb_clk);
tb_clr = 1'b1;
@(negedge tb_clk);
tb_clr = 1'b0;
endtask

task set_max(
input logic [N-1:0] max
);
@(negedge tb_clk);
tb_max = max;
endtask

task load_counter(
input logic [N-1:0] data
);
@(negedge tb_clk);
tb_load = 1'b1;
tb_par_in = data;
@(negedge tb_clk);
tb_load = 1'b0;
endtask

task set_mode(
input logic [1:0] mode
);
@(negedge tb_clk);
tb_mode = mode;
endtask

task init_tb();
{tb_par_in, tb_max, tb_mode, tb_en, tb_clr, tb_load, tb_nrst} = 'd1; //Sets everything except nrst to inactive low
endtask


always begin
tb_clk = 0;
#(CLK_PERIOD / 2);
tb_clk = 1;
#(CLK_PERIOD / 2);
end

initial begin
integer testcases_passed = 20;
init_tb();
set_max('d7);
reset();

repeat(2) @(posedge tb_clk);;
toggle_en();

if(tb_cnt != 'd0) begin $error("Incorrect Count at start of count up sequence"); testcases_passed--;end;
if(tb_rollover_flag != 'd0) begin $error("Incorrect rollover_flag at start of count up sequence");  testcases_passed--;end;

wait(tb_cnt == 'd7);

if(tb_cnt != 'd7) begin $error("Incorrect Count during count up sequence"); testcases_passed--;end;
if(tb_rollover_flag != 'd1) begin $error("Incorrect rollover_flag during count up sequence");  testcases_passed--;end;

repeat(5) @(posedge tb_clk);
clear();

wait(tb_cnt == 'd0);
if(tb_cnt != 'd0) begin $error("Incorrect Count after clear sequence");  testcases_passed--;end;
if(tb_rollover_flag != 'd0) begin $error("Incorrect rollover_flag after clear sequence");  testcases_passed--;end;

load_counter('d3);

wait(tb_cnt == 'd7);
if(tb_cnt != 'd7) begin $error("Incorrect count after load and count up sequence");  testcases_passed--;end;
if(tb_rollover_flag != 'd1) begin $error("Incorrect rollover_flag after load and count up sequence");  testcases_passed--;end;

set_mode(2'd1);
clear();

if(tb_cnt != 'd7) begin $error("Incorrect count after clear and count down sequence");  testcases_passed--;end;
if(tb_rollover_flag != 'd0) begin $error("Incorrect rollover_flag after load and count down sequence");  testcases_passed--;end;

wait(tb_cnt == 'd0);

if(tb_cnt != 'd0) begin $error("Incorrect Count during count down sequence");  testcases_passed--;end;
if(tb_rollover_flag != 'd1) begin $error("Incorrect rollover_flag during count down sequence");  testcases_passed--;end;

set_mode(2'd2);
clear();

if(tb_cnt != 'd0) begin $error("Incorrect count after clear and count up-down sequence");  testcases_passed--;end;
if(tb_rollover_flag != 'd0) begin $error("Incorrect rollover_flag after clear and count up-down sequence");  testcases_passed--;end;

wait(tb_cnt == 'd7);
if(tb_cnt != 'd7) begin $error("Incorrect count during count up-down sequence");  testcases_passed--;end;
if(tb_rollover_flag != 'd0) begin $error("Incorrect rollover_flag during count up-down sequence");  testcases_passed--;end;

wait(tb_cnt == 'd0);
if(tb_cnt != 'd0) begin $error("Incorrect Count after count up-down sequence");  testcases_passed--;end;
if(tb_rollover_flag != 'd1) begin $error("Incorrect rollover_flag after count up-down sequence");  testcases_passed--;end;

repeat (2) @(negedge tb_clk);
if(tb_cnt != 'd1) begin $error("Incorrect Count after rollover of count up-down sequence");  testcases_passed--;end;
if(tb_rollover_flag != 'd0) begin $error("Incorrect rollover_flag after rollover of count up-down sequence");  testcases_passed--;end;

$display("Testcase passed: %d / 20", testcases_passed);
$finish;
end
endmodule