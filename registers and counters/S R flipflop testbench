module sr_flipflop_tb;
  reg s,r,clk,rst;
  wire q,qb;
  sr_flipflop dut(.s(s),.r(r),.clk(clk),.rst(rst),.q(q),.qb(qb));
  always#2clk=~clk;
  initial begin
    $dumpfile("sr_flipflop");
    $dumpvars(1,sr_flipflop_tb);
    $monitor("input s=%b r=%b output q=%b qb =%b",s,r,q,qb);
    clk=0;
    rst=1;
    #4rst=0;
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
    	@(posedge clk);
    	{s,r}=a;
    end
	endtask
endmodule
