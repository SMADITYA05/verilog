module test_jkl;
  reg j,k;
  wire q,qb;
  jklatch dut(.j(j),.k(k),.q(q),.qb(qb));
  initial begin
    $monitor("input j=%b k=%b output q=%b qb=%b",j,k,q,qb);
    j=0;k=0;
	#5j=0;k=1;
	#6j=1;k=0;
	#7j=1;k=1;
  end
  initial begin
    $dumpfile("jklatch.vcd");
    $dumpvars(1,test_jkl);
  end  
endmodule
