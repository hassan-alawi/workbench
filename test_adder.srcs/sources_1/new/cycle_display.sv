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


module cycle_display#(parameter N=4, NUM_DISP = 4)( //Numeber of bits for the clock divider to allow for parametrizable division
    input logic clk, nrst, en, load, dir,
    input logic [(4*NUM_DISP)-1:0] message, //Default 16 bits
    input logic [N-1:0] disp_clk_div,
    input logic [N-1:0] cycle_clk_div,
    output logic [7:0] seg_out,
    output logic [3:0] an,
    output logic dp
    );
    
    logic [(4*NUM_DISP)-1:0] disp;
    logic en_display_shift;
    logic [3:0] enc;
    logic en_shift;
    
    clock_div_n_bit #(.N(N)) ck1(.clk(clk), .nrst(nrst), .en(en), .div(disp_clk_div), .cnt(), .at_max(en_shift)); //Necessary to slow down the display cycling so that the ss outputs aren't blurred together
    clock_div_n_bit #(.N(N)) ck2(.clk(clk), .nrst(nrst), .en(en), .div(cycle_clk_div), .cnt(), .at_max(en_display_shift)); //Allows for configurable cycle speed
    
    ssdec dec1(.enc(enc), .dec(seg_out), .dp(dp), .en(en));
    
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
    
    always_ff @(posedge clk, negedge nrst) begin
            if(~nrst) begin
                disp <= message;
            end
            else if(load) begin
                disp <= message;
            end
            else if (en_display_shift) begin
                if(dir) begin
                disp <= {disp[3:0], disp[(4*NUM_DISP)-1:4]};
                end
                else begin
                disp <= {disp[(4*NUM_DISP)-1-4:0],disp[(4*NUM_DISP)-1:(4*NUM_DISP)-1-3]};
                end
            end
            else begin
                disp <= disp;
            end
        end

    always_comb begin
        case(an)
        4'b1110: enc = disp[3:0];
        4'b1101: enc = disp[7:4];
        4'b1011: enc = disp[11:8];
        4'b0111: enc = disp[15:12];  
        default: enc = '0;
        endcase
    end
    
endmodule
