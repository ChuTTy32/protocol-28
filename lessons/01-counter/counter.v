module counter(input clk, input rst, output reg [7:0] q);
  always @(posedge clk) q <= rst ? 8'd0 : q + 1;
endmodule
