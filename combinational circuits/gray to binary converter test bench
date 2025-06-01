module tb_gtob;
  reg g1,g2,g3,g4;
  wire b1,b2,b3,b4;
  gtob dut(.g1(g1),.g2(g2),.g3(g3),.g4(g4),.b1(b1),.b2(b2),.b3(b3),.b4(b4));
  initial begin
    $monitor($time,"inputg1=%b g2=%b g3=%b g4=%b output  b1=%b b2=%b b3=%b b4=%b",g1,g2,g3,g4,b1,b2,b3,b4);
    g1=0;g2=0;g3=0;g4=0; 
   #1g1=0;g2=0;g3=0;g4=1; 
   #1g1=0;g2=0;g3=1;g4=0; 
   #1g1=0;g2=0;g3=1;g4=1; 
   #1g1=0;g2=1;g3=0;g4=0; 
   #1g1=0;g2=1;g3=0;g4=1; 
   #1g1=0;g2=1;g3=1;g4=0; 
   #1g1=0;g2=1;g3=1;g4=1;  
   #1g1=1;g2=0;g3=0;g4=0; 
   #1g1=1;g2=0;g3=0;g4=1; 
   #1g1=1;g2=0;g3=1;g4=0; 
   #1g1=1;g2=0;g3=1;g4=1; 
   #1g1=1;g2=1;g3=0;g4=0; 
   #1g1=1;g2=1;g3=0;g4=1; 
   #1g1=1;g2=1;g3=1;g4=0; 
   #1g1=1;g2=1;g3=1;g4=1;
    $dumpfile("gtob.vcd");
    $dumpvars(1,tb_gtob);
  end
endmodule
