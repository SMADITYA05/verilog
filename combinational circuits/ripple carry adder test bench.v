
module tb_ripple;
 	reg[3:0] a,b;
  	reg cin;
  	wire[3:0]sum,carry;
  	ripple dut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
		initial begin
  		$monitor($time,"input a=%b;b=%b cin=%b output sum =%b 	carry= %b",a,b,cin,sum,carry[3]); 
  		a=0 ;b=0 ;cin=0;
  		#1 a=2; b=4 ; cin=0;
  		#1 a=1 ; b=1 ;cin=1;
  		#1 a=2 ;b=8; cin=1;
    	#1 $finish;  
	 	end
       	initial begin
        $dumpfile("full.vcd");
        $dumpvars(1,tb_ripple);
       	end
endmodule
