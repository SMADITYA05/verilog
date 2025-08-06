module tb_dflipflop;
  reg d,clk,rst;
  wire q,qb;
  dflipflop dut(.d(d),.q(q),.clk(clk),.rst(rst),.qb(qb));
      always #3 clk = ~clk;
  initial begin
    $dumpfile("dflipflop.vcd");
    $dumpvars(1,tb_dflipflop);
    $monitor("input d=%b output q=%b qb=%b",d,q,qb);
    rst=1;
    clk=1;
    #1rst=0;
    drive(1'b1);
    drive(1'b0);
    #40
    $finish;
  end
task drive;
	input data;
  begin
    @(posedge clk);
    d = data;
  end
endtask
endmodule
