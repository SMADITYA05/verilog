module tb_gates;
  reg A,B;
  wire AND,OR,NOTA,NOTB,NAND,NOR,XOR,XNOR;
  all_gates dump(.A(A),.B(B),.AND(AND),.OR(OR),.NOTA(NOTA),.NOTB(NOTB),.NAND(NAND),.NOR(NOR),.XOR(XOR),.XNOR(XNOR));
  initial begin;
    A=0;B=0;
    #1A=0;B=1;
    #1A=1;B=0;
    #1A=1;B=1;#1;
    
    $finish;
  end
  initial begin;
    $dumpfile("all_gates.vcd");
    $dumpvars(1,tb_gates);
  end
  always@(*)
    $display("INPUT VALUES:A=%b B=%b OUTPUT VALUES: AND=%b OR=%b NOTA=%b NOTB=%b NAND=%b NOR=%b XOR=%b XNOR=%b",A,B,AND,OR,NOTA,NOTB,NAND,NOR,XOR,XNOR);
endmodule
    
