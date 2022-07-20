`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:49:57 03/27/2021 
// Design Name: 
// Module Name:    AR_CLA_2 
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
module AR_CLA_2(
input [15:0] x,y,
input cin,CTL,

output [15:0] sum, 
output [7:0] cout
);

Adder_segment_2 q1(x[3:0],y[3:0],{cin,~cin},CTL,sum[3:0],cout[1:0]);
Adder_segment_2 q2(x[7:4],y[7:4],{cout[1:0]},CTL,sum[7:4],cout[3:2]);
Adder_segment_2 q3(x[11:8],y[11:8],{cout[3:2]},CTL,sum[11:8],cout[5:4]);
Adder_segment_2 q4(x[15:12],y[15:12],{cout[5:4]},CTL,sum[15:12],cout[7:6]); 

endmodule
