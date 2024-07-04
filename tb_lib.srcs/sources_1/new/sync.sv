`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2024 08:17:39 PM
// Design Name: 
// Module Name: sync
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


module sync #(N = 1) (
    input logic clk, nrst,
    input logic [N-1:0] in,
    output logic [N-1:0] sync_out
);

logic [N-1:0] Q;

always_ff @(posedge clk, negedge nrst) begin
    if(~nrst) begin
        Q <= '0;
        sync_out <= '0;
    end
    
    else begin
        Q <= in;
        sync_out <= Q;
    end
end
endmodule
