`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2023 05:36:35
// Design Name: 
// Module Name: shift_register
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


module shift_register(
clk, SI, SO
    );
    
  input clk,SI;
  output SO;
  reg [15:0] tmp;
  reg msb;

  always @(negedge clk)
    begin
      msb <= tmp[15];
      tmp <= tmp << 1;
      tmp[0] <= SI;
    end
  assign SO = msb;
  
endmodule
