module test_dl;
  reg d,en;
  wire q,qb;
  dlatch dut(.d(d),.en(en),.q(q),.qb(qb));
  initial begin
    $dumpfile("dlatch.vcd");
    $dumpvars(1,test_dl);
    $monitor("time=%0t input d=%b en=%b q=%b qb=%b ",$time,d,en,q,qb);
    en=0;
    #1en=1;
    #1d=1;
    #1d=0;
  end
endmodule
