`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2023 18:44:48
// Design Name: 
// Module Name: shift_reg
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


module shift_reg(
input wire clk,
input reg SI,
output reg SO
);

reg temp[15:0];
reg msb;

always @(negedge clk)
begin
 msb <= temp[15];
 temp <= {temp[14:0],0}; // shift array to left 
 temp[0] <= SI;
end

assign SO = msb;
endmodule
