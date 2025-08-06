module test_dl;
  reg d;
  wire q,qb;
  dlatch dut(.d(d),.q(q),.qb(qb));
  initial begin
    $dumpfile("dlatch.vcd");
    $dumpvars(1,test_dl);
    $monitor("time=%0t input d=%b q=%b qb=%b ",$time,d,q,qb);
    #1d=1;
    #1d=0;
  end
endmodule
