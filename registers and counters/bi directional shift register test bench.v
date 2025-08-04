module tb_rlshift;
  reg[3:0]din;
  reg e,clk,rst,dl,sin;
  wire[3:0]out;
  rlshift hola(.din(din),.clk(clk),.rst(rst),.dl(dl),.sin(sin),.out(out),.e(e));
  always #4 clk = ~clk;
  initial begin
    $monitor("input din=%b out=%b sin=%b",din,out,sin);
    $dumpfile("rlshift.vcd");
    $dumpvars(1,tb_rlshift);
    clk=0;
    rst=1;
    #2rst=0;
    din=4'b1010;
    dl=1;
    #6dl=0;
    sin=1;
    e=1;
    #16e=0;
    #200
    $finish;
  end
endmodule
