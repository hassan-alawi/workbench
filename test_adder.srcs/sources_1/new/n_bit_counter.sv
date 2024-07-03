`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2024 11:47:23 PM
// Design Name: 
// Module Name: n_bit_counter
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


module n_bit_counter#(N=8)(
    input logic clk, nrst, load, clr, en, 
    input logic [N-1:0] par_in, max,
    output logic [N-1:0] cnt,
    output logic at_max
    );
    
    logic [N-1:0] n_cnt;
    logic n_at_max;
    
    always_ff @(posedge clk, negedge nrst) begin
        if(~nrst) begin
            cnt <= '0;
            at_max <= 1'b0;
        end
        else begin
            cnt <= n_cnt;
            at_max <= n_at_max;
        end 
    end
    
    always_comb begin
        n_cnt = cnt;
        
        if(clr) begin
            n_cnt = '0;
        end
        
        else if(load) begin
            n_cnt = par_in;
        end
        
        else if(en) begin
            n_cnt = cnt + 'd1;
            
            if(cnt == max) begin
                n_cnt = '0;
            end
        end
    end
    
    always_comb begin 
        n_at_max = at_max;
        
        if(n_cnt == max) begin
            n_at_max = 1'b1;
        end
        
        else if(cnt == max || at_max)begin
            n_at_max = 1'b0;
        end
    end
endmodule
