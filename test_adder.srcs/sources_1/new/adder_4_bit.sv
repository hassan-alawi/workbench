`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2024 08:47:49 PM
// Design Name: 
// Module Name: adder_n_bit
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


module adder_n_bit #(parameter N=4)(
    input logic cin,
    input logic [N-1:0] a, b,
    output logic cout,
    output logic [N-1:0] s
    );
    
    logic [3:0] internal_carry_in;
    
    generate
    genvar i; 
    for(i = 0; i < N; i++) begin
        if(i==0) begin
        adder_1_bit i(.a(a[i]), .b(b[i]), .cin(cin), .cout(internal_carry_in[i]), .s(s[i]));
        end
        else begin
        adder_1_bit i(.a(a[i]), .b(b[i]), .cin(internal_carry_in[i-1]), .cout(internal_carry_in[i]), .s(s[i]));
        end 
    end
    endgenerate
    
    assign cout = internal_carry_in[3];
endmodule
