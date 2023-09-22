`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.09.2023 16:27:14
// Design Name: 
// Module Name: PUFs
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


module PUFs(
input wire clk,
input wire ch1[15:0],
input wire ch2[15:0],
input wire ch3[15:0],
input wire ch4[15:0],
input wire ch5[15:0],
input wire ch6[15:0],
input wire ch7[15:0],
input wire ch8[15:0],
output wire key[127:0]
 );
  wire op1,op2,op3,op4,op5,op6,op7,op8;
 
 PDL_16 p1(ch1 ,clk, op1);
 shift_register r1(clk,op1,O1);
 
 PDL_16 p2(ch2 ,clk, op2);
 shift_register r2(clk,op2,O2);
 
 PDL_16 p3(ch3 ,clk, op3);
 shift_register r3(clk,op3,O3);
 
 PDL_16 p4(ch4 ,clk, op4);
 shift_register r4(clk,op4,O4);
 
 PDL_16 p5(ch5 ,clk, op5);
 shift_register r5(clk,op5,O5);
 
 PDL_16 p6(ch6 ,clk, op6);
 shift_register r6(clk,op6,O6);
 
 PDL_16 p7(ch7 ,clk, op7);
 shift_register r7(clk,op7,O7);
 
 PDL_16 p8(ch8 ,clk, op8);
 shift_register r8(clk,op8,O8);
 
endmodule
