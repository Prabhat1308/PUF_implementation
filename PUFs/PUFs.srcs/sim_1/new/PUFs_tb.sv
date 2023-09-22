`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.09.2023 21:29:57
// Design Name: 
// Module Name: PUFs_tb
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


module PUFs_tb();

reg clk;

wire ch1[15:0];
wire ch2[15:0];
wire ch3[15:0];
wire ch4[15:0];
wire ch5[15:0];
wire ch6[15:0];
wire ch7[15:0];
wire ch8[15:0];

wire key[7:0];

PUFs tester(clk,ch1,ch2,ch3,ch4,ch5,ch6,ch7,ch8,key);

initial
clk=0;
always #1 clk = ~clk;
initial begin
#500
$finish;

end

endmodule
