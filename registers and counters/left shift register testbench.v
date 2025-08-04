module tb_lshift;
  reg[3:0]din;
  reg clk,rst,dl,sin;
  wire[3:0]out;
  lshift hola(.din(din),.clk(clk),.rst(rst),.dl(dl),.sin(sin),.out(out));
  always #4 clk = ~clk;
  initial begin
    $monitor("input din=%b out=%b sin=%b",din,out,sin);
    $dumpfile("lshift.vcd");
    $dumpvars(1,tb_lshift);
    clk=0;
    rst=1;
    #2rst=0;
    din=4'b1010;
    dl=1;
    #6dl=0;
    sin=1;
    #200
    $finish;
  end
endmodule
