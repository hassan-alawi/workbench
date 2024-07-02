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
    input logic clk, nrst, en,
    input logic [N-1:0] div,
    output logic [N-1:0] cnt,
    output logic at_max
    );
    
    logic [N-1:0] next_cnt;
    
    always_ff @(posedge clk, negedge nrst) begin
        if(~nrst) begin
            cnt <= '0;
        end
        
        else begin
            cnt <= next_cnt;
        end
    end
    
    always_comb begin
    next_cnt = cnt;
    at_max = 1'b0;
    
    if(en) begin
        next_cnt = cnt + 'd1;
        
        if(cnt == div) begin
            at_max = 1'b1;
            next_cnt = '0;
         end
     end
    end
endmodule
