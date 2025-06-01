module tb_jkflipflop;
  reg j,k,clk,rst;
  wire q,qb;
  jkfilpflop dut(.j(j),.k(k),.clk(clk),.rst(rst),.q(q),.qb(qb));
  always#3 clk = ~clk;
  initial begin
    $dumpfile("jkflipflop.vcd");
    $dumpvars(1,tb_jkflipflop);
    $monitor("time=%0t input j=%b k=%b output q=%b qb=%b",$time,j,k,q,qb);
    clk=1;
   #1 rst=1;
    #2rst=0;
    drive(2'b00);
    drive(2'b01);
    drive(2'b10);
    drive(2'b11);
    #50
    $finish;
  end
task drive;
  input [1:0]a;
      begin
        @(posedge clk)
      {j,k}=a;
      end
endtask
endmodule
