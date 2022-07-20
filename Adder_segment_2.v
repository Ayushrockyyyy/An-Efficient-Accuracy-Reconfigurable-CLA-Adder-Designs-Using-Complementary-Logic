`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:51:49 03/27/2021 
// Design Name: 
// Module Name:    Adder_segment_2 
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
module Adder_segment_2(
input [3:0] x,y,
input [1:0] cin,
input CTL,

output [3:0] sum,
output [1:0] cout,
output Cout
);
wire [3:0] p,g;
wire [2:0] carry;
//wire k;

PG_unit2 w1(x,y,p,g);
CG_unit2 w2(p,g,cin,cout,carry); 
SG_unit2 w3(p,carry,(~cin[0]),sum);
CSL_unit2 w4(cout,CTL,Cout);

endmodule
