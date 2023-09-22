`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2023 05:17:05
// Design Name: 
// Module Name: 3bitPDL
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


 module threebitPDL(
    input wire x,
    input wire  a,
    input wire z,
    output wire b
 );
  
  wire x1 , x2 , x3 , x4 ,w1 ,w2;

    mux_2x1 mux_1(
        x,
        x1
    );

    mux_2x1 mux_2(
        x,
        x2
    );

    mux_2x1 mux_3(
        x,
        x3
    );

    mux_2x1 mux_4(
        x,
        x4
    );

    mux mux_5(x1,x2,a,w1);
    mux mux_6(x3,x4,a,w2);

    mux mux_7(w1,w2,z,b);

endmodule
