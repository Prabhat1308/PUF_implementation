module mux(
input wire a,
input wire b,
input wire c,
output wire out
);

assign out = c ? b : a;

endmodule
