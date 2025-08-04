module tb_downcounter;
  reg clk,rst;
  wire[3:0] count;
  downcounter vangu(.clk(clk),.rst(rst),.count(count));
  always #5 clk = ~clk;
  initial begin
     clk=1;
  	 #1rst=1;
     #10rst=0;
    $monitor("output count= %d count =%b",count,count);
    $dumpfile("downcounter.vcd");
    $dumpvars(1,tb_downcounter);
    #160$finish;
  end
endmodule   
