`include "mux"
`include "mux_2x1"

 module 3bitPDL(
    input wire x,
    input wire [1:0] a,
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

    mux mux_5(x1,x2,a[0],w1);
    mux mux_6(x3,x4,a[0],w2);

    mux mux_7(w1,w2,a[1],b);


 endmodule