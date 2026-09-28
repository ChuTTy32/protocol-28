module tb;
  reg clk = 0, rst = 1; wire [7:0] q;
  counter c(clk, rst, q);
  always #5 clk = ~clk;
  initial begin
    $dumpfile("w.vcd"); $dumpvars(0, tb);
    #12 rst = 0; #300 $finish;
  end
endmodule
