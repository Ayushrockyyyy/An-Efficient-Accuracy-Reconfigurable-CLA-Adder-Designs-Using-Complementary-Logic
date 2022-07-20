`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:51:37 03/27/2021 
// Design Name: 
// Module Name:    Adder_segment_1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Adder_segment_1(
input [3:0] x,y,
input [1:0] cin,

output [1:0] cout,
output [3:0] sum
);	
 
wire [3:0] p,g;
wire [3:0] carry;

PG_unit u1(x,y,p,g);
CG_unit u2(p,g,cin,carry,cout);
SG_unit u3(p,carry,sum); 

endmodule
