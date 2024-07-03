`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2024 06:57:54 PM
// Design Name: 
// Module Name: adder_1_bit
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


module adder_1_bit(
    input logic a, b, cin,
    output logic s, cout
    );
    
    assign s = a&(~b)&(~cin) | ~a&(b)&(~cin) | a&(b)&(cin) | (~a)&(~b)&(cin);
    assign cout = (a & b) | a&cin | b&cin;
endmodule
