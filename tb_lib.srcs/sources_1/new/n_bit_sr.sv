`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2024 10:45:23 PM
// Design Name: 
// Module Name: n_bit_sr
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


module n_bit_sr #(N=8)(
    input logic clk, nrst, en, load, dir, clr, ser_in,
    input logic [N-1:0] par_in,
    output logic ser_out,
    output logic [N-1:0] par_out
    );
    
    logic [N-1:0] sr, n_sr;
    
    always_ff @(posedge clk, negedge nrst) begin
        if (~nrst) begin
            sr <= '0;
        end
        
        else begin
            sr <= n_sr;
        end
    end
    
    assign par_out = sr;
    assign ser_out = dir ? sr[0]: sr[N-1];
    always_comb begin 
        n_sr = sr;
        if(clr) begin
            n_sr = '0; 
        end
        
        else if (load) begin
            n_sr = par_in;
        end
        
        else if(en) begin
        
            if(dir) begin
                n_sr = {ser_in, sr[N-1:1]}; 
            end
            
            else begin
                n_sr = {sr[N-1-1:0],ser_in}; 
            end
            
        end
    end
endmodule
