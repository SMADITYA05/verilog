module tb_rlshift;
  reg[3:0]din;
  reg clk,rst,sin;
  reg[1:0] dl;
  wire[3:0]out;
  rlshift hola(.din(din),.clk(clk),.rst(rst),.dl(dl),.sin(sin),.out(out));
  always #4 clk = ~clk;
  initial begin
    $monitor("input din=%b out=%b sin=%b",din,out,sin);
    $dumpfile("rlshift.vcd");
    $dumpvars(1,tb_rlshift);
    clk=0;
    rst=1;
    #2rst=0;
    din=4'b1010;
    sin=1;
    #16dl=2'b11;
    #16dl=2'b10;
    #16dl=2'b01;
    #200
    $finish;
  end
endmodule
