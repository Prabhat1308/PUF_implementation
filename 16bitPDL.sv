`include "3bitPDL"

module 16bitPDL(
    input wire ch[7:0],
    input wire clk,
    output wire x
);
 
 wire a1,a2,a3,a4,a5,a6,a7,a8;
 
 nand n1(x,clk,a1);

 3bitPDL p1(a1,ch[1:0],a2);
 3bitPDL p2(a2,ch[3:2],a3);
 3bitPDL p3(a3,ch[5:4],a4);
 3bitPDL p4(a4,ch[7:6],a5);
 3bitPDL p5(a5,ch[9:8],a6);
 3bitPDL p6(a6,ch[11:10],a7);
 3bitPDL p7(a7,ch[13:12],a8);
 3bitPDL p8(a8,ch[15:14],x);


endmodule
