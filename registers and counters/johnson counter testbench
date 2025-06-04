module tb_jcount;
  reg[3:0]temp;
  reg clk,rst;
  wire[3:0]count;
  jcount dut(.clk(clk),.rst(rst),.count(count),.temp(temp));
  always#2clk=~clk;
  initial begin
    $dumpfile("jcount.vcd");
    $dumpvars(1,tb_jcount);
    $monitor("input temp=%b output count=%b",temp,count);
  end
  initial begin
    clk=0;
    temp=4'b1000;
    rst=0;
    #8rst=1;
    #100$finish;
  end
endmodule
