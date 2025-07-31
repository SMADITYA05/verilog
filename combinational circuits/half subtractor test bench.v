module tb_halfsubtractor;
  reg a,b;
  wire diff,borrow,w1;
  halfsubtractor dut(.a(a),.b(b),.diff(diff),.borrow(borrow));
  initial begin 
    $monitor("a=%b,b=%b,s=%b,x=%b",a,b,diff,borrow);
    a=0;b=0;
    #1a=0;b=1;
    #1a=1;b=0;
    #1a=1;b=1;
  end
  initial begin
    $dumpfile("halfsubtractor.vcd");
    $dumpvars(1,tb_halfsubtractor);
  end
endmodule
