module tb_tflipflop;
  reg t,clk,rst;
  wire q,qb;
  tflipflop dut(.t(t),.clk(clk),.rst(rst),.q(q),.qb(qb));
  always #4 clk = ~clk;
  initial begin
    $dumpfile("tflipflop.vcd");
    $dumpvars(1,tb_tflipflop);
    $monitor("input t=%b output q=%b qb=%b",t,q,qb);
    clk=1;
  	rst=1;
    #1rst=0;
    @(posedge clk);
    #8t=0;
    #8t=1;
    #50
    $finish;
  end
endmodule
