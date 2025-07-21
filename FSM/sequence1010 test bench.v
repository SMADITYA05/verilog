module tb_1010;
	reg clk,rst,i;
    reg[1:0]s;
    wire d;
  fsm1010 dut(.i(i),.clk(clk),.rst(rst),.d(d));
  always #2 clk = ~clk;
  initial begin
    $dumpfile("fsm1010.vcd");
    $dumpvars(1,tb_1010);
    $monitor("t=%0t i=%b d=%b",$time,i,d);
    clk=1;
    rst=1;
    #4rst=0;
    i=0;
    #4i=1;
    #4i=0;
    #4i=1;
    #4i=0;
    #4rst=1;
    #4rst=0;
    #4i=1;
    #4i=0;
    #4i=1;
    #4i=0;
    #4i=1;
    #50 $finish;
  end
endmodule
