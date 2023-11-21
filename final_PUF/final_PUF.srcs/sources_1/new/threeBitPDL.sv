`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2023 18:29:54
// Design Name: 
// Module Name: threeBitPDL
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


module threeBitPDL(
input wire select1,
input wire select2,
input wire select3,
output wire out
);

wire x1,x2,x3,x4,w1,w2;

MUX m1(select1,0,1,x1);
MUX m2(select1,0,1,x2);
MUX m3(select1,0,1,x3);
MUX m4(select1,0,1,x4);

MUX m5(select2,x1,x2,w1);
MUX m6(select2,x3,x4,w2);

MUX m7(select3,w1,w2,out);

endmodule
