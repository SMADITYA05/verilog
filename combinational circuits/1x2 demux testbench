module tb_demux;
  reg a,s;
  wire x,y;
  demux dut(.a(a),.s(s),.x(x),.y(y));
  initial begin
    $monitor("input a=%b s=%b output x=%b y=%b",a,s,x,y);
    a=0;s=0;
    #10a=0;s=1;
    #10a=1;s=0;
    #10a=1;s=1;
  end
  initial begin
    $dumpfile("demux.vcd");
    $dumpvars(1,tb_demux);
  end
endmodule
