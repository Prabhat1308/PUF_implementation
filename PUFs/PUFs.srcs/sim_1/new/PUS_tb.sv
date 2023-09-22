module PUF_tb();
  reg clk;
  wire [15:0] ch1;
  wire [15:0] ch2;
  wire [15:0] ch3;
  wire [15:0] ch4;
  wire [15:0] ch5;
  wire [15:0] ch6;
  wire [15:0] ch7;
  wire [15:0] ch8;

  wire [7:0] key;

  PUFs x1 (clk, ch1, ch2, ch3, ch4, ch5, ch6, ch7, ch8, key);

  initial begin
    clk = 0;
    #5;
    forever begin
      #5 clk = ~clk;
    end
  end

  initial begin
    // Initialize ch arrays
   

    // Stop the simulation after some time
    #1000 $finish;
  end
endmodule
