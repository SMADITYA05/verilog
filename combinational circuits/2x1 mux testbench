module tb_mux;
  reg a,b,s;
  wire x;
  mux dut(.a(a),.b(b),.s(s),.x(x));
  initial begin
     $monitor("a=%b,b=%b,s=%b,x=%b",a,b,s,x);
    a=0;b=0;s=0;
    #1a=0;b=0;s=1;
    #1a=0;b=1;s=0;
    #1a=0;b=1;s=1;
    #1a=1;b=0;s=0;
    #1a=1;b=0;s=1;
    #1a=1;b=1;s=0;
    #1a=1;b=1;s=1;
    
  end
  initial begin
    $dumpfile("mux.vcd");
    $dumpvars(1,tb_mux);
    $monitor($time,"a=%b,b=%b,s=%b,x=%b",a,b,s,x);
  end
 endmodule
