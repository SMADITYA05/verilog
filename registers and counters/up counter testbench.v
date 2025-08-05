module tb_upcounter;
  reg clk,rst;
  wire[3:0] count;
  upcounter dut(.clk(clk),.rst(rst),.count(count));
  always #3 clk = ~clk;
  initial begin
    clk=1;
    rst=1;
    #6rst=0;
    #1$monitor("count =%b",count);
    $dumpfile("upcounter.vcd");
    $dumpvars(1,tb_upcounter);
    #100
   	$finish;
  end
endmodule
