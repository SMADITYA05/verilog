module tb_demux;
  reg a,s1,s2;
  wire d1,d2,d3,d4;
  demux dut(.a(a),.s1(s1),.s2(s2),.d1(d1),.d2(d2),.d3(d3),.d4(d4));
  initial begin
    $monitor("input a=%b s1=%b s2=%b output d1=%b d2=%b d3=%b d4=%b",a,s1,s2,d1,d2,d3,d4);
    s2=0;s1=0;a=1;
    #10 s2=0;s1=1;a=1;
    #10 s2=1;s1=0;a=1;
    #10 s2=1;s1=1;a=1;
    #10 s2=0;s1=0;a=0;
    #10 s2=0;s1=1;a=0;
    #10 s2=1;s1=0;a=0;
    #10 s2=1;s1=1;a=0;
  end
  initial begin
    $dumpfile("demux.vcd");
    $dumpvars(1,tb_demux);
  end
endmodule
