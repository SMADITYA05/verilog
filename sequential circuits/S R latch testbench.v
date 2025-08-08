module test_srl;
  reg s,r;
  wire q,qb;
  srlatch dut(.s(s),.r(r),.q(q),.qb(qb));
  initial begin
    $monitor("input s=%b r=%b output q=%b qb=%b",s,r,q,qb);
    s=0;r=0;
	#1s=0;r=1;
	#1s=1;r=0;
	#1s=1;r=1;
  end
  initial begin
    $dumpfile("srlatch.vcd");
    $dumpvars(1,test_srl);
  end  
endmodule
