module en_tb;
  reg[7:0]d;
  wire[2:0]y;
  en dut(.d(d),.y(y));
  initial begin
     $monitor("input d=%b output d=%b",d,y);
      d=8'b10000000; #2;
      d=8'b01000000; #2;
      d=8'b00100000;#2;
      d=8'b00010000;#2;
      d=8'b00001000;#2;
      d=8'b00000100;#2;
      d=8'b00000010;#2;
      d=8'b00000001;#2;

  end
  initial begin
    $dumpfile("en.vcd");
    $dumpvars(1,en_tb);
  end
endmodule
