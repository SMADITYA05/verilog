module tb_updowncount;
  reg a,clk,rst;
  wire[3:0] count;
  updowncount dut(.a(a),.clk(clk),.rst(rst),.count(count));
  always#10clk=~clk;
  initial begin
    clk = 1;
    rst=1;
    #20rst=0;
     $dumpfile("updowncount.vcd");
    $dumpvars(0,tb_updowncount);
    $monitor("time=%0t input a=%b output count = %d %b",$time,a,count,count);
    a=1;
    #1a=0;
    #10a=1;
    #100a=0;
    #100a=1;
    #400$finish;
  end
endmodule
