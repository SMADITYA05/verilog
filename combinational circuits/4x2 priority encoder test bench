module tb_prien;
  reg[3:0]b;
  wire[1:0]y;
  prien dut(.b(b),.y(y));
  initial begin
    $monitor("input b=%b output y=%b",b,y);
        #1b=4'b0001;
      	#1b=4'b001x;
    	#1b=4'b01xx;
		#1b=4'b1xxx;
  end
  initial begin
    $dumpfile("prien.vcd");
    $dumpvars(0,tb_prien);
  end
endmodule
