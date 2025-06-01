module halfadder_tb;
  reg a,b;
  wire s,c;
  halfadder dut(.a(a),.b(b),.s(s),.c(c));
 	initial begin 
      $monitor("a=%b b=%b sum =%b carry=%b",a,b,s,c);
      a=0;b=0;
 	#1a=0;b=1;
 	#1a=1;b=0;
 	#1a=1;b=1;
	end
  	initial begin
    	$dumpfile ("halfadder.vcd");
    	$dumpvars (1,halfadder_tb);
  	end
endmodule
