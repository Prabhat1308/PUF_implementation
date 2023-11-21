`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2023 23:25:58
// Design Name: 
// Module Name: freq_div
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


module freq_div(
input wire clk ,
output reg out
);

parameter HALF_SECOND_CYCLES = 500_000_000; 

reg [31:0] count = 0; 

always @(posedge clk) begin
    if (count == HALF_SECOND_CYCLES - 1) begin
        out <= ~out;  
        count <= 0;  
    end else begin
        count <= count + 1; 
    end
end
endmodule
