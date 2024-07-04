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
    input logic [1:0] mode,
    output logic [N-1:0] cnt,
    output logic rollover_flag
    );
    
    //Usage modes are as follows
    // mode = 0 -> sawtooth (rollover at max)
    // mode = 1 -> reverse sawtooth (rollover at 0)
    // mode = 2 -> up-down-ramp (rollover at max)
    // Setting mode to 3 configures for sawtooth logic
    
    logic [N-1:0] n_cnt, rst_cnt;
    logic n_rollover_flag;
    
    logic cnt_dir, n_cnt_dir;
    
    always_ff @(posedge clk, negedge nrst) begin
        if(~nrst) begin
            cnt <= rst_cnt;
            rollover_flag <= 1'b0;
        end
        else begin
            cnt <= n_cnt;
            rollover_flag <= n_rollover_flag;
        end 
    end
    
    always_ff @(posedge clk, negedge nrst) begin
        if(~nrst) begin
            cnt_dir <= 1'b0;
        end
        else begin
            cnt_dir <= n_cnt_dir;
        end 
    end
    
    assign rst_cnt = mode == 2'd1 ? max : '0;
    
    always_comb begin: NEXT_COUNT_LOGIC
        n_cnt = cnt;
        
        if(clr) begin
            n_cnt = (mode == 'd1) ? max : '0;
        end
        
        else if(load) begin
            n_cnt = par_in;
        end
        
        else if(en) begin
            if(mode == 2'd0) begin
                n_cnt = cnt + 'd1;
                if(cnt == max) begin
                    n_cnt = '0;
                end
            end
            
            else if(mode == 2'd1) begin
                n_cnt = cnt - 'd1;
                if(cnt == '0) begin
                    n_cnt = max;
                end
            end
            
            else if(mode == 2'd2) begin
                if(cnt_dir) begin
                    n_cnt = cnt - 'd1;
                end
                
                else begin
                    n_cnt = cnt + 'd1;
                end
            end
        end
    end
    
    always_comb begin: NEXT_ROLLOVER_LOGIC
        n_rollover_flag = 1'b0;
        
        if(clr) begin
            n_rollover_flag = 1'b0;
        end
        
        else if(mode == 2'd0 && n_cnt == max) begin
           n_rollover_flag = 1'b1;
        end
        
        else if(mode == 2'd1 && n_cnt == '0) begin
            n_rollover_flag = 1'b1;
        end
        
        else if(mode == 2'd2 && n_cnt == '0) begin
            n_rollover_flag = 1'b1;
        end
    end
    
    always_comb begin: NEXT_COUNT_DIR_LOGIC
        n_cnt_dir = cnt_dir;
        
        if(n_cnt == max) begin
            n_cnt_dir = 1'b1;
        end
        
        else if(n_cnt == '0)begin
            n_cnt_dir = 1'b0;
        end
    end
    
endmodule
