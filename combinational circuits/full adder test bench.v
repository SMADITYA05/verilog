module tb_fulladder;
  reg a,b,cin;
  wire s2,cout;
  fulladder dut(.a(a),.b(b),.cin(cin),.s2(s2),.cout(cout));
  initial begin
    a=0;b=0;cin=0;
    #5a=0;b=0;cin=1;
    #5a=0;b=1;cin=0;
    #5a=0;b=1;cin=1;
    #5a=1;b=0;cin=0;
    #5a=1;b=0;cin=1;
    #5a=1;b=1;cin=0;
    #5a=1;b=1;cin=1;
  end
	initial begin
      $dumpfile("fulladder.vcd");
      $dumpvars(1,tb_fulladder);
      $monitor("a=%b,b=%b,cin=%b,sum=%b,carry=%b",a,b,cin,s2,cout);
    end
endmodule
