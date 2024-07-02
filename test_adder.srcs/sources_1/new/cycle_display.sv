`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2024 12:26:12 AM
// Design Name: 
// Module Name: cycle_display
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


module cycle_display(
    input logic clk, nrst, en,
    input logic cout,
    input logic [3:0] sum,
    output logic [7:0] seg_out,
    output logic [3:0] an,
    output logic dp
    );
    
    logic [3:0] enc;
    logic en_shift;
    
    clock_div_n_bit #(.N(10))(.clk(clk), .nrst(nrst), .en(en), .div('d511), .cnt(), .at_max(en_shift)); //Necessary to slow down the display cycling so that the ss outputs are blurred together
    
    ssdec(.enc(enc), .dec(seg_out), .dp(dp), .en(en));
    
    always_ff @(posedge clk, negedge nrst) begin
        if(~nrst) begin
            an <= 4'b1110;
        end
        else if (en_shift) begin
            an <= {an[2:0],an[3]};
        end
        else begin
            an <= an;
        end
    end
    
    always_comb begin
        case(an)
        4'b1110: enc = sum;
        4'b1101: enc = {3'b0,cout};
        default: enc = 4'b0;
        endcase
    end
endmodule
