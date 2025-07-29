module fulladder_tb;
  reg a,b,cin;
  output carry,sum;
  fulladder dut(.a(a),.b(b),.cin(cin),.carry(carry),.sum(sum));
  initial begin
    $dumpfile("fulladder.vcd");
    $dumpvars();
    $monitor("input a=%b b=%b cin=%b output carry=%b sum =%b",a,b,cin,carry,sum);
    a=0;b=0;cin=0;
    #1a=0;b=0;cin=1;
    #1a=0;b=1;cin=0;
    #1a=0;b=1;cin=1;
    #1a=1;b=0;cin=0;
    #1a=1;b=0;cin=1;
    #1a=1;b=1;cin=0;
    #1a=1;b=1;cin=1;
  end
endmodule
