module tb_repeated3;
  reg clk,rst,i;
  wire out;
  repeated3 dut(.clk(clk),.rst(rst),.i(i),.out(out));
  initial begin
  clk=0;
  rst=1;
  #5rst=0;
  end
  always#2clk = ~clk;
  initial begin
    $monitor("time=%0t input i=%b output=%b",$time,i,out);
    $dumpfile("repeated3.vcd");
    $dumpvars(1,tb_repeated3);
    @(posedge clk)i=0;
    @(posedge clk)i=0;
    @(posedge clk)i=0;
    @(posedge clk)i=0;
    @(posedge clk)i=0;
    @(posedge clk)i=0;
    @(posedge clk)i=0;
    @(posedge clk)i=1;
    @(posedge clk)i=0;
    @(posedge clk)i=0;
    @(posedge clk)i=0;
    @(posedge clk)i=1;
    @(posedge clk)i=1;
    @(posedge clk)i=1;
    @(posedge clk)i=1;
    #150
    $finish;
  end
endmodule      
