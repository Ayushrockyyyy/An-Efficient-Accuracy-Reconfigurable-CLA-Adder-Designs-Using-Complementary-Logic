`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:49:42 03/27/2021 
// Design Name: 
// Module Name:    AR_CLA_1 
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
module AR_CLA_1(
input [15:0] x,
input [15:0] y,
input [1:0] cin,
input CTL, 
output [7:0] cout,
output [15:0] sum
);

wire [2:0] c;
//wire [5:0] cout;

Adder_segment_1 a1(x[3:0],y[3:0],{cin[0],cin[1]},cout[1:0],sum[3:0]); 
assign  c[0] = CTL ? cout[1] : cout[0];

Adder_segment_1 a2(x[7:4],y[7:4],{cout[0],c[0]},cout[3:2],sum[7:4]);
assign  c[1] = CTL ? cout[3] : cout[2];


Adder_segment_1 a3(x[11:8],y[11:8],{cout[2],c[1]},cout[5:4],sum[11:8]);
assign  c[2] = CTL ? cout[5] : cout[4];


Adder_segment_1 a4(x[15:12],y[15:12],{cout[4],c[2]},cout[7:6],sum[15:12]);

endmodule
