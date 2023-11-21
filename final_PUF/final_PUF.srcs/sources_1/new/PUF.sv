`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2023 19:56:37
// Design Name: 
// Module Name: PUF
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


module PUF(
input wire clk,
input reg ch1[15:0],
input reg ch2[15:0],
output reg key[1:0]
);

always @(posedge clk);

begin 
pdl16bit p1(ch1,clk,key[0]);
pdl16bit p2(ch2,clk,key[1]);
end
endmodule
