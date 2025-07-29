module tb_fullsub;
  reg x,y,bin;
  wire diff,bout;
  fullsub dut(.x(x),.y(y),.bin(bin),.diff(diff),.bout(bout));
  initial begin 
    x=0;y=0;bin=0;
    #1x=0;y=0;bin=1;
    #1x=0;y=1;bin=0;
    #1x=0;y=1;bin=1;
    #1x=1;y=0;bin=0;
    #1x=1;y=0;bin=1;
    #1x=1;y=1;bin=0;
    #1x=1;y=1;bin=1;
  end
  initial begin
    $dumpfile("fullsub.vcd");
    $dumpvars(1,tb_fullsub);
    $monitor("input x=%b y=%b bin=%b out difference=%b borrow=%b",x,y,bin,diff,bout);
  end
endmodule
