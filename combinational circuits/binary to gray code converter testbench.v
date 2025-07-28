module tb_btog;
  reg b1,b2,b3,b4;
  wire g1,g2,g3,g4;
  btog dut(.b1(b1),.b2(b2),.b3(b3),.b4(b4),.g1(g1),.g2(g2),.g3(g3),.g4(g4));
  initial begin
    $monitor($time,"input b1=%b b2=%b b3=%b b4=%b output g1=%b g2=%b g3=%b g4=%b",b1,b2,b3,b4,g1,g2,g3,g4);
    b1=0;b2=0;b3=0;b4=0; 
   #1b1=0;b2=0;b3=0;b4=1; 
   #1b1=0;b2=0;b3=1;b4=0; 
   #1b1=0;b2=0;b3=1;b4=1; 
   #1b1=0;b2=1;b3=0;b4=0; 
   #1b1=0;b2=1;b3=0;b4=1; 
   #1b1=0;b2=1;b3=1;b4=0; 
   #1b1=0;b2=1;b3=1;b4=1;  
   #1b1=1;b2=0;b3=0;b4=0; 
   #1b1=1;b2=0;b3=0;b4=1; 
   #1b1=1;b2=0;b3=1;b4=0; 
   #1b1=1;b2=0;b3=1;b4=1; 
   #1b1=1;b2=1;b3=0;b4=0; 
   #1b1=1;b2=1;b3=0;b4=1; 
   #1b1=1;b2=1;b3=1;b4=0; 
   #1b1=1;b2=1;b3=1;b4=1;
    $dumpfile("btog.vcd");
    $dumpvars(1,tb_btog);
  end
endmodule
