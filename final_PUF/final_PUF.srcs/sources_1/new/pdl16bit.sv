`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2023 19:06:56
// Design Name: 
// Module Name: pdl16bit
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


module pdl16bit(
input reg ch[15:0],
input wire clk,
output reg out
);

wire a1,a2,a3,a4,a5,a6,a7,a8;

always @(posedge clk);

begin

nand n1 (out,clk,a1);

threebitPDL p1(a1,ch[1],ch[0],a2);
threebitPDL p2(a2,ch[3],ch[2],a3);
threebitPDL p3(a3,ch[5],ch[4],a4);
threebitPDL p4(a4,ch[7],ch[6],a5);
threebitPDL p5(a5,ch[9],ch[8],a6);
threebitPDL p6(a6,ch[11],ch[10],a7);
threebitPDL p7(a7,ch[13],ch[12],a8);
threebitPDL p8(a8,ch[15],ch[14],out);

end
endmodule
