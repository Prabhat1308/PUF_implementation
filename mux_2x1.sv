module mux_2x1 (
  input wire select,
  output wire out
);

assign out = (select) ? 1 : 0;

endmodule
