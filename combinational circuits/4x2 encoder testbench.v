module tb_en;
  reg d1,d2,d3,d4;
  wire a,b;
  en dut(.a(a),.b(b),.d1(d1),.d2(d2),.d3(d3),.d4(d4));
  initial begin
    $monitor("input d1=%b d2=%b d3=%b d4=%b output a=%b b=%b",d1,d2,d3,d4,a,b);
    d1=1;d2=0;d3=0;d4=0;
    #1d1=0;d2=1;d3=0;d4=0;
    #1d1=0;d2=0;d3=1;d4=0;
    #1d1=0;d2=0;d3=0;d4=1;
  end
  initial begin
    $dumpfile("en.vcd");
    $dumpvars(1,tb_en);
  end
endmodule
